@echo off
echo MariaDB is starting.
echo Don't close this command directly.
echo Hit [Ctrl+C] to stop this program correctly.

mariadb\bin\mysqld.exe --datadir=data --console

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:error
echo.
echo MariaDB could not be started
pause

:finish