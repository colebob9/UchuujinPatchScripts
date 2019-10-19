

# UchuujinPatchScripts
Scripts to easily automate the patching process for the Nichijou: Uchuujin [English Translation Project](https://github.com/noneucat/uchuujin). 

These scripts are designed to make the process of dumping, modifying, and patching the game files as easy as possible. In addition to creating a patch for the game, you can also use these scripts to help dump the game iso, so that you can look around the game files in an easier manner.

### Current Features:
* Game extraction and dumping
* Translation script patching and repacking
* EBOOT patching
* Replacement of patched files back into the original .ISO
* Creation of binary diff with xdelta

Currently *does not* include features like: (will be implemented)
* Executing each batch script in order
* Options for only dumping the game or creating a patch
* Texture dumping and repacking
* Text script dumping
* Automatically downloading the repositories needed
* PPSSPP testing


## Prerequisites
* Windows OS
* An ISO of Nichijou: Uchuujin.
* Have 7-Zip and Python 3 installed. (Python must be in PATH)
* Install the `polib` package for Python. 
	* Use `pip install polib` in a Command Prompt.
* Clone of [Uchuujin Translation repository](https://github.com/noneucat/uchuujin).


## How to use

1. Clone this repository.
2. Put game .ISO in the same directory as the .bat scripts. (Named `2668 - Nichijou - Uchuujin (Japan) (v1.01).iso` in config file. Change if needed.)
3. Clone Translation repository to a folder named `uchuujin-master` in the same directory as the .bat scripts. (Use `scripts` folder from the [weblate branch](https://github.com/noneucat/uchuujin/tree/weblate) to get the latest translations)
5. Execute each script in order.
