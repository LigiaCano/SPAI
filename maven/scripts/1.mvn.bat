@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\miw.spai\maven
echo -----------------------------------------
echo . Test (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .
cd %workspace%
echo ============ mvn clean
call mvn clean
pause
echo .
echo ============ mvn compile
call mvn compile
pause
echo .
echo ============ mvn test
call mvn test
pause
