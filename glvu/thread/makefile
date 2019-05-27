#-----------------------------------------------------------------------------
# GENERIC MAKEFILE FOR USING THREAD LIB
#-----------------------------------------------------------------------------

include ../makefile.inc


LIBDIR = ../lib
INCDIR = ../include

OBJECTS = thread.o util.o
COBJECTS = 
LOCAL_HEADERS =
PUBLIC_HEADERS = thread.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/thread.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvuthread.a

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         -I.\
         $(IFLAGS_STD)
CFLAGS = $(CFLAGS_STD)
ARFLAGS = $(ARFLAGS_STD)

all: library

library: $(LIBDIR) $(LIBDIR)/$(LIBNAME)

$(LIBDIR)/$(LIBNAME):  $(DEPS) $(OBJECTS) $(COBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS) $(COBJECTS)

$(LIBDIR) $(INCDIR):
	mkdir $@

test: $(LIBDIR)/$(LIBNAME) threadtest.o thread.hpp
	$(CC) threadtest.o $(LDFLAGS) $(LIBDIR)/$(LIBNAME) `./threadlibs.sh` -o threadtest

clean:
	/bin/rm -f *.[od] $(LIBDIR)/$(LIBNAME)

distclean:
	/bin/rm -f *.[od]

install_headers: $(INCDIR) $(INSTALLED_HEADERS)

# Copies ALL the headers any time ONE is newer than what's in INCDIR
$(INSTALLED_HEADERS): $(PUBLIC_HEADERS)
	cp $(PUBLIC_HEADERS) $(INCDIR)

# Nice gnu make variant which copies only the changed headers
#  $(INSTALLED_HEADERS): $(INCDIR)/% : %
#	cp $< $(INCDIR)

install: library install_headers

depend: $(DEPS)
$(DEPS): $(OBJECTS:.o=.cpp) $(ALL_HEADERS)
	@echo "Regenerating dependencies (run make again to pick up changes)"
	@$(CC) -M $(IFLAGS) $(OBJECTS:.o=.cpp) > $(DEPS)

# There must be a .deps file in the directory.
# If there isn't this will choke.  Do a 'touch .deps' to fix.
.PRECIOUS: $(DEPS)
include $(DEPS)

#-----------------------------------------------------------------------------
# $Id: makefile,v 1.1.1.1 2002/02/20 20:08:53 baxter Exp $
#-----------------------------------------------------------------------------
