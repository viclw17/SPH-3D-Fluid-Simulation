@echo off
goto START
-------------------------------------------------------------------------------
This batch script is used as an MSVC post-link step for installing
GLVU header files into a common include directory.  

Copying the header files makes it easier to compile GLVU stuff becuase you
only have add one directory to your list of includes instead of a whole bunch.

Call syntax looks like this:

     installhdrs /e .h .hpp /d ..\foo ..\bar ..\baz /f a/particular/file.y /i ..\include

     /e - extensions to install
     /f - specific files to install
     /d - directoryies to install from
     /i - install destination

Will install all the .h and .hpp files in ..\include
-------------------------------------------------------------------------------
:START

:: QUESTION: DOES SETLOCAL WORK EVERYWHERE OR JUST ON NT?
SETLOCAL

set _CMD=%0

if [%1]==[}D{]  goto D_RECURSIVE_CALL
if [%1]==[}F{]  goto F_RECURSIVE_CALL

set _CUR=E
set _EXTS=
set _DIRS=
set _FILES=
set _INSTDIR=

:: SORT THE COMMAND ARGUMENTS

:LOOPARGS
if [%1]==[/e] set _CUR=E  && GOTO NEXTARG
if [%1]==[/f] set _CUR=F  && GOTO NEXTARG
if [%1]==[/d] set _CUR=D  && GOTO NEXTARG
if [%1]==[/i] set _CUR=I  && GOTO NEXTARG
if %_CUR%==E set _EXTS=%_EXTS% %1 && GOTO NEXTARG
if %_CUR%==F set _FILES=%_FILES% %1 && GOTO NEXTARG
if %_CUR%==D set _DIRS=%_DIRS% %1 && GOTO NEXTARG
if %_CUR%==I set _INSTDIR=%1   && GOTO NEXTARG
:: IF WE GET HERE IT'S AN ERROR
echo  ERROR -- how did we get here?
goto cleanup
:NEXTARG
shift
if not [%1]==[] goto LOOPARGS

:: SANITY ERROR CHECKING
if "%_DIRS%"=="" if "%_FILES%"=="" echo ERROR -- must specify some dirs or files with /f or /d flags && goto cleanup
if "%_EXTS%"=="" if "%_FILES%"=="" echo ERROR -- must specify some extensions with the /e flag && goto cleanup
if "%_INSTDIR"=="" echo ERROR -- must specify an installation dir with /i && goto cleanup


:: ACTUALLY DO SOME WORK 

if not exist %_INSTDIR% echo %_INSTDIR% doesn't exist. Creating...
if not exist %_INSTDIR% mkdir %_INSTDIR%

:: HANDLE DIRECTORIES
if not "%_DIRS%"=="" for %%d in (%_DIRS%)  do call %_CMD% }D{ %_INSTDIR% %%d %_EXTS%

:: HANDLE SPECIFIC FILES
if not "%_FILES%"=="" call %_CMD% }F{ %_INSTDIR% %_FILES%

goto CLEANUP

--------------------------------------------------------------------------
 This next part gets called when the first arg is '}D{'
 Just calling again so I can get the list of dirs into %1~%9 so I can use
 shift to process the list.

 Call should be of the form
    insthdrs }D{ install_dest fromdir [file extensions]
  
--------------------------------------------------------------------------
:D_RECURSIVE_CALL
:: GET RID OF }{
shift
:: GET INSTALL DEST
set _INSTDIR=%1
shift
:: GET INSTALL SRC
if not exist %1 goto end
set _FRMDIR=%1
:LOOPEXT
shift
if [%1]==[] goto end
xcopy /c /y %_FRMDIR%\*%1 %_INSTDIR%
goto LOOPEXT

GOTO CLEANUP

--------------------------------------------------------------------------
 This next part gets called when the first arg is '}F{'
 Just calling again so I can get the list of files into %1~%9 so I can use
 shift to process the list.

 Call should be of the form
    insthdrs }F{ install_dest [file list]
  
--------------------------------------------------------------------------
:F_RECURSIVE_CALL
:: GET RID OF }F{
shift
:: GET INSTALL DEST
set _INSTDIR=%1
:LOOPF
shift
if [%1]==[] goto end
if not exist %1 goto LOOPF
xcopy /c /y %1 %_INSTDIR%
goto LOOPF

GOTO CLEANUP



:CLEANUP
:: NOT NEEDED IF SETLOCAL CALLED ABOVE... BUT THAT MAY NOT BE PORTABLE?
GOTO END

set _CMD=
set _CUR=
set _EXTS=
set _FILES=
set _DIRS=
set _INSTDIR=
set _FRMDIR=

:END




