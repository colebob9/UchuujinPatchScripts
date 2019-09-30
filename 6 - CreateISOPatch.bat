mkdir patch_distrib

cd patch_distrib

..\executables\xdelta3.exe -e -9 -S djw -vfs "..\2668 - Nichijou - Uchuujin (Japan) (v1.01).iso" "..\NichiPatched.iso" "NichiEngPatch.vcdiff"

:: copy files for distribution

copy ..\executables\xdelta3.exe

copy ..\executables\PatchISO.bat

PAUSE