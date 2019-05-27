#-----------------------------------------------------------------------------
# TOP LEVEL GLVU META-MAKEFILE
#-----------------------------------------------------------------------------

## This is not the real makefile.  When you run make the first time, this will
## create a file called makefile.gen. That is the real makefile.

## Build the top level makefile and then run make again on that
all: makefile.gen
	$(MAKE) -f makefile.gen

debug: makefile.gen
	$(MAKE) -f makefile.gen debug

install: makefile.gen
	$(MAKE) -f makefile.gen install

clean:
	$(MAKE) -f makefile.gen clean

distclean:
	$(MAKE) -f makefile.gen distclean

regen:
	perl makemakefile.pl > makefile.gen

makefile.gen: 
	perl makemakefile.pl > makefile.gen

#-----------------------------------------------------------------------------
# $Id: makefile,v 1.10 2000/04/26 15:25:21 harrism Exp $
#-----------------------------------------------------------------------------

