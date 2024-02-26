class Doc
  enum Kind
    Abbreviation
    Actor
    Aggregation
    Alias
    Annotation
    Association
    Attribute
    Axiom
    Binding
    Block
    Bookmark
    Builtin
    Callback
    Category
    Class
    Collection
    Column
    Command
    Component
    Constant
    Constructor
    Conversion
    Database
    Decorator
    Define
    Delegate
    DeletedSnippet
    Device
    Diagram
    Directive
    Element
    Entry
    Enum
    Environment
    Error
    Event
    Exception
    Expression
    Extension
    Field
    File
    Filter
    Flag
    Framework
    Function
    Given
    Global
    Glossary
    Guide
    Handler
    Header
    Helper
    Hook
    Index
    Indirection
    Inductive
    Instance
    Instruction
    Interface
    Iterator
    Keyword
    Kind
    Lemma
    Library
    Literal
    Macro
    Member
    Message
    Method
    Mixin
    Modifier
    Module
    Namespace
    NewSnippet
    Node
    Notation
    Object
    Operator
    Option
    Package
    Parameter
    Pattern
    Pipe
    Plugin
    Procedure
    Projection
    Property
    Protocol
    Provider
    Provisioner
    Query
    Record
    Reference
    Register
    Relationship
    Report
    Request
    Resource
    Role
    Sample
    Schema
    Script
    Section
    Sender
    Service
    Setting
    Settings
    Shortcut
    Signature
    Snippet
    State
    Statement
    Struct
    Style
    Subroutine
    Syntax
    Table
    Tactic
    Tag
    Template
    Test
    Trait
    Trigger
    Type
    Union
    Unknown
    Value
    Variable
    Variant
    View
    Web
    WebSearch
    Widget
    Word

    # RTFM additions
    Signal
  end

  getter key : String
  getter name : String
  getter kind : Kind
  getter path : String

  def initialize(@key, @name, kind : String, @path)
    @kind = Kind.parse?(kind) || guess_kind(kind)
  end

  def icon_resource : String
    "/io/github/hugopl/rtfm/#{kind.to_s}.png"
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
