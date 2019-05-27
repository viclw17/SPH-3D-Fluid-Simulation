# Microsoft Developer Studio Generated NMAKE File, Based on lib_glvu_objs.dsp
!IF "$(CFG)" == ""
CFG=lib_glvu_objs - Win32 Debug
!MESSAGE No configuration specified. Defaulting to lib_glvu_objs - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "lib_glvu_objs - Win32 Release" && "$(CFG)" !=\
 "lib_glvu_objs - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_glvu_objs.mak" CFG="lib_glvu_objs - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_glvu_objs - Win32 Release" (based on\
 "Win32 (x86) Static Library")
!MESSAGE "lib_glvu_objs - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

OUTDIR=.\..\lib
INTDIR=.\Release\lib_glvu_objs
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_objs.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_objs.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\bfftri.obj"
	-@erase "$(INTDIR)\bfftrimodel.obj"
	-@erase "$(INTDIR)\bfftrimodel_disp.obj"
	-@erase "$(INTDIR)\boundingbox.obj"
	-@erase "$(INTDIR)\glbuffers.obj"
	-@erase "$(INTDIR)\glm.obj"
	-@erase "$(INTDIR)\glutils.obj"
	-@erase "$(INTDIR)\groundplane.obj"
	-@erase "$(INTDIR)\nurbs.obj"
	-@erase "$(INTDIR)\nurbsmodel.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\objframe.obj"
	-@erase "$(INTDIR)\objmngr.obj"
	-@erase "$(INTDIR)\objmodel.obj"
	-@erase "$(INTDIR)\ppm.obj"
	-@erase "$(INTDIR)\textureobj.obj"
	-@erase "$(INTDIR)\trimodel.obj"
	-@erase "$(INTDIR)\trimodel_disp.obj"
	-@erase "$(INTDIR)\txtr.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vrmlreadtools.obj"
	-@erase "$(INTDIR)\vrmltri.obj"
	-@erase "$(INTDIR)\vrmltrimodel.obj"
	-@erase "$(INTDIR)\vrmltrimodel_disp.obj"
	-@erase "$(INTDIR)\wavy.obj"
	-@erase "$(OUTDIR)\glvu_objs.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\glutils\\" /I "..\glvu\\" /I\
 "..\camera\\" /I "..\math\\" /I "..\math_objs\\" /I "..\object\\" /I\
 "..\object\objmodel\\" /I "..\object\trimodel\\" /I "..\object\vrmltrimodel\\"\
 /I "..\object\bfftrimodel\\" /I "..\object\misc_objs\\" /I "..\images\ppm\\" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\lib_glvu_objs.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release\lib_glvu_objs/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Release/lib_glvu_objs.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/out:"$(OUTDIR)\glvu_objs.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bfftri.obj" \
	"$(INTDIR)\bfftrimodel.obj" \
	"$(INTDIR)\bfftrimodel_disp.obj" \
	"$(INTDIR)\boundingbox.obj" \
	"$(INTDIR)\glbuffers.obj" \
	"$(INTDIR)\glm.obj" \
	"$(INTDIR)\glutils.obj" \
	"$(INTDIR)\groundplane.obj" \
	"$(INTDIR)\nurbs.obj" \
	"$(INTDIR)\nurbsmodel.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\objframe.obj" \
	"$(INTDIR)\objmngr.obj" \
	"$(INTDIR)\objmodel.obj" \
	"$(INTDIR)\ppm.obj" \
	"$(INTDIR)\textureobj.obj" \
	"$(INTDIR)\trimodel.obj" \
	"$(INTDIR)\trimodel_disp.obj" \
	"$(INTDIR)\txtr.obj" \
	"$(INTDIR)\vrmlreadtools.obj" \
	"$(INTDIR)\vrmltri.obj" \
	"$(INTDIR)\vrmltrimodel.obj" \
	"$(INTDIR)\vrmltrimodel_disp.obj" \
	"$(INTDIR)\wavy.obj"

"$(OUTDIR)\glvu_objs.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

OUTDIR=.\..\lib
INTDIR=.\Debug\lib_glvu_objs
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_objs.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_objs.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\bfftri.obj"
	-@erase "$(INTDIR)\bfftrimodel.obj"
	-@erase "$(INTDIR)\bfftrimodel_disp.obj"
	-@erase "$(INTDIR)\boundingbox.obj"
	-@erase "$(INTDIR)\glbuffers.obj"
	-@erase "$(INTDIR)\glm.obj"
	-@erase "$(INTDIR)\glutils.obj"
	-@erase "$(INTDIR)\groundplane.obj"
	-@erase "$(INTDIR)\nurbs.obj"
	-@erase "$(INTDIR)\nurbsmodel.obj"
	-@erase "$(INTDIR)\object.obj"
	-@erase "$(INTDIR)\objframe.obj"
	-@erase "$(INTDIR)\objmngr.obj"
	-@erase "$(INTDIR)\objmodel.obj"
	-@erase "$(INTDIR)\ppm.obj"
	-@erase "$(INTDIR)\textureobj.obj"
	-@erase "$(INTDIR)\trimodel.obj"
	-@erase "$(INTDIR)\trimodel_disp.obj"
	-@erase "$(INTDIR)\txtr.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\vrmlreadtools.obj"
	-@erase "$(INTDIR)\vrmltri.obj"
	-@erase "$(INTDIR)\vrmltrimodel.obj"
	-@erase "$(INTDIR)\vrmltrimodel_disp.obj"
	-@erase "$(INTDIR)\wavy.obj"
	-@erase "$(OUTDIR)\glvu_objs.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\glutils\\" /I "..\glvu\\" /I\
 "..\camera\\" /I "..\math\\" /I "..\math_objs\\" /I "..\object\\" /I\
 "..\object\objmodel\\" /I "..\object\trimodel\\" /I "..\object\vrmltrimodel\\"\
 /I "..\object\bfftrimodel\\" /I "..\object\misc_objs\\" /I "..\images\ppm\\" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\lib_glvu_objs.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug\lib_glvu_objs/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug/lib_glvu_objs.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/out:"$(OUTDIR)\glvu_objs.lib" 
LIB32_OBJS= \
	"$(INTDIR)\bfftri.obj" \
	"$(INTDIR)\bfftrimodel.obj" \
	"$(INTDIR)\bfftrimodel_disp.obj" \
	"$(INTDIR)\boundingbox.obj" \
	"$(INTDIR)\glbuffers.obj" \
	"$(INTDIR)\glm.obj" \
	"$(INTDIR)\glutils.obj" \
	"$(INTDIR)\groundplane.obj" \
	"$(INTDIR)\nurbs.obj" \
	"$(INTDIR)\nurbsmodel.obj" \
	"$(INTDIR)\object.obj" \
	"$(INTDIR)\objframe.obj" \
	"$(INTDIR)\objmngr.obj" \
	"$(INTDIR)\objmodel.obj" \
	"$(INTDIR)\ppm.obj" \
	"$(INTDIR)\textureobj.obj" \
	"$(INTDIR)\trimodel.obj" \
	"$(INTDIR)\trimodel_disp.obj" \
	"$(INTDIR)\txtr.obj" \
	"$(INTDIR)\vrmlreadtools.obj" \
	"$(INTDIR)\vrmltri.obj" \
	"$(INTDIR)\vrmltrimodel.obj" \
	"$(INTDIR)\vrmltrimodel_disp.obj" \
	"$(INTDIR)\wavy.obj"

"$(OUTDIR)\glvu_objs.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "lib_glvu_objs - Win32 Release" || "$(CFG)" ==\
 "lib_glvu_objs - Win32 Debug"
SOURCE=..\glutils\glbuffers.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_GLBUF=\
	"..\glutils\glbuffers.hpp"\
	"..\images\ppm\ppm.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glbuffers.obj" : $(SOURCE) $(DEP_CPP_GLBUF) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_GLBUF=\
	"..\glutils\glbuffers.hpp"\
	"..\images\ppm\ppm.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glbuffers.obj" : $(SOURCE) $(DEP_CPP_GLBUF) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glutils\glutils.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_GLUTI=\
	"..\glutils\glutils.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glutils.obj" : $(SOURCE) $(DEP_CPP_GLUTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_GLUTI=\
	"..\glutils\glutils.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glutils.obj" : $(SOURCE) $(DEP_CPP_GLUTI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glutils\textureobj.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_TEXTU=\
	"..\glutils\textureobj.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\textureobj.obj" : $(SOURCE) $(DEP_CPP_TEXTU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_TEXTU=\
	"..\glutils\textureobj.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\textureobj.obj" : $(SOURCE) $(DEP_CPP_TEXTU) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\objmodel\glm.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_GLM_C=\
	"..\object\objmodel\glm.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glm.obj" : $(SOURCE) $(DEP_CPP_GLM_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_GLM_C=\
	"..\object\objmodel\glm.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glm.obj" : $(SOURCE) $(DEP_CPP_GLM_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\objmodel\objmodel.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_OBJMO=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objmodel\glm.hpp"\
	"..\object\objmodel\objmodel.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objmodel.obj" : $(SOURCE) $(DEP_CPP_OBJMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_OBJMO=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objmodel\glm.hpp"\
	"..\object\objmodel\objmodel.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objmodel.obj" : $(SOURCE) $(DEP_CPP_OBJMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\trimodel\trimodel.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_TRIMO=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\trimodel\trimodel.hpp"\
	

"$(INTDIR)\trimodel.obj" : $(SOURCE) $(DEP_CPP_TRIMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_TRIMO=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\trimodel\trimodel.hpp"\
	

"$(INTDIR)\trimodel.obj" : $(SOURCE) $(DEP_CPP_TRIMO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\trimodel\trimodel_disp.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_TRIMOD=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\trimodel\trimodel.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\trimodel_disp.obj" : $(SOURCE) $(DEP_CPP_TRIMOD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_TRIMOD=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\trimodel\trimodel.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\trimodel_disp.obj" : $(SOURCE) $(DEP_CPP_TRIMOD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\vrmltrimodel\vrmlreadtools.cpp
DEP_CPP_VRMLR=\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	

"$(INTDIR)\vrmlreadtools.obj" : $(SOURCE) $(DEP_CPP_VRMLR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\object\vrmltrimodel\vrmltri.cpp
DEP_CPP_VRMLT=\
	"..\math\vec3f.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	"..\object\vrmltrimodel\vrmltri.hpp"\
	

"$(INTDIR)\vrmltri.obj" : $(SOURCE) $(DEP_CPP_VRMLT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\object\vrmltrimodel\vrmltrimodel.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_VRMLTR=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	"..\object\vrmltrimodel\vrmltri.hpp"\
	"..\object\vrmltrimodel\vrmltrimodel.hpp"\
	

"$(INTDIR)\vrmltrimodel.obj" : $(SOURCE) $(DEP_CPP_VRMLTR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_VRMLTR=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	"..\object\vrmltrimodel\vrmltri.hpp"\
	"..\object\vrmltrimodel\vrmltrimodel.hpp"\
	

"$(INTDIR)\vrmltrimodel.obj" : $(SOURCE) $(DEP_CPP_VRMLTR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\vrmltrimodel\vrmltrimodel_disp.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_VRMLTRI=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmltri.hpp"\
	"..\object\vrmltrimodel\vrmltrimodel.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\vrmltrimodel_disp.obj" : $(SOURCE) $(DEP_CPP_VRMLTRI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_VRMLTRI=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmltri.hpp"\
	"..\object\vrmltrimodel\vrmltrimodel.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\vrmltrimodel_disp.obj" : $(SOURCE) $(DEP_CPP_VRMLTRI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\nurbsmodel\nurbs.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_NURBS=\
	"..\object\nurbsmodel\nurbs.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\nurbs.obj" : $(SOURCE) $(DEP_CPP_NURBS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_NURBS=\
	"..\object\nurbsmodel\nurbs.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\nurbs.obj" : $(SOURCE) $(DEP_CPP_NURBS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\nurbsmodel\nurbsmodel.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_NURBSM=\
	"..\math\vec3f.hpp"\
	"..\object\nurbsmodel\nurbs.hpp"\
	"..\object\nurbsmodel\nurbsmodel.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\nurbsmodel.obj" : $(SOURCE) $(DEP_CPP_NURBSM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_NURBSM=\
	"..\math\vec3f.hpp"\
	"..\object\nurbsmodel\nurbs.hpp"\
	"..\object\nurbsmodel\nurbsmodel.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\nurbsmodel.obj" : $(SOURCE) $(DEP_CPP_NURBSM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\bfftrimodel\bfftri.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_BFFTR=\
	"..\glutils\textureobj.hpp"\
	"..\images\ppm\ppm.hpp"\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\txtr.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\bfftri.obj" : $(SOURCE) $(DEP_CPP_BFFTR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_BFFTR=\
	"..\glutils\textureobj.hpp"\
	"..\images\ppm\ppm.hpp"\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\txtr.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\bfftri.obj" : $(SOURCE) $(DEP_CPP_BFFTR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\bfftrimodel\bfftrimodel.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_BFFTRI=\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\bfftrimodel.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	

"$(INTDIR)\bfftrimodel.obj" : $(SOURCE) $(DEP_CPP_BFFTRI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_BFFTRI=\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\bfftrimodel.hpp"\
	"..\object\object.hpp"\
	"..\object\vrmltrimodel\vrmlreadtools.hpp"\
	

"$(INTDIR)\bfftrimodel.obj" : $(SOURCE) $(DEP_CPP_BFFTRI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\bfftrimodel\bfftrimodel_disp.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_BFFTRIM=\
	"..\glutils\glutils.hpp"\
	"..\glutils\textureobj.hpp"\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\bfftrimodel.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\bfftrimodel_disp.obj" : $(SOURCE) $(DEP_CPP_BFFTRIM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_BFFTRIM=\
	"..\glutils\glutils.hpp"\
	"..\glutils\textureobj.hpp"\
	"..\math\vec2f.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\bfftrimodel\bfftri.hpp"\
	"..\object\bfftrimodel\bfftrimodel.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\bfftrimodel_disp.obj" : $(SOURCE) $(DEP_CPP_BFFTRIM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\bfftrimodel\txtr.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_TXTR_=\
	"..\glutils\textureobj.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\txtr.obj" : $(SOURCE) $(DEP_CPP_TXTR_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_TXTR_=\
	"..\glutils\textureobj.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\txtr.obj" : $(SOURCE) $(DEP_CPP_TXTR_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\misc_objects\boundingbox.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_BOUND=\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\boundingbox.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\boundingbox.obj" : $(SOURCE) $(DEP_CPP_BOUND) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_BOUND=\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\boundingbox.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\boundingbox.obj" : $(SOURCE) $(DEP_CPP_BOUND) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\misc_objects\groundplane.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_GROUN=\
	"..\glutils\textureobj.hpp"\
	"..\images\ppm\ppm.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\groundplane.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\groundplane.obj" : $(SOURCE) $(DEP_CPP_GROUN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_GROUN=\
	"..\glutils\textureobj.hpp"\
	"..\images\ppm\ppm.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\groundplane.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\groundplane.obj" : $(SOURCE) $(DEP_CPP_GROUN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\misc_objects\wavy.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_WAVY_=\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\wavy.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\wavy.obj" : $(SOURCE) $(DEP_CPP_WAVY_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_WAVY_=\
	"..\math\vec3f.hpp"\
	"..\object\misc_objects\wavy.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\wavy.obj" : $(SOURCE) $(DEP_CPP_WAVY_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\object.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_OBJEC=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\object.obj" : $(SOURCE) $(DEP_CPP_OBJEC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_OBJEC=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\object.obj" : $(SOURCE) $(DEP_CPP_OBJEC) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\objframe.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_OBJFR=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objframe.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objframe.obj" : $(SOURCE) $(DEP_CPP_OBJFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_OBJFR=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objframe.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objframe.obj" : $(SOURCE) $(DEP_CPP_OBJFR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\object\objmngr.cpp

!IF  "$(CFG)" == "lib_glvu_objs - Win32 Release"

DEP_CPP_OBJMN=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objframe.hpp"\
	"..\object\objmngr.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objmngr.obj" : $(SOURCE) $(DEP_CPP_OBJMN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_objs - Win32 Debug"

DEP_CPP_OBJMN=\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objframe.hpp"\
	"..\object\objmngr.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\objmngr.obj" : $(SOURCE) $(DEP_CPP_OBJMN) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\images\ppm\ppm.cpp

"$(INTDIR)\ppm.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

