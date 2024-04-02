# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.0] - 2024-05-02
### Fixed
- Fix compilation with GLib 2.80 and GTK 4.14.
- Search text is selected when locator is show.
- Do not fork on --license and --version command line arguments.

### Changed
- Removed buttons to search-prev/search-next, use F3/Ctrl+F3 instead.
- Show arguments on Crystal docset methods and functions.
- Class only search was temporary removed.

### Added
- Added document hierarchy, a sidebar was added to show them.
- Show arguments on Crystal docset methods and functions.

## [0.3.1] - 2024-02-25
### Added
- Icons [from Dash](https://github.com/Kapeli/Dash-X-Platform-Resources) for doc entries.
### Fixed
- Redis docset now works.

## [0.3.0] - 2024-02-23
### Added
- New UI
- It's possible to search only classes by prefixing the search with "c ".
- It's possible to search only methods by prefixing the search with ". ".

### Fixed
- Fixed incompatibilities with some docsets, many more still existing.

### Changed
- Removed save session feature.

## [0.2.4] - 2023-12-09
### Fixed
- Fix crash caused by GResource being compiled at runtime, thanks @sund3RRR (#14).

## [0.2.3] - 2023-11-21
### Fixed
- Fix crashes with GTK4 > 4.6

## [0.2.2] - 2023-07-23
### Fixed
- Don't refuse to start if there are removed docsets in the saved session.
- Remove use of GTK deprecated API.

## [0.2.1] - 2023-07-17
### Fixed
- Fixed compilation with Harfbuzz 8.0.
- Fixed makefile for parallel builds.

## [0.2.0] - 2023-07-17
### Added
- Added built in GTK docsets (GLib, Gio and GObject still missing).
- Added locator menu to change current docset.
- Page search on Ctrl+F or any input when webview is focused.
- Added flatpack package.

### Fixed
- Search results scroll bar stay always on top after a search change.
- Only show search results popover if there are results to show.

## [0.1.0] - 2023-07-07
### Added
- Barely usable, this release is just to have an ArchLinux AUR package.

