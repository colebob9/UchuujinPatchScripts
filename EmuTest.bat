@ECHO OFF

TITLE EmuTest - UchuujinPatchScripts

:: PPSSPP testing

IF EXIST ppsspp_win\PPSSPPWindows64.exe (
ppsspp_win\PPSSPPWindows64.exe NichiPatched.iso
) ELSE (
echo PPSSPP executable not found in current directory.
)

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)