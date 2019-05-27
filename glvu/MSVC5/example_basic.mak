# Microsoft Developer Studio Generated NMAKE File, Based on example_basic.dsp
!IF "$(CFG)" == ""
CFG=example_basic - Win32 Debug
!MESSAGE No configuration specified. Defaulting to example_basic - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "example_basic - Win32 Release" && "$(CFG)" !=\
 "example_basic - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "example_basic.mak" CFG="example_basic - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "example_basic - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "example_basic - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "example_basic - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release

!IF "$(RECURSE)" == "0" 

ALL : "..\examples\example_basic.exe"

!ELSE 

ALL : "..\examples\example_basic.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\example_basic.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "..\examples\example_basic.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I ".." /I "..\glvu" /I "..\math" /I\
 "..\camera" /I "..\math_objs" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS"\
 /Fp"$(INTDIR)\example_basic.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\example_basic.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu.lib opengl32.lib glu32.lib glut32.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console\
 /incremental:no /pdb:"$(OUTDIR)\example_basic.pdb" /machine:I386\
 /out:"..\examples\example_basic.exe" /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\example_basic.obj"

"..\examples\example_basic.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "example_basic - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug

!IF "$(RECURSE)" == "0" 

ALL : "..\examples\example_basic.exe"

!ELSE 

ALL : "..\examples\example_basic.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\example_basic.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\example_basic.pdb"
	-@erase "..\examples\example_basic.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I ".." /I "..\glvu" /I "..\math" /I\
 "..\camera" /I "..\math_objs" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS"\
 /Fp"$(INTDIR)\example_basic.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\example_basic.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu.lib opengl32.lib glu32.lib glut32.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console\
 /incremental:no /pdb:"$(OUTDIR)\example_basic.pdb" /debug /machine:I386\
 /out:"..\examples\example_basic.exe" /pdbtype:sept /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\example_basic.obj"

"..\examples\example_basic.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "example_basic - Win32 Release" || "$(CFG)" ==\
 "example_basic - Win32 Debug"
SOURCE=..\examples\example_basic.cpp
DEP_CPP_EXAMP=\
	"..\camera\camera.hpp"\
	"..\glvu\glvu.hpp"\
	"..\math\mat16fv.hpp"\
	"..\math\vec3f.hpp"\
	{$(INCLUDE)}"GL\gl.h"\
	{$(INCLUDE)}"GL\glu.h"\
	{$(INCLUDE)}"GL\glut.h"\
	

"$(INTDIR)\example_basic.obj" : $(SOURCE) $(DEP_CPP_EXAMP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

