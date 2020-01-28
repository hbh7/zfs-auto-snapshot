PREFIX := /usr/local

all:

install:
	install -d $(DESTDIR)/etc/cron.d
	install -m 0644 etc/cron.d/zfs-auto-snapshot $(DESTDIR)/etc/cron.d/zfs-auto-snapshot
	install -d $(DESTDIR)$(PREFIX)/share/man/man8
	install -m 0644 src/zfs-auto-snapshot.8 $(DESTDIR)$(PREFIX)/share/man/man8/zfs-auto-snapshot.8
	install -d $(DESTDIR)$(PREFIX)/sbin
	install src/zfs-auto-snapshot.sh $(DESTDIR)$(PREFIX)/sbin/zfs-auto-snapshot

uninstall:
	rm $(DESTDIR)/etc/cron.d/zfs-auto-snapshot
	rm $(DESTDIR)$(PREFIX)/share/man/man8/zfs-auto-snapshot.8
	rm $(DESTDIR)$(PREFIX)/sbin/zfs-auto-snapshot
