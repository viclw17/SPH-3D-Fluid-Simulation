# Microsoft Developer Studio Generated NMAKE File, Based on obj_example_objmngr_vu.dsp
!IF "$(CFG)" == ""
CFG=obj_example_objmngr_vu - Win32 Debug
!MESSAGE No configuration specified. Defaulting to obj_example_objmngr_vu -\
 Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "obj_example_objmngr_vu - Win32 Release" && "$(CFG)" !=\
 "obj_example_objmngr_vu - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "obj_example_objmngr_vu.mak"\
 CFG="obj_example_objmngr_vu - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "obj_example_objmngr_vu - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "obj_example_objmngr_vu - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "obj_example_objmngr_vu - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release

!IF "$(RECURSE)" == "0" 

ALL : "..\examples\obj_example_objmngr_vu.exe"

!ELSE 

ALL : "..\examples\obj_example_objmngr_vu.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\obj_example_objmngr_vu.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "..\examples\obj_example_objmngr_vu.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\glvu\\" /I "..\camera\\" /I "..\math\\"\
 /I "..\math_objs\\" /I "..\object\\" /I "..\object\objmodel\\" /I\
 "..\object\trimodel\\" /I "..\object\vrmltrimodel\\" /I\
 "..\object\bfftrimodel\\" /I "..\object\misc_objs\\" /D "WIN32" /D "NDEBUG" /D\
 "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\obj_example_objmngr_vu.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

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

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\obj_example_objmngr_vu.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu_objs.lib glvu.lib opengl32.lib glu32.lib glut32.lib\
 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib\
 shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)\obj_example_objmngr_vu.pdb"\
 /machine:I386 /out:"..\examples\obj_example_objmngr_vu.exe" /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\obj_example_objmngr_vu.obj"

"..\examples\obj_example_objmngr_vu.exe" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "obj_example_objmngr_vu - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

!IF "$(RECURSE)" == "0" 

ALL : "..\examples\obj_example_objmngr_vu.exe"

!ELSE 

ALL : "..\examples\obj_example_objmngr_vu.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\obj_example_objmngr_vu.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\obj_example_objmngr_vu.pdb"
	-@erase "..\examples\obj_example_objmngr_vu.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\glvu\\" /I "..\camera\\" /I\
 "..\math\\" /I "..\math_objs\\" /I "..\object\\" /I "..\object\objmodel\\" /I\
 "..\object\trimodel\\" /I "..\object\vrmltrimodel\\" /I\
 "..\object\bfftrimodel\\" /I "..\object\misc_objs\\" /D "WIN32" /D "_DEBUG" /D\
 "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\obj_example_objmngr_vu.pch" /YX\
 /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

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

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\obj_example_objmngr_vu.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu_objs.lib glvu.lib opengl32.lib glu32.lib glut32.lib\
 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib\
 shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo\
 /subsystem:console /incremental:no /pdb:"$(OUTDIR)\obj_example_objmngr_vu.pdb"\
 /debug /machine:I386 /out:"..\examples\obj_example_objmngr_vu.exe"\
 /pdbtype:sept /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\obj_example_objmngr_vu.obj"

"..\examples\obj_example_objmngr_vu.exe" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "obj_example_objmngr_vu - Win32 Release" || "$(CFG)" ==\
 "obj_example_objmngr_vu - Win32 Debug"
SOURCE=..\examples\obj_example_objmngr_vu.cpp
DEP_CPP_OBJ_E=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	"..\object\object.hpp"\
	"..\object\objframe.hpp"\
	"..\object\objmngr.hpp"\
	"..\object\objmodel\glm.hpp"\
	"..\object\objmodel\objmodel.hpp"\
	"..\object\trimodel\trimodel.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"GL\glut.h"\
	

"$(INTDIR)\obj_example_objmngr_vu.obj" : $(SOURCE) $(DEP_CPP_OBJ_E) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

