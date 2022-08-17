#include <amxmodx>
#include <amxmisc>

new gg_max_maps;

public plugin_init()
{
	register_plugin("Nextmap Chooser", "0.1", "zero")
	
	register_cvar("gg_map_counter", "0", FCVAR_SERVER|FCVAR_EXTDLL|FCVAR_SPONLY);
	
	gg_max_maps = register_cvar("gg_max_maps", "2");
}
public voteNextmap()
{
	new mapCnt = get_cvar_num("gg_map_counter");
	if(++mapCnt < get_pcvar_num(gg_max_maps))
	{
		set_cvar_num("gg_map_counter", mapCnt)
		server_cmd("mm_startvote map 1");
	}
	else
	{
		set_cvar_num("gg_map_counter", 0);
		server_cmd("mm_startvote mod");
	}
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang1033\\ f0\\ fs16 \n\\ par }
*/
