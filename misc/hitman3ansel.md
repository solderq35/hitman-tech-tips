## Hitman 3 Ansel Freecam Unlock Installation / Use Guide

**If you need further troubleshooting please ask in [Glacier Modding Discord](https://discord.gg/6UDtuYhZP6)**

### CheatEngine Freecam
- PC, **Nvidia Graphics Card (that can run Ansel) Required**
  - May be incompatible with Linux
- No collision (your camera can pass through any objects in the way)
- Can unpause or pause the game while in freecam mode, enabling you to see NPC reactions etc. in real time from far away.
- May crash more than the Hex Edit version.

##### Installation (CheatEngine version)
**Make sure to follow the instructions below in order, or else it may not work. Steps 3-7 must be repeated each time you want to use Ansel Freecam No Collision.**

1. Download the latest CheatEngine script from [here](https://cdn.discordapp.com/attachments/639225834124738560/1000834903635664997/Hitman3-3.110.0.CT).
2. Download [CheatEngine](https://www.cheatengine.org/downloads.php) if you don't already have it. Click on the downloaded ```.exe``` file to install CheatEngine. If you get asked to install McAfee Antivirus or any other unrelated software, decline.
3. Start CheatEngine. **(At this point, Hitman 3 should not be open).** Click on the "open cheat table" button, [as shown here](https://media.discordapp.net/attachments/833505136290299935/945435759740071956/unknown.png). Navigate to where you downloaded the Ansel ```.ct``` file from Step 1 and open it.
4. Now start Hitman 3.
5. Click on the "open a process" button, [as shown here](https://media.discordapp.net/attachments/833505136290299935/945435991475380234/unknown.png). Navigate to Hitman 3 in the Process List menu that opens up. Click "Open".
6. Now, tick each checkbox [shown here](https://media.discordapp.net/attachments/555224758837444632/1014965897888284672/unknown.png?width=658&height=669). 
7. Now go to Hitman 3, and start a level. Read the "How to Use" section below on what to do next.

##### How to Use (CheatEngine version)
- Default keybind to open Ansel photo mode is Alt+F2
- WASD to move the camera
- Click and drag mouse to change where you are looking
- F2 to unpause, F3 to pause (note that F2 and Alt+F2 are different keybinds)
- Note that pause and unpause works both inside of Ansel photo mode and outside of it
- Press Esc to escape Ansel photo mode

### Hex Edit Freecam
- PC, **Nvidia Graphics Card (that can run Ansel) Required**
  - May be incompatible with Linux
- Has collision (your camera cannot pass through any objects in the way)
- Camera will stay paused while in freecam mode (with no way to unpause), unlike CheatEngine version.
- Generally more stable than the No Collision version.

##### Installation (Hex Edit version)
**You may need to repeat steps 2-7 after each Hitman 3 update. Otherwise, you do not have to repeat the installation steps after doing it once.**

1. Download and install a hex editor. For the purposes of this guide we will use HxD hex editor (https://mh-nexus.de/en/hxd/).

2. Open HxD hex editor, and go to File -> Open. Navigate to `C:\Program Files\Epic Games\HITMAN3\Retail` (or wherever you have installed Hitman 3).

3. Find HITMAN3.exe application in the Retail folder, and open it in HxD.

4. Type Control F to open the search application. Go to "hex-values" search option.
![test1](https://media.discordapp.net/attachments/833505136290299935/879779135587753994/unknown.png?width=1159&height=587)

5. Search for "83 F8 0F 75 1C 0F 54". 
![test](https://media.discordapp.net/attachments/791461067925618698/879770382213738506/unknown.png?width=788&height=586)

6. Highlight the "75" in the "83 F8 0F 75 1C 0F 54" sequence and type "EB" to change the value. 
The string should now read as "83 F8 0F **EB** 1C 0F 54".

7. Click on File -> Save in HxD. Close HxD and open up Hitman 3 as normal. Read the "How to Use" section below on what to do next.

##### How to Use (Hex Edit version)
- Default keybind to open Ansel photo mode is Alt+F2
- WASD to move the camera
- Click and drag mouse to change where you are looking
- Press Esc to escape Ansel photo mode

### Modding SDK Freecam
- PC, **Supported by all Graphics Cards (Including AMD)**
  - Compatible with Linux (see installation steps below).
- No collision (your camera can pass through any objects in the way)
- By default, you can only use the freecam mode while either unpaused, or paused via the in-game pause menu (Esc key).
  - Pause screen overlay may may make it difficult to see if investigating something timing sensitive, such as for speedrun strats etc.
  - Windows users (only for AMD, Nvidia users should use CheatEngine or Hex Edit versions above) may be able to combine this freecam with CheatEngine or WeMod to freeze game time, to avoid the in-game pause screen overlay.

##### Installation (Modding SDK version)
- https://github.com/OrfeasZ/ZHMModSDK/blob/master/README.md
  - For Linux, add `WINEDLLOVERRIDES="dinput8=n,b" %command%` to the game launch options (works for Steam Proton).

##### How to Use (Modding SDK version)
- For full instructions: https://github.com/OrfeasZ/ZHMModSDK/tree/master/Mods/FreeCam

Condensed Instructions for speedrun debugging:
- Press P to toggle freecam on, then immediately press pause (Esc). 
- Use WASD and mouse to move to where you want to go.
- Hopefully you can see what you're looking for despite the pause screen overlay.
  - Alternatively, if what you're doing is not super timing-sensitive, you can unpause the game and thus remove the pause screen overlay too.
- Press P again to toggle off freecam.

Additional tips:
- You can press `~` key on keyboard to bring up the mod menu. You can turn off the in-game freecam instructions this way (click on the "X" button on upper left).
- You can also enable or disable other SDK mods from the mod menu.

#### Credits
* The No Collision Freecam mod is from HMBM47 from the Glacier Modding Discord
* The Hex Edit Freecam method is based on the guide from https://www.hitmanforum.com/t/ansel-unlock-pc-guide/246
- The Modding SDK freecam is from [OrfeasZ](https://github.com/OrfeasZ/)
