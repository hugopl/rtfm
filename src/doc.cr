class Doc < GObject::Object
  getter name : String
  getter kind : String
  getter path : String

  def initialize(@kind, @name, @path)
    super()
  end

  def icon_name : String
    case kind
    when "union"                 then "lang-union-symbolic"
    when "alias"                 then "lang-alias-symbolic"
    when "class"                 then "lang-class-symbolic"
    when "macro"                 then "lang-macro-symbolic"
    when "enum"                  then "lang-enum-symbolic"
    when "enumvalue"             then "lang-enum-value-symbolic"
    when "function"              then "lang-function-symbolic"
    when "method", "classmethod" then "lang-method-symbolic"
    when "module", "namespace"   then "lang-namespace-symbolic"
    when "struct"                then "lang-struct-symbolic"
    when "structfield"           then "lang-struct-field-symbolic"
    else
      "lang-unknown-symbolic"
    end
  end
end
