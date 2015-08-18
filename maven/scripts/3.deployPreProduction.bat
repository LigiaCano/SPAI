@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\miw.spai\maven
echo -----------------------------------------
echo . Deploy Pre Production (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .

cd %workspace%
:: Test en Develop
:: -ff, --fail-fast. Stop at first failure in reactorized builds
call mvn -ff clean test
if errorLevel 1 goto errorDevelop

:: Install en Pre-Production
call mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction
if errorLevel 1 goto errorPreproduction

::call mvn tomcat7:redeploy -Denvironment.type=preproduction. !!!Comentado, todavía no preparado

call mvn verify -Denvironment.type=preproduction 
if errorLevel 1 goto errorPreproduction

pause
exit

:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES de test en Develop
pause
exit

:errorPreproduction
echo .
echo .
echo .
echo ########  ERRORES de Test de Integration en Pre-Produccion 
pause
exit
