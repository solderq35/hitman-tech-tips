A bad habit of mine in the past was using Discord as a CDN for hosting images (and other files).

As of November 2023, Discord has updated their policies to now make image / file links expire within a day.

More context: https://www.bleepingcomputer.com/news/security/discord-will-switch-to-temporary-file-links-to-block-malware-delivery/

With that being said, I did dig this backup proxy tool from 
[a Reddit thread](https://www.reddit.com/r/DataHoarder/comments/16zs1gt/comment/kt5sh6h/?utm_source=share&utm_medium=web2x&context=3):
- https://cdn.discordapp.xyz/

The author mentions some potential security and performance issues with the tool, so I would only advise using the proxy tool to recover old images, download them, 
and then re-upload the images to a more reliable host, such as:
- https://imgbb.com/
  - What I usually use nowadays
- https://imgur.com/
- If the images are going to be used for a specific software project, it can be better to directly host those images in that project's repo, e.g:
https://github.com/solderq35/hitruns-wiki/tree/master/website/static/img, and then import the images locally into your software project (exact syntax for that may be
language-dependent)

