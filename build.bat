@ECHO OFF

::Clear ANT_HOME variable
SET ANT_HOME=

SET PROJECT_FOLDER=%~dp0
SET APACHE_ANT=%PROJECT_FOLDER%bin\apache-ant-1.9.0\bin\ant

:: Build project with the included apache-ant-1.8.2, using build.cml.
:: The %* passes all the batch file arguments to the ant.
%APACHE_ANT% -logger org.apache.tools.ant.listener.BigProjectLogger -f %PROJECT_FOLDER%build.xml %* 
