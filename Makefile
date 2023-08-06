PREFIX  := /usr
SRCDIR  := $(PREFIX)/share/neocat
install:
	mkdir -p $(SRCDIR)
	@cp -fr Small-Themes Large-Themes $(SRCDIR)
	cp neocat/shortcut/neocat.desktop $(DESTDIR)$(PREFIX)/share/applications/neocat.desktop
	cp neocat/icon/neocat.png $(DESTDIR)$(PREFIX)/share/pixmaps/neocat.png
	install -m 755 neocat/script/neocat.sh $(DESTDIR)$(PREFIX)/bin/neocat

uninstall:
	rm -rf $(SRCDIR) $(DESTDIR)$(PREFIX)/share/applications/neocat.desktop $(DESTDIR)$(PREFIX)/share/pixmaps/neocat.png $(DESTDIR)$(PREFIX)/bin/neocat
