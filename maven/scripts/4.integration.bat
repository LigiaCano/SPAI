@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\miw.spai\maven
echo -----------------------------------------
echo . Test (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
cd %workspace%
echo ============ mvn integration-test (profile: preproduction)
call mvn integration-test -Denvironment.type=preproduction
pause
