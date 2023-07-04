require "./application_window"

VERSION = {{ `shards version #{__DIR__}`.strip.stringify }}
LICENSE = {{ run("./macros/license.cr").stringify }}

class Application < Adw::Application
  @window : ApplicationWindow?

  def initialize
    super(application_id: "io.github.hugopl.rtfm", flags: Gio::ApplicationFlags::None)

    action = Gio::SimpleAction.new("activate", nil)
    action.activate_signal.connect { activate }
    add_action(action)
    set_accels_for_action("app.activate", {"<primary>N"})

    action = Gio::SimpleAction.new("about", nil)
    action.activate_signal.connect { show_about_dlg }
    add_action(action)
  end

  @[GObject::Virtual]
  def activate
    @window = window = ApplicationWindow.new(self)
    window.present
  end

  ABOUT_DLG_COMMENTS = <<-EOT
    Rtfm means <i>Read the formidable documentation</i>.

    It's a Gnome Dash DocSet Reader written in Crystal written with ❤️.
  EOT

  private def show_about_dlg
    Adw.show_about_window(parent: active_window, application: self,
      copyright: "© 2023 Hugo Parente Lima",
      version: VERSION,
      application_name: "Rtfm",
      application_icon: "io.github.hugopl.rtfm",
      comments: ABOUT_DLG_COMMENTS,
      website: "https://github.com/hugopl/rtfm",
      issue_url: "https://github.com/hugopl/rtfm/issues",
      license: LICENSE,
      developer_name: "Hugo Parente Lima <hugo.pl@gmail.com>",
      developers: {"Hugo Parente Lima <hugo.pl@gmail.com>"})
  end
end
