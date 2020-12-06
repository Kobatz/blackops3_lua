-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CF_(arg0, arg1)
	local function __FUNC_219_(arg0, arg1)
		if arg1 == Enum.team_t.TEAM_SPECTATOR then
			arg0.alliesColor:setRGB(CoD.GetDefaultTeamFactionColor(Enum.team_t.TEAM_ALLIES))
			arg0.axisColor:setRGB(CoD.GetDefaultTeamFactionColor(Enum.team_t.TEAM_AXIS))
		else
			arg0.alliesColor:setRGB(CoD.GetTeamFactionColor(Enum.team_t.TEAM_ALLIES))
			arg0.axisColor:setRGB(CoD.GetTeamFactionColor(Enum.team_t.TEAM_AXIS))
		end
	end

	arg0.SetupTeamColors = __FUNC_219_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberTeamColorBackground = registerVal2
local function __FUNC_460_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberTeamColorBackground)
	registerVal2.id = "LobbyMemberTeamColorBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
	registerVal3:setAlpha(0.250000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.spectatorColor = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(ColorSet.FactionAllies.r, ColorSet.FactionAllies.g, ColorSet.FactionAllies.b)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.alliesColor = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(ColorSet.FactionAxis.r, ColorSet.FactionAxis.g, ColorSet.FactionAxis.b)
	registerVal5:setAlpha(0.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal5)
	registerVal2.axisColor = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B72_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B72_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D26_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.250000)
		registerVal2.axisColor:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D26_
	registerVal6.Axis = registerVal7
	registerVal7 = {}
	local function __FUNC_F7C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.250000)
		registerVal2.alliesColor:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F7C_
	registerVal6.Allies = registerVal7
	registerVal7 = {}
	local function __FUNC_11DC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_11DC_
	registerVal6.Spectator = registerVal7
	registerVal2.clipsPerState = registerVal6
	if __FUNC_1CF_ then
		__FUNC_1CF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMemberTeamColorBackground.new = __FUNC_460_
