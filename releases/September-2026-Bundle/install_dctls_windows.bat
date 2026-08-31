@echo off
:: Copy-DCTLE-RH.bat
:: Pure batch script: copies .dctle files containing "RH"
:: Skips if a .dctl with the same base name exists
:: Prompts before overwriting existing files
:: Offers to create default folder or pick a new one if missing

setlocal enabledelayedexpansion

:: Define the default target directory
set "TargetDir=C:\ProgramData\Blackmagic Design\DaVinci Resolve\Support\LUT\RenderHub"

:: Check if the default directory exists
if not exist "%TargetDir%" (
    echo The default RenderHub directory was not found:
    echo %TargetDir%
    echo.
    echo Please select an option:
    echo [1] Create the RenderHub folder automatically
    echo [2] Choose a different folder
    echo.
    set /p "dirChoice=Enter 1 or 2 (any other key to cancel): "
    
    if "!dirChoice!"=="1" (
        mkdir "%TargetDir%"
        echo.
        echo Created target directory: %TargetDir%
    ) else if "!dirChoice!"=="2" (
        echo.
        echo Opening folder picker... Please select a destination folder in the popup.
        
        :: Call PowerShell to open a folder browser dialog
        for /f "usebackq tokens=*" %%I in (`powershell -NoProfile -Command "$app = New-Object -ComObject Shell.Application; $folder = $app.BrowseForFolder(0, 'Select Destination Folder for DCTLs', 0, 0); if ($folder) { $folder.Self.Path }"`) do set "TargetDir=%%I"
        
        :: If the user closes the dialog without selecting anything, abort
        if "!TargetDir!"=="" (
            echo.
            echo No folder selected. Operation canceled.
            pause
            exit /b
        )
        
        echo.
        echo Custom target directory selected.
    ) else (
        echo.
        echo Operation canceled by user.
        pause
        exit /b
    )
)

echo Target directory: !TargetDir!
echo Current directory: %cd%
echo.
set "found=0"

for %%F in (*RH*.dctle) do (
    set "found=1"
    echo Found: %%~nxF
    set "basename=%%~nF"
    set "targetPath=!TargetDir!\%%~nxF"
    set "dctlPath=!TargetDir!\%%~nF.dctl"

    if exist "!dctlPath!" (
        echo Skipped: %%~nxF ^(matching .dctl exists^)
    ) else (
        if exist "!targetPath!" (
            set /p "response=File exists (%%~nxF). Overwrite? (y to confirm, any other key to stop): "
            
            if /i "!response!"=="y" (
                copy /y "%%F" "!targetPath!"
                echo Overwritten: %%~nxF
            ) else (
                echo Copy stopped by user.
                goto :end
            )
        ) else (
            copy "%%F" "!targetPath!"
            echo Copied: %%~nxF
        )
    )
)

if "!found!"=="0" (
    echo No matching .dctle files found in %cd%.
)

:end
echo.
echo Script finished.
pause