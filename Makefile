PREFIX  := /usr
SRCDIR  := $(PREFIX)/share/neocat
install:
	mkdir -p $(SRCDIR)
	@cp -fr usr/local/bin/Small-Themes usr/local/bin/Large-Themes $(SRCDIR)
	cp usr/local/share/applications/neocat.desktop $(DESTDIR)$(PREFIX)/share/applications/neocat.desktop
	cp usr/local/share/pixmaps/neocat.png $(DESTDIR)$(PREFIX)/share/pixmaps/neocat.png
	install -m 755 usr/local/bin/neocat.sh $(DESTDIR)$(PREFIX)/bin/neocat

uninstall:
	rm -rf $(SRCDIR) $(DESTDIR)$(PREFIX)/share/applications/neocat.desktop $(DESTDIR)$(PREFIX)/share/pixmaps/neocat.png $(DESTDIR)$(PREFIX)/bin/neocat
