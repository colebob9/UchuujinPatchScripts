@ECHO OFF

:: get values from config
call Config.bat

TITLE 1 - DumpGame - UchuujinPatchScripts
ECHO Script 1 - DumpGame

:: Create folder for game dump and extract .iso contents to it.
"%sevenZipLocation%" x -odump "%isoName%"


:: Make folder for sc.cpk dump and dump contents with CriPakTools.
mkdir cpkdumps\sc
copy dump\PSP_GAME\USRDIR\DATA\sc.cpk cpkdumps\sc\
cd cpkdumps\sc
..\..\executables\CriPakTools.exe sc.cpk ALL
del sc.cpk
cd ..\..\


REM Commented out other .cpk files until these are able to be modified.

REM mkdir cpkdumps\union
REM copy dump\PSP_GAME\USRDIR\DATA\union.cpk cpkdumps\union\
REM cd cpkdumps\union
REM ..\..\executables\CriPakTools.exe union.cpk ALL
REM del union.cpk
REM cd ..\..\

REM mkdir cpkdumps\vo
REM copy dump\PSP_GAME\USRDIR\DATA\vo.cpk cpkdumps\vo\
REM cd cpkdumps\vo
REM ..\..\executables\CriPakTools.exe vo.cpk ALL
REM del vo.cpk
REM cd ..\..\

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE
)