require "yaml"

def to_semver(version : String, git_describe_version : String) : String
  idx = git_describe_version.index(version)
  git_describe_version = git_describe_version[idx..]
  version = git_describe_version.sub("-", "+").sub("-", ".")
  version = version[1..] if version.starts_with?("v")
  version
end

def extract_version(dir : String) : String
  if dir.empty?
    dir = Dir.current
    skip_git = false
  else
    skip_git = true
  end

  version = ""
  dir_components = Path.new(dir).parts.size
  Dir.cd(dir) do
    dir_components.times do
      if File.exists?("shard.yml")
        version = YAML.parse(File.read("shard.yml"))["version"].to_s
        break
      else
        Dir.cd("..")
      end
    end
  end

  raise "File not found or empty version string." if version.empty?

  skip_git ? version : try_git_describe(version)
rescue e
  abort("Error reading shard.yml: #{e.message}")
end

def try_git_describe(version)
  git = Process.new("git", %w(describe --tags), output: Process::Redirect::Pipe)
  output = git.output.gets_to_end.strip
  return version unless git.wait.success?

  to_semver(version, output)
rescue RuntimeError
  version
end
