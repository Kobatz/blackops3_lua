-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview = registerVal1
function CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview)
	registerVal2.id = "StartMenu_Options_Graphics_ColorBlindMinimapPreview"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 260.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 188.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_sector_color_blind_map"))
	registerVal2:addElement(registerVal3)
	registerVal2.minimap = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 62.000000, 94.000000)
	registerVal4:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_player"))
	local function __FUNC_182E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(GetColorBlindSafeColorFromBase("PlayerYellow", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_182E_)
	registerVal2:addElement(registerVal4)
	registerVal2.playerArrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 94.000000, 124.000000)
	registerVal5:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_enemysatellite_diamond_top_small"))
	local function __FUNC_1909_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(GetColorBlindSafeColorFromBase("PlayerYellow", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1909_)
	registerVal2:addElement(registerVal5)
	registerVal2.playerScorestreakDiamond = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 234.000000, 266.000000)
	registerVal6:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_19E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(GetColorBlindSafeColorFromBase("FriendlyBlue", registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_19E5_)
	registerVal2:addElement(registerVal6)
	registerVal2.friendlyArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 202.000000, 234.000000)
	registerVal7:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_1AC1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(GetColorBlindSafeColorFromBase("PartyFriendlyBlue", registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1AC1_)
	registerVal2:addElement(registerVal7)
	registerVal2.friendlyPartyArrow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 266.000000, 298.000000)
	registerVal8:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_blank_mini"))
	local function __FUNC_1BA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(GetColorBlindSafeColorFromBase("FriendlyBlue", registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1BA2_)
	registerVal2:addElement(registerVal8)
	registerVal2.friendlyObjective = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 359.000000, 391.000000)
	registerVal9:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemydirectional"))
	local function __FUNC_1C7D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1C7D_)
	registerVal2:addElement(registerVal9)
	registerVal2.enemyArrow = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 391.000000, 423.000000)
	registerVal10:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_blank_mini"))
	local function __FUNC_1D58_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1D58_)
	registerVal2:addElement(registerVal10)
	registerVal2.enemyObjective = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 423.000000, 455.000000)
	registerVal11:setTopBottom(true, false, 223.000000, 255.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_enemysatellite_diamond_top_small"))
	local function __FUNC_1E34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(GetColorBlindSafeColorFromBase("EnemyScorestreakTarget", registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1E34_)
	registerVal2:addElement(registerVal11)
	registerVal2.enemyScorestreakDiamond = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, -6.000000, 194.000000)
	registerVal12:setTopBottom(true, false, 198.000000, 223.000000)
	registerVal12:setText(Engine.Localize("MENU_YOU_CAPS"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_1F1B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(GetColorBlindSafeColorFromBase("PlayerYellow", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1F1B_)
	registerVal2:addElement(registerVal12)
	registerVal2.playerHeader = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 150.000000, 350.000000)
	registerVal13:setTopBottom(true, false, 198.000000, 223.000000)
	registerVal13:setText(LocalizeToUpperString("MENU_FRIENDLY"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_1FF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(GetColorBlindSafeColorFromBase("FriendlyBlue", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_1FF5_)
	registerVal2:addElement(registerVal13)
	registerVal2.friendlyHeader = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 307.000000, 507.000000)
	registerVal14:setTopBottom(true, false, 198.000000, 223.000000)
	registerVal14:setText(LocalizeToUpperString("MENU_ENEMY"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_20D1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_20D1_)
	registerVal2:addElement(registerVal14)
	registerVal2.enemyHeader = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 41.000000, 73.000000)
	registerVal15:setTopBottom(true, false, 87.000000, 119.000000)
	registerVal15:setZRot(-90.000000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_player"))
	local function __FUNC_21AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setRGB(GetColorBlindSafeColorFromBase("PlayerYellow", registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_21AC_)
	registerVal2:addElement(registerVal15)
	registerVal2.minimapPlayerArrow = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 78.000000, 110.000000)
	registerVal16:setTopBottom(true, false, 69.000000, 101.000000)
	registerVal16:setZRot(-34.000000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_2289_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setRGB(GetColorBlindSafeColorFromBase("FriendlyBlue", registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_2289_)
	registerVal2:addElement(registerVal16)
	registerVal2.minimapFriendlyPlayerArrow = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 186.000000, 218.000000)
	registerVal17:setTopBottom(true, false, 114.000000, 146.000000)
	registerVal17:setZRot(-34.000000)
	registerVal17:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_friendly_mp"))
	local function __FUNC_2365_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setRGB(GetColorBlindSafeColorFromBase("PartyFriendlyBlue", registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_2365_)
	registerVal2:addElement(registerVal17)
	registerVal2.minimapPartyFriendlyPlayerArrow = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 202.000000, 234.000000)
	registerVal18:setTopBottom(true, false, 82.000000, 114.000000)
	registerVal18:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemy"))
	local function __FUNC_2446_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_2446_)
	registerVal2:addElement(registerVal18)
	registerVal2.minimapEnemyPing1 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 275.000000, 307.000000)
	registerVal19:setTopBottom(true, false, 62.000000, 94.000000)
	registerVal19:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemy"))
	local function __FUNC_2520_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_2520_)
	registerVal2:addElement(registerVal19)
	registerVal2.minimapEnemyPing2 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 359.000000, 391.000000)
	registerVal20:setTopBottom(true, false, 106.000000, 138.000000)
	registerVal20:setImage(RegisterImage("uie_t7_hud_waypoints_compassping_enemy"))
	local function __FUNC_25FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_25FC_)
	registerVal2:addElement(registerVal20)
	registerVal2.minimapEnemyPing3 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 90.000000, 122.000000)
	registerVal21:setTopBottom(true, false, 97.000000, 129.000000)
	registerVal21:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_a_mini"))
	local function __FUNC_26D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setRGB(GetColorBlindSafeColorFromBase("FriendlyBlue", registerVal1))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_26D8_)
	registerVal2:addElement(registerVal21)
	registerVal2.objectivePointA = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 228.000000, 260.000000)
	registerVal22:setTopBottom(true, false, 81.000000, 113.000000)
	registerVal22:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_b_mini"))
	registerVal2:addElement(registerVal22)
	registerVal2.objectivePointB = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 355.000000, 387.000000)
	registerVal23:setTopBottom(true, false, 66.000000, 98.000000)
	registerVal23:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new_c_mini"))
	local function __FUNC_27B5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setRGB(GetColorBlindSafeColorFromBase("EnemyOrange", registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "PerController", "profile.colorblindMode", __FUNC_27B5_)
	registerVal2:addElement(registerVal23)
	registerVal2.objectivePointC = registerVal23
	local function __FUNC_2890_(arg0)
		arg0.playerArrow:close()
		arg0.playerScorestreakDiamond:close()
		arg0.friendlyArrow:close()
		arg0.friendlyPartyArrow:close()
		arg0.friendlyObjective:close()
		arg0.enemyArrow:close()
		arg0.enemyObjective:close()
		arg0.enemyScorestreakDiamond:close()
		arg0.playerHeader:close()
		arg0.friendlyHeader:close()
		arg0.enemyHeader:close()
		arg0.minimapPlayerArrow:close()
		arg0.minimapFriendlyPlayerArrow:close()
		arg0.minimapPartyFriendlyPlayerArrow:close()
		arg0.minimapEnemyPing1:close()
		arg0.minimapEnemyPing2:close()
		arg0.minimapEnemyPing3:close()
		arg0.objectivePointA:close()
		arg0.objectivePointC:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2890_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

