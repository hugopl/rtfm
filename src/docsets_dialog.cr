require "fzy"

require "./dash_docset_row"
require "./dash_docset_version_row"
require "./dash_feed"
require "./docset_action"
require "./docset_repository"
require "./installed_docset_row"

# Dialog used to browse the docsets available for download and the installed ones.
#
# The docsets come from the Dash feeds, Kapeli allowed rtfm to use them as long
# as Dash is credited, hence the link at the bottom of the dialog.
#
# Installing/uninstalling docsets isn't implemented yet, the buttons are there
# but do nothing.
@[Gtk::UiTemplate(file: "#{__DIR__}/docsets_dialog.ui",
  children: %w(view_stack all_split_view all_entry all_stack all_view all_error_page retry_button
    versions_page versions_stack versions_title versions_view
    installed_entry installed_stack installed_view))]
class DocsetsDialog < Adw::Dialog
  include Gtk::WidgetTemplate

  Log = ::Log.for(DocsetsDialog)

  @all_entry : Gtk::SearchEntry
  @all_stack : Gtk::Stack
  @all_view : Gtk::ListView
  @all_error_page : Adw::StatusPage
  @retry_button : Gtk::Button
  @versions_page : Adw::NavigationPage
  @versions_stack : Gtk::Stack
  @versions_title : Gtk::Label
  @versions_view : Gtk::ListView
  @installed_entry : Gtk::SearchEntry
  @installed_stack : Gtk::Stack
  @installed_view : Gtk::ListView

  # All docsets available for download, sorted by title, and their fzy haystack.
  @docsets = [] of DashDocset
  @haystack = [] of Fzy::Hay(DashDocset)
  @all_model = Gio::ListStore.new(DashDocset.g_type)
  @all_selection : Gtk::SingleSelection

  @versions_model = Gio::ListStore.new(DashDocsetVersion.g_type)

  @installed_haystack = [] of Fzy::Hay(DocsetMetadata)
  @installed_model = Gio::ListStore.new(DocsetMetadata.g_type)

  def initialize
    super()

    @all_entry = Gtk::SearchEntry.cast(template_child("all_entry"))
    @all_stack = Gtk::Stack.cast(template_child("all_stack"))
    @all_view = Gtk::ListView.cast(template_child("all_view"))
    @all_error_page = Adw::StatusPage.cast(template_child("all_error_page"))
    @retry_button = Gtk::Button.cast(template_child("retry_button"))
    @versions_page = Adw::NavigationPage.cast(template_child("versions_page"))
    @versions_stack = Gtk::Stack.cast(template_child("versions_stack"))
    @versions_title = Gtk::Label.cast(template_child("versions_title"))
    @versions_view = Gtk::ListView.cast(template_child("versions_view"))
    @installed_entry = Gtk::SearchEntry.cast(template_child("installed_entry"))
    @installed_stack = Gtk::Stack.cast(template_child("installed_stack"))
    @installed_view = Gtk::ListView.cast(template_child("installed_view"))

    @all_selection = Gtk::SingleSelection.new(model: @all_model, autoselect: false, can_unselect: true)
    @all_view.model = @all_selection
    @all_view.factory = docset_factory
    @versions_view.model = Gtk::NoSelection.new(model: @versions_model)
    @versions_view.factory = version_factory
    @installed_view.model = Gtk::NoSelection.new(model: @installed_model)
    @installed_view.factory = installed_factory

    setup_actions
    setup_signals

    load_installed
    fetch_docsets
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
  end

  private def docset_factory : Gtk::SignalListItemFactory
    factory = Gtk::SignalListItemFactory.new
    factory.setup_signal.connect do |object|
      Gtk::ListItem.cast(object).child = DashDocsetRow.new
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
      Gtk::ListItem.cast(object).child = DashDocsetVersionRow.new
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

  private def installed_factory : Gtk::SignalListItemFactory
    factory = Gtk::SignalListItemFactory.new
    factory.setup_signal.connect do |object|
      Gtk::ListItem.cast(object).child = InstalledDocsetRow.new
    end
    factory.bind_signal.connect do |object|
      list_item = Gtk::ListItem.cast(object)
      item = list_item.item
      child = list_item.child
      next if item.nil? || child.nil?

      InstalledDocsetRow.cast(child).metadata = DocsetMetadata.cast(item)
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
    # A docset with a single version has its install button on its own row, so
    # there's nothing to show on the versions pane.
    if docset.nil? || !docset.multiple_versions?
      @versions_page.title = "Versions"
      @versions_stack.visible_child_name = "empty"
      return
    end

    versions = versions_of(docset).map(&.as(GObject::Object))
    @versions_model.splice(0, @versions_model.n_items, versions)
    @versions_title.label = docset.title
    @versions_page.title = docset.title
    @versions_stack.visible_child_name = "versions"
  end

  # Versions available for download plus the installed ones, since a installed
  # version may have been dropped from the feed.
  private def versions_of(docset : DashDocset) : Array(DashDocsetVersion)
    installed = DocsetRepository.instance.installed_versions(docset.name)
    versions = docset.versions + installed.reject { |version| docset.versions.includes?(version) }
    versions.map do |version|
      DashDocsetVersion.new(docset, version, installed.includes?(version))
    end
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
    @installed_model.splice(0, @installed_model.n_items, matches.map(&.as(GObject::Object)))
    @installed_stack.visible_child_name = matches.empty? ? "empty" : "list"
  end

  private def fzy_search(haystack : Array(Fzy::Hay(T)), all : Array(T), search_text : String) : Array(T) forall T
    return all if search_text.blank?

    needle = search_text.downcase
    haystack.compact_map(&.match?(needle)).sort!.map(&.item)
  end

  private def action_activated(action : Gio::SimpleAction, target : GLib::Variant?) : Nil
    name, version = DocsetAction.parse(target)
    Log.warn { "Docset #{action.name} isn't implemented yet (#{name} #{version})." }
  end
end
