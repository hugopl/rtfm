class Doc
  enum Kind
    Annotation
    Attribute
    Binding
    Builtin
    Callback
    Category
    Class
    Command
    Component
    Constant
    Constructor
    Define
    Delegate
    Diagram
    Directive
    Element
    Entry
    Enum
    Environment
    Error
    Event
    Exception
    Extension
    Field
    File
    Filter
    Framework
    Function
    Global
    Guide
    Hook
    Instance
    Instruction
    Interface
    Keyword
    Library
    Literal
    Macro
    Method
    Mixin
    Modifier
    Module
    Namespace
    Notation
    Object
    Operator
    Option
    Package
    Parameter
    Plugin
    Procedure
    Property
    Protocol
    Provider
    Provisioner
    Query
    Record
    Resource
    Sample
    Section
    Service
    Setting
    Shortcut
    Statement
    Struct
    Style
    Subroutine
    Tag
    Test
    Trait
    Type
    Union
    Value
    Variable
    Word

    # RTFM additions
    Signal
    Unknown
  end

  getter key : String
  getter name : String

  # TODO: Replace kind by a enum  with https://kapeli.com/docsets#supportedentrytypes values
  getter kind : Kind
  getter path : String

  def initialize(@key, @name, kind : String, @path)
    @kind = Kind.parse?(kind) || guess_kind(kind)
  end

  def icon_name : String
    # TODO: Have nice icons 😎️
    "dialog-question-symbolic"
  end

  private def guess_kind(kind : String) : Kind
    case kind.underscore
    # GLib
    when "cat"     then Kind::Category
    when "func"    then Kind::Function
    when "tdef"    then Kind::Type
    when "clconst" then Kind::Variable
      # Postgres
    when "view" then Kind::Section
      # Puppet
    when "report" then Kind::Guide
      # Rails
    when "cl"           then Kind::Class
    when "instm", "clm" then Kind::Method
    else
      {% if flag?(:release) %}
        Kind::Unknown
      {% else %}
        raise ArgumentError.new("Unknown kind: #{kind} for #{name} pointing to #{@path}")
      {% end %}
    end
  end
end
