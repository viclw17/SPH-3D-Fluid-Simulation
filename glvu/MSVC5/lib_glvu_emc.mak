# Microsoft Developer Studio Generated NMAKE File, Based on lib_glvu_emc.dsp
!IF "$(CFG)" == ""
CFG=lib_glvu_emc - Win32 Debug
!MESSAGE No configuration specified. Defaulting to lib_glvu_emc - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "lib_glvu_emc - Win32 Release" && "$(CFG)" !=\
 "lib_glvu_emc - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_glvu_emc.mak" CFG="lib_glvu_emc - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_glvu_emc - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_glvu_emc - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe

!IF  "$(CFG)" == "lib_glvu_emc - Win32 Release"

OUTDIR=.\..\lib
INTDIR=.\Release/lib_glvu_emc
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_emc.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_emc.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\envmapcube.obj"
	-@erase "$(INTDIR)\envmapcubeset.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\glvu_emc.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\glutils\\" /I "..\camera\\" /I\
 "..\math\\" /I "..\math_objs\\" /I "..\object\\" /I "..\texdepthmesh\\" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\lib_glvu_emc.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/lib_glvu_emc/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Release/lib_glvu_emc.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu_emc.lib" 
LIB32_OBJS= \
	"$(INTDIR)\envmapcube.obj" \
	"$(INTDIR)\envmapcubeset.obj"

"$(OUTDIR)\glvu_emc.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "lib_glvu_emc - Win32 Debug"

OUTDIR=.\..\lib
INTDIR=.\Debug/lib_glvu_emc
# Begin Custom Macros
OutDir=.\..\lib
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\glvu_emc.lib"

!ELSE 

ALL : "$(OUTDIR)\glvu_emc.lib"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\envmapcube.obj"
	-@erase "$(INTDIR)\envmapcubeset.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\glvu_emc.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

"$(INTDIR)" :
    if not exist "$(INTDIR)/$(NULL)" mkdir "$(INTDIR)"

LINK32=link.exe -lib
RSC=rc.exe
CPP_PROJ=/nologo /MLd /W3 /GX /Z7 /Od /I "..\glutils\\" /I "..\camera\\" /I\
 "..\math\\" /I "..\math_objs\\" /I "..\object\\" /I "..\texdepthmesh\\" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fp"$(INTDIR)\lib_glvu_emc.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/lib_glvu_emc/
CPP_SBRS=.
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"Debug/lib_glvu_emc.bsc" 
BSC32_SBRS= \
	
LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\glvu_emc.lib" 
LIB32_OBJS= \
	"$(INTDIR)\envmapcube.obj" \
	"$(INTDIR)\envmapcubeset.obj"

"$(OUTDIR)\glvu_emc.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
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


!IF "$(CFG)" == "lib_glvu_emc - Win32 Release" || "$(CFG)" ==\
 "lib_glvu_emc - Win32 Debug"
SOURCE=..\envmapcube\envmapcube.cpp

!IF  "$(CFG)" == "lib_glvu_emc - Win32 Release"

DEP_CPP_ENVMA=\
	"..\camera\camutils.hpp"\
	"..\envmapcube\envmapcube.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\minmaxbox.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\envmapcube.obj" : $(SOURCE) $(DEP_CPP_ENVMA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_emc - Win32 Debug"

DEP_CPP_ENVMA=\
	"..\camera\camutils.hpp"\
	"..\envmapcube\envmapcube.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\math_objs\minmaxbox.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\envmapcube.obj" : $(SOURCE) $(DEP_CPP_ENVMA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\envmapcube\envmapcubeset.cpp

!IF  "$(CFG)" == "lib_glvu_emc - Win32 Release"

DEP_CPP_ENVMAP=\
	"..\envmapcube\envmapcube.hpp"\
	"..\envmapcube\envmapcubeset.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\envmapcubeset.obj" : $(SOURCE) $(DEP_CPP_ENVMAP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "lib_glvu_emc - Win32 Debug"

DEP_CPP_ENVMAP=\
	"..\envmapcube\envmapcube.hpp"\
	"..\envmapcube\envmapcubeset.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\texdepthmesh\texdepthmesh.hpp"\
	{$(INCLUDE)}"camera.hpp"\
	{$(INCLUDE)}"gl\glut.h"\
	

"$(INTDIR)\envmapcubeset.obj" : $(SOURCE) $(DEP_CPP_ENVMAP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

