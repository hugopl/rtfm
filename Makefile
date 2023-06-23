.PHONY: all debug test install uninstall
PREFIX ?= /usr

all:
	shards install
	./bin-gi-crystal
	shards build --release -s

test:
	crystal spec

install:
	install -D -m 0755 bin/rtfm $(DESTDIR)$(PREFIX)/bin/rtfm
	install -D -m 0644 data/io.github.hugopl.rtfm.desktop $(DESTDIR)$(PREFIX)/share/applications/io.github.hugopl.rtfm.desktop
	install -D -m 0644 data/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg
	# Settings schema
	# install -D -m644 data/gschema.xml $(DESTDIR)$(PREFIX)share/glib-2.0/schemas/io.github.hugopl.rtfm.gschema.xml
	# License
	install -D -m0644 LICENSE $(DESTDIR)$(PREFIX)/share/licenses/rtfm/LICENSE
	# Changelog
	install -D -m0644 CHANGELOG.md $(DESTDIR)$(PREFIX)/share/doc/rtfm/CHANGELOG.md
	gzip -9fn $(DESTDIR)$(PREFIX)/share/doc/rtfm/CHANGELOG.md

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/rtfm
	rm -f $(DESTDIR)$(PREFIX)/share/applications/io.github.hugopl.rtfm.desktop
	rm -f $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg
	rm -rf $(DESTDIR)$(PREFIX)/share/rtfm
	rm -rf $(DESTDIR)$(PREFIX)/share/licenses/rtfm
	rm -rf $(DESTDIR)$(PREFIX)/share/doc/rtfm
