# 🐵️🩹️
#
# Monkey patches not yet upstreamed goes here.
lib LibGtk
  fun gtk_widget_class_add_binding_action(widget_class : Void*, key_val : UInt32, mods : Int32, action_name : LibC::Char*, format_string : LibC::Char*, ...)
end
