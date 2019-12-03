:: get values from config
call Config.bat

TITLE 6 - CreateISOPatch - UchuujinPatchScripts
ECHO Script 6 - CreateISOPatch

:: Make folder for patch distribution.
mkdir patch_distrib
cd patch_distrib

:: Create binary patch of patched .iso with xdelta.
..\executables\xdelta3.exe -e -9 -S djw -vfs "..\%isoName%" "..\NichiPatched.iso" "NichiEngPatch.vcdiff"

:: copy files for distribution
copy ..\executables\xdelta3.exe
copy ..\executables\PatchISO.bat

:: automatically create zip archive for patch distribution
cd ..
:: create name with date in YYYY-MM-DD format
set zipName=NichiEngPatch_%date:~10,4%-%date:~4,2%-%date:~7,2%.zip
"%sevenZipLocation%" a %zipName% .\patch_distrib\*

ECHO Created a file named:
ECHO %zipName%
ECHO.

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)