@ECHO OFF

color A
:main
type logo.txt
echo.
echo.
ECHO =============================================================
ECHO THIS PROGRAM ALLOWS TO EDIT HOSTS FILE FOR WEBSITE REDIRECTION
echo.
ECHO MAKE SURE YOU SET ALL THE PERMISSION BEFORE MODIFY THIS FILE
ECHO =============================================================
ECHO  { 1 } -- Edit Manually
ECHO  { 2 } -- Edit Automatically
ECHO  { 3 } -- Exit                                  
ECHO =============================================================
echo.
set /p option= ">> "
if %option% == 1 goto open
if %option% == 2 goto edit
if %option% == 3 goto close

:open
echo MANUAL EDITION SELECTED
start %WINDIR%\System32\Drivers\Etc\Hosts
cls
goto:main
:edit
echo AUTOMATIC EDITION SELECTED
echo.
set /p ip="ENTER IP >> "
echo.
ECHO ===================================
echo  "WWW" WILL BE ADDED AUTOMATICALLY  
ECHO ===================================
echo.
set /p url="ENTER URL >> "
echo %ip% www.%url%>>%WINDIR%\System32\Drivers\Etc\Hosts
echo %ip% %url%>>%WINDIR%\System32\Drivers\Etc\Hosts
msg * HOSTS FILE SUCCESSFULLY EDITED. VERIFY THE CHANGES
echo.
pause
cls
goto:main
:close
exit
