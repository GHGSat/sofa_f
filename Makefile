.PHONY: all clean

hsh:=$(shell find f77 -name '*.for' -exec sha256sum {} \;|sort|sha256sum|cut -c1-16)

all: libsofa.a iau_sofa.mod

iau_sofa.mod: iau_sofa.f90
	$(FC) -c -Wall $^

libsofa.a: libsofa-$(hsh).a
	ln -sf libsofa-$(hsh).a libsofa.a

libsofa-$(hsh).a:
	$(MAKE) -Cf77/src
	cp f77/src/libsofa.a libsofa-$(hsh).a

clean:
	rm -f *.mod *.o *.a
	$(MAKE) -Cf77/src clean
