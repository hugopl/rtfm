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
    Root

    def self.parse(string : String) : self
      parse?(string) || guess_kind(string)
    end

    private def self.guess_kind(string)
      case string.underscore
      # GLib
      when "cat"     then Category
      when "func"    then Function
      when "tdef"    then Type
      when "clconst" then Variable
        # Postgres
      when "view" then Section
        # Puppet
      when "report" then Guide
        # Rails
      when "cl"           then Class
      when "instm", "clm" then Method
      else
        {% if flag?(:release) %}
          Kind::Unknown
        {% else %}
          raise ArgumentError.new("Unknown Doc::Kind: #{string.inspect}")
        {% end %}
      end
    end
  end
end
