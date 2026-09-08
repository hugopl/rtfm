# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Changes that change the generated API have a ⚠️.

## [0.2.1] 2025-08-05
### Fixed
- Fixed compilation with Harfbuzz 11.3.3 by ignoring `hb_ot_layout_lookup_collect_glyphs`.

## [0.2.0] 2023-07-17
### Fixed
- Fixed compilation with Harfbuzz 8.0.1 by ignoring `hb_ot_layout_get_font_extents` and
  `hb_ot_layout_get_font_extents2`.

### Changed
- GICrystal dependency bumped to >= 0.17.0.

## [0.1.0] 2023-03-10
- First release.
