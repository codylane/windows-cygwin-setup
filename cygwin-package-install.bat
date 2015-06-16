@ECHO OFF
REM -- Automates cygwin installation

SETLOCAL
REM REM -- Change to the directory of the executing batch file
cd %HOMEPATH%\Downloads

SET SITE=http://cygwin.mirrors.pair.com/
SET LOCALDIR=%CD%
SET ROOTDIR=C:/cygwin

SET PACKAGES=bash,bash-completion,openssh,rxvt,python,git,wget,curl,vim,gcc-core,make

if defined PROXY (
  REM -- installing with proxy enabled
  echo Installing with proxy
  setup-x86.exe --disable-buggy-antivirus -q -p "%PROXY%" -s %SITE% -l "%LOCALDIR%" -R "%ROOTDIR%" -P "%PACKAGES%"
) else (
  REM -- installing without proxy 
  echo Installing without proxy
  setup-x86.exe --disable-buggy-antivirus -q -s %SITE% -l "%LOCALDIR%" -R "%ROOTDIR%" -P "%PACKAGES%"
)
