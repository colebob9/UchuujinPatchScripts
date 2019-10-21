:: Cleanup script
@ECHO OFF

:: get values from config
call Config.bat


:: Wait first
echo This will clean up anything the scripts have generated.
echo Please exit if you do not want files to be deleted.
echo.
echo The script will delete the following folders (only in this directory):
echo temp_pack, temp_patch, cpkdumps, dump, patch_distrib, texture_dump
echo.
echo Will also delete files:
echo NichiPatched.iso
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
DEL NichiPatched.iso

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)