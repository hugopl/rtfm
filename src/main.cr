require "colorize"
require "libadwaita"
GICrystal.require("WebKit2", "5.0")

require "./application"

Gio.register_resource("data/resources.xml", source_dir: "data")

# Need this, otherwise the Builder doesn't know about WebKit type since the type was never registered on GLib type system
WebKit2::WebView.g_type

exit(Application.new.run)
