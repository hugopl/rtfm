require "log"
require "spec"
require "gtk4"

require "../src/docset_repository"
require "../src/rtfm_log_format"

DocsetRepository.lookup_dirs.unshift(Path.new("./data"))
