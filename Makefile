.POSIX:

prefix = /usr/local
name = tmdpres
all:
	@echo "all target"

install:
	@echo "Installing ${name}..."
	install -m 555 ${name} $(DESTDIR)/$(prefix)/bin/
	@echo "done!"

clean:
	@echo "Cleaning ${name}"

distclean: clean

uninstall:
	@echo "Uninstall ${name}"
	rm -f $(DESTDIR)/$(prefix)/bin/${name}
	@echo "done!"

.PHONY: all install clean distclean uninstall
