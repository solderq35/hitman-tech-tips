## Original
https://www.speedrun.com/hitman_3_extensions/guide/4t5mr

## Purpose

This guide is geared for PC browsers (it may work on other browser types/ platforms, but may need tweaks). Tested in Google Chrome browser.

The purpose of this CSS script to expand the leaderboard to be wider for a better viewing experience. **This CSS script will only affect Hitman 3 Category Extensions leaderboard**, assuming you follow the instructions below carefully.

## Instructions

1. Install Stylus here by selecting "Add to Chrome": https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne?hl=en

2. It may be helpful now to pin Stylus to Chrome taskbar so you can more easily access it for the next steps.
[Example](https://i.ibb.co/4WY3ktV/stylus1.png)

3. Go to https://www.speedrun.com/hitman_3_extensions. Click on the Stylus icon in taskbar, then "this URL", as shown here: 
[Example](https://i.ibb.co/d0D3yQC/stylus3.png)

4. You will be redirected to a Stylus page where you can add CSS code: 
[Example](https://i.ibb.co/r3MyZc8/stylus4.png)

5. Copy and paste the code from here into the Stylus page:
* [Use this gist for wider leaderboard](https://gist.githubusercontent.com/solderq35/28a8dfeb75ab0d86e9a2edefad24f08d/raw)
* [Use this gist for general improvements including blocking all ads](https://gist.githubusercontent.com/solderq35/d43d4800af09f928ccb0bd196e2c4c18/raw)

6. You can edit the style's name, if you wish. Then, click on "Save". You are now done!
[Example](https://i.ibb.co/qmJp23C/stylus5.png)

7. You can turn the custom CSS on and off at any moment, by clicking on the extension and checking/ unchecking the script.
[Example](https://i.ibb.co/R9zTVkV/stylus6.png)

8. If you wish to customize this CSS further, you can do so by redoing step 5-6, and editing the code to your liking. The code has been commented to show which parts are necessary for wider leaderboards and which parts are more subjective. 

## Manage Multiple Styles
Exclude overarching domains from subdomains (e.g. exclude speedrun.com style from speedrun.com/hitman_3_extensions style) like so:
* [Step 1](https://i.ibb.co/sspKNgY/stylus7.png)
* [Step 2](https://i.ibb.co/Mgq8H8s/stylus8.png)

See your styles and what domains they cover here
* [Step 1](https://i.ibb.co/4pXczwZ/stylus9.png)
* [Step 2](https://i.ibb.co/RBXZyt1/stylus10.png)

## General Debug Tips

Right click -> Inspect Element on browser page of the leaderboard page you wish to edit the look of, then go to the Styles tab in the Inspect Element page, to see which styles you need to edit to affect the website elements shown on screen. 
[Example](https://i.ibb.co/nMRZHN6/stylus11.png)

Basic CSS tutorials: https://www.w3schools.com/css/
