# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

