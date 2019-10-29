@ECHO OFF

:: Run all scripts
:MENU
:: Choice system 
ECHO UchuujinPatchScripts Menu
ECHO. 
ECHO ...............................................
ECHO Enter a number to select a task, or 5 to EXIT.
ECHO ...............................................
ECHO.
ECHO * 1 - Create Patch and Test Game (opens PPSSPP if in same directory)
ECHO * 2 - Create Patch (shortest process)
ECHO.
ECHO * 3 - Execute everything (dump and create patch, longest process)
ECHO * 4 - Only dump game
ECHO.
ECHO * 5 - Cleanup previous files (deletes past files for a fresh script run)
ECHO * 6 - EXIT
ECHO.

:CHOICE
SET /P MenuChoice=Type a number, then press ENTER: 
IF %MenuChoice%==1 GOTO PATCHANDTEST
IF %MenuChoice%==2 GOTO PATCH
IF %MenuChoice%==3 GOTO EVERYTHING
IF %MenuChoice%==4 GOTO GAMEDUMP
IF %MenuChoice%==5 GOTO CLEANUP
IF %MenuChoice%==6 GOTO EOF

ECHO Invalid option!
GOTO CHOICE

:CLEANUP
CLS
call "Cleanup.bat"
CLS
GOTO MENU

:PATCHANDTEST
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "Cleanup.bat" pauseskip keepISO
call "EmuTest.bat" pauseskip
GOTO EOF

:PATCH
:: Do not include any unnecessary scripts unrelated to the patch
:: Make this process as fast as possible
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
call "Cleanup.bat" pauseskip
GOTO EOF

:EVERYTHING
call "1 - DumpGame.bat" pauseskip
call "2 - PatchGame.bat" pauseskip
call "3 - PatchScripts.bat" pauseskip
call "4 - PackScripts.bat" pauseskip
call "5 - ReplaceISOFiles.bat" pauseskip
call "6 - CreateISOPatch.bat" pauseskip
GOTO EOF

:GAMEDUMP
call "1 - DumpGame.bat" pauseskip
:: Remember other dump scripts here, textures / CGs.
GOTO EOF

:EOF 
ECHO Finished!
PAUSE