@echo off
set workspace=C:\DatosJBB\Workspaces\Workspace.Eclipse.JEE.Luna\SPAI\maven
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_40\bin;C:\Archivos_de_programa_Portables\apache-maven-3.3.1\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_40
set M2_HOME=C:\Archivos_de_programa_Portables\apache-maven-3.3.1
echo -----------------------------------------
echo . (C) MIW
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
cd %workspace%
echo ============ mvn --version =======================================================
echo .
call mvn --version
call mvn clean package
pause
::Se queda la consola abierta para realizar comandos en línea
::cmd /k
