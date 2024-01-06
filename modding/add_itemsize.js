// Pre-Reqs
// https://glaciermodding.org/rpkg
// https://glaciermodding.org/docs/rpkg/cli/commands

// Ran it on chunk0path4 from my own game installation. chunk0path4 REPO file seemed to have the most matches with peacock allunlockables.json (all but 1)
// rpkg-cli.exe -output_path "<output directory path>" -filter ORES,REPO,JSON -extract_from_rpkg "<chunk0patch4 file path>"
// rename REPO output to json, that is the "repochunk0patch4.json" file below

// Peacock allunlockables json: https://github.com/thepeacockproject/Peacock/blob/v7/static/allunlockables.json

let repochunk0 = require("./repochunk0patch4.json");
let allunlockables = require("./allunlockables.json");
const fs = require("fs");

for (let i = 0; i < allunlockables.length; i++) {
  if (
    allunlockables[i].Properties.LoadoutSlot === "gear" ||
    allunlockables[i].Properties.LoadoutSlot === "concealedweapon" ||
    allunlockables[i].Properties.LoadoutSlot === "carriedweapon"
  ) {
    for (let j = 0; j < repochunk0.length; j++) {
      if (repochunk0[j].ID_ === allunlockables[i].Properties.RepositoryId) {
        allunlockables[i].Properties.ItemSize = repochunk0[j].ItemSize;
      }
    }
  }
}

// Check if any items in original peacock file (allunlockables.json) did not get itemSize updated
// Only item for me: PROP_MELEE_EIFFELSOUVENIR_CLUB, RepositoryId: '7257eaa1-c8f3-4e0c-acbf-74f73869c1b2'
for (let i = 0; i < allunlockables.length; i++) {
  if (
    !allunlockables[i].Properties.ItemSize &&
    allunlockables[i].Properties.LoadoutSlot &&
    (allunlockables[i].Properties.LoadoutSlot === "gear" ||
      allunlockables[i].Properties.LoadoutSlot === "concealedweapon" ||
      allunlockables[i].Properties.LoadoutSlot === "carriedweapon")
  ) {
    console.log(allunlockables[i]);
  }
}

const jsonContent = JSON.stringify(allunlockables, null, 4);
// After copying output file "allunlockables_with_itemsize.json" back to Peacock directory, be sure to run `yarn prettier` there too (for spacing consistency)
fs.writeFile(
  "./allunlockables_with_itemsize.json",
  jsonContent,
  "utf8",
  function (err) {
    if (err) {
      return console.log(err);
    }
    console.log("The file was saved!");
  }
);
