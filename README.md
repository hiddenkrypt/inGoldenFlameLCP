# In Golden Flame LCP Project
lcp files for comp/con supporting Vex's In Golden Flame campaign. 

## Downloads
| You are       | Looking for            | download this  |
| ------------- |:-------------:| -----:|
| GM      | a GM version with EVERYTHING  |[igf-complete.0.3.lcp](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/download/complete.0.1/igf-complete.0.3.lcp) |
| GM      |  A full version to give players because I'm okay with potential spoilers |[igf-complete.0.3.lcp](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/download/complete.0.1/igf-complete.0.3.lcp) |
| GM | Individual items to give players |  [one or all of the .lcp files on this page](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/tag/items.1) |
| Player| what I need to make a new LL0 character in this campaign | [igf-a1m1-build.1.0.lcp](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/download/a1m1.1.0/igf-a1m1-build.1.0.lcp) |


## Status
* All player items have been created (mech systems, mech weapons, pilot gear). 
* Mission one downtime s actions have been created
* New NPC classes and their features have been created.
* All New Player Backgrounds have been created.
 -- later misson downtime actions have NOT been created. 
 -- Mission rewards and specific reserves have not been added. Rewards in *In Golden Flame* are not generally reserves, and Comp/Con has no way to handle them. 


## GM Instructions
You can download the latest selection of lcp files from this github repo's [releases page](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases). 

The **[In Golden Flame: Act 1 Complete](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/download/complete.0.1/igf-complete.0.3.lcp)** release contains everything for this campaign which has been made into an item so far, and is what a GM should use. GMs who don't mind players having access to minor spoilers (such as seeing items they might be able to access during the campaign) can just give this file to their players. 

As the complete lcp contains spoilers for the campaign, you may wish to limit your players access to these items. The **[In Golden Flame: Act 1 - Mission 1](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/download/a1m1.1.0/igf-a1m1-build.1.0.lcp)** release is suitable for players creating new characters at the start of the campaign. All further exotic gear upgrades available throughout the campaign will be made available as individual lcps in the **[In Golden Flame: Individual Items](https://github.com/hiddenkrypt/inGoldenFlameLCP/releases/tag/items.1)** release, so you as the GM may give the players those files when they acquire those items. 

## Editing and Build Instructions
If you're interested in updating this collection, you can download the full source code. To generate the actual lcp files, just run `./buildReleases.sh`. If you've added any files to the source files, you will need to edit buildReleases.sh to include them in generated lcps. This script runs in bash and assumes you have the zip utility installed. This was developed with ubuntu. 

The build script is hard-coded, adding new items requires editting the script for how they should be collected. 
