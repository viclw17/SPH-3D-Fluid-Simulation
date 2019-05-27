# Microsoft Developer Studio Generated NMAKE File, Based on lib_glvu_tdm.dsp
!IF "$(CFG)" == ""
CFG=lib_glvu_tdm - Win32 Debug
!MESSAGE No configuration specified. Defaulting to lib_glvu_tdm - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "lib_glvu_tdm - Win32 Release" && "$(CFG)" !=\
 "lib_glvu_tdm - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_glvu_tdm.mak" CFG="lib_glvu_tdm - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_glvu_tdm - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_glvu_tdm - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

OUTDIR=.\..\lib
INTDIR=.\Release\lib_glvu_tdm
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_tdm.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_tdm.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\texdepthmesh.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_mesh.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_float_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_int_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier_node.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier_set.obj"
	-@erase "$(INTDIR)\texdepthmeshset.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\glvu_tdm.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\glutils" /I "..\camera" /I "..\math" /I\
 "..\math_objs" /I "..\object" /D "NDEBUG" /D "WIN32" /D "_WINDOWS"\
 /Fp"$(INTDIR)\lib_glvu_tdm.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release\lib_glvu_tdm/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Release/lib_glvu_tdm.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu_tdm.lib" 
LIB32_OBJS= \
	"$(INTDIR)\texdepthmesh.obj" \
	"$(INTDIR)\texdepthmesh_disp_mesh.obj" \
	"$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_float_step.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_int_step.obj" \
	"$(INTDIR)\texdepthmesh_hier.obj" \
	"$(INTDIR)\texdepthmesh_hier_node.obj" \
	"$(INTDIR)\texdepthmesh_hier_set.obj" \
	"$(INTDIR)\texdepthmeshset.obj"

"$(OUTDIR)\glvu_tdm.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

OUTDIR=.\..\lib
INTDIR=.\Debug\lib_glvu_tdm
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_tdm.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_tdm.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\texdepthmesh.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_mesh.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_float_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_disp_pts_int_step.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier_node.obj"
	-@erase "$(INTDIR)\texdepthmesh_hier_set.obj"
	-@erase "$(INTDIR)\texdepthmeshset.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\glvu_tdm.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /MLd /W3 /GX /Z7 /Od /I "..\glutils" /I "..\camera" /I\
 "..\math" /I "..\math_objs" /I "..\object" /D "_DEBUG" /D "WIN32" /D "_WINDOWS"\
 /Fp"$(INTDIR)\lib_glvu_tdm.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug\lib_glvu_tdm/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug/lib_glvu_tdm.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu_tdm.lib" 
LIB32_OBJS= \
	"$(INTDIR)\texdepthmesh.obj" \
	"$(INTDIR)\texdepthmesh_disp_mesh.obj" \
	"$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_float_step.obj" \
	"$(INTDIR)\texdepthmesh_disp_pts_int_step.obj" \
	"$(INTDIR)\texdepthmesh_hier.obj" \
	"$(INTDIR)\texdepthmesh_hier_node.obj" \
	"$(INTDIR)\texdepthmesh_hier_set.obj" \
	"$(INTDIR)\texdepthmeshset.obj"

"$(OUTDIR)\glvu_tdm.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
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


!IF "$(CFG)" == "lib_glvu_tdm - Win32 Release" || "$(CFG)" ==\
 "lib_glvu_tdm - Win32 Debug"
SOURCE=..\texdepthmesh\texdepthmesh.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDE=\
	"..\glutils\glbuffers.hpp"\
	"..\glutils\textureobj.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh.obj" : $(SOURCE) $(DEP_CPP_TEXDE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDE=\
	"..\glutils\glbuffers.hpp"\
	"..\glutils\textureobj.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh.obj" : $(SOURCE) $(DEP_CPP_TEXDE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_mesh.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEP=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_mesh.obj" : $(SOURCE) $(DEP_CPP_TEXDEP)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEP=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_mesh.obj" : $(SOURCE) $(DEP_CPP_TEXDEP)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_mesh_int_step.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPT=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj" : $(SOURCE) $(DEP_CPP_TEXDEPT)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPT=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_mesh_int_step.obj" : $(SOURCE) $(DEP_CPP_TEXDEPT)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_pts.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTH=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTH)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTH=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTH)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_pts_adaptive.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHM=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHM)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHM=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_adaptive.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHM)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_pts_depthoffield.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHME=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHME) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHME=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_depthoffield.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHME) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_pts_float_step.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMES=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_float_step.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHMES) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMES=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_float_step.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHMES) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_disp_pts_int_step.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMESH=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_int_step.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHMESH) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMESH=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_disp_pts_int_step.obj" : $(SOURCE)\
 $(DEP_CPP_TEXDEPTHMESH) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_hier.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMESH_=\
	"..\camera\camutils.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMESH_=\
	"..\camera\camutils.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_hier_node.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMESH_H=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\plane.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier_node.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_H)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMESH_H=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\plane.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier_node.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_H)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmesh_hier_set.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMESH_HI=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_set.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier_set.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_HI)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMESH_HI=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmesh_hier.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_node.hpp"\
	"..\texdepthmesh\texdepthmesh_hier_set.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmesh_hier_set.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESH_HI)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\texdepthmesh\texdepthmeshset.cpp

!IF  "$(CFG)" == "lib_glvu_tdm - Win32 Release"

DEP_CPP_TEXDEPTHMESHS=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmeshset.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmeshset.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESHS)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_tdm - Win32 Debug"

DEP_CPP_TEXDEPTHMESHS=\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	"..\texdepthmesh\texdepthmeshset.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\texdepthmeshset.obj" : $(SOURCE) $(DEP_CPP_TEXDEPTHMESHS)\
 "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

