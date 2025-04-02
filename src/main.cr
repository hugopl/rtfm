require "colorize"
require "libadwaita"
GICrystal.require("WebKit", "6.0")

require "./monkey_patches"
require "./application"
require "./docset_repository"

Gtk.init
Gio.register_resource("data/resources.xml", source_dir: "data")

# Need this, otherwise the Builder doesn't know about WebKit type since the type was never registered on GLib type system
WebKit::WebView.g_type

{% if flag?(:debug) %}
  DocsetRepository.lookup_dirs.unshift(Path.new("./data"))
{% end %}

begin
  app = Application.new
  code = app.run
  Log.info { "Rtfm quiting with exit code #{code}." }
  exit(code)
rescue ex
  Log.error(exception: ex) { ex.message }
  Log.info { "Rtfm quiting due to #{ex.class.name} exception." }
  abort
end
