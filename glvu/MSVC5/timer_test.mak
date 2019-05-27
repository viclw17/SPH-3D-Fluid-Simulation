# Microsoft Developer Studio Generated NMAKE File, Based on timer_test.dsp
!IF "$(CFG)" == ""
CFG=timer_test - Win32 Debug
!MESSAGE No configuration specified. Defaulting to timer_test - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "timer_test - Win32 Release" && "$(CFG)" !=\
 "timer_test - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "timer_test.mak" CFG="timer_test - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "timer_test - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "timer_test - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "timer_test - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release

!IF "$(RECURSE)" == "0" 

ALL : "..\timer\timer_test.exe"

!ELSE 

ALL : "..\timer\timer_test.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\stoptest.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "..\timer\timer_test.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "..\timer" /D "WIN32" /D "NDEBUG" /D\
 "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\timer_test.pch" /YX /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\timer_test.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu.lib kernel32.lib user32.lib gdi32.lib winspool.lib\
 comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib\
 odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)\timer_test.pdb" /machine:I386 /out:"..\timer\timer_test.exe"\
 /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\stoptest.obj"

"..\timer\timer_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "timer_test - Win32 Debug"

OUTDIR=.\timer_te
INTDIR=.\timer_te

!IF "$(RECURSE)" == "0" 

ALL : "..\timer\timer_test.exe"

!ELSE 

ALL : "..\timer\timer_test.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\stoptest.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\timer_test.pdb"
	-@erase "..\timer\timer_test.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "..\timer" /D "WIN32" /D "_DEBUG"\
 /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\timer_test.pch" /YX /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\timer_te/
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
BSC32_FLAGS=/nologo /o"$(OUTDIR)\timer_test.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=glvu.lib kernel32.lib user32.lib gdi32.lib winspool.lib\
 comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib\
 odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)\timer_test.pdb" /debug /machine:I386\
 /out:"..\timer\timer_test.exe" /pdbtype:sept /libpath:"..\lib" 
LINK32_OBJS= \
	"$(INTDIR)\stoptest.obj"

"..\timer\timer_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "timer_test - Win32 Release" || "$(CFG)" ==\
 "timer_test - Win32 Debug"
SOURCE=..\timer\stoptest.cpp

!IF  "$(CFG)" == "timer_test - Win32 Release"

DEP_CPP_STOPT=\
	"..\timer\stopwatch.hpp"\
	{$(INCLUDE)}"sys\timeb.h"\
	

"$(INTDIR)\stoptest.obj" : $(SOURCE) $(DEP_CPP_STOPT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "timer_test - Win32 Debug"

DEP_CPP_STOPT=\
	"..\timer\stopwatch.hpp"\
	

"$(INTDIR)\stoptest.obj" : $(SOURCE) $(DEP_CPP_STOPT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 


!ENDIF 

