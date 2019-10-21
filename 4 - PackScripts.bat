:: get values from config
call Config.bat

ECHO Script 4 - PackScripts

:: Example command:
:: executables\CriPakTools.exe temp_pack\sc.cpk cpkdumps\sc\0000 0000


:: Make temporary folder for packing files back into sc.cpk.
mkdir temp_pack

:: Copy sc.cpk to temp folder.
copy dump\PSP_GAME\USRDIR\DATA\sc.cpk temp_pack\


:: For each file in "cpkdumps\sc", put modified file into sc.cpk.
cd cpkdumps\sc\

for %%f in (*) do ..\..\executables\CriPakTools.exe ..\..\temp_pack\sc.cpk %%f ..\..\cpkdumps\sc\%%f && ECHO Put %%f file into "sc.cpk".

cd ..\..\

:: Copy sc.cpk back into game dump folder.
copy temp_pack\sc.cpk dump\PSP_GAME\USRDIR\DATA\sc.cpk /Y

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)