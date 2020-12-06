-- Decompiled with CoDLUIDecompiler by JariK

function CoD.FSM_VISIBILITY(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SELECTING_LOCATION)
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	if registerVal1 and not registerVal1 and not registerVal1 then
		return 1.000000
	end
	return 0.000000
end

function CoD.IS_KILLCAM_OR_SPECTATE(arg0)
	if arg0 == nil then
		return 0.000000
	end
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
	registerVal1 = Engine.InKillcam(arg0)
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
	if not registerVal1 and not registerVal1 and registerVal1 == true or registerVal1 then
		return 1.000000
	end
	return 0.000000
end

