/*
    Hitman 3 Load Remover (Freelancer), Epic Games Version

    This script is originally created by "Finalist" (https://www.speedrun.com/user/Finalist). 

    I (Solderq35) claim no credit for contributing to this autosplitter file, I just re-uploaded Finalist's code to
    Github for version control purposes, with his permission.

    More Info on Attributions: https://hitruns-wiki.vercel.app/docs/livesplit_auto_official#freelancer

    This script removes load times in Hitman 3 (RTA loadless).
    * It does NOT auto-split
    * It tracks time across levels and level restarts
    * It does NOT pause the timer on the inventory screen or on pause screen (unlike the hitman_igt_epic.asl file also in this directory)
	  * We chose RTA loadless for freelancer to make sure time selecting items in the safehouse and "thinking pauses" in the level are
	    counted on the timing, since thinking about your choices matters a lot more in Freelancer (being so randomized).

*/

state("hitman3")
{
	bool isLoading: 0x14E4BC, 0xB0;
}

isLoading
{
	return current.isLoading;
}