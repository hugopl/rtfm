module VersionFromShard
  macro declare(dir = "")
    {{ run("./extract_version", dir) }}
  end

  extend self
end
