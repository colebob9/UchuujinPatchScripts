:: example command:
:: python sc_patch_translations.py 0000 0000.json 0000.po

cd cpkdumps\sc\

for %%f in (*) do python ..\..\uchuujin-master\src\sc_patch_translations.py %%f ..\..\uchuujin-master\scripts\%%f.json ..\..\uchuujin-master\scripts\en_US\%%f.po
PAUSE


