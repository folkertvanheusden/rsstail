VERSION=1.9.1

DEBUG=-g
LDFLAGS=-liconv -lmrss $(DEBUG)
CFLAGS=-O2 -Wall -DVERSION=\"$(VERSION)\" $(DEBUG)

OBJS=r2t.o

prefix ?= /usr/local
bindir ?= $(prefix)/bin
mandir ?= $(prefix)/share/man/man1

all: rsstail

rsstail: $(OBJS)
	$(CC) -Wall -W $(OBJS) $(LDFLAGS) -o rsstail

install: rsstail
	mkdir -p $(bindir)
	mkdir -p $(mandir)
	install rsstail $(bindir)
	install -m 644 rsstail.1 $(mandir)

clean:
	rm -f $(OBJS) core rsstail

package: clean
	# source package
	rm -rf rsstail-$(VERSION)*
	mkdir rsstail-$(VERSION)
	cp *.c *.1 Makefile* readme.txt license.* rsstail-$(VERSION)
	tar cf - rsstail-$(VERSION) | gzip -9 > rsstail-$(VERSION).tgz
	rm -rf rsstail-$(VERSION)

check:
	cppcheck -v --enable=all --std=c++11 --inconclusive -I. . 2> err.txt
