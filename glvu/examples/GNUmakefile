##############################################################################
# GLVU EXAMPLES MAKEFILE
##############################################################################
TYPE=App
BASE_DIR=..

# Uncomment all the apps you'd like to build
APP_NAMES :=
APP_NAMES += example_basic
APP_NAMES += example_basic_oo
APP_NAMES += example_2windows
APP_NAMES += example_menu
APP_NAMES += example_keymouse
APP_NAMES += example_keymouse_oo
APP_NAMES += obj_example_basic
APP_NAMES += obj_example_2objs
APP_NAMES += obj_example_objmngr
APP_NAMES += obj_example_objmngr_vu
APP_NAMES += obj_example_objmngr_vu_hier
APP_NAMES += obj_example_objmngr_gravity

##############################################################################

example_basic_SRCS = example_basic.cpp
example_basic_oo_SRCS = example_basic_oo.cpp
example_2windows_SRCS = example_2windows.cpp
example_menu_SRCS = example_menu.cpp
example_keymouse_SRCS = example_keymouse.cpp
example_keymouse_oo_SRCS = example_keymouse_oo.cpp
obj_example_basic_SRCS = obj_example_basic.cpp
obj_example_2objs_SRCS = obj_example_2objs.cpp
obj_example_objmngr_SRCS = obj_example_objmngr.cpp
obj_example_objmngr_vu_SRCS = obj_example_objmngr_vu.cpp
obj_example_objmngr_vu_hier_SRCS = obj_example_objmngr_vu_hier.cpp
obj_example_objmngr_gravity_SRCS = obj_example_objmngr_gravity.cpp

# Which libs in this build tree do we need?
# These identifiers are turned into lib*.a names and added to the link line.
LOCAL_LIBS = glvuglvu glvucamera glvumathobjs glvumath
# Add some extra LOCAL_LIBS for some apps
GLVUOBJ_LIBS := glvuobject glvuglutils glvuimages glvutimer
obj_example_basic_LOCAL_LIBS := $(GLVUOBJ_LIBS)
obj_example_2objs_LOCAL_LIBS := $(GLVUOBJ_LIBS)
obj_example_objmngr_LOCAL_LIBS := $(GLVUOBJ_LIBS)
obj_example_objmngr_vu_LOCAL_LIBS := $(GLVUOBJ_LIBS)
obj_example_objmngr_vu_hier_LOCAL_LIBS := $(GLVUOBJ_LIBS)
obj_example_objmngr_gravity_LOCAL_LIBS := $(GLVUOBJ_LIBS)

# Set up proper includes and libs to link with
WITH_FEATURES := glut

# WITH_FEATURES handles most things, but if you need other 
# libs you can define add this.  To get '-lfoo' added just put 'foo'
# SYS_LIBS = foo

include $(BASE_DIR)/Ubermake.defs


