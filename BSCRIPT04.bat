
echo Sorting text files on Drive C: by date
for /f "delims=" %%i in ('dir C:\*.txt /a-d /o-d /b') do (
    echo %%i
)


echo Archiving older files to Drive Z:
set "archiveDir=Z:\Archive"
if not exist "%archiveDir%" mkdir "%archiveDir%"

for /f "delims=" %%i in ('dir C:\*.txt /a-d /o-d /b') do (
    echo Moving %%i to %archiveDir%
    move "C:\%%i" "%archiveDir%\"
)

echo Sorting archived files by size
for /f "delims=" %%i in ('dir "%archiveDir%\*.txt" /a-d /o-s /b') do (
    echo %%i
)

echo Do you want to delete the old, large files in the archive? (y/n)
choice /c yn /m "Choose an option:"

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Deleting old, large files...
for /f "delims=" %%i in ('dir "%archiveDir%\*.txt" /a-d /o-s /b') do (
    echo Deleting %%i
    del "%archiveDir%\%%i"
)
goto end

:no
echo No files were deleted.

:end
echo Task completed.
pause
