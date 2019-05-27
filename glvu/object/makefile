#-----------------------------------------------------------------------------
# GLVU OBJECT LIB MAKE FILE
#-----------------------------------------------------------------------------

include ../makefile.inc

LIBDIR = ../lib
INCDIR = ../include

OBJECTS = \
     trimodel/trimodel.o \
     trimodel/trimodel_disp.o \
     objmodel/glm.o \
     objmodel/objmodel.o \
     vrmltrimodel/vrmlreadtools.o \
     vrmltrimodel/vrmltri.o \
     vrmltrimodel/vrmltrimodel.o \
     vrmltrimodel/vrmltrimodel_disp.o \
     nurbsmodel/nurbsmodel.o \
     nurbsmodel/nurbs.o \
     bfftrimodel/bfftri.o \
     bfftrimodel/bfftrimodel.o \
     bfftrimodel/bfftrimodel_disp.o \
     bfftrimodel/txtr.o \
     misc_objects/wavy.o \
     misc_objects/groundplane.o \
     misc_objects/boundingbox.o \
     object.o objframe.o objmngr.o

LOCAL_HEADERS =
PUBLIC_HEADERS = \
	object.hpp \
        objframe.hpp \
        objmngr.hpp \
        trimodel/trimodel.hpp \
        objmodel/objmodel.hpp \
        vrmltrimodel/vrmltrimodel.hpp \
        nurbsmodel/nurbsmodel.hpp \
        bfftrimodel/bfftrimodel.hpp \
        misc_objects/boundingbox.hpp \
        misc_objects/groundplane.hpp \
        misc_objects/wavy.hpp
        
        
ALL_HEADERS = $(LOCAL_HEADERS) $(PUBLIC_HEADERS)
INSTALLED_HEADERS = \
	$(INCDIR)/object.hpp \
	$(INCDIR)/objframe.hpp \
	$(INCDIR)/objmngr.hpp \
	$(INCDIR)/trimodel.hpp \
	$(INCDIR)/objmodel.hpp \
	$(INCDIR)/vrmltrimodel.hpp \
	$(INCDIR)/nurbsmodel.hpp \
	$(INCDIR)/bfftrimodel.hpp \
	$(INCDIR)/boundingbox.hpp \
	$(INCDIR)/groundplane.hpp \
	$(INCDIR)/wavy.hpp
# nice gnu make variant
#  INSTALLED_HEADERS=$(patsubst %,$(INCDIR)/%,$(PUBLIC_HEADERS))

LIBNAME = libglvuobject.a

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         -I../camera/\
         -I../math/\
         -I../math_objs/\
         -I../glutils/\
         -I../images/ppm/\
         -Imisc_objects/\
         -Itrimodel/\
         -Ivrmltrimodel/\
         -Iobjmodel/\
         -Inurbsmodel/\
         -Ibfftrimodel/\
         -Iffftrimodel/\
	 -I../timer/\
         $(IFLAGS_STD)
CFLAGS = $(CFLAGS_STD)
ARFLAGS = $(ARFLAGS_STD)

all: library

library: $(LIBDIR) $(LIBDIR)/$(LIBNAME)

$(LIBDIR)/$(LIBNAME):  $(DEPS) $(OBJECTS) $(COBJECTS)
	$(AR) $(ARFLAGS) $@ $(OBJECTS) $(COBJECTS)

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
$(DEPS): $(OBJECTS:.o=.cpp) $(COBJECTS:.o=.c) $(ALL_HEADERS)
	@echo "Regenerating dependencies (run make again to pick up changes)"
	@$(CC) -M $(IFLAGS) $(OBJECTS:.o=.cpp) $(COBJECTS:.o=.c) > $(DEPS)

# There must be a .deps file in the directory.
# If there isn't this will choke.  Do a 'touch .deps' to fix.
.PRECIOUS: $(DEPS)
include $(DEPS)

