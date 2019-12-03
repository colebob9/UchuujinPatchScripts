:: get values from config
call Config.bat

TITLE 3 - PatchScripts - UchuujinPatchScripts
ECHO Script 3 - PatchScripts

:: example command:
:: python sc_patch_translations.py 0000 0000.json 0000.po

cd cpkdumps\sc\

:: For each file in "cpkdumps\sc", 
:: run sc_patch_translations.py for each corresponding .json and .po file.
for %%f in (*) do python ..\..\uchuujin-merged\src\sc_patch_translations.py %%f ..\..\uchuujin-merged\scripts\%%f.json ..\..\uchuujin-merged\scripts\en_US\%%f.po

cd ..\..\

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)