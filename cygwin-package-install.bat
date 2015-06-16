@ECHO OFF
REM -- Automates cygwin installation

REM SETLOCAL
REM REM -- Change to the directory of the executing batch file
REM cd %HOMEPATH%\Downloads

REM SET SITE=http://cygwin.mirrors.pair.com/
REM SET LOCALDIR=%CD%
REM SET ROOTDIR=C:/cygwin

REM SET PACKAGES=bash,bash-completion,openssh,rxvt,python,git,wget,curl,vim,gcc-core,make

if defined PROXY (
  REM -- installing with proxy enabled
  setup-x86.exe --disable-buggy-antivirus -q -p "%PROXY%" -s %SITE% -l "%LOCALDIR%" -R "%ROOTDIR%" -P "%PACKAGES%"
) else (
  REM -- installing without proxy 
  echo Installting without proxy
  setup-x86.exe --disable-buggy-antivirus -q -s %SITE% -l "%LOCALDIR%" -R "%ROOTDIR%" -P "%PACKAGES%"
)
