mkdir patch_distrib

cd patch_distrib

..\executables\xdelta3.exe -e -9 -S djw -vfs "..\2668 - Nichijou - Uchuujin (Japan) (v1.01).iso" "..\NichiPatched.iso" "NichiEngPatch.vcdiff"

:: copy files for distribution

copy ..\executables\xdelta3.exe

copy ..\executables\PatchISO.bat

:: automatically create zip archive for patch distribution
cd ..

set zipName=NichiEngPatch_%date:~10,4%-%date:~4,2%-%date:~7,2%

"C:\Program Files\7-Zip\7z.exe" a %zipName%.zip .\patch_distrib\*



PAUSE