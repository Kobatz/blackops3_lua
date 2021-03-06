#using scripts\codescripts\struct;

#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;
#using scripts\shared\weapons\_weaponobjects;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#using scripts\mp\_util;

#namespace weaponobjects;

REGISTER_SYSTEM( "weaponobjects", &__init__, undefined )
	
function __init__()
{
	weaponobjects::init_shared();

	callback::on_start_gametype( &start_gametype );
}


function start_gametype()
{
	callback::on_connect( &on_player_connect );
	callback::on_spawned( &on_player_spawned );
}

function on_player_spawned() // self == player
{
		self createSpikeLauncherWatcher( "hero_spike_launcher" );
}