.PHONY: all debug configure rtfm docsets crystal-docset gtk-docset test install uninstall clean
PREFIX ?= /usr
CR_FLAGS ?= -Dstrict_multi_assign -Duse_pcre2 -Dpreview_overload_order --link-flags='-Wl,--as-needed'

# Crystal API docs used to build the Crystal docset. Distros used to ship them
# (Arch's crystal package doesn't anymore), so when they are not installed we
# generate them from the stdlib sources shipped with the compiler.
CRYSTAL_DOC_DIR ?= /usr/share/doc/crystal/api
CRYSTAL_SRC_DIR ?= $(shell crystal env CRYSTAL_PATH | tr ':' '\n' | tail -n1)
CRYSTAL_VERSION ?= $(shell crystal env CRYSTAL_VERSION)
GENERATED_CRYSTAL_DOC_DIR = build/crystal-api
CRYSTAL_DOC_SOURCE = $(if $(wildcard $(CRYSTAL_DOC_DIR)/index.json),$(CRYSTAL_DOC_DIR),$(GENERATED_CRYSTAL_DOC_DIR))

all: rtfm docsets

debug:
	shards build --debug $(CR_FLAGS) --error-trace

rtfm:
	shards build --release $(CR_FLAGS) rtfm

docsets: crystal-docset gtk-docset

crystal-docset: $(CRYSTAL_DOC_SOURCE)/index.json
	crystal run src/doc2dash/create_crystal_docset.cr -- $(CRYSTAL_DOC_SOURCE)

# Only ever used when the distro doesn't ship the offline API docs, otherwise
# CRYSTAL_DOC_SOURCE points at the installed ones and this rule isn't reached.
$(GENERATED_CRYSTAL_DOC_DIR)/index.json:
	crystal docs $(CRYSTAL_SRC_DIR)/docs_main.cr --project-name=Crystal \
		--project-version=$(CRYSTAL_VERSION) --output=$(GENERATED_CRYSTAL_DOC_DIR)

gtk-docset:
	crystal run src/doc2dash/create_gtk_docset.cr

test: crystal-docset gtk-docset
	crystal spec

install:
	install -D -m 0755 bin/rtfm $(DESTDIR)$(PREFIX)/bin/rtfm
	install -D -m 0644 data/io.github.hugopl.rtfm.desktop $(DESTDIR)$(PREFIX)/share/applications/io.github.hugopl.rtfm.desktop
	install -D -m 0644 data/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg
	# Settings schema
	install -D -m644 data/io.github.hugopl.rtfm.gschema.xml $(DESTDIR)$(PREFIX)/share/glib-2.0/schemas/io.github.hugopl.rtfm.gschema.xml
	# docsets
	mkdir -p $(DESTDIR)$(PREFIX)/share/rtfm/docsets/
	cp -r data/Crystal.docset $(DESTDIR)$(PREFIX)/share/rtfm/docsets/
	cp -r data/Gtk.docset $(DESTDIR)$(PREFIX)/share/rtfm/docsets/
	# License
	install -D -m0644 LICENSE $(DESTDIR)$(PREFIX)/share/licenses/rtfm/LICENSE
	# Changelog
	install -D -m0644 CHANGELOG.md $(DESTDIR)$(PREFIX)/share/doc/rtfm/CHANGELOG.md
	gzip -9fn $(DESTDIR)$(PREFIX)/share/doc/rtfm/CHANGELOG.md

clean:
	rm -rf $(GENERATED_CRYSTAL_DOC_DIR)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/rtfm
	rm -f $(DESTDIR)$(PREFIX)/share/applications/io.github.hugopl.rtfm.desktop
	rm -f $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.hugopl.rtfm.svg
	rm -rf $(DESTDIR)$(PREFIX)/share/rtfm
	rm -rf $(DESTDIR)$(PREFIX)/share/licenses/rtfm
	rm -rf $(DESTDIR)$(PREFIX)/share/doc/rtfm
	rm -f $(DESTDIR)$(PREFIX)/share/glib-2.0/schemas/io.github.hugopl.rtfm.gschema.xml
