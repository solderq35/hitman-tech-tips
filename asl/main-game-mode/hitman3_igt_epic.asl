/*
    Hitman 3 IGT Tracker (Main Game Mode), Epic Games Version

    This script is based on a version originally created by sandro-h and updated by B3akers, fu5ha, emcifuntik, mob1lity
    (Github usernames of all involved).

    I (Solderq35) claim no credit for contributing to this autosplitter file, I just re-uploaded mob1lity's most recent version 
    (with his permission) to Github for version control purposes.

    More Info on Attributions: https://hitruns-wiki.vercel.app/docs/livesplit_auto_official#main-game-mode

    This script tracks Hitman 3 ingame time in LiveSplit.
    * It does NOT auto-split
    * It tracks time across levels and level restarts
    * It pauses in menus, including inventory
    * IGT is intended timing method for main game mode speedruns, due to historicity and console inclusion, among other reasons

*/

/* 
    LICENSE (Zlib)

    Copyright (c) 2022 sandro-h

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would be
    appreciated but is not required.
    2. Altered source versions must be plainly marked as such, and must not be
    misrepresented as being the original software.
    3. This notice may not be removed or altered from any source distribution.

*/

/*
    Dev note:

    The base pointer offsets likely need to be updated with each game patch. Here's how:

    For each value, a signature is provided above it. In CheatEngine, open hitman3 process and set the
    scan "Value Type" to "Array of byte". Then paste the signature into the Value box and make sure Hex is checked.
    Change the "Writeable" checkbox to be a square rather than a check. Change the "All" dropdown to "hitman3.exe".
    Then press "First Scan".

    It should find a result on the left box. Right click that and choose "Disassemble this memory region".
    In the new window, on the highlighted line, you should see in the "opcode" box, something to the effect
    off:

    mov rcx, [hitman3.exe+<NUMBERS AND LETTERS HERE>]

    The value in <NUMBERS AND LETTERS HERE> is the offset of the static pointer we are looking for. You can insert that
    value for the first offset for the variable in the form 0x<NUMBERS AND LETTERS HERE>.

    The second offset likely will not need to be changed, but if you get weird behavior then it might. To aid yourself,
    you can add values in CheatEngine to view their values directly live.

    On the right side, click "Add Address Manually". In the box that pops up, choose "Float" under the "Type" dropdown, then check "Pointer".
    In the bottom box, enter:

    hitman3.exe + <NUMBERS AND LETTERS HERE>

    then in the box above it, which is the offset, enter the expected offset value. Then click Ok. You can then view the value. Do
    this for each of the three variables. Start the game and observe the behavior. If it doesn't make sense, double click on the "Address" part
    of the values in the bottom table to edit it. Then, edit the offset by clicking the left and right arrows and see if you can find a value
    which restores the expected behavior.
*/

/*state("HITMAN3", "Steam")
{
    // Total ingame time since start of level (including starting cutscene)
    // 48 8B 0D ? ? ? ? 48 89 15 ? ? ? ? 48 89 05 ? ? ? ? - 3.110.1.0 sig
    float LEVEL_IGT: 0x319C388, 0x108;

    // Time spent in starting cutscene or other scenes without player control, e.g. walking through curtain in Dubai.
    // Starts counting along with IGT, but pauses once cutscene ends. When player loses control in game, it jumps
    // to the value of IGT, counts again and pauses when player regains control.
    // 48 8B 0D ? ? ? ? F3 0F 10 0D ? ? ? ? 48 81 C1 ? ? ? ? 48 8B 7C 24 ? - 3.110.1.0 sig
    float LEVEL_CST: 0x29C1F68, 0x898;
    
    // Alternate ingame time that starts after cutscene. Works for everything except start of Nightcall.
    // Does NOT stop at end-level cutscene, only when next screen starts loading.
    // 48 8B 1D ? ? ? ? 48 8D 4D ? 0F 29 B4 24 ? ? ? ? - 3.100.1 sig
    // 48 8B 1D ? ? ? ? 48 8D 4D F0 - 3.110.1.0 sig
    //
    // Correct offsets is 0x110
    // F3 0F 11 87 ? ? ? ? F3 0F 10 87 ? ? ? ? 0F 2F 05 ? ? ? ?  3.110.1.0 sig for an access to this value
    //   movss   dword ptr [rdi+110h], xmm0
    //
    float ALT_IGT: 0x3C88160, 0x110;
}*/

state("HITMAN3", "Epic")
{
    // Total ingame time since start of level (including starting cutscene)
    // 48 8B 0D ? ? ? ? 48 89 15 ? ? ? ? 48 89 05 ? ? ? ? - 3.110.1.0 sig
    float LEVEL_IGT: 0x316DC08, 0x108;

    // Time spent in starting cutscene or other scenes without player control, e.g. walking through curtain in Dubai.
    // Starts counting along with IGT, but pauses once cutscene ends. When player loses control in game, it jumps
    // to the value of IGT, counts again and pauses when player regains control.
    // 48 8B 0D ? ? ? ? F3 0F 10 0D ? ? ? ? 48 81 C1 ? ? ? ? 48 8B 7C 24 ? - 3.110.1.0 sig
    float LEVEL_CST: 0x30F3768, 0x898;
    
    // Alternate ingame time that starts after cutscene. Works for everything except start of Nightcall.
    // Does NOT stop at end-level cutscene, only when next screen starts loading.
    // 48 8B 1D ? ? ? ? 48 8D 4D ? 0F 29 B4 24 ? ? ? ? - 3.100.1 sig
    // 48 8B 1D ? ? ? ? 48 8D 4D F0 - 3.110.1.0 sig
    //
    // Correct offsets is 0x110
    // F3 0F 11 87 ? ? ? ? F3 0F 10 87 ? ? ? ? 0F 2F 05 ? ? ? ?  3.110.1.0 sig for an access to this value
    //   movss   dword ptr [rdi+110h], xmm0
    //
    float ALT_IGT: 0x3C5A338, 0x110;
}

startup {
    vars.totalIGT = 0.0; // total IGT of whole run, not just level
    refreshRate = 10;
}

init {
    int NTHeaderOffset = memory.ReadValue<int>(modules.First().BaseAddress + 0x3c);
    uint build_timestamp = memory.ReadValue<uint>(modules.First().BaseAddress + NTHeaderOffset + 0x8);
    // this value needs to be updated on game update, it is accurate for 3.110.1.0 steam build. Follow pointer chain
    // above to find it.
    /*if (build_timestamp == 0x6283A806) {
        version = "Steam";
    } else {
        version = "Epic";
    }*/
    version = "Epic";
}

start {
    if (vars.totalIGT > 0.0) {
        vars.totalIGT = 0.0;
    }
}

isLoading {
    return true;
}

gameTime {
    // check we are not in a cutscene
    if (current.LEVEL_CST > 0.0 && current.LEVEL_CST == old.LEVEL_CST) {
        // if ALT_IGT is incrementing, use that
        //
        // otherwise, if some amount of cutscene has passed and the current total time is more than the cutscene time
        // -- meaning, the cutscene has been skipped -- then use the difference in level igt
        if (current.ALT_IGT > old.ALT_IGT) {
            vars.totalIGT += current.ALT_IGT - old.ALT_IGT;
        }
        else if (current.LEVEL_CST > 0.0 && current.LEVEL_IGT > old.LEVEL_IGT && current.LEVEL_IGT - current.LEVEL_CST > 0.05) {
            vars.totalIGT += current.LEVEL_IGT - old.LEVEL_IGT;
        }
    }

    return TimeSpan.FromSeconds(vars.totalIGT);
}
