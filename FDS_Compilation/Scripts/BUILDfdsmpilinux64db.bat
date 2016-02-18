@echo off
Title Building Parallel debug FDS for 64 bit Linux

Rem Batch file used to build a 32 bit version of FDS

set envfile="%userprofile%"\fds_smv_env.bat
IF EXIST %envfile% GOTO endif_envexist
echo ***Fatal error.  The environment setup file %envfile% does not exist. 
echo Create a file named %envfile% and use SMV/scripts/fds_smv_env_template.bat
echo as an example.
echo.
echo Aborting now...
pause>NUL
goto:eof

:endif_envexist

Rem location of batch files used to set up Intel compilation environment

call %envfile%

set target=mpi_intel_linux_64_db
set fdsdir=%linux_svn_root%/FDS_Compilation/mpi_intel_linux_64_db
set scriptdir=%linux_svn_root%/FDS_Compilation/Scripts

plink %linux_logon% %scriptdir%/MAKEfdsweb.sh %linux_svn_root% mpi_intel_linux_64_db


pause
