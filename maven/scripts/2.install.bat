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
echo ============ mvn -ff clean test (profile: preproduction) =======================================================
echo .
call mvn -ff clean test 
if errorLevel 1 goto errorDevelop

echo .
:: -Dmaven.test.skip=true. To skip running the tests for a particular project
echo ============ call mvn -Dmaven.test.skip=true install -Denvironment.type=production (profile: production) ================
echo .
call mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction
pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES...
pause
