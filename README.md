# Multimod-Manager
A CS 1.6 MultiMod Manager plugin

# Version: 5.9
Author: zero

# Credits:-
1. Fysiks  - Main idea for loading different sets of plugin
2. Galileo  - voting functions
3. SkY#IN - Testing and ideas
4. MaNa  - Testing and ideas
5. zero  - Implementation

# ReadMe.txt
# Features:
  - Mod specific plugins will be loaded (Note: The plugins which are to be loaded in every mod are to be written in plugins.ini)
  - Advanced Mod Vote and Map Vote
  - Re modvote and mapvote when no item gets more than 50% vote
  - Mannual change of mod and map
  - Block Mod
  - Countdown voice
  - Auto modvote at the end of map time
   * Change on next round or change instantly
  - Gungame supported
   * Required: mapchooser_multimod.amxx provided with the mulitmod.
   * Add mapchooser_multimod.amxx in gungame-plugins.ini only.
   * Auto map vote at the ending of gungame process
   * After "gg_max_maps" has passed a modvote will appear instead of mapvote.
   * Cvar "gg_max_maps" is in gungame.amxx.
  - Ads supported
  - Advance rtv feature
  - Mannual reloading of the currentmod( if something goes wrong and also required to load a new plugin)
  - Last mod exclusion
  - Nomination of mods
   * Per person only 1 nomination is allowed.
   * Blocked mods will be excluded from nomination.
  - Nomination of maps
   * Per person can be defined in sma
  - Plugin fully depends on "mp_timelimit" cvar for mod or map change.
  - Cancellation of mod and map vote is possible now (You cant cancel mod or map after map has been decided).
   * Type "mm_cancelvote" in your console while voting process is going on.
   * After map has been decided cancellation of mod or any voting process will not happen, during voting process or before is valid.

New Features:
  - Single file for ads and cfg for all mods respectively.
  - Map Nomination
  - Optimization compared to previous versions

# Mulitmod Files:
  - tag-plugins.ini (only include mod specfic plugins not the default ones)
  - tag-maps.ini
  - singlemodads.ini (see the format in the folder)
  - singlemodcfg.cfg (see the format in the folder)
  - multimod.cfg (cvars for multimod manager)
  - multimod.ini  (mod names and tags)
  
# Disable the following plugins:
  * mapsmenu.amxx
  * nextmap.amxx
  * mapchooser.amxx
  
# Installation:

1. Change "#define" "Edit Safe Zone" to customize according to your own requirement.
2. Disable the following maps: mapsmenu.amxx, nextmap.amxx & mapchooser.amxx to avoid conflicts.
3. Install the menu-front given in the folder.
4. Install multimod_mapchooser.amxx in gungame-plugin.ini to make gungame plugin aware of multimod manager. (Use default gungame plugin)
5. Set MAXMODS and MAX_PLAYER_CNT carefully according to your server variables to avoid from any bugs.
6. Install the provided lang file.

# Note:
1. An extra plugin has been provided for the users who were using old version of multimod manager (by zero) i.e <=Version 4.8
2. Run the eazy.amxx prior to installing new multimod manager. After the process is done you may disable eazy.amxx and install the multimod manager.
3. `eazy.amxx` is not a malicious plugin. It just extracts all the data from the old format of multimod files and convert them according to the new one.
4. But before that make sure you have a backup of multimod folder.
5. I recommend the usage of `eazy.amxx` to experienced moderators.
6. If any bugs then tell me I'll make sure to fix it asap.
