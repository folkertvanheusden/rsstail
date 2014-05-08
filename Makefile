VERSION=1.8

DEBUG=-g
LDFLAGS=-lmrss $(DEBUG)
CFLAGS=-O2 -Wall -DVERSION=\"$(VERSION)\" $(DEBUG)

OBJS=r2t.o

all: rsstail

rsstail: $(OBJS)
	$(CC) -Wall -W $(OBJS) $(LDFLAGS) -o rsstail
	#
	# Oh, blatant plug: http://keetweej.vanheusden.com/wishlist.html

install: rsstail
	cp rsstail $(DESTDIR)/usr/bin
	cp rsstail.1 $(DESTDIR)/usr/share/man/man1/

clean:
	rm -f $(OBJS) core rsstail

package: clean
	# source package
	rm -rf rsstail-$(VERSION)*
	mkdir rsstail-$(VERSION)
	cp *.c *.1 Makefile* readme.txt license.* rsstail-$(VERSION)
	tar cf - rsstail-$(VERSION) | gzip -9 > rsstail-$(VERSION).tgz
	rm -rf rsstail-$(VERSION)
