:: executables\CriPakTools.exe temp_pack\sc.cpk cpkdumps\sc\0000 0000
mkdir temp_pack

copy dump\PSP_GAME\USRDIR\DATA\sc.cpk temp_pack\


cd cpkdumps\sc\

for %%f in (*) do ..\..\executables\CriPakTools.exe ..\..\temp_pack\sc.cpk %%f ..\..\cpkdumps\sc\%%f

cd ..\..\

copy temp_pack\sc.cpk dump\PSP_GAME\USRDIR\DATA\sc.cpk /Y

PAUSE