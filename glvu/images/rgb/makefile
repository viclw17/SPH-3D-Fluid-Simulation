#-----------------------------------------------------------------------------
# GLVU IMAGES LIB MAKE FILE
#-----------------------------------------------------------------------------

include ../makefile.inc

LIBDIR = ../lib
INCDIR = ../include

OBJECTS = pgm/pgm.o ppm/ppm.o rgb/rgb.o

LOCAL_HEADERS =
PUBLIC_HEADERS = ppm/ppm.hpp pgm/pgm.hpp rgb/rgb.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/ppm.hpp $(INCDIR)/pgm.hpp $(INCDIR)/rgb.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvuimages.a

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         $(IFLAGS_STD)
CFLAGS = $(CFLAGS_STD)
ARFLAGS = $(ARFLAGS_STD)

all: library

library: $(LIBDIR) $(LIBDIR)/$(LIBNAME)

$(LIBDIR)/$(LIBNAME):  $(DEPS) $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS)

$(LIBDIR) $(INCDIR):
	mkdir $@

clean:
	find . -name '*.[od]' -exec rm {} \;
	rm -f $(LIBDIR)/$(LIBNAME)

distclean:
	/bin/rm -rf *.[od]

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



