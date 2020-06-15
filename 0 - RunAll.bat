@ECHO OFF
:: get values from config
call Config.bat

:PRECHECK
ECHO Checking prerequisites...
ECHO.

:: ISO Check
IF EXIST "%isoName%" (
    ECHO ISO exists.
) ELSE (
    ECHO PRECHECK ERROR!!
    ECHO Original ISO file doesn't exist! Please check that you have the .iso in the folder you are running this from.
    ECHO Also, check that Config.bat has the correct iso name.
    ECHO.
    GOTO EOF
)

:: 7zip check
IF EXIST "%sevenZipLocation%" (
    ECHO 7-Zip exists.
) ELSE (
    ECHO 7-Zip is not installed! Please install from https://www.7-zip.org/
    ECHO Also check Config.bat if you installed 7-Zip somewhere else.
    ECHO.
    GOTO EOF
)
:: Check if needs a cleanup
IF EXIST  OR "temp_pack" OR "temp_patch" OR "cpkdumps" OR "dump" OR "patch_distrib" OR "texture_dump" OR "uchuujin-merged" OR "repos" (

    ECHO.
    ECHO PREVIOUS FILES DETECTED!
    ECHO Consider running a cleanup if you are attempting a new patch.
    ECHO These scripts might not function correctly without a cleanup done.
    ECHO.
    ECHO You can do this using 6 in the menu ahead, or execute Cleanup.bat
    ECHO.
    PAUSE
)
CLS


:: Run all scripts
:MENU
TITLE 0 - RunAll - UchuujinPatchScripts

:: Choice system 
ECHO ....................................................
ECHO .            UchuujinPatchScripts Menu             .
ECHO .               Scripts by colebob9                .
ECHO .                                                  .
ECHO .  Enter a number to select a task, or 7 to EXIT.  .
ECHO ....................................................
ECHO.
ECHO.
ECHO Main tasks:
ECHO -----------------------------------------------
ECHO * 1 - Create Patch and Test Game (opens PPSSPP, keeps patched ISO file)
ECHO * 2 - Create Patch (keeps patched ISO file, doesn't open PPSSPP)
ECHO.
ECHO.
ECHO Alternate patch processes:
ECHO -----------------------------------------------
ECHO * 3 - Only Create Patch .ZIP (shortest process, deletes patched ISO)
ECHO * 4 - Execute all scripts and keep all files (dump and create patch)
ECHO.
ECHO File Management:
ECHO -----------------------------------------------
ECHO * 5 - Only dump game
ECHO * 6 - Cleanup previous files (deletes past files for a fresh script run)
ECHO.
ECHO * 7 - EXIT
ECHO.

:CHOICE
SET /P MenuChoice=Type a number, then press ENTER to start the task: 
IF %MenuChoice%==1 GOTO PATCHANDTEST
IF %MenuChoice%==2 GOTO PATCHANDKEEP
IF %MenuChoice%==3 GOTO PATCH
IF %MenuChoice%==4 GOTO EVERYTHING
IF %MenuChoice%==5 GOTO GAMEDUMP
IF %MenuChoice%==6 GOTO CLEANUP
IF %MenuChoice%==7 GOTO EOF

ECHO Invalid option!
GOTO CHOICE

:CLEANUP
CLS
call "Cleanup.bat"
CLS
GOTO MENU

:PATCHANDTEST
call "DownloadRepos.bat" pauseskip
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "Cleanup.bat" pauseskip keepISO
call "EmuTest.bat" pauseskip
GOTO EOF

:PATCHANDKEEP
call "DownloadRepos.bat" pauseskip
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "Cleanup.bat" pauseskip keepISO
GOTO EOF

:PATCH
:: Do not include any unnecessary scripts unrelated to the patch
:: Make this process as fast as possible
call "DownloadRepos.bat" pauseskip
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "Cleanup.bat" pauseskip
GOTO EOF

:EVERYTHING
call "DownloadRepos.bat" pauseskip
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "EmuTest.bat" pauseskip
GOTO EOF

:GAMEDUMP
call "1 - DumpGame.bat" pauseskip
:: Remember other dump scripts here, textures / CGs.
GOTO EOF

:EOF 
ECHO End of main RunAll script.
PAUSE