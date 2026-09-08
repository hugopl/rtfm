require "fzy"

require "./dash_docset_row"
require "./dash_docset_version_row"
require "./dash_feed"
require "./docset_action"
require "./docset_installer"
require "./docset_repository"
require "./installed_docset_row"

# Dialog used to browse the docsets available for download and the installed ones.
#
# The docsets come from the Dash feeds, Kapeli allowed rtfm to use them as long
# as Dash is credited, hence the link at the bottom of the dialog.
#
# The "All" tab is a split view: the docsets are listed on the sidebar and the
# selected one has its metadata and versions shown on the content pane, where
# they can be installed/uninstalled, the progress of the current job is shown
# at the bottom of the dialog.
@[Gtk::UiTemplate(file: "#{__DIR__}/docsets_dialog.ui",
  children: %w(view_stack toast_overlay progress_box progress_label progress_bar cancel_button
    all_split_view all_entry all_stack all_view all_error_page retry_button
    details_page details_stack info_icon info_title info_subtitle
    author_row author_link keywords_row size_row identifier_row versions_view
    installed_entry installed_stack installed_view))]
class DocsetsDialog < Adw::Dialog
  include Gtk::WidgetTemplate

  Log = ::Log.for(DocsetsDialog)

  @toast_overlay : Adw::ToastOverlay
  @progress_box : Gtk::Box
  @progress_label : Gtk::Label
  @progress_bar : Gtk::ProgressBar
  @cancel_button : Gtk::Button
  @all_entry : Gtk::SearchEntry
  @all_stack : Gtk::Stack
  @all_view : Gtk::ListView
  @all_error_page : Adw::StatusPage
  @retry_button : Gtk::Button
  @details_page : Adw::NavigationPage
  @details_stack : Gtk::Stack
  @info_icon : Gtk::Image
  @info_title : Gtk::Label
  @info_subtitle : Gtk::Label
  @author_row : Adw::ActionRow
  @author_link : Gtk::LinkButton
  @keywords_row : Adw::ActionRow
  @size_row : Adw::ActionRow
  @identifier_row : Adw::ActionRow
  @versions_view : Gtk::ListView
  @installed_entry : Gtk::SearchEntry
  @installed_stack : Gtk::Stack
  @installed_view : Gtk::ListBox

  # All docsets available for download, sorted by title, and their fzy haystack.
  @docsets = [] of DashDocset
  @haystack = [] of Fzy::Hay(DashDocset)
  @all_model = Gio::ListStore.new(DashDocset.g_type)
  @all_selection : Gtk::SingleSelection

  @versions_model = Gio::ListStore.new(DashDocsetVersion.g_type)

  @installed_haystack = [] of Fzy::Hay(DocsetMetadata)

  # Rows currently alive on the lists, they are recycled by GTK and must be
  # refreshed by hand when a docset is installed/uninstalled.
  @docset_rows = [] of DashDocsetRow
  @version_rows = [] of DashDocsetVersionRow

  def initialize
    super()

    @toast_overlay = Adw::ToastOverlay.cast(template_child("toast_overlay"))
    @progress_box = Gtk::Box.cast(template_child("progress_box"))
    @progress_label = Gtk::Label.cast(template_child("progress_label"))
    @progress_bar = Gtk::ProgressBar.cast(template_child("progress_bar"))
    @cancel_button = Gtk::Button.cast(template_child("cancel_button"))
    @all_entry = Gtk::SearchEntry.cast(template_child("all_entry"))
    @all_stack = Gtk::Stack.cast(template_child("all_stack"))
    @all_view = Gtk::ListView.cast(template_child("all_view"))
    @all_error_page = Adw::StatusPage.cast(template_child("all_error_page"))
    @retry_button = Gtk::Button.cast(template_child("retry_button"))
    @details_page = Adw::NavigationPage.cast(template_child("details_page"))
    @details_stack = Gtk::Stack.cast(template_child("details_stack"))
    @info_icon = Gtk::Image.cast(template_child("info_icon"))
    @info_title = Gtk::Label.cast(template_child("info_title"))
    @info_subtitle = Gtk::Label.cast(template_child("info_subtitle"))
    @author_row = Adw::ActionRow.cast(template_child("author_row"))
    @author_link = Gtk::LinkButton.cast(template_child("author_link"))
    @keywords_row = Adw::ActionRow.cast(template_child("keywords_row"))
    @size_row = Adw::ActionRow.cast(template_child("size_row"))
    @identifier_row = Adw::ActionRow.cast(template_child("identifier_row"))
    @versions_view = Gtk::ListView.cast(template_child("versions_view"))
    @installed_entry = Gtk::SearchEntry.cast(template_child("installed_entry"))
    @installed_stack = Gtk::Stack.cast(template_child("installed_stack"))
    @installed_view = Gtk::ListBox.cast(template_child("installed_view"))

    @all_selection = Gtk::SingleSelection.new(model: @all_model, autoselect: false, can_unselect: true)
    @all_view.model = @all_selection
    @all_view.factory = docset_factory
    @versions_view.model = Gtk::NoSelection.new(model: @versions_model)
    @versions_view.factory = version_factory

    setup_actions
    setup_signals
    setup_installer

    load_installed
    fetch_docsets
    show_progress
  end

  private def setup_actions : Nil
    actions = Gio::SimpleActionGroup.new
    {"install", "uninstall"}.each do |name|
      action = Gio::SimpleAction.new(name, GLib::VariantType.new("s"))
      action.activate_signal.connect(->action_activated(Gio::SimpleAction, GLib::Variant?))
      actions.add_action(action)
    end
    insert_action_group(DocsetAction::GROUP, actions)
  end

  private def setup_signals : Nil
    @all_entry.search_changed_signal.connect(&->all_search_changed)
    @installed_entry.search_changed_signal.connect(&->installed_search_changed)
    @all_selection.notify_signal["selected-item"].connect(&->selected_docset_changed(GObject::ParamSpec))
    @retry_button.clicked_signal.connect { fetch_docsets(force_refresh: true) }
    @cancel_button.clicked_signal.connect { DocsetInstaller.instance.current_job.try(&.cancel) }
  end

  # The installer keeps working when the dialog is closed, so the callbacks are
  # dropped on close to not touch widgets that are gone.
  private def setup_installer : Nil
    installer = DocsetInstaller.instance
    installer.on_changed = ->installer_changed
    installer.on_progress = ->show_progress
    installer.on_message = ->show_toast(String)
    closed_signal.connect do
      installer.on_changed = nil
      installer.on_progress = nil
      installer.on_message = nil
    end
  end

  private def installer_changed : Nil
    show_progress
    refresh_docsets
  end

  private def show_progress : Nil
    job = DocsetInstaller.instance.current_job
    @progress_box.visible = !job.nil?
    return if job.nil?

    queued = DocsetInstaller.instance.jobs.count(&.state.queued?)
    label = case job.state
            in .queued?                      then "Waiting to install #{job.label}"
            in .downloading?                 then "Downloading #{job.label}"
            in .extracting?                  then "Extracting #{job.label}"
            in .removing?                    then "Removing #{job.label}"
            in .done?, .failed?, .cancelled? then job.label
            end
    # e.g. `Downloading Python 3 v3.13.7 · 12.4MB of 45.0MB`.
    job.download_summary.try { |summary| label += " · #{summary}" } if job.state.downloading?
    label += " · #{queued} queued" if queued > 0
    @progress_label.label = label
    @cancel_button.sensitive = job.running?

    progress = job.progress
    if progress
      @progress_bar.fraction = progress
    else
      @progress_bar.pulse
    end
  end

  private def show_toast(message : String) : Nil
    @toast_overlay.add_toast(Adw::Toast.new(message))
  end

  # Updates the lists so the rows show what's installed and what's being worked
  # on. Splicing the models would be pointless: GTK doesn't bind the rows again
  # when the items are the same, and it would also reset the selection.
  private def refresh_docsets : Nil
    @docset_rows.each(&.refresh)
    @version_rows.each(&.refresh)
    load_installed
  end

  private def docset_factory : Gtk::SignalListItemFactory
    factory = Gtk::SignalListItemFactory.new
    factory.setup_signal.connect do |object|
      row = DashDocsetRow.new
      @docset_rows << row
      Gtk::ListItem.cast(object).child = row
    end
    factory.teardown_signal.connect do |object|
      Gtk::ListItem.cast(object).child.try { |child| @docset_rows.delete(DashDocsetRow.cast(child)) }
    end
    factory.bind_signal.connect do |object|
      list_item = Gtk::ListItem.cast(object)
      item = list_item.item
      child = list_item.child
      next if item.nil? || child.nil?

      DashDocsetRow.cast(child).docset = DashDocset.cast(item)
    end
    factory
  end

  private def version_factory : Gtk::SignalListItemFactory
    factory = Gtk::SignalListItemFactory.new
    factory.setup_signal.connect do |object|
      row = DashDocsetVersionRow.new
      @version_rows << row
      Gtk::ListItem.cast(object).child = row
    end
    factory.teardown_signal.connect do |object|
      Gtk::ListItem.cast(object).child.try { |child| @version_rows.delete(DashDocsetVersionRow.cast(child)) }
    end
    factory.bind_signal.connect do |object|
      list_item = Gtk::ListItem.cast(object)
      item = list_item.item
      child = list_item.child
      next if item.nil? || child.nil?

      DashDocsetVersionRow.cast(child).version = DashDocsetVersion.cast(item)
    end
    factory
  end

  # Downloading the list of docsets may take a while and would freeze the UI, so
  # it's done outside of the main loop thread.
  private def fetch_docsets(force_refresh : Bool = false) : Nil
    @all_stack.visible_child_name = "loading"

    spawn(name: "dash-feed") do
      begin
        docsets = DashFeed.fetch(force_refresh)
        GLib.idle_add do
          docsets_fetched(docsets)
          false
        end
      rescue e : DashFeedError
        GLib.idle_add do
          docsets_fetch_failed(e)
          false
        end
      end
    end
  end

  private def docsets_fetched(docsets : Array(DashDocset)) : Nil
    Log.info { "#{docsets.size} docsets available for download." }
    @docsets = docsets
    @haystack = docsets.map { |docset| Fzy::Hay.new(docset, docset.search_key.downcase) }
    filter_docsets(@all_entry.text)
  end

  private def docsets_fetch_failed(error : Exception) : Nil
    Log.error(exception: error) { "Unable to fetch the list of docsets." }
    @all_error_page.description = error.message
    @all_stack.visible_child_name = "error"
  end

  private def all_search_changed : Nil
    filter_docsets(@all_entry.text)
  end

  private def filter_docsets(search_text : String) : Nil
    matches = fzy_search(@haystack, @docsets, search_text)
    @all_selection.unselect_all
    @all_model.splice(0, @all_model.n_items, matches.map(&.as(GObject::Object)))
    @all_stack.visible_child_name = matches.empty? ? "empty" : "list"
  end

  private def selected_docset_changed(_param_spec) : Nil
    docset = @all_selection.selected_item.try { |item| DashDocset.cast(item) }
    if docset.nil?
      @details_page.title = "Details"
      @details_stack.visible_child_name = "empty"
      return
    end

    @details_page.title = docset.title
    show_info(docset)
    show_versions(docset)
    @details_stack.visible_child_name = "details"
  end

  private def show_info(docset : DashDocset) : Nil
    icon = docset.icon
    if icon
      @info_icon.paintable = icon
    else
      @info_icon.icon_name = "package-x-generic-symbolic"
    end

    @info_title.label = docset.title
    # The version is on the versions list right below, so the subtitle is only
    # worth showing when there's more than one of them to pick from.
    @info_subtitle.label = docset.versions_summary
    @info_subtitle.visible = docset.multiple_versions?

    author = docset.author
    author_url = docset.author_url
    @author_row.subtitle = author
    @author_row.visible = !author.empty?
    @author_row.activatable = !author_url.empty?
    @author_link.visible = !author_url.empty?
    @author_link.uri = author_url unless author_url.empty?
    @author_link.tooltip_text = author_url

    keywords = docset.keywords
    @keywords_row.subtitle = keywords.join(", ")
    @keywords_row.visible = !keywords.empty?

    @size_row.subtitle = docset.human_size
    @identifier_row.subtitle = docset.name
  end

  private def show_versions(docset : DashDocset) : Nil
    versions = versions_of(docset).map(&.as(GObject::Object))
    @versions_model.splice(0, @versions_model.n_items, versions)
  end

  # Versions available for download plus the installed ones, since a installed
  # version may have been dropped from the feed. Docsets shipping a single
  # unversioned build have one version with no version number, so they are
  # installed from the same list as the versioned ones.
  private def versions_of(docset : DashDocset) : Array(DashDocsetVersion)
    installed = DocsetRepository.instance.installed_versions(docset.name)
    versions = docset.versions + installed.reject { |version| docset.versions.includes?(version) }
    versions << "" if versions.empty?
    versions.map { |version| DashDocsetVersion.new(docset, version) }
  end

  private def load_installed : Nil
    metadatas = DocsetRepository.instance.to_a
    @installed_haystack = metadatas.map { |metadata| Fzy::Hay.new(metadata, metadata.title.downcase) }
    filter_installed(@installed_entry.text)
  end

  private def installed_search_changed : Nil
    filter_installed(@installed_entry.text)
  end

  private def filter_installed(search_text : String) : Nil
    all = @installed_haystack.map(&.item)
    matches = fzy_search(@installed_haystack, all, search_text)

    # Gtk::ListBox#bind_model would be the way to go here, but gi-crystal
    # doesn't convert the widget returned by the callback yet. The list is
    # short anyway, so it's rebuilt by hand.
    @installed_view.remove_all
    matches.each do |metadata|
      @installed_view.append(InstalledDocsetRow.new(metadata))
    end
    @installed_stack.visible_child_name = matches.empty? ? "empty" : "list"
  end

  private def fzy_search(haystack : Array(Fzy::Hay(T)), all : Array(T), search_text : String) : Array(T) forall T
    return all if search_text.blank?

    needle = search_text.downcase
    haystack.compact_map(&.match?(needle)).sort!.map(&.item)
  end

  private def action_activated(action : Gio::SimpleAction, target : GLib::Variant?) : Nil
    name, version = DocsetAction.parse(target)
    if action.name == "install"
      docset = @docsets.find { |candidate| candidate.name == name }
      if docset.nil?
        Log.warn { "Can't install #{name}, it's not on the docset feed." }
        return
      end
      DocsetInstaller.instance.install(docset, version)
    else
      metadata = DocsetRepository.instance.find(name, version)
      if metadata.nil?
        Log.warn { "Can't uninstall #{name} #{version}, it's not installed." }
        return
      end
      DocsetInstaller.instance.uninstall(metadata)
    end
  end
end
