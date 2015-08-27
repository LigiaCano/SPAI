@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\SPAI\maven
echo -----------------------------------------
echo . Test (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .
cd %workspace%
echo ============ mvn --version =======================================================
echo .
call mvn --version
pause
