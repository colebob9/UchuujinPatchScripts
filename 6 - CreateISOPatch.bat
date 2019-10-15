:: get values from config
call Config.bat


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
set zipName=NichiEngPatch_%date:~10,4%-%date:~4,2%-%date:~7,2%
"%sevenZipLocation%" a %zipName%.zip .\patch_distrib\*

PAUSE