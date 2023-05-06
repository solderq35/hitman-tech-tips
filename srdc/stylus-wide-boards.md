## Original
https://www.speedrun.com/hitman_3_extensions/guide/4t5mr

## Purpose

This guide is geared for PC browsers (it may work on other browser types/ platforms, but may need tweaks). Tested in Google Chrome browser.

The purpose of this CSS script to expand the leaderboard to be wider for a better viewing experience. **This CSS script will only affect Hitman 3 Category Extensions leaderboard**, assuming you follow the instructions below carefully.

## Instructions

1. Install Stylus here by selecting "Add to Chrome": https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne?hl=en

2. It may be helpful now to pin Stylus to Chrome taskbar so you can more easily access it for the next steps.
[Example](https://media.discordapp.net/attachments/833505136290299935/938603695715790878/unknown.png?width=481&height=586)

3. Go to https://www.speedrun.com/hitman_3_extensions. Click on the Stylus icon in taskbar, then "this URL", as shown here: 
[Example](https://media.discordapp.net/attachments/833505136290299935/938605319691575386/unknown.png?width=1200&height=600)

4. You will be redirected to a Stylus page where you can add CSS code: 
[Example](https://media.discordapp.net/attachments/833505136290299935/938605646104907776/unknown.png?width=786&height=613)

5. Copy and paste the code from here into the Stylus page: https://gist.githubusercontent.com/solderq35/28a8dfeb75ab0d86e9a2edefad24f08d/raw

6. You can edit the style's name, if you wish. Then, click on "Save". You are now done!
[Example](https://media.discordapp.net/attachments/833505136290299935/938608753215938570/unknown.png?width=689&height=613)

7. You can turn the custom CSS on and off at any moment, by clicking on the extension and checking/ unchecking the script.
[Example](https://media.discordapp.net/attachments/833505136290299935/938767908060950538/unknown.png)

8. If you wish to customize this CSS further, you can do so by redoing step 5-6, and editing the code to your liking. The code has been commented to show which parts are necessary for wider leaderboards and which parts are more subjective. 

## Manage Multiple Styles
Exclude overarching domains from subdomains (e.g. exclude speedrun.com style from speedrun.com/hitman_3_extensions style) like so:
* [Step 1](https://media.discordapp.net/attachments/1018323831468851202/1104439020643164321/image.png)
* [Step 2](https://media.discordapp.net/attachments/1018323831468851202/1104439109025550416/image.png)

See your styles and what domains they cover here
* [Step 1](https://media.discordapp.net/attachments/1018323831468851202/1104439587444641863/image.png)
* [Step 2](https://media.discordapp.net/attachments/1018323831468851202/1104439987556061324/image.png)

## General Debug Tips

Right click -> Inspect Element on browser page of the leaderboard page you wish to edit the look of, then go to the Styles tab in the Inspect Element page, to see which styles you need to edit to affect the website elements shown on screen. 
[Example](https://media.discordapp.net/attachments/833505136290299935/938728006371917834/unknown.png?width=1036&height=587)

Basic CSS tutorials: https://www.w3schools.com/css/
