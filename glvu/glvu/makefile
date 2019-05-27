#-----------------------------------------------------------------------------
# GLVU GLVU LIB MAKE FILE
#-----------------------------------------------------------------------------

include ../makefile.inc


LIBDIR = ../lib
INCDIR = ../include

OBJECTS = glvu.o glvu_camview.o glvu_keyinput.o \
          glvu_menu.o glvu_mouse.o \
          snapshot.o text.o
COBJECTS = trackball.o
LOCAL_HEADERS =
PUBLIC_HEADERS = glvu.hpp text.hpp snapshot.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/glvu.hpp $(INCDIR)/text.hpp $(INCDIR)/snapshot.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvuglvu.a

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         -I../camera/\
         -I../math/\
         -I../math_objs/\
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

trackball.o:  trackball.c trackball.h
	$(cc) -c $(CFLAGS) $(IFLAGS) $*.c -o $*.o

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
# $Id: makefile,v 1.8 2000/09/19 18:47:33 baxter Exp $
#-----------------------------------------------------------------------------
