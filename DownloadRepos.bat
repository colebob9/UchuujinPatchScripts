:: get values from config
call Config.bat

TITLE DownloadRepos - UchuujinPatchScripts

:: Create folder for downloads
mkdir repos
cd repos

:: Download repos, both branches
ECHO Downloading master branch...
curl -LO https://github.com/noneucat/uchuujin/archive/master.zip

ECHO Downloading weblate branch...
curl -LO https://github.com/noneucat/uchuujin/archive/weblate.zip

:: Unzip
"%sevenZipLocation%" x master.zip
"%sevenZipLocation%" x weblate.zip

:: Create merged folder
mkdir uchuujin-merged
xcopy uchuujin-master uchuujin-merged /s /e /i

:: Copy weblate scripts folder 
RD /S /Q uchuujin-merged\scripts
xcopy uchuujin-master\scripts uchuujin-merged\scripts /s /e /i

:: Copy merged folder to main folder
xcopy uchuujin-merged ..\uchuujin-merged /s /e /i


cd ..

:: Ending of script
:: Whether to skip end pause statement
IF "%1"=="pauseskip" (
echo No pause!
) ELSE (
PAUSE