![Build Status](https://github.com/hugopl/version_from_shard/actions/workflows/ci.yml/badge.svg?branch=master)

# Version From Shard

A macro to declare the VERSION constant from the value found in `shard.yml`, so you don't need to write the same version number in multiple places.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     version_from_shard:
       github: hugopl/version_from_shard
   ```

2. Run `shards install`

## Usage


```crystal
require "version_from_shard"

module MyAwesomeApp
  VersionFromShard.declare
end

puts MyAwesomeApp::VERSION # Should print the version value found in shard.yml, e.g. "1.0.0"
```

If you are developing a library is necessary to pass \_\_DIR__ to the declare macro, otherwise when compiling a
application using your library it will show the version of the application instead the version of your library.
So, on libraries do:

```crystal
module MyAwesomeLib
  VersionFromShard.declare(__DIR__)
end

# Then, the App code can safely do:
puts "Awesome app v#{MyAwesomeApp::VERSION} using awesome lib v#{MyAwesomeLib::VERSION}"
```

When compiling a development version, i.e. not a tagged commit, the version will try to
use `git describe --tags` output (ignoring tag prefixes) for the version string. If git isn't
found or someone is compiling the project from a tarball, normal version will be used.

Example:

You have `version: 1.0.0` on your shard.yml file but your master branch is 1 commit ahead of the tag named `v1.0.0` that you released yesterday, in this case VersionFromShard.declare will declare a VERSION constant with the value `1.0.0+1.g2dd5299`, assuming `2dd5299` is the current commit hash, note the `g` prefix, that means git.

## About Semantic Version

[This issue](https://github.com/semver/semver/issues/200) summarize the problems with semantic version and nightly builds
when you don't know yet if the final version of your software will increase a major, minor or patch version.

## Development

Suggestions are welcome.

## Contributing

1. Fork it (<https://github.com/hugopl/version_from_shard/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hugo Parente Lima](https://github.com/hugopl) - creator and maintainer
