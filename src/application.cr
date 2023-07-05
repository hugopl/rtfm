require "./application_window"

VERSION = {{ `shards version #{__DIR__}`.strip.stringify }}
LICENSE = {{ run("./macros/license.cr").stringify }}

class Application < Adw::Application
  @window : ApplicationWindow?

  def initialize
    super(application_id: "io.github.hugopl.rtfm", flags: Gio::ApplicationFlags::None)

    actions = {
      {name: "activate", shortcut: "<primary>N", closure: ->activate},
      {name: "add_docset", shortcut: nil, closure: ->add_docset},
      {name: "about", shortcut: nil, closure: ->show_about_dlg},
    }
    actions.each do |action|
      g_action = Gio::SimpleAction.new(action[:name], nil)
      g_action.activate_signal.connect { action[:closure].call }
      add_action(g_action)
      shortcut = action[:shortcut]
      set_accels_for_action("app.#{action[:name]}", {shortcut}) if shortcut
    end
  end

  @[GObject::Virtual]
  def activate
    @window = window = ApplicationWindow.new(self)
    window.present
  end

  private def add_docset
    title = "Not yet implemented"
    text = %q(<span size="xx-large">🧌</span>)
    secondary = "UI to add docsets isn't implemented nether a priority right now.\n\n" \
                "So to add a docset you will need to copy the docset (<tt>Foo.docset</tt> directory)" \
                "under one of these directories:\n\n" \
                "<tt>~/.local/share/rtfm/docsets\n" \
                "~/.local/share/Zeal/Zeal/docsets\n" \
                "../share/rtfm/docsets (relative to rtfm binary)\n" \
                "</tt>\n\n" \
                "Sorry for the inconvenience 😁️"
    Gtk::MessageDialog.ok(title: title, text: text, use_markup: true, secondary_text: secondary, secondary_use_markup: true, transient_for: @window, modal: true) { }
  end

  private ABOUT_DLG_COMMENTS = <<-EOT
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
