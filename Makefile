.POSIX:

PREFIX ?= /usr
BINDIR := $(DESTDIR)$(PREFIX)/bin
MANDIR := $(DESTDIR)$(PREFIX)/share/man/man8

all:
install: rdsetroot rdsetroot.8
	mkdir -p $(BINDIR)
	mkdir -p $(MANDIR)
	cp -f rdsetroot $(BINDIR)
	cp -f rdsetroot.8 $(MANDIR)
uninstall:
	rm -rf $(BINDIR)/rdsetroot
	rm -rf $(MANDIR)/rdsetroot.8

.PHONY: all install uninstall
