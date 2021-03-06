#using scripts\codescripts\struct;

#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;

#using scripts\mp\gametypes\_perplayer;

#using scripts\mp\_util;

function main()
{
	level.tearradius = 170;
	level.tearheight = 128;
	level.teargasfillduration = 7; // time until gas fills the area specified
	level.teargasduration = 23; // duration gas remains in area
	level.tearsufferingduration = 3; // (duration after leaving area of effect)
	
	level.teargrenadetimer = 4; // should match time to appearance of effect
	
	fgmonitor = perplayer::init("tear_grenade_monitor",&startMonitoringTearUsage,&stopMonitoringTearUsage);
	perplayer::enable(fgmonitor);
}

function startMonitoringTearUsage()
{
	self thread monitorTearUsage();
}
function stopMonitoringTearUsage(disconnected)
{
	self notify("stop_monitoring_tear_usage");
}

function monitorTearUsage()
{
	self endon("stop_monitoring_tear_usage");
	
	wait .05;
	
	weapon = GetWeapon( "tear_grenade" );
	if (!self hasWeapon( weapon ))
		return;
	
	// when this player's tear grenade ammo goes down, assume the nearest "grenade" entity is a tear grenade.
	
	prevammo = self getammocount( weapon );
	while(1)
	{
		ammo = self getammocount( weapon );
		if (ammo < prevammo)
		{
			num = prevammo - ammo;
			for (i = 0; i < num; i++)
			{
				grenades = getEntArray("grenade", "classname");
				bestdist = undefined;
				bestg = undefined;
				for (g = 0; g < grenades.size; g++)
				{
					if (!isdefined(grenades[g].teargrenade))
					{
						dist = distance(grenades[g].origin, self.origin + (0,0,48));
						if (!isdefined(bestdist) || dist < bestdist)
						{
							bestdist = dist;
							bestg = g;
						}
					}
				}
				if (isdefined(bestdist))
				{
					grenades[bestg].teargrenade = true;
					grenades[bestg] thread tearGrenade_think(self.team);
				}
			}
		}
		prevammo = ammo;
		wait .05;
	}
}

function tearGrenade_think(team)
{
	// wait for death
	
	// (grenade doesn't actually die until finished smoking)
	wait level.teargrenadetimer;
	
	ent = spawnstruct();
	ent thread tear(self.origin);
}

function tear(pos)
{
	trig = spawn("trigger_radius", pos, 0, level.tearradius, level.tearheight);
	
	starttime = gettime();
	
	self thread teartimer();
	self endon("tear_timeout");
	
	while(1)
	{
		trig waittill("trigger", player);
		
		if (player.sessionstate != "playing")
			continue;
		
		time = (gettime() - starttime) / 1000;
		
		currad = level.tearradius;
		curheight = level.tearheight;
		if (time < level.teargasfillduration) {
			currad = currad * (time / level.teargasfillduration);
			curheight = curheight * (time / level.teargasfillduration);
		}
		
		offset = (player.origin + (0,0,32)) - pos;
		offset2d = (offset[0], offset[1], 0);
		if (lengthsquared(offset2d) > currad*currad)
			continue;
		if (player.origin[2] - pos[2] > curheight)
			continue;
		
		player.teargasstarttime = gettime(); // purposely overriding old value
		if (!isdefined(player.teargassuffering))
			player thread teargassuffering();
	}
}
function teartimer()
{
	wait level.teargasduration;
	self notify("tear_timeout");
}

function teargassuffering()
{
	self endon("death");
	self endon("disconnect");
	
	self.teargassuffering = true;
	
	if ( self util::mayApplyScreenEffect() )
		self shellshock("teargas", 60);
	
	while(1)
	{
		if (gettime() - self.teargasstarttime > level.tearsufferingduration * 1000)
			break;
		
		wait 1;
	}
	
	self shellshock("teargas", 1);
	
	if ( self util::mayApplyScreenEffect() )
		self.teargassuffering = undefined;
}

