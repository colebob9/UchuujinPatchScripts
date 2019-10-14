:: Cleanup script
@ECHO OFF

:: Wait first
echo This will clean up anything the scripts have generated.
echo Please exit if you do not want files to be deleted.
echo.
echo The script will delete the following folders (only in this directory):
echo temp_pack, temp_patch, cpkdumps, dump, patch_distrib
echo.
echo Will also delete files:
echo NichiPatched.iso
echo.
PAUSE

:: Delete generated folders
RD /S /Q temp_pack
RD /S /Q temp_patch
RD /S /Q cpkdumps
RD /S /Q dump
RD /S /Q patch_distrib
DEL NichiPatched.iso

PAUSE