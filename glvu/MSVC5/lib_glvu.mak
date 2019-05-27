# Microsoft Developer Studio Generated NMAKE File, Based on lib_glvu.dsp
!IF "$(CFG)" == ""
CFG=lib_glvu - Win32 Debug
!MESSAGE No configuration specified. Defaulting to lib_glvu - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "lib_glvu - Win32 Release" && "$(CFG)" !=\
 "lib_glvu - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_glvu.mak" CFG="lib_glvu - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_glvu - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_glvu - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

OUTDIR=.\..\lib
INTDIR=.\Release\lib_glvu
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\camdisplay.obj"
	-@erase "$(INTDIR)\camera.obj"
	-@erase "$(INTDIR)\camutils.obj"
	-@erase "$(INTDIR)\glvu.obj"
	-@erase "$(INTDIR)\glvu_camview.obj"
	-@erase "$(INTDIR)\glvu_keyinput.obj"
	-@erase "$(INTDIR)\glvu_menu.obj"
	-@erase "$(INTDIR)\glvu_mouse.obj"
	-@erase "$(INTDIR)\mat16fv.obj"
	-@erase "$(INTDIR)\minmaxbox.obj"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\snapshot.obj"
	-@erase "$(INTDIR)\stopwatch.obj"
	-@erase "$(INTDIR)\text.obj"
	-@erase "$(INTDIR)\tri.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vec3fv.obj"
	-@erase "$(OUTDIR)\glvu.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I ".." /I "..\glvu" /I "..\math" /I\
 "..\camera" /I "..\math_objs" /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\lib_glvu.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release\lib_glvu/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Release/lib_glvu.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu.lib" 
LIB32_OBJS= \
	"$(INTDIR)\camdisplay.obj" \
	"$(INTDIR)\camera.obj" \
	"$(INTDIR)\camutils.obj" \
	"$(INTDIR)\glvu.obj" \
	"$(INTDIR)\glvu_camview.obj" \
	"$(INTDIR)\glvu_keyinput.obj" \
	"$(INTDIR)\glvu_menu.obj" \
	"$(INTDIR)\glvu_mouse.obj" \
	"$(INTDIR)\mat16fv.obj" \
	"$(INTDIR)\minmaxbox.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\snapshot.obj" \
	"$(INTDIR)\stopwatch.obj" \
	"$(INTDIR)\text.obj" \
	"$(INTDIR)\tri.obj" \
	"$(INTDIR)\vec3fv.obj"

"$(OUTDIR)\glvu.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

OUTDIR=.\..\lib
INTDIR=.\Debug\lib_glvu
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\camdisplay.obj"
	-@erase "$(INTDIR)\camera.obj"
	-@erase "$(INTDIR)\camutils.obj"
	-@erase "$(INTDIR)\glvu.obj"
	-@erase "$(INTDIR)\glvu_camview.obj"
	-@erase "$(INTDIR)\glvu_keyinput.obj"
	-@erase "$(INTDIR)\glvu_menu.obj"
	-@erase "$(INTDIR)\glvu_mouse.obj"
	-@erase "$(INTDIR)\mat16fv.obj"
	-@erase "$(INTDIR)\minmaxbox.obj"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\snapshot.obj"
	-@erase "$(INTDIR)\stopwatch.obj"
	-@erase "$(INTDIR)\text.obj"
	-@erase "$(INTDIR)\tri.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vec3fv.obj"
	-@erase "$(OUTDIR)\glvu.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /MLd /W3 /GX /Z7 /Od /I ".." /I "..\glvu" /I "..\math" /I\
 "..\camera" /I "..\math_objs" /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\lib_glvu.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug\lib_glvu/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug/lib_glvu.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu.lib" 
LIB32_OBJS= \
	"$(INTDIR)\camdisplay.obj" \
	"$(INTDIR)\camera.obj" \
	"$(INTDIR)\camutils.obj" \
	"$(INTDIR)\glvu.obj" \
	"$(INTDIR)\glvu_camview.obj" \
	"$(INTDIR)\glvu_keyinput.obj" \
	"$(INTDIR)\glvu_menu.obj" \
	"$(INTDIR)\glvu_mouse.obj" \
	"$(INTDIR)\mat16fv.obj" \
	"$(INTDIR)\minmaxbox.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\snapshot.obj" \
	"$(INTDIR)\stopwatch.obj" \
	"$(INTDIR)\text.obj" \
	"$(INTDIR)\tri.obj" \
	"$(INTDIR)\vec3fv.obj"

"$(OUTDIR)\glvu.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
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


!IF "$(CFG)" == "lib_glvu - Win32 Release" || "$(CFG)" ==\
 "lib_glvu - Win32 Debug"
SOURCE=..\camera\camdisplay.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_CAMDI=\
	"..\camera\camera.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\camdisplay.obj" : $(SOURCE) $(DEP_CPP_CAMDI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_CAMDI=\
	"..\camera\camera.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\camdisplay.obj" : $(SOURCE) $(DEP_CPP_CAMDI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\camera\camera.cpp
DEP_CPP_CAMER=\
	"..\camera\camera.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	

"$(INTDIR)\camera.obj" : $(SOURCE) $(DEP_CPP_CAMER) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\camera\camutils.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_CAMUT=\
	"..\camera\camera.hpp"\
	"..\camera\camutils.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\minmaxbox.hpp"\
	"..\math_objs\plane.hpp"\
	"..\math_objs\tri.hpp"\
	

"$(INTDIR)\camutils.obj" : $(SOURCE) $(DEP_CPP_CAMUT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_CAMUT=\
	"..\camera\camera.hpp"\
	"..\camera\camutils.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\minmaxbox.hpp"\
	"..\math_objs\plane.hpp"\
	"..\math_objs\tri.hpp"\
	

"$(INTDIR)\camutils.obj" : $(SOURCE) $(DEP_CPP_CAMUT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\glvu.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_GLVU_=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\glvu.obj" : $(SOURCE) $(DEP_CPP_GLVU_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_GLVU_=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glvu.obj" : $(SOURCE) $(DEP_CPP_GLVU_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\glvu_camview.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_GLVU_C=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\glvu\text.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\glvu_camview.obj" : $(SOURCE) $(DEP_CPP_GLVU_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_GLVU_C=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\glvu\text.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glvu_camview.obj" : $(SOURCE) $(DEP_CPP_GLVU_C) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\glvu_keyinput.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_GLVU_K=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\glvu_keyinput.obj" : $(SOURCE) $(DEP_CPP_GLVU_K) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_GLVU_K=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glvu_keyinput.obj" : $(SOURCE) $(DEP_CPP_GLVU_K) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\glvu_menu.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_GLVU_M=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\glvu\snapshot.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\glvu_menu.obj" : $(SOURCE) $(DEP_CPP_GLVU_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_GLVU_M=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\glvu\snapshot.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glvu_menu.obj" : $(SOURCE) $(DEP_CPP_GLVU_M) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\glvu_mouse.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_GLVU_MO=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\glvu_mouse.obj" : $(SOURCE) $(DEP_CPP_GLVU_MO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_GLVU_MO=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\glvu_mouse.obj" : $(SOURCE) $(DEP_CPP_GLVU_MO) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\snapshot.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_SNAPS=\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\snapshot.obj" : $(SOURCE) $(DEP_CPP_SNAPS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_SNAPS=\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\snapshot.obj" : $(SOURCE) $(DEP_CPP_SNAPS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\glvu\text.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_TEXT_=\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\text.obj" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_TEXT_=\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\text.obj" : $(SOURCE) $(DEP_CPP_TEXT_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\math\mat16fv.cpp
DEP_CPP_MAT16=\
	"..\math\vec3fv.hpp"\
	

"$(INTDIR)\mat16fv.obj" : $(SOURCE) $(DEP_CPP_MAT16) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\math\vec3fv.cpp

"$(INTDIR)\vec3fv.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\math_objs\minmaxbox.cpp

"$(INTDIR)\minmaxbox.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\math_objs\plane.cpp

"$(INTDIR)\plane.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\math_objs\tri.cpp

"$(INTDIR)\tri.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\timer\stopwatch.cpp

!IF  "$(CFG)" == "lib_glvu - Win32 Release"

DEP_CPP_STOPW=\
	"..\timer\stopwatch.hpp"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\stopwatch.obj" : $(SOURCE) $(DEP_CPP_STOPW) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu - Win32 Debug"

DEP_CPP_STOPW=\
	"..\timer\stopwatch.hpp"\
	

"$(INTDIR)\stopwatch.obj" : $(SOURCE) $(DEP_CPP_STOPW) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

