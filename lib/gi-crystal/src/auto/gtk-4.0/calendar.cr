require "./widget"
require "./accessible"

require "./buildable"

require "./constraint_target"

module Gtk
  @[GICrystal::GeneratedWrapper]
  class Calendar < Widget
    include Accessible
    include Buildable
    include ConstraintTarget

    macro inherited
      {{ raise "Cannot inherit from #{@type.superclass}" unless @type.annotation(GICrystal::GeneratedWrapper) }}
    end

    GICrystal.declare_new_method(Calendar, g_object_get_qdata)

    # Initialize a new `Calendar`.
    def initialize
      super
    end

    # :nodoc:
    def initialize(pointer, transfer : GICrystal::Transfer)
      super
    end

    # :nodoc:
    # Code copied from crystal/src/weak_ref.cr
    # Allocates this object using malloc_atomic, allowing the GC to run more efficiently.
    # As GObjects memory is managed using reference counting, we do not need to scan its pointers.
    def self.allocate
      ptr = GC.malloc_atomic(instance_sizeof(self)).as(self)
      set_crystal_type_id(ptr)
      ptr
    end

    def initialize(*, accessible_role : Gtk::AccessibleRole? = nil, can_focus : Bool? = nil, can_target : Bool? = nil, css_classes : Enumerable(::String)? = nil, css_name : ::String? = nil, cursor : Gdk::Cursor? = nil, date : GLib::DateTime? = nil, day : Int32? = nil, focus_on_click : Bool? = nil, focusable : Bool? = nil, halign : Gtk::Align? = nil, has_default : Bool? = nil, has_focus : Bool? = nil, has_tooltip : Bool? = nil, height_request : Int32? = nil, hexpand : Bool? = nil, hexpand_set : Bool? = nil, layout_manager : Gtk::LayoutManager? = nil, limit_events : Bool? = nil, margin_bottom : Int32? = nil, margin_end : Int32? = nil, margin_start : Int32? = nil, margin_top : Int32? = nil, month : Int32? = nil, name : ::String? = nil, opacity : Float64? = nil, overflow : Gtk::Overflow? = nil, parent : Gtk::Widget? = nil, receives_default : Bool? = nil, root : Gtk::Root? = nil, scale_factor : Int32? = nil, sensitive : Bool? = nil, show_day_names : Bool? = nil, show_heading : Bool? = nil, show_week_numbers : Bool? = nil, tooltip_markup : ::String? = nil, tooltip_text : ::String? = nil, valign : Gtk::Align? = nil, vexpand : Bool? = nil, vexpand_set : Bool? = nil, visible : Bool? = nil, width_request : Int32? = nil, year : Int32? = nil)
      _names = uninitialized Pointer(LibC::Char)[43]
      _values = StaticArray(LibGObject::Value, 43).new(LibGObject::Value.new)
      _n = 0

      if !accessible_role.nil?
        (_names.to_unsafe + _n).value = "accessible-role".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, accessible_role)
        _n += 1
      end
      if !can_focus.nil?
        (_names.to_unsafe + _n).value = "can-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_focus)
        _n += 1
      end
      if !can_target.nil?
        (_names.to_unsafe + _n).value = "can-target".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, can_target)
        _n += 1
      end
      if !css_classes.nil?
        (_names.to_unsafe + _n).value = "css-classes".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_classes)
        _n += 1
      end
      if !css_name.nil?
        (_names.to_unsafe + _n).value = "css-name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, css_name)
        _n += 1
      end
      if !cursor.nil?
        (_names.to_unsafe + _n).value = "cursor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, cursor)
        _n += 1
      end
      if !date.nil?
        (_names.to_unsafe + _n).value = "date".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, date)
        _n += 1
      end
      if !day.nil?
        (_names.to_unsafe + _n).value = "day".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, day)
        _n += 1
      end
      if !focus_on_click.nil?
        (_names.to_unsafe + _n).value = "focus-on-click".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focus_on_click)
        _n += 1
      end
      if !focusable.nil?
        (_names.to_unsafe + _n).value = "focusable".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, focusable)
        _n += 1
      end
      if !halign.nil?
        (_names.to_unsafe + _n).value = "halign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, halign)
        _n += 1
      end
      if !has_default.nil?
        (_names.to_unsafe + _n).value = "has-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_default)
        _n += 1
      end
      if !has_focus.nil?
        (_names.to_unsafe + _n).value = "has-focus".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_focus)
        _n += 1
      end
      if !has_tooltip.nil?
        (_names.to_unsafe + _n).value = "has-tooltip".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, has_tooltip)
        _n += 1
      end
      if !height_request.nil?
        (_names.to_unsafe + _n).value = "height-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, height_request)
        _n += 1
      end
      if !hexpand.nil?
        (_names.to_unsafe + _n).value = "hexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand)
        _n += 1
      end
      if !hexpand_set.nil?
        (_names.to_unsafe + _n).value = "hexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, hexpand_set)
        _n += 1
      end
      if !layout_manager.nil?
        (_names.to_unsafe + _n).value = "layout-manager".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, layout_manager)
        _n += 1
      end
      if !limit_events.nil?
        (_names.to_unsafe + _n).value = "limit-events".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, limit_events)
        _n += 1
      end
      if !margin_bottom.nil?
        (_names.to_unsafe + _n).value = "margin-bottom".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_bottom)
        _n += 1
      end
      if !margin_end.nil?
        (_names.to_unsafe + _n).value = "margin-end".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_end)
        _n += 1
      end
      if !margin_start.nil?
        (_names.to_unsafe + _n).value = "margin-start".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_start)
        _n += 1
      end
      if !margin_top.nil?
        (_names.to_unsafe + _n).value = "margin-top".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, margin_top)
        _n += 1
      end
      if !month.nil?
        (_names.to_unsafe + _n).value = "month".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, month)
        _n += 1
      end
      if !name.nil?
        (_names.to_unsafe + _n).value = "name".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, name)
        _n += 1
      end
      if !opacity.nil?
        (_names.to_unsafe + _n).value = "opacity".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, opacity)
        _n += 1
      end
      if !overflow.nil?
        (_names.to_unsafe + _n).value = "overflow".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, overflow)
        _n += 1
      end
      if !parent.nil?
        (_names.to_unsafe + _n).value = "parent".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, parent)
        _n += 1
      end
      if !receives_default.nil?
        (_names.to_unsafe + _n).value = "receives-default".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, receives_default)
        _n += 1
      end
      if !root.nil?
        (_names.to_unsafe + _n).value = "root".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, root)
        _n += 1
      end
      if !scale_factor.nil?
        (_names.to_unsafe + _n).value = "scale-factor".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, scale_factor)
        _n += 1
      end
      if !sensitive.nil?
        (_names.to_unsafe + _n).value = "sensitive".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, sensitive)
        _n += 1
      end
      if !show_day_names.nil?
        (_names.to_unsafe + _n).value = "show-day-names".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_day_names)
        _n += 1
      end
      if !show_heading.nil?
        (_names.to_unsafe + _n).value = "show-heading".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_heading)
        _n += 1
      end
      if !show_week_numbers.nil?
        (_names.to_unsafe + _n).value = "show-week-numbers".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, show_week_numbers)
        _n += 1
      end
      if !tooltip_markup.nil?
        (_names.to_unsafe + _n).value = "tooltip-markup".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_markup)
        _n += 1
      end
      if !tooltip_text.nil?
        (_names.to_unsafe + _n).value = "tooltip-text".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, tooltip_text)
        _n += 1
      end
      if !valign.nil?
        (_names.to_unsafe + _n).value = "valign".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, valign)
        _n += 1
      end
      if !vexpand.nil?
        (_names.to_unsafe + _n).value = "vexpand".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand)
        _n += 1
      end
      if !vexpand_set.nil?
        (_names.to_unsafe + _n).value = "vexpand-set".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, vexpand_set)
        _n += 1
      end
      if !visible.nil?
        (_names.to_unsafe + _n).value = "visible".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, visible)
        _n += 1
      end
      if !width_request.nil?
        (_names.to_unsafe + _n).value = "width-request".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, width_request)
        _n += 1
      end
      if !year.nil?
        (_names.to_unsafe + _n).value = "year".to_unsafe
        GObject::Value.init_g_value(_values.to_unsafe + _n, year)
        _n += 1
      end

      ptr = LibGObject.g_object_new_with_properties(self.class.g_type, _n, _names, _values)
      super(ptr, :full)

      _n.times do |i|
        LibGObject.g_value_unset(_values.to_unsafe + i)
      end

      LibGObject.g_object_set_qdata(@pointer, GICrystal::INSTANCE_QDATA_KEY, Pointer(Void).new(object_id))
    end

    @@g_type : UInt64?

    # Returns the type id (GType) registered in GLib type system.
    def self.g_type : UInt64
      @@g_type ||= LibGtk.gtk_calendar_get_type.tap do |g_type|
        # Set the Crystal constructor on type qdata
        ctor = ->Gtk::Calendar.new(Void*, GICrystal::Transfer)
        LibGObject.g_type_set_qdata(g_type, GICrystal::INSTANCE_FACTORY, ctor.pointer)
      end
    end

    def date=(value : GLib::DateTime?) : GLib::DateTime?
      unsafe_value = value.nil? ? Pointer(Void).null : value.to_unsafe

      LibGObject.g_object_set(self, "date", unsafe_value, Pointer(Void).null)
      value
    end

    def date : GLib::DateTime?
      # Returns: None

      value = uninitialized Pointer(Void)
      LibGObject.g_object_get(self, "date", pointerof(value), Pointer(Void).null)
      GLib::DateTime.new(value, GICrystal::Transfer::None) unless value.null?
    end

    def day=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "day", unsafe_value, Pointer(Void).null)
      value
    end

    def day : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "day", pointerof(value), Pointer(Void).null)
      value
    end

    def month=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "month", unsafe_value, Pointer(Void).null)
      value
    end

    def month : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "month", pointerof(value), Pointer(Void).null)
      value
    end

    def show_day_names=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-day-names", unsafe_value, Pointer(Void).null)
      value
    end

    def show_day_names? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-day-names", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_heading=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-heading", unsafe_value, Pointer(Void).null)
      value
    end

    def show_heading? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-heading", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def show_week_numbers=(value : Bool) : Bool
      unsafe_value = value

      LibGObject.g_object_set(self, "show-week-numbers", unsafe_value, Pointer(Void).null)
      value
    end

    def show_week_numbers? : Bool
      # Returns: None

      value = uninitialized LibC::Int
      LibGObject.g_object_get(self, "show-week-numbers", pointerof(value), Pointer(Void).null)
      GICrystal.to_bool(value)
    end

    def year=(value : Int32) : Int32
      unsafe_value = value

      LibGObject.g_object_set(self, "year", unsafe_value, Pointer(Void).null)
      value
    end

    def year : Int32
      # Returns: None

      value = uninitialized Int32
      LibGObject.g_object_get(self, "year", pointerof(value), Pointer(Void).null)
      value
    end

    def self.new : self
      # gtk_calendar_new: (Constructor)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_new

      # Return value handling
      Gtk::Calendar.new(_retval, GICrystal::Transfer::Full)
    end

    def clear_marks : Nil
      # gtk_calendar_clear_marks: (Method)
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_clear_marks(to_unsafe)

      # Return value handling
    end

    def date : GLib::DateTime
      # gtk_calendar_get_date: (Method | Getter)
      # Returns: (transfer full)

      # C call
      _retval = LibGtk.gtk_calendar_get_date(to_unsafe)

      # Return value handling
      GLib::DateTime.new(_retval, GICrystal::Transfer::Full)
    end

    def day : Int32
      # gtk_calendar_get_day: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_day(to_unsafe)

      # Return value handling
      _retval
    end

    def day_is_marked(day : UInt32) : Bool
      # gtk_calendar_get_day_is_marked: (Method)
      # @day:
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_day_is_marked(to_unsafe, day)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def month : Int32
      # gtk_calendar_get_month: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_month(to_unsafe)

      # Return value handling
      _retval
    end

    def show_day_names : Bool
      # gtk_calendar_get_show_day_names: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_show_day_names(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_heading : Bool
      # gtk_calendar_get_show_heading: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_show_heading(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def show_week_numbers : Bool
      # gtk_calendar_get_show_week_numbers: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_show_week_numbers(to_unsafe)

      # Return value handling
      GICrystal.to_bool(_retval)
    end

    def year : Int32
      # gtk_calendar_get_year: (Method | Getter)
      # Returns: (transfer none)

      # C call
      _retval = LibGtk.gtk_calendar_get_year(to_unsafe)

      # Return value handling
      _retval
    end

    def mark_day(day : UInt32) : Nil
      # gtk_calendar_mark_day: (Method)
      # @day:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_mark_day(to_unsafe, day)

      # Return value handling
    end

    @[Deprecated]
    def select_day(date : GLib::DateTime) : Nil
      # gtk_calendar_select_day: (Method)
      # @date:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_select_day(to_unsafe, date)

      # Return value handling
    end

    def date=(date : GLib::DateTime) : Nil
      # gtk_calendar_set_date: (Method | Setter)
      # @date:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_date(to_unsafe, date)

      # Return value handling
    end

    def day=(day : Int32) : Nil
      # gtk_calendar_set_day: (Method | Setter)
      # @day:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_day(to_unsafe, day)

      # Return value handling
    end

    def month=(month : Int32) : Nil
      # gtk_calendar_set_month: (Method | Setter)
      # @month:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_month(to_unsafe, month)

      # Return value handling
    end

    def show_day_names=(value : Bool) : Nil
      # gtk_calendar_set_show_day_names: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_show_day_names(to_unsafe, value)

      # Return value handling
    end

    def show_heading=(value : Bool) : Nil
      # gtk_calendar_set_show_heading: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_show_heading(to_unsafe, value)

      # Return value handling
    end

    def show_week_numbers=(value : Bool) : Nil
      # gtk_calendar_set_show_week_numbers: (Method | Setter)
      # @value:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_show_week_numbers(to_unsafe, value)

      # Return value handling
    end

    def year=(year : Int32) : Nil
      # gtk_calendar_set_year: (Method | Setter)
      # @year:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_set_year(to_unsafe, year)

      # Return value handling
    end

    def unmark_day(day : UInt32) : Nil
      # gtk_calendar_unmark_day: (Method)
      # @day:
      # Returns: (transfer none)

      # C call
      LibGtk.gtk_calendar_unmark_day(to_unsafe, day)

      # Return value handling
    end

    struct DaySelectedSignal < GObject::Signal
      def name : String
        @detail ? "day-selected::#{@detail}" : "day-selected"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Calendar, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Calendar.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Calendar, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "day-selected")
      end
    end

    def day_selected_signal
      DaySelectedSignal.new(self)
    end

    struct NextMonthSignal < GObject::Signal
      def name : String
        @detail ? "next-month::#{@detail}" : "next-month"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Calendar, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Calendar.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Calendar, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "next-month")
      end
    end

    def next_month_signal
      NextMonthSignal.new(self)
    end

    struct NextYearSignal < GObject::Signal
      def name : String
        @detail ? "next-year::#{@detail}" : "next-year"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Calendar, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Calendar.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Calendar, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "next-year")
      end
    end

    def next_year_signal
      NextYearSignal.new(self)
    end

    struct PrevMonthSignal < GObject::Signal
      def name : String
        @detail ? "prev-month::#{@detail}" : "prev-month"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Calendar, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Calendar.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Calendar, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "prev-month")
      end
    end

    def prev_month_signal
      PrevMonthSignal.new(self)
    end

    struct PrevYearSignal < GObject::Signal
      def name : String
        @detail ? "prev-year::#{@detail}" : "prev-year"
      end

      def connect(*, after : Bool = false, &block : Proc(Nil)) : GObject::SignalConnection
        connect(block, after: after)
      end

      def connect(handler : Proc(Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          ::Box(Proc(Nil)).unbox(_lib_box).call
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def connect(handler : Proc(Gtk::Calendar, Nil), *, after : Bool = false) : GObject::SignalConnection
        _box = ::Box.box(handler)
        handler = ->(_lib_sender : Pointer(Void), _lib_box : Pointer(Void)) {
          _sender = Gtk::Calendar.new(_lib_sender, GICrystal::Transfer::None)
          ::Box(Proc(Gtk::Calendar, Nil)).unbox(_lib_box).call(_sender)
        }.pointer

        handler_id = LibGObject.g_signal_connect_data(@source, name, handler,
          GICrystal::ClosureDataManager.register(_box), ->GICrystal::ClosureDataManager.deregister, after.to_unsafe)
        GObject::SignalConnection.new(@source, handler_id)
      end

      def emit : Nil
        LibGObject.g_signal_emit_by_name(@source, "prev-year")
      end
    end

    def prev_year_signal
      PrevYearSignal.new(self)
    end

    def_equals_and_hash @pointer
  end
end
