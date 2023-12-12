{% if flag?(:unix) && flag?(:release) %}
  # If in release mode we fork and exit before doing anything, this will make possible to
  # open rtfm from terminals without blocking the terminal.
  # In debug mode we don't do this, because everybody loves printf debug style
  fun main(argc : Int32, argv : UInt8**) : Int32
    if pid = LibC.fork.zero?
      Crystal.main(argc, argv)
    else
      LibC.printf("RTFM running 🚀️, you must now be able to RTFM.\n")
      0
    end
  end
{% end %}

require "colorize"
require "libadwaita"
GICrystal.require("WebKit", "6.0")

require "./monkey_patches"
require "./application"

Gio.register_resource("data/resources.xml", source_dir: "data")

# Need this, otherwise the Builder doesn't know about WebKit type since the type was never registered on GLib type system
WebKit::WebView.g_type

{% if flag?(:debug) %}
  DocSet.lookup_dirs.unshift(Path.new("./data"))
{% end %}

exit(Application.new.run)
