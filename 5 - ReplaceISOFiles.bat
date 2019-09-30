:: Example command:
:: executables\UMD-replace\UMD-replace.exe NichiTest.iso PSP_GAME\ICON0.PNG dump\PSP_GAME\ICON0.PNG

:: list of files changed:
:: dump\PSP_GAME\USRDIR\DATA\sc.cpk
:: dump\PSP_GAME\SYSDIR\EBOOT.BIN
:: 
:: 
:: 

copy "2668 - Nichijou - Uchuujin (Japan) (v1.01).iso" NichiPatched.iso

:: Test image, comment out when not testing.
executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\ICON0.PNG dump\PSP_GAME\ICON0.PNG


executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\USRDIR\DATA\sc.cpk dump\PSP_GAME\USRDIR\DATA\sc.cpk

executables\UMD-replace\UMD-replace.exe NichiPatched.iso PSP_GAME\SYSDIR\EBOOT.BIN dump\PSP_GAME\SYSDIR\EBOOT.BIN


:: Remember union.cpk and vo.cpk for later here


PAUSE