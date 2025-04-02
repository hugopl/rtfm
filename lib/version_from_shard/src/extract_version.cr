require "./extract_version_impl"

version = extract_version(ARGV[0]? || "")
puts "VERSION = \"#{version}\""
