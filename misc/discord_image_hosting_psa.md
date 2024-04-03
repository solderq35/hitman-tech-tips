A bad habit of mine in the past was using Discord as a CDN for hosting images (and other files).

As of November 2023, Discord has updated their policies to now make image / file links expire within a day.

More context: https://www.bleepingcomputer.com/news/security/discord-will-switch-to-temporary-file-links-to-block-malware-delivery/


With that being said, I did dig up these backup proxy tools to recover old Discord image links:
- https://github.com/ShufflePerson/Discord_CDN
  - **Still Working as of April 2, 2024** 
  - Follow README instructions to install dependencies and set the env file, and then run the project as local web app (replace `https://cdn.discordapp.net` or `https://media.discordapp.net` with `http://localhost`
    - Reference this to get your Discord user token: https://www.androidauthority.com/get-discord-token-3149920/
- https://cdn.discordapp.xyz/
  - **Broken as of April 2, 2024**
  - This version was working without need for local compilation (just needed to replace `.com` with `.xyz` for `cdn.discordapp.net` and `media.discordapp.net`)


After downloading the old Discord images from the new proxied link (right click > save as), re-upload the images to a more reliable host, such as:
- https://imgbb.com/
  - What I usually use nowadays
- https://imgur.com/
- If the images are going to be used for a specific software project, it can be better to directly host those images in that project's repo, e.g:
https://github.com/solderq35/hitruns-wiki/tree/master/website/static/img, and then import the images locally into your software project (exact syntax for that may be
language-dependent)

