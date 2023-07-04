require "./application_window"

class Application < Adw::Application
  @window : ApplicationWindow?

  def initialize
    super(application_id: "io.github.hugopl.rtfm", flags: Gio::ApplicationFlags::None)

    action = Gio::SimpleAction.new("activate", nil)
    action.activate_signal.connect { activate }
    add_action(action)
    set_accels_for_action("app.activate", {"<primary>N"})
  end

  @[GObject::Virtual]
  def activate
    @window = window = ApplicationWindow.new(self)
    window.present
  end
end
