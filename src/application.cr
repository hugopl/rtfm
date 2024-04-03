require "./application_window"
require "./rtfm_log_format"

VERSION = {{ `shards version #{__DIR__}`.strip.stringify }}
LICENSE = {{ run("./macros/license.cr").stringify }}

class Application < Adw::Application
  getter settings : Gio::Settings

  @system_color_scheme : Adw::ColorScheme
  @window : ApplicationWindow?

  def initialize
    flags = Gio::ApplicationFlags::None | Gio::ApplicationFlags::HandlesCommandLine
    {% unless flag?(:release) %}
      flags |= Gio::ApplicationFlags::NonUnique
    {% end %}
    super(application_id: "io.github.hugopl.rtfm", flags: flags)
    @settings = Gio::Settings.new("io.github.hugopl.rtfm")

    style_manager = Adw::StyleManager.default
    @system_color_scheme = style_manager.color_scheme
    @settings.changed_signal["style-variant"].connect(->theme_changed(String))
    theme_changed

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

    add_main_option("version", 0, :none, :none, "Show version information and exit", nil)
    add_main_option("license", 0, :none, :none, "Show license information and exit", nil)
    add_main_option("log-level", 0, :none, :string, "Log level to be used", nil)
  end

  @[GObject::Virtual]
  def handle_local_options(options : GLib::VariantDict) : Int32
    if options.remove("version")
      puts "RTFM version #{VERSION} build with Crystal #{Crystal::VERSION}."
      return 0
    elsif options.remove("license")
      puts LICENSE.gsub(/<\/?(big|tt)>/, "")
      return 0
    end

    log_level = options.lookup_value("log-level", GLib::VariantType.new("s")).try(&.as_s?)
    setup_logger(log_level)

    -1
  rescue e : ArgumentError
    STDERR.puts(e.message)
    0
  end

  @[GObject::Virtual]
  def command_line(command_line : Gio::ApplicationCommandLine) : Int32
    query = command_line.arguments[1]?
    @window = window = ApplicationWindow.new(self, query)
    window.present
    0
  end

  private def add_docset
    title = "Not yet implemented"
    text = %q(<span size="xx-large">🧌</span>)
    secondary = "UI to add docsets isn't implemented nether a priority right now.\n\n" \
                "So to add a docset you will need to copy the docset " \
                "to one of these directories:\n\n" \
                "<tt>~/.local/share/rtfm/docsets\n" \
                "~/.local/share/Zeal/Zeal/docsets\n" \
                "../share/rtfm/docsets (relative to rtfm binary)\n" \
                "</tt>\n\n" \
                "Sorry for the inconvenience 😁️"
    Gtk::MessageDialog.ok(title: title, text: text, use_markup: true, secondary_text: secondary, secondary_use_markup: true, transient_for: @window, modal: true) { }
  end

  private ABOUT_DLG_COMMENTS = <<-EOT
    Rtfm means <i>Read the formidable documentation</i>.

    It's a Gnome Dash Docset Reader written in Crystal written with ❤️.
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

  private def theme_changed(_unused = nil)
    theme = @settings.string("style-variant")
    style_manager = Adw::StyleManager.default
    color_scheme = case theme
                   when "light" then Adw::ColorScheme::ForceLight
                   when "dark"  then Adw::ColorScheme::ForceDark
                   else
                     @system_color_scheme
                   end
    style_manager.color_scheme = color_scheme
  end

  private def setup_logger(log_level : String?)
    level = log_level ? Log::Severity.parse(log_level) : Log::Severity::Info

    log_io = begin
      {% if flag?(:release) %}
        File.open(File.join(Dir.tempdir, "rtfm.log"), "a")
      {% else %}
        STDOUT
      {% end %}
    end
    backend = Log::IOBackend.new(io: log_io, formatter: RtfmLogFormat, dispatcher: Log::DispatchMode::Direct)
    Log.setup(level, backend)
    Log.info { "RTFM v#{VERSION} started at #{Time.local}, pid: #{Process.pid}, log level: #{level}" }
  end
end
