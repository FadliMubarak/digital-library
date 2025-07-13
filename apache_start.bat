@echo off
echo Apache 2 is starting.
echo Hit [Ctrl+C] to stop this program correctly.

apache\bin\httpd.exe

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:error
echo.
echo Apache could not be started
pause

:finish
