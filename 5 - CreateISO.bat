:: If there is a better way to accomplish this through command line and/or automate it, LMK.

@ECHO OFF

echo Please drag both PSP_GAME and UMD_DATA.BIN into UMDGen.
echo Then, save .ISO to same directory as these .bat scripts.
echo Name it: NichijouPatched.iso
echo.

explorer dump
executables\UMDGen_v4\UMDGen.exe


PAUSE