#-----------------------------------------------------------------------------
# STOPWATCH TIMER MAKEFILE
#-----------------------------------------------------------------------------

include ../makefile.inc

LIBDIR = ../lib
INCDIR = ../include

OBJECTS = stopwatch.o 
LOCAL_HEADERS = 
PUBLIC_HEADERS = stopwatch.hpp
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = $(INCDIR)/stopwatch.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvutimer.a

IFLAGS = $(IFLAGS_STD)
CFLAGS = $(CFLAGS_STD)
ARFLAGS = $(ARFLAGS_STD)
LDFLAGS = $(LDFLAGS_STD)

all: library

library: $(LIBDIR) $(LIBDIR)/$(LIBNAME)

$(LIBDIR)/$(LIBNAME):  $(DEPS) $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS)

$(LIBDIR) $(INCDIR):
	mkdir $@

test: $(LIBDIR)/$(LIBNAME) stoptest.o stopwatch.hpp
	$(CC) stoptest.o $(LDFLAGS) $(LIBDIR)/$(LIBNAME) -o timertest

clean:
	/bin/rm -f *.[od] $(LIBDIR)/$(LIBNAME) timertest

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

