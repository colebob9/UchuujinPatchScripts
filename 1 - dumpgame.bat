@ECHO OFF

"C:\Program Files\7-Zip\7z.exe" x -odump "2668 - Nichijou - Uchuujin (Japan) (v1.01).iso"
mkdir temp


mkdir cpkdumps\sc
copy dump\PSP_GAME\USRDIR\DATA\sc.cpk cpkdumps\sc\
cd cpkdumps\sc
..\..\executables\CriPakTools.exe sc.cpk ALL
del sc.cpk
cd ..\..\

mkdir cpkdumps\union
copy dump\PSP_GAME\USRDIR\DATA\union.cpk cpkdumps\union\
cd cpkdumps\union
..\..\executables\CriPakTools.exe union.cpk ALL
del union.cpk
cd ..\..\

mkdir cpkdumps\vo
copy dump\PSP_GAME\USRDIR\DATA\vo.cpk cpkdumps\vo\
cd cpkdumps\vo
..\..\executables\CriPakTools.exe vo.cpk ALL
del vo.cpk
cd ..\..\

PAUSE