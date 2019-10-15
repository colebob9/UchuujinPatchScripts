:: Create temporary folder for patching EBOOT
mkdir temp_patch

:: Copy over relevant files
copy dump\PSP_GAME\SYSDIR\EBOOT.BIN temp_patch\
copy uchuujin-master\EBOOT.BIN.patch temp_patch\

:: Patch EBOOT with bspatch
cd executables\bspatch
bspatch.exe ..\..\temp_patch\EBOOT.BIN ..\..\temp_patch\PATCHED.BIN ..\..\temp_patch\EBOOT.BIN.patch

:: Copy patched EBOOT back into game dump folder
cd ..\..\
copy temp_patch\PATCHED.BIN dump\PSP_GAME\SYSDIR\EBOOT.BIN /Y

PAUSE