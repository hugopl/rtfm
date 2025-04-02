## [1.2.5] - 2022-01-19
### Fixed
- You can use `crystal lib/version_from_shard/src/extract_version.cr | cut -d\" -f2` to fetch the project version.

## [1.2.4] - 2021-08-26
### Fixed
- Works with Crystal >= 0.36.1

## [1.2.3] - 2021-03-22
### Fixed
- Just read the semantic version spec to notice that the build part can't have a "+" sign.

## [1.2.2] - 2020-09-20
### Fixed
- Generates a semantic version friendly version number when using git describe (i.e. replace "-" by "+").

## [1.2.1] - 2020-04-10
### Fixed
- Fixed compilation on Crystal 0.34.0.

## [1.2.0] - 2020-03-20
### Fixed
- Fix declaration of VERSION constant on libraries.

## [1.1.0] - 2019-12-21
### Added
- Try to use `git describe --tags` to generate better version strings for
  development builds.

## [1.0.0] - 2019-11-18
- Project name changed from the generic Version to VersionFromShard, to avoid
  name clashes with existing Version class/modules.

## [0.1.0] - 2019-10-28
- Initial release.
