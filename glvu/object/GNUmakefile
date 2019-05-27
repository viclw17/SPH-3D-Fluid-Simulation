##############################################################################
# GLVU OBJECT MAKEFILE
##############################################################################
BASE_DIR=..
TYPE=Lib
LIB_NAME=glvuobject
VPATH := trimodel objmodel vrmltrimodel nurbsmodel misc_objects

LIB_SRCS = \
     trimodel.cpp \
     trimodel_disp.cpp \
     glm.cpp \
     objmodel.cpp \
     vrmlreadtools.cpp \
     vrmltri.cpp \
     vrmltrimodel.cpp \
     vrmltrimodel_disp.cpp \
     nurbsmodel.cpp \
     nurbs.cpp \
     wavy.cpp \
     groundplane.cpp \
     boundingbox.cpp \
     object.cpp objframe.cpp objmngr.cpp

PUBLIC_HEADERS= \
	object.hpp \
        objframe.hpp \
        objmngr.hpp \
        trimodel.hpp \
        objmodel.hpp \
	glm.hpp \
        vrmltrimodel.hpp \
        nurbsmodel.hpp \
        boundingbox.hpp \
        groundplane.hpp \
        wavy.hpp

WITH_FEATURES := glut

include $(BASE_DIR)/Ubermake.defs
