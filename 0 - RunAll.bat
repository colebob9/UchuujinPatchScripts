@ECHO OFF

:: Run all scripts
:MENU
:: Choice system 
ECHO UchuujinPatchScripts Menu
ECHO. 
ECHO ...............................................
ECHO Press a number to select a task, or 5 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Create Patch (quickest, most common)
ECHO 2 - Execute everything (dump and create patch, longest process)
ECHO 3 - Only dump game
ECHO 4 - Cleanup previous files (deletes past files for a fresh script run)
ECHO 5 - EXIT
ECHO.

:CHOICE
SET /P MenuChoice=Type a number, then press ENTER: 
IF %MenuChoice%==1 GOTO PATCH
IF %MenuChoice%==2 GOTO EVERYTHING
IF %MenuChoice%==3 GOTO GAMEDUMP
IF %MenuChoice%==4 GOTO CLEANUP
IF %MenuChoice%==5 GOTO EOF

ECHO Invalid option!
GOTO CHOICE

:CLEANUP
CLS
call "Cleanup.bat"
CLS
GOTO MENU

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