:: get values from config
call Config.bat

ECHO Script 5 - ReplaceISOFiles

:: Example command:
:: executables\UMD-replace\UMD-replace.exe NichiTest.iso PSP_GAME\ICON0.PNG dump\PSP_GAME\ICON0.PNG

:: list of files changed:
:: dump\PSP_GAME\USRDIR\DATA\sc.cpk
:: dump\PSP_GAME\SYSDIR\EBOOT.BIN
:: dump\PSP_GAME\ICON0.PNG
:: 
:: more to add...
:: 

:: get values from config
call Config.bat

:: Create duplicate of original .iso for patching.
copy "%isoName%" NichiPatched.iso

:: Possible english translation icon replacement?
executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\ICON0.PNG dump\PSP_GAME\ICON0.PNG

:: Replace sc.cpk with patched version.
executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\USRDIR\DATA\sc.cpk dump\PSP_GAME\USRDIR\DATA\sc.cpk

:: Replace EBOOT.BIN with patched version.
executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\SYSDIR\EBOOT.BIN dump\PSP_GAME\SYSDIR\EBOOT.BIN


:: Remember union.cpk and vo.cpk for later here


REM :: PPSSPP testing
REM IF EXIST ppsspp_win\PPSSPPWindows64.exe (
REM ppsspp_win\PPSSPPWindows64.exe NichiPatched.iso
REM ) ELSE (
REM echo PPSSPP not found in current directory. Skipping.
REM )

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)