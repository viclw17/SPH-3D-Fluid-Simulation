#-----------------------------------------------------------------------------
# GLVU GLUTILS LIB MAKE FILE
#-----------------------------------------------------------------------------

include ../makefile.inc

LIBDIR = ../lib
INCDIR = ../include

OBJECTS = glbuffers.o glutils.o textureobj.o
LOCAL_HEADERS = 
PUBLIC_HEADERS = glbuffers.hpp glutils.hpp textureobj.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/glbuffers.hpp $(INCDIR)/glutils.hpp $(INCDIR)/textureobj.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvuglutils.a

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         -I../camera/\
         -I../math/\
         -I../math_objs/\
	 -I../images/ppm/\
         -I.\
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

