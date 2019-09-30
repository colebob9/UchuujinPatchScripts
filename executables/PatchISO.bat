@echo off
echo Applying Patch %progress%
xdelta3.exe -d -vfs "2668 - Nichijou - Uchuujin (Japan) (v1.01).iso" "NichiEngPatch.vcdiff" "NichijouUchuujinEnglish.iso"
echo File successfully patched! 
@pause
