## H3 XP Test

Disclaimer: I tested this August 2021. Also this was copy pasted from Hitman SRC moderators' Discord channel, with references to specific players removed.

Video of testing procedure: https://youtu.be/4K5FbRSR1qY

Screenshots of rating screens during test: https://imgur.com/a/vyR7qeR

### Procedure
I simulated a case where the player messed up on a level earlier, or they were practicing, and did not finish a level in a full game run.
1. Play Dubai, finish level. Count the number of rectangles in the xp bar, both before and after it ticked up for each mission.
2. Play Dartmoor, simulate messing up mid-run. 
3. Exit to main menu.
4. Play Dubai, finish level. Count the number of rectangles in the xp bar, both before and after it ticked up for each mission.
5. Play Dartmoor, finish level. Count the number of rectangles in the xp bar, both before and after it ticked up for each mission.
6. Play Berlin, finish level. Count the number of rectangles in the xp bar, both before and after it ticked up for each mission.

### Results
Here is a table of the results: 
(remember, Dartmoor reset is skipped in this table as we didn't make it to rating screen)
![resultstable](https://i.ibb.co/8zpc5mF/xptable.png)
(I double checked the rectangle count very carefully and used blocks of 10 rectangles to help with counting)
Note that with these strats, and without interference of non-finished runs, Dubai should give 4 rectangles of XP, Dartmoor should give 4 rectangles of XP, Berlin will give 8 (ish) rectangles of XP.

**Key finding 1**: For post-tick XP, any XP gained from a non-finished run will be immediately shown in the post-tick XP count of the next level, whichever it is (not necesasarily the mission you weren't able to finish). Afterwards, the XP will increase as expected

Example: In the table linked above, the post tick XP increased from 17.5 (post tick XP of first time playing Dubai) to 24.5 (post tick XP of after resetting mid way into Dartmoor, and then playing Dubai a second time). Normally, playing Dubai should only give you 4 rectangles, but here 7 were shown. The 3 extra rectangles were from the Dartmoor failed attempt XP. After that, Dubai (second time) and Dartmoor, the post-tick XP increased by 4, and then by about 8 between Dartmoor and Berlin. These are the expected amounts of XP to increase.

**Key finding 2**: For pre-tick XP, any XP gained from a non-finished run will be decreased on the level previously failed, and the XP will be much higher on the subsequent level.

Example: In the table linked above, the pre-tick XP from Dartmoor was strangely only at 21.5 rectangles when the previous XP count of Dubai run 2 was 20.5. The Dartmoor pre-tick XP should have ben 24.5, logically speaking. The XP was then increased by 7 to 28.5 between Dartmoor and Berlin pre-tick XP. Normally Dartmoor will give 4 XP rectangles, so the 3 extra are from the previous failed Dartmoor attempt.

With this all taken into account, it is theoretically possible to get a huge amount of "unfinished" XP for one level by practicing (without exiting) it a lot, before any continuous full game runs. There will then be a strange jump in pre-tick XP for that particular level that doesn't seem to make sense when compared to the pre-tick XP of other levels.

**TL;DR: Pre-tick XP counts are not accurate for tracking any splicing, while post-tick would be reliable (but we don't require post-tick XP currently anyways, and it would be annoying to require people to have it in the future as it takes so long, and also considering the 0 XP glitch/ peacock).**