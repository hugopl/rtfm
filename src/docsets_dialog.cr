require "./remote_docsets"

private class DocsetDialogEntry < GObject::Object
  @[GObject::Property]
  getter title : String
  @[GObject::Property]
  getter version : String

  def initialize(@title, @version)
    super()
  end
end

@[Gtk::UiTemplate(file: "#{__DIR__}/docsets_dialog.ui", children: %w(available_group installed_group))]
class DocsetsDialog < Adw::PreferencesWindow
  include Gtk::WidgetTemplate

  def initialize(transient_for)
    super(title: "Docsets library", transient_for: transient_for)

    fill_installed
    fill_available
  end

  private def fill_installed
    group = Adw::PreferencesGroup.cast(template_child("installed_group"))
    DocsetRepository.instance.each do |metadata|
      row = Adw::ActionRow.new(title: metadata.title, subtitle: metadata.version)
      if File::Info.writable?(metadata.path)
        del_btn = Gtk::Button.new_from_icon_name("user-trash-symbolic")
        del_btn.add_css_class("flat")
        row.add_suffix(del_btn)
      end
      group.add(row)
    end
  end

  private def fill_available
    group = Adw::PreferencesGroup.cast(template_child("available_group"))
    remote_repo = RemoteDocsetRepository.new

    remote_repo.update
    remote_repo.save

    group.add(Gtk::Label.new(label: %q(Docsets are provided by <a href="https://kapeli.com/dash">Dash</a>), use_markup: true))

    remote_repo.docsets.each do |remote|
      row = Adw::ActionRow.new(title: remote.title, subtitle: remote.version)
      dld_btn = Gtk::Button.new_from_icon_name("folder-download-symbolic")
      dld_btn.add_css_class("flat")
      row.add_suffix(dld_btn)
      group.add(row)
    end
  end
end
