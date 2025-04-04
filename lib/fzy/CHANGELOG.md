# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.6.0] - 2024-11-14
### Changed
- Support to fuzzy search custom objects by wrapping then in the `Fzy::Hay(T)` class.
- `Fzy::Match` is now `Fzy::Match(T)`, it has a reference to `Fzy::Hay(T)`
- Removed `Fzy::Match#index`.
- Match positions are opitional and disabled by default.
- Is now possible to use a custom bonus function, pass it on `Fzy::Hay` constructor.
- `Fzy::PreparedHaystack` is now `Fzy::PreparedHaystack(T)`, just a wrapper to `Array(Fzy::Hay(T))`.

## [0.5.5] - 2023-02-24
### Fixed
- Use shards executable to generate the Fzy::VERSION constant contents.

## [0.5.4] - 2023-01-02
### Fixed
- Fix bad release 😅️

## [0.5.3] - 2023-01-02
### Changed
- Removed version_from_shard dependency (https://github.com/hugopl/version_from_shard/issues/1)

## [0.5.2] - 2021-03-26
### Changed
- Adjusted the mess I did with shards.yml on 0.5.1 release.

## [0.5.1] - 2021-03-23
### Changed
- Adjusted shards.yml for Crystal 1.0.0.

## [0.5.0] - 2020-08-03
### Added
- Added Add `empty?` and `any?` to PreparedHaystack.

## [0.4.0] - 2020-05-17
### Added
- Added match.index, to return the index of the match on haystack.

## [0.3.0] - 2020-04-10
### Fixed
- Fix build with Crystal 0.34.0.

## [0.2.2] - 2020-03-02
### Fixed
- Fix match positions calculation for long strings.

## [0.2.1] - 2020-02-13
### Fixed
- Fix Fzy.search not returning sorted results.

## [0.2.0] - 2020-02-12
### Added
- Speed improved speed by ~50%.

### Breaking change
- Removed some primitives from API, API now is just:
  - Fzy.search
  - Match class
  - PreparedHaystack class

## [0.1.1] - 2020-01-24
### Added
- Improved speed by 5% by sharing computation between search and postion methods.

## [0.1.0] - 2020-01-24
### Added
- Initial Release
