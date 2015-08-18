@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\miw.spai\maven
echo -----------------------------------------
echo . Test (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
cd %workspace%
echo ============ mvn clean (profile: develop) =======================================================
echo .
call mvn clean
pause
echo .
echo ============ mvn clean test (profile: develop) =======================================================
echo .
call mvn clean test
pause

