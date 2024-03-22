### Legendary (Epic Games Launcher Alternative) for Hitman 3 (aka Hitman WoA)
Do you hate how Epic Games Launcher hogs disk space/ RAM, and having to wait for the Epic Games Launcher to boot up?

You can technically play Hitman 3 without going through the Epic Game Launcher, by using Legendary: https://github.com/derrod/legendary

Install Steps (For Windows Users, idk about Linux):

Go to https://github.com/derrod/legendary/releases/latest, download ```legendary.exe```

Open Command Prompt, type ```cd <where you installed legendary>``` Ex: ```cd C:\Users\Legion\Onedrive\Documents``` to enter the directory where legendary.exe was installed.

**For the rest of the instructions, I will assume you are in the directory where you installed legendary.exe, in Windows Command Prompt.**

(If you choose to use Windows Powershell, just replace any command starting in `legendary` and replace it with `./legendary`)

Now that you are in the directory where you installed Legendary: type into Windows Command Prompt ```legendary auth```

Now login to your Epic Games account (window should open in your browser)

Go back to Command Prompt after logging in.

Type into Command Prompt: ```legendary list-games``` - Locate the "App name" by Hitman 3, it should be ```Eider```.

#### If you already have Hitman 3 installed on your PC:
Type ```legendary import-game Eider "<where you installed Hitman 3 previously>"```

Ex: ```legendary import-game Eider "C:\Program Files\Epic Games\HITMAN3"``` (add double quotes around install location, since Program Files will cause an error otherwise since there is a space between Program and Files)

#### If you do not already have Hitman 3 installed on your PC:
Then type ```legendary install Eider```. You may have to also repeat this step for the other HITMAN 3 DLC, refer to the above step for how to find the "App names" of each DLC.

#### Launch Game
After you have either installed or imported Hitman 3, type ```legendary launch Eider``` to launch the game. 
Use ```legendary launch Eider -SKIP_LAUNCHER``` to bypass the Hitman 3 launcher screen. 

#### Launch Game Offline
Type ```legendary launch Eider -SKIP_LAUNCHER --offline``` into command prompt

#### Updating Hitman 3
- ```legendary list-installed --check-updates``` to sync Legendary after updating Hitman 3 via Epic Games.
- ```legendary install Eider --update-only``` to update Hitman 3 directly through Legendary
- ```legendary sync-saves``` to sync cloud saves before launch.
- ```legendary verify-game Eider``` to verify game files (if you have corrupted any files after installing mods etc, getting crashes constantly, etc)
- ```legendary repair Eider``` (if verifying game files revealed errors)

#### Updating Legendary
To update `legendary.exe` (not strictly necessary), just revisit https://github.com/derrod/legendary/releases/latest and download the newest version. The terminal will inform you of when there is a new update.

#### Batch Files

Paste this into a document and save it as a .bat file (Windows).
Then navigate to the directory from which you saved the .bat file in terminal, and run it. 
Ex: type leg.bat in terminal.

It will allow you to open the game with one command in the command prompt.

IMPORTANT: Replace line 1 with the file path of wherever you have installed `legendary.exe`

```
cd "C:\Users\<username>\OneDrive\Documents"
legendary.exe launch Eider -SKIP_LAUNCHER
exit
```

Alternative batch file if you have [Peacock](https://thepeacockproject.org/wiki/intel/) 

IMPORTANT: Replace line 1 and line 3 with the file paths of where you installed `legendary.exe` and Peacock, respectively.

Rename `Start Server.cmd` to `StartServer.cmd`

Note: the file path in line 3 must refer to the folder in which `peacockpatcher.exe` and `StartServer.cmd` are located.

```
cd "C:\Users\<username>OneDrive\Documents"
legendary.exe launch Eider -SKIP_LAUNCHER
cd "C:\Users\<username>\OneDrive\Documents\peacockcurrent"
start "" "Start Server.cmd"
start PeacockPatcher.exe
exit
```

#### General Advice
Similar video tutorial: https://www.youtube.com/watch?v=J0r5HnQ3Bak
Read up on the documentation here as well! https://github.com/derrod/legendary
This guide is a condensed version of what I considered important for Hitman 3 players, but the Github documentation is more complete.
