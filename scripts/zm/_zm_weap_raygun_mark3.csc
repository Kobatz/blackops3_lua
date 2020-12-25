#using scripts\codescripts\struct;

#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\fx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#insert scripts\shared\duplicaterender.gsh;
#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#insert scripts\zm\_zm_weap_raygun_mark3.gsh;

#namespace _zm_weap_raygun_mark3;

#precache( "client_fx", "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_sm_hit" );
#precache( "client_fx", "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_lg_hit" );
#precache( "client_fx", "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_sm" );
#precache( "client_fx", "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_lg" );

#define DISSOLVE_MATERIAL "mc/mtl_c_zom_dlc3_zombie_dissolve_base"

REGISTER_SYSTEM( "zm_weap_raygun_mark3", &__init__, undefined )

function __init__()
{	
	level.w_raygun_mark3			= GetWeapon( STR_RAYGUN_MARK3_WEAPON );
	level.w_raygun_mark3_upgraded	= GetWeapon( STR_RAYGUN_MARK3_UPGRADED_WEAPON );

	//// EFFECTS ////
	level._effect[ "raygun_ai_slow_vortex_small" ]	= "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_sm_hit";
	level._effect[ "raygun_ai_slow_vortex_large" ]	= "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_lg_hit";
		
	level._effect[ "raygun_slow_vortex_small" ]	= "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_sm";
	level._effect[ "raygun_slow_vortex_large" ]	= "dlc3/stalingrad/fx_raygun_l_projectile_blackhole_lg";
	
	//// CLIENTFIELDS ////
	clientfield::register( "scriptmover",	"slow_vortex_fx",		VERSION_DLC3, 2, "int", &slow_vortex_fx,	!CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );

	clientfield::register( "actor", 		"ai_disintegrate",		VERSION_DLC3, 1, "int", &ai_disintegrate,	!CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );
	clientfield::register( "vehicle", 		"ai_disintegrate",		VERSION_DLC3, 1, "int", &ai_disintegrate,	!CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );

	clientfield::register( "actor",			"ai_slow_vortex_fx",	VERSION_DLC3, 2, "int", &ai_slow_vortex_fx, !CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );
	clientfield::register( "vehicle",		"ai_slow_vortex_fx",	VERSION_DLC3, 2, "int", &ai_slow_vortex_fx, !CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );

	visionset_mgr::register_visionset_info( "raygun_mark3_vortex_visionset", 			VERSION_SHIP, N_RAYGUN_MARK3_VORTEX_VISIONSET_LERP_COUNT, undefined, "zm_idgun_vortex" );
	visionset_mgr::register_overlay_info_style_speed_blur( "raygun_mark3_vortex_blur",	VERSION_SHIP, N_RAYGUN_MARK3_VORTEX_VISIONSET_LERP_COUNT, N_RAYGUN_MARK3_VORTEX_OVERLAY_BLUR_AMOUNT, N_RAYGUN_MARK3_VORTEX_OVERLAY_INNER_RADIUS, N_RAYGUN_MARK3_VORTEX_OVERLAY_OUTER_RADIUS );

	// Register ghostly material for use
	duplicate_render::set_dr_filter_framebuffer( "dissolve", 10, "dissolve_on", undefined, DR_TYPE_FRAMEBUFFER, DISSOLVE_MATERIAL, DR_CULL_ALWAYS );	

	callback::on_localclient_connect( &monitor_raygun_mark3 );
}


// Is this the right-hand beam gun?
function is_beam_raygun( weapon )
{
	if ( weapon === level.w_raygun_mark3 || weapon === level.w_raygun_mark3_upgraded )
	{
		return true;
	}
	
	return false;
}


//	Check to see we switched to the weapon
function monitor_raygun_mark3( n_local_client )
{
	player = GetLocalPlayer( n_local_client );
	player endon( "death" );
	
	while ( true )
	{
		player waittill( "weapon_change", weapon );
		
		if ( is_beam_raygun( weapon ) )
		{
			player MapShaderConstant( n_local_client, 0, "scriptVector2", 0, 1, 0, 0 );	// turn ON red lights
			player thread glow_monitor( n_local_client );
		}
		else
		{
			player notify( "glow_monitor" );
			player MapShaderConstant( n_local_client, 0, "scriptVector2", 0, 0, 0, 0 );	// turn OFF red lights
		}
	}
}


//	Toggle the red glow on the ball of the right-hand beam weapon
// self is a player
function glow_monitor( n_local_client )
{
	self notify( "glow_monitor" );
	self endon( "glow_monitor" );
	self endon( "death" );

	while( true )
	{
		self waittill_notetrack( "clamps_open" );

		self MapShaderConstant( n_local_client, 0, "scriptVector2", 0, 0, 0, 0 );	// turn OFF red lights

		self waittill_notetrack( "clamps_close" );
		
		self MapShaderConstant( n_local_client, 0, "scriptVector2", 0, 1, 0, 0 );	// turn ON red lights
	}
}


//	Check for a specific notetrack
// self is a player
function waittill_notetrack( str_notetrack )
{
	self endon( "glow_monitor" );
	self endon( "death" );
	
	while( true )
	{
		self waittill( "notetrack", str_note );
		
		if ( str_note == str_notetrack )
		{
			return;
		}
	}
}


// Callback Function for slow vortex generated by RGM3 left-weapon projectile impact
function slow_vortex_fx( n_local_client, n_old, n_new, b_new_ent, b_initial_snap, str_field, b_was_time_jump ) // self == player
{
	if ( isdefined( self.fx_slow_vortex ) )
	{
		KillFx( n_local_client, self.fx_slow_vortex );
	}

	if ( n_new )
	{
		if ( n_new == N_ZM_WEAP_RGM3_SLOW_VORTEX_SM )
		{
			self.fx_slow_vortex = PlayFxOnTag( n_local_client, level._effect[ "raygun_slow_vortex_small" ], self, "tag_origin" );
		}
		else
		{
			self.fx_slow_vortex = PlayFxOnTag( n_local_client, level._effect[ "raygun_slow_vortex_large" ], self, "tag_origin" );
			self PlayRumbleOnEntity( n_local_client, "artillery_rumble" );
		}

		self thread vortex_shake_and_rumble( n_local_client, n_new );
	}
}


// Callback Function for slow vortex fx on entities affected by slow vortex
function ai_slow_vortex_fx( n_local_client, n_old, n_new, b_new_ent, b_initial_snap, str_field, b_was_time_jump ) // self == player
{
	if ( n_new )
	{
		if ( n_new == N_ZM_WEAP_RGM3_SLOW_VORTEX_SM )
		{
			self.fx_ai_slow_vortex = PlayFxOnTag( n_local_client, level._effect[ "raygun_ai_slow_vortex_small" ], self, "J_SpineUpper" );
			self thread zombie_blacken( n_local_client, true );
		}
		else
		{
			self.fx_ai_slow_vortex = PlayFxOnTag( n_local_client, level._effect[ "raygun_ai_slow_vortex_large" ], self, "J_SpineUpper" );
			self thread zombie_blacken( n_local_client, true );
		}
	}
	else
	{
		if ( isdefined( self.fx_ai_slow_vortex ) )
		{
			KillFx( n_local_client, self.fx_ai_slow_vortex );
			self thread zombie_blacken( n_local_client, false );
		}
	}
}


// Looping rumble when player is inside vortex
function vortex_shake_and_rumble( n_local_client, n_damage_level  )
{
	self notify( "vortex_shake_and_rumble" );
	self endon( "vortex_shake_and_rumble" );
	
	self endon( "entity_shutdown" );
	
	if ( n_damage_level == N_ZM_WEAP_RGM3_SLOW_VORTEX_SM )
	{
		str_rumble = "raygun_mark3_vortex_sm";
	}
	else
	{
		str_rumble = "raygun_mark3_vortex_lg";
	}
	
	while( isdefined( self ) )
	{
		self PlayRumbleOnEntity( n_local_client, str_rumble );
		wait 0.083;
	}
}


// Blacken the zombies
function zombie_blacken( n_local_client, b_blacken )
{
	self endon( "entity_shutdown" );

	const N_STEP = 0.0166;	// 1.0 / 60 ticks (1.0 sec)

	if ( !isdefined( self.n_blacken ) )
	{
		self.n_blacken = 0;
	}
	
	if ( b_blacken )
	{
		while ( isdefined( self ) && self.n_blacken < 1.0 )
		{
			self.n_blacken += 0.2;
			self MapShaderConstant( n_local_client, 0, "scriptVector0", self.n_blacken ); 
			wait 0.05;
		}
	}
	else
	{
		while ( isdefined( self ) && self.n_blacken > 0.0 )
		{
			self.n_blacken -= 0.2;
			self MapShaderConstant( n_local_client, 0, "scriptVector0", self.n_blacken ); 
			wait 0.05;
		}
	}
	
}


// Activate disintegrate shader
function ai_disintegrate( n_local_client, n_old, n_new, b_new_ent, b_initial_snap, str_field, b_was_time_jump ) // self == ai
{
	self endon( "entity_shutdown" );
	
	const N_STEP = 0.0166;	// 1.0 / 60 ticks (1.45 sec)  , slightly less than the anim length
	
	// Ghostly material
	self duplicate_render::set_dr_flag( "dissolve_on", n_new );
	self duplicate_render::update_dr_filters( n_local_client );

	self.n_dissolve = 1;
	while ( isdefined( self ) && self.n_dissolve > 0 )
	{
		self MapShaderConstant( n_local_client, 0, "scriptVector0", self.n_dissolve ); 

		self.n_dissolve -= N_STEP;
		wait 0.0166;
	}
	
	if ( isdefined( self ) )
	{
		self MapShaderConstant( n_local_client, 0, "scriptVector0", 0.0 ); 
	}
}


