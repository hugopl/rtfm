# Read the Formidable Manual

It's a dash/docset reader with built in documentation for Crystal and GTK
APIs. It's written in [Crystal](https://crystal-lang.org/) using
[GTK4 bindings](https://github.com/hugopl/gtk4.cr).

Tasks needed to be done before I ask anyone to use this:

- [x] Create better Crystal docset files.
- [x] Base UI defined and implemented.
- [x] Create docset reader/indexer.
- [x] Docset chooser widget.
- [ ] Add UI to download docset.
- [x] Fuzzy search and show docset results.
- [ ] Have button/shortcut to enable/disable fuzzy search.
- [x] Open docset by double click it.
- [x] Add back/foward buttons.
- [ ] Save session.
- [ ] Page search.
- [x] Tabs memorize theirs docsets.
- [ ] Fix scrollbar to be always on top after search results change.
- [x] Initial welcome page.
- [x] About dialog.
- [ ] Focus webpage after open a doc page.
- [ ] Have screenshots in this README.
- [ ] Create GTK docsets based on offline GTK docs + GIR info.
- [ ] Archlinux AUR package.
- [ ] Ubuntu package.

## Installation

Dependencies:

- [Crystal compiler](https://github.com/crystal-lang/crystal).
- [Shards dependency manager](https://github.com/crystal-lang/shards).
- [SQLite3](https://sqlite.org/index.html).
- [GTK4](https://www.gtk.org/)
- [Webkit2-5.0](https://webkitgtk.org/) (a.k.a. WebKit2 for GTK4)
- [GObject-introspection](https://gi.readthedocs.io/en/latest/) packages for all GTK related dependencies.

There are no packages for any distro yet.

```
$ shards install
$ ./bin/gi-crystal
$ make
$ make install
```

Then you need to run some commands to let Gnome Shell update the application cache and start show Rtfm, but
if you don't remember these commands, just reinstall some Gnome application like gnome-calculator and it's done 😅️.

You can uninstall it later with:

```
$ make uninstall
```

## Contributing

1. Fork it (<https://github.com/hugopl/rtfm/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hugo Parente Lima](https://github.com/hugopl) - creator and maintainer
