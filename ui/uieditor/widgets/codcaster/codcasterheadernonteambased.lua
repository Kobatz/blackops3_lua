-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterTimer")
require("ui.uieditor.widgets.CodCaster.codcaster_ScoreLogoWidget_FFA")
local function __FUNC_285_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "selfPlayerInfo")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "selfPlayerInfo")
		Engine.CreateModel(registerVal2, "selfPlayerInfo.intop3")
	end
end

local function __FUNC_3B1_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetCurrentGameType()
	local registerVal4 = Engine.StructTableLookupString("game_types", "name", registerVal3, "name_ref")
	arg0.ModeAndMapName:setText(Engine.Localize(registerVal4))
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CodCasterHeaderNonTeamBased = registerVal3
local function __FUNC_4FC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_285_ then
		__FUNC_285_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterHeaderNonTeamBased)
	registerVal2.id = "CodCasterHeaderNonTeamBased"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 591.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 131.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -301.740000, 303.500000)
	registerVal3:setTopBottom(true, false, 1.960000, 266.410000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_centerheader_ffa"))
	registerVal2:addElement(registerVal3)
	registerVal2.modeBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -301.740000, 303.500000)
	registerVal4:setTopBottom(true, false, 1.960000, 266.410000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_centerheader_ffa"))
	registerVal2:addElement(registerVal4)
	registerVal2.modeBG1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -301.740000, 303.500000)
	registerVal5:setTopBottom(true, false, 1.960000, 266.410000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_centerheader_ffa"))
	registerVal2:addElement(registerVal5)
	registerVal2.modeBG = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 26.100000, 214.870000)
	registerVal6:setTopBottom(true, false, 110.300000, 133.230000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_gamemodebacking"))
	registerVal2:addElement(registerVal6)
	registerVal2.leftBG0000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 212.230000, 401.000000)
	registerVal7:setTopBottom(true, false, 110.300000, 133.230000)
	registerVal7:setImage(RegisterImage("uie_t7_codcaster_gamemodebacking"))
	registerVal2:addElement(registerVal7)
	registerVal2.leftBG000 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 398.230000, 586.000000)
	registerVal8:setTopBottom(true, false, 110.300000, 133.230000)
	registerVal8:setImage(RegisterImage("uie_t7_codcaster_gamemodebacking"))
	registerVal2:addElement(registerVal8)
	registerVal2.leftBG00 = registerVal8
	local registerVal9 = CoD.CodCasterTimer.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -34.700000, 37.300000)
	registerVal9:setTopBottom(true, false, 22.960000, 58.960000)
	registerVal9:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal9:setScale(0.600000)
	registerVal2:addElement(registerVal9)
	registerVal2.CodCasterTimer = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -103.270000, 106.480000)
	registerVal10:setTopBottom(true, false, 14.500000, 31.500000)
	registerVal10:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2209_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Scoreboard", "gameType", __FUNC_2209_)
	registerVal2:addElement(registerVal10)
	registerVal2.ModeAndMapName = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 142.110000, 452.110000)
	registerVal11:setTopBottom(true, false, 0.000000, 159.000000)
	registerVal11:setAlpha(0.350000)
	registerVal11:setImage(RegisterImage("uie_t7_codcaster_light"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.light = registerVal11
	local registerVal12 = CoD.codcaster_ScoreLogoWidget_FFA.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 9.210000, 219.210000)
	registerVal12:setTopBottom(true, false, 51.960000, 118.960000)
	registerVal12:setScale(0.950000)
	registerVal12.logo:setImage(RegisterImage("uie_t7_codcaster_faction1"))
	local function __FUNC_229C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.teamcolor:setRGB(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_229C_)
	local function __FUNC_234E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "xuid", __FUNC_234E_)
	registerVal2:addElement(registerVal12)
	registerVal2.codcasterScoreLogoWidgetFFA1 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 126.980000, 206.980000)
	registerVal13:setTopBottom(true, false, 65.500000, 107.500000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setScale(0.900000)
	registerVal13:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal13:setLetterSpacing(-2.000000)
	registerVal13:setLineSpacing(-1.000000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_240C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "score", __FUNC_240C_)
	registerVal2:addElement(registerVal13)
	registerVal2.widget1Score = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 53.890000, 200.320000)
	registerVal14:setTopBottom(true, false, 112.790000, 130.790000)
	registerVal14:setAlpha(0.850000)
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_24C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "name", __FUNC_24C6_)
	registerVal2:addElement(registerVal14)
	registerVal2.widget1Name = registerVal14
	local registerVal15 = CoD.codcaster_ScoreLogoWidget_FFA.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 195.110000, 405.110000)
	registerVal15:setTopBottom(true, false, 51.960000, 118.960000)
	registerVal15:setScale(0.950000)
	registerVal15.logo:setImage(RegisterImage("uie_t7_codcaster_faction1"))
	local function __FUNC_257E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.teamcolor:setRGB(registerVal1)
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_257E_)
	local function __FUNC_262E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "xuid", __FUNC_262E_)
	registerVal2:addElement(registerVal15)
	registerVal2.codcasterScoreLogoWidgetFFA2 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 311.110000, 391.110000)
	registerVal16:setTopBottom(true, false, 65.500000, 107.500000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setScale(0.900000)
	registerVal16:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal16:setLetterSpacing(-2.000000)
	registerVal16:setLineSpacing(-1.000000)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_26EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "score", __FUNC_26EC_)
	registerVal2:addElement(registerVal16)
	registerVal2.widget2Score = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 240.500000, 388.000000)
	registerVal17:setTopBottom(true, false, 113.290000, 131.290000)
	registerVal17:setAlpha(0.850000)
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_27A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "name", __FUNC_27A6_)
	registerVal2:addElement(registerVal17)
	registerVal2.widget2Name = registerVal17
	local registerVal18 = CoD.codcaster_ScoreLogoWidget_FFA.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 381.000000, 591.000000)
	registerVal18:setTopBottom(true, false, 51.960000, 118.960000)
	registerVal18:setScale(0.950000)
	registerVal18.logo:setImage(RegisterImage("uie_t7_codcaster_faction1"))
	local function __FUNC_285E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.teamcolor:setRGB(registerVal1)
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_285E_)
	local function __FUNC_290E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "xuid", __FUNC_290E_)
	registerVal2:addElement(registerVal18)
	registerVal2.codcasterScoreLogoWidgetFFA3 = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 501.290000, 581.290000)
	registerVal19:setTopBottom(true, false, 65.500000, 107.500000)
	registerVal19:setRGB(0.000000, 0.000000, 0.000000)
	registerVal19:setScale(0.900000)
	registerVal19:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal19:setLetterSpacing(-2.000000)
	registerVal19:setLineSpacing(-1.000000)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_29CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "score", __FUNC_29CC_)
	registerVal2:addElement(registerVal19)
	registerVal2.widget3Score = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 47.890000, 48.890000)
	registerVal20:setTopBottom(true, false, 113.790000, 129.790000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.bar = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 30.890000, 46.890000)
	registerVal21:setTopBottom(true, false, 113.790000, 130.790000)
	registerVal21:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal21:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2A86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "TopPlayerInfoData1", "position", __FUNC_2A86_)
	registerVal2:addElement(registerVal21)
	registerVal2.top1 = registerVal21
	local registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(true, false, 216.230000, 232.230000)
	registerVal22:setTopBottom(true, false, 113.790000, 130.790000)
	registerVal22:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal22:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2B3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "TopPlayerInfoData2", "position", __FUNC_2B3E_)
	registerVal2:addElement(registerVal22)
	registerVal2.top2 = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, false, 401.730000, 417.730000)
	registerVal23:setTopBottom(true, false, 113.790000, 130.790000)
	registerVal23:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal23:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2BF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "position", __FUNC_2BF6_)
	registerVal2:addElement(registerVal23)
	registerVal2.top3 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 233.890000, 234.890000)
	registerVal24:setTopBottom(true, false, 113.790000, 129.790000)
	registerVal24:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.bar0 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 419.890000, 420.890000)
	registerVal25:setTopBottom(true, false, 113.790000, 129.790000)
	registerVal25:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.bar00 = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(true, false, 426.730000, 574.230000)
	registerVal26:setTopBottom(true, false, 113.290000, 131.290000)
	registerVal26:setAlpha(0.850000)
	registerVal26:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2CAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:subscribeToGlobalModel(arg1, "TopPlayerInfoData3", "name", __FUNC_2CAE_)
	registerVal2:addElement(registerVal26)
	registerVal2.widget2Name0 = registerVal26
	local function __FUNC_2D66_(arg0)
		arg0.CodCasterTimer:close()
		arg0.codcasterScoreLogoWidgetFFA1:close()
		arg0.codcasterScoreLogoWidgetFFA2:close()
		arg0.codcasterScoreLogoWidgetFFA3:close()
		arg0.ModeAndMapName:close()
		arg0.widget1Score:close()
		arg0.widget1Name:close()
		arg0.widget2Score:close()
		arg0.widget2Name:close()
		arg0.widget3Score:close()
		arg0.top1:close()
		arg0.top2:close()
		arg0.top3:close()
		arg0.widget2Name0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D66_)
	if __FUNC_3B1_ then
		__FUNC_3B1_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterHeaderNonTeamBased.new = __FUNC_4FC_
