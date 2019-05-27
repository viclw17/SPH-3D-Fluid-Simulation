#-----------------------------------------------------------------------------
# GLVU MATH LIB MAKE FILE
#-----------------------------------------------------------------------------

include ../makefile.inc

LIBDIR = ../lib
INCDIR = ../include

OBJECTS = mat16fv.o vec3fv.o
LOCAL_HEADERS = mat44impl.hpp
PUBLIC_HEADERS = mat16fv.hpp mat44.hpp mat44impl.hpp\
		 vec2f.hpp vec3f.hpp vec3fv.hpp vec4f.hpp\
		 mat33.hpp mat33impl.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/mat16fv.hpp $(INCDIR)/mat44.hpp\
		    $(INCDIR)/mat44impl.hpp\
                    $(INCDIR)/vec2f.hpp $(INCDIR)/vec3f.hpp\
		    $(INCDIR)/vec3fv.hpp $(INCDIR)/vec4f.hpp\
		    $(INCDIR)/mat33.hpp $(INCDIR)/mat33impl.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvumath.a

IFLAGS = $(IFLAGS_STD)
CFLAGS = $(CFLAGS_STD)
ARFLAGS = $(ARFLAGS_STD)

all: library

library: $(LIBDIR) $(LIBDIR)/$(LIBNAME)

$(LIBDIR)/$(LIBNAME):  $(DEPS) $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS)

$(LIBDIR) $(INCDIR):
	mkdir $@

mat44test: $(LIBDIR)/$(LIBNAME) mat44test.o mat44.hpp mat44impl.hpp
	$(CC) mat44test.o $(LDFLAGS) $(LIBDIR)/$(LIBNAME) -lm -o mat44test

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

