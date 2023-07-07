require "colorize"
require "libadwaita"
GICrystal.require("WebKit", "6.0")

require "./application"

Gio.register_resource("data/resources.xml", source_dir: "data")

# Need this, otherwise the Builder doesn't know about WebKit type since the type was never registered on GLib type system
WebKit::WebView.g_type

{% if flag?(:debug) %}
  DocSet.lookup_dirs.unshift(Path.new("./data"))
{% end %}

exit(Application.new.run)
