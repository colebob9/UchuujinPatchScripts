:: get values from config
call Config.bat

ECHO Script 2 - PatchGame

:: Create temporary folder for patching EBOOT
mkdir temp_patch

:: Copy over relevant files
copy dump\PSP_GAME\SYSDIR\EBOOT.BIN temp_patch\
copy uchuujin-master\EBOOT.BIN.patch temp_patch\

:: Patch EBOOT with bspatch
cd executables\bspatch

ECHO bspatch.exe will ask for admin here, please select 'Yes' for the UAC pop-up.
bspatch.exe ..\..\temp_patch\EBOOT.BIN ..\..\temp_patch\PATCHED.BIN ..\..\temp_patch\EBOOT.BIN.patch

:: Copy patched EBOOT back into game dump folder
cd ..\..\
copy temp_patch\PATCHED.BIN dump\PSP_GAME\SYSDIR\EBOOT.BIN /Y

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)