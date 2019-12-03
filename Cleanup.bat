:: Cleanup script
@ECHO OFF

:: get values from config
call Config.bat

TITLE Cleanup - UchuujinPatchScripts


:: Wait first
echo This will clean up anything the scripts have generated.
echo Please exit if you do not want files to be deleted.
echo.
echo The script will delete the following folders (only in this directory):
echo temp_pack, temp_patch, cpkdumps, dump, patch_distrib, texture_dump
echo.

IF "%2"=="keepISO" (
    echo Keeping ISO.
) ELSE (
    echo Will also delete files:
    echo NichiPatched.iso
)

echo.

:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
    echo No pause!
) ELSE (
    PAUSE
)

:: Delete generated folders
RD /S /Q temp_pack
RD /S /Q temp_patch
RD /S /Q cpkdumps
RD /S /Q dump
RD /S /Q patch_distrib
RD /S /Q texture_dump
RD /S /Q uchuujin-merged
RD /S /Q repos

:: Whether to keep iso file
IF "%2"=="keepISO" (
    ECHO Keeping ISO.
) ELSE (
    DEL NichiPatched.iso
)

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
    ECHO No pause!
) ELSE (
    PAUSE
)