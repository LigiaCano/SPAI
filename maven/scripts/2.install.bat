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
:: -ff, --fail-fast. Stop at first failure in reactorized builds. Línea de comentario
call mvn -ff clean package
if errorLevel 1 goto errorDevelop

:: -Dmaven.test.skip=true. To skip running the tests for a particular project
call mvn -Dmaven.test.skip=true install

cd %workspace%
pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES...
pause
