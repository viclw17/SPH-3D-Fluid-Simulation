#-----------------------------------------------------------------------------
# EXAMPLE PROGRAMS
#-----------------------------------------------------------------------------

include ../makefile.inc

examples = example_basic \
           example_basic_oo \
           example_2windows \
           example_menu \
           example_keymouse \
           example_keymouse_oo \
           obj_example_basic \
           obj_example_2objs \
           obj_example_objmngr \
           obj_example_objmngr_vu \
	   obj_example_objmngr_vu_hier \
	   obj_example_objmngr_gravity

LDFLAGS = -L$(GLUT_LIBDIR) $(LDFLAGS_STD)
CFLAGS = $(CFLAGS_STD)

basic_libs = -lglut -lGL -lGLU -lXmu -lXext -lX11 -lm
glvu_core_libs = ../lib/libglvuglvu.a ../lib/libglvucamera.a \
                 ../lib/libglvumathobjs.a ../lib/libglvumath.a 
glvu_obj_libs = ../lib/libglvuobject.a ../lib/libglvuglutils.a \
                ../lib/libglvuimages.a ../lib/libglvutimer.a

all_glvu_core_libs = $(glvu_core_libs) $(basic_libs)
all_glvu_obj_libs = $(glvu_obj_libs) $(all_glvu_core_libs) 

IFLAGS = -I$(GL_INCDIR) -I$(GLUT_INCDIR)\
         -I../glvu/\
         -I../camera/\
         -I../math/\
         -I../math_objs/\
         -I../glutils/\
         -I../object/\
	 -I../timer/\
         -I../object/misc_objects/\
         -I../object/trimodel/\
         -I../object/vrmltrimodel/\
         -I../object/objmodel/\
         -I../object/nurbsmodel/\
         -I../object/bfftrimodel/\
         -I../object/ffftrimodel/\
         -I../images/ppm/\
	 $(IFLAGS_STD)

all: $(examples)

example_basic: example_basic.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
example_basic_oo: example_basic_oo.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
example_2windows: example_2windows.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
example_menu: example_menu.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
example_keymouse: example_keymouse.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
example_keymouse_oo: example_keymouse_oo.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_core_libs) -o $@
obj_example_basic: obj_example_basic.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@
obj_example_2objs: obj_example_2objs.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@
obj_example_objmngr: obj_example_objmngr.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@
obj_example_objmngr_vu: obj_example_objmngr_vu.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@
obj_example_objmngr_vu_hier: obj_example_objmngr_vu_hier.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@
obj_example_objmngr_gravity: obj_example_objmngr_gravity.o
	$(CC) $(CFLAGS) $@.o $(LDFLAGS) $(all_glvu_obj_libs) -o $@

clean:
	/bin/rm -rf `find . -name "*.o"` $(examples)







