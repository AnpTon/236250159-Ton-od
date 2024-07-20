@echo off
:menu
cls
echo Select a Windows Utility:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
echo 8. Exit
choice /c 12345678 /n /m "Enter your choice (1-8): "

if errorlevel 8 goto exit
if errorlevel 7 goto attrib
if errorlevel 6 goto find
if errorlevel 5 goto defrag
if errorlevel 4 goto format
if errorlevel 3 goto chkdsk
if errorlevel 2 goto task
if errorlevel 1 goto ipconfig

echo Invalid choice! Please select a number between 1 and 8.
pause
goto menu

:ipconfig
echo Running ipconfig...
ipconfig
pause
goto menu

:task
echo Select an Option:
echo 1. View tasklist
echo 2. Kill a task
choice /c 12 /n /m "Enter your choice (1-2): "

if errorlevel 2 goto taskkill
if errorlevel 1 goto tasklist

echo Invalid choice! Please select 1 or 2.
pause
goto tasklist_taskkill

:tasklist
echo Running tasklist...
tasklist
pause
goto menu

:taskkill
echo Enter the IM of the process to kill:
set /p imk=
if "%imk%"=="" (
    echo Invalid input! IM cannot be empty.
)
if not "%imk%"=="" (
    echo Attempting to kill process with IM %imk%...
    taskkill /IM %imk%
)
pause
goto menu

:chkdsk
echo Checking Disk
chkdsk
pause
goto menu

:format
echo Enter the drive letter:
set /p drive=
if "%drive%"=="" (
    echo Invalid input! Drive letter cannot be empty.
)
if not "%drive%"=="" (
    echo Formatting %drive%...
    format %drive%
)
pause
goto menu

:defrag
echo Enter the drive letter:
set /p drive=
if "%drive%"=="" (
    echo Invalid input! Drive letter cannot be empty.
)
if not "%drive%"=="" (
    echo Running defrag on %drive%...
    defrag %drive%
)
pause
goto menu

:find
echo Enter string to find:
set /p string=
echo Enter file to search:
set /p file=
if "%string%"=="" (
    echo Invalid input! Search string cannot be empty.
)
if "%file%"=="" (
    echo Invalid input! File name cannot be empty.
)
if not "%string%"=="" if not "%file%"=="" (
    echo Searching for "%string%" in %file%...
    find "%string%" %file%
)
pause
goto menu

:attrib
echo Enter file name:
set /p filea=
if "%filea%"=="" (
    echo Invalid input! File name cannot be empty.
)
if not "%filea%"=="" (
    echo Changing attributes for %filea%...
    attrib %filea%
)
pause
goto menu

:exit
pause
exit