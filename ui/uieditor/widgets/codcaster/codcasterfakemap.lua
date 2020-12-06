-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterFakeMap = registerVal1
function CoD.CodCasterFakeMap.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterFakeMap)
	registerVal2.id = "CodCasterFakeMap"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 527.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 602.000000)
	local registerVal3 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 527.000000)
	registerVal3:setTopBottom(true, false, 124.000000, 458.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 527.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 602.000000)
	registerVal4:setImage(RegisterImage("uie_hud_t7_minimap_mp_sector_clean_full"))
	registerVal2:addElement(registerVal4)
	registerVal2.Map = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 98.500000, 130.500000)
	registerVal5:setTopBottom(true, false, 287.000000, 319.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_a_mini"))
	local function __FUNC_121C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "TeamIdentity", "team1.teamColor", __FUNC_121C_)
	registerVal2:addElement(registerVal5)
	registerVal2.ObjA = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 241.500000, 273.500000)
	registerVal6:setTopBottom(true, false, 269.000000, 301.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_b_mini"))
	registerVal2:addElement(registerVal6)
	registerVal2.ObjB = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 377.500000, 409.500000)
	registerVal7:setTopBottom(true, false, 250.500000, 282.500000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_c_mini"))
	local function __FUNC_12AF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "TeamIdentity", "team2.teamColor", __FUNC_12AF_)
	registerVal2:addElement(registerVal7)
	registerVal2.ObjC = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 49.500000, 81.500000)
	registerVal8:setTopBottom(true, false, 283.000000, 315.000000)
	registerVal8:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal8:setZRot(-90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_player"))
	registerVal2:addElement(registerVal8)
	registerVal2.Self = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 196.000000, 228.000000)
	registerVal9:setTopBottom(true, false, 311.000000, 343.000000)
	registerVal9:setZRot(-29.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_133F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "TeamIdentity", "team1.teamColor", __FUNC_133F_)
	registerVal2:addElement(registerVal9)
	registerVal2.Friendly1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 86.500000, 118.500000)
	registerVal10:setTopBottom(true, false, 248.000000, 280.000000)
	registerVal10:setZRot(-19.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_13CF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "TeamIdentity", "team1.teamColor", __FUNC_13CF_)
	registerVal2:addElement(registerVal10)
	registerVal2.Friendly2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 269.500000, 301.500000)
	registerVal11:setTopBottom(true, false, 255.000000, 287.000000)
	registerVal11:setZRot(110.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemydirectional"))
	local function __FUNC_145F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "TeamIdentity", "team2.teamColor", __FUNC_145F_)
	registerVal2:addElement(registerVal11)
	registerVal2.Enemy1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 413.500000, 445.500000)
	registerVal12:setTopBottom(true, false, 271.000000, 303.000000)
	registerVal12:setZRot(90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemydirectional"))
	local function __FUNC_14EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "TeamIdentity", "team2.teamColor", __FUNC_14EF_)
	registerVal2:addElement(registerVal12)
	registerVal2.Enemy2 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 218.000000, 238.000000)
	registerVal13:setTopBottom(true, false, 272.500000, 292.500000)
	registerVal13:setImage(RegisterImage("uie_headicon_dead"))
	local function __FUNC_157F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(registerVal1)
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "TeamIdentity", "team2.teamColor", __FUNC_157F_)
	registerVal2:addElement(registerVal13)
	registerVal2.Obit = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 2.000000, 201.000000)
	registerVal14:setTopBottom(true, false, 92.000000, 112.000000)
	registerVal14:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM_COLOR_PREVIEW")))
	registerVal14:setTTF("fonts/escom.ttf")
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal14:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setLetterSpacing(1.000000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.Title = registerVal14
	local function __FUNC_160F_(arg0)
		arg0.Border:close()
		arg0.ObjA:close()
		arg0.ObjC:close()
		arg0.Friendly1:close()
		arg0.Friendly2:close()
		arg0.Enemy1:close()
		arg0.Enemy2:close()
		arg0.Obit:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_160F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

