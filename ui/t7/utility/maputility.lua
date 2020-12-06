-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
CoD.MapUtility = {}
function CoD.MapUtility.GetBestTimeForFreerunMap(arg0, arg1)
	local registerVal2 = IsFreeRunMap(arg1)
	if not registerVal2 then
		return ""
	end
	local registerVal4 = IsLive()
	if registerVal4 then
		registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_FR_STATS_ONLINE)
	else
		registerVal4 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_FR_STATS_OFFLINE)
	end
	if arg1 and registerVal4 and CoD.mapsTable[arg1] and CoD.mapsTable[arg1].freerunTrackIndex then
		local registerVal7 = registerVal4.freerunTrackTimes.track[CoD.mapsTable[arg1].freerunTrackIndex].topTimes[0.000000].time:get()
	end
	if registerVal7 and 0.000000 < registerVal7 then
		return NumberAsTime(registerVal7)
	end
	return "--:--:--"
end

