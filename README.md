

# UchuujinPatchScripts
Scripts to easily automate the patching process for the Nichijou: Uchuujin [English Translation Project](https://github.com/noneucat/uchuujin). 

These scripts are designed to make the process of dumping, modifying, and patching the game files as easy as possible. In addition to creating a patch for the game, you can also use these scripts to help dump the game iso, so that you can look around the game files in an easier way.

### Current Features:
* Game extraction and dumping
* Translation script patching and repacking
* EBOOT patching
* Replacement of patched files back into the original .ISO
* Creation of binary diff with xdelta
* Menu for executing these tasks easily
* PPSSPP testing
* Automatically downloading the repositories needed

Currently *does not* include features like: (will be implemented)

* Texture dumping and repacking
* Text script dumping



## Prerequisites
* 64-bit Windows OS
* An ISO of Nichijou: Uchuujin.
* Have 7-Zip and Python 3 installed. (Python must be in PATH)
* Install the `polib` package for Python. 
	* Use `pip install polib` in a Command Prompt. (Not in IDLE or a Python shell)
* Clone of [Uchuujin Translation repository](https://github.com/noneucat/uchuujin).
* This Visual C++ Redistributable
    https://www.microsoft.com/en-us/download/details.aspx?id=5555

#### Optional:
* PPSSPP emulator (put `ppsspp_win` in same directory as scripts to test game)


## How to use

1. Clone this repository.
2. Put game .ISO in the same directory as the .bat scripts. (Named `2668 - Nichijou - Uchuujin (Japan) (v1.01).iso` in config file. Change if needed.)
3. Use `0 - RunAll.bat` to run a task. Press 1 to create a patch and playtest the game.

(Or, execute each script in order, if you want to do it manually. Only recommended for dev work on the scripts.)
