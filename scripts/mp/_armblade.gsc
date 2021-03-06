#using scripts\codescripts\struct;

#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\weapons\_proximity_grenade;
#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#namespace armblade;

REGISTER_SYSTEM( "armblade", &__init__, undefined )	

function __init__()
{
	level.weaponArmblade = GetWeapon( "hero_armblade" );
	callback::on_spawned( &on_player_spawned );
}

function on_player_spawned()
{	
	self thread armblade_sound_thread(); 
}

function armblade_sound_thread()
{
	self endon( "disconnect" );
	self endon( "death" );
	for( ;; )
	{
		result = self util::waittill_any_return( "weapon_change", "disconnect" );		
		if( IsDefined( result ) )
		{
			if( ( result == "weapon_change" ) && ( self GetCurrentWeapon() == level.weaponArmblade ) )
			{
				if( !IsDefined( self.armblade_loop_sound ) )
				{
					self.armblade_loop_sound = spawn( "script_origin", self.origin );
					self.armblade_loop_sound linkto( self );
				}

				self.armblade_loop_sound PlayLoopSound( "wpn_armblade_idle", 0.25 );
			}
			else
			{
				if ( IsDefined( self.armblade_loop_sound ) )
				{
					self.armblade_loop_sound StopLoopSound( 0.25 );
				}
			}
		}
	}
}