mkdir temp_patch

copy dump\PSP_GAME\SYSDIR\EBOOT.BIN temp_patch\
copy uchuujin-master\EBOOT.BIN.patch temp_patch\

cd executables\bspatch
bspatch.exe ..\..\temp_patch\EBOOT.BIN ..\..\temp_patch\PATCHED.BIN ..\..\temp_patch\EBOOT.BIN.patch

cd ..\..\
copy temp_patch\PATCHED.BIN dump\PSP_GAME\SYSDIR\EBOOT.BIN /Y

PAUSE