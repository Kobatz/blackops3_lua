-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.StartMenu.StartMenu_Minimap")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.Utilities.ProgressBar_Rank")
require("ui.uieditor.widgets.StartMenu.StartMenu_ConnectionMeterContainer")
local function __FUNC_33F_(arg0, arg1, arg2)
	Engine.UserTestBuildPauseEvent(arg1, true)
	Engine.PlaySound("uin_main_pause")
	local registerVal4 = Engine.DvarString(nil, "mapname")
	local registerVal3 = CoD.GetMapValue(registerVal4, "mapName", Engine.DvarString(nil, "mapname"))
	registerVal4 = Engine.Localize((registerVal3 .. "_CAPS"))
	arg0.mapName:setText(registerVal4)
	arg0.mapLocation:setText("")
	arg0.GameTypeDesc:setText("")
	local registerVal5 = Dvar.ui_gametype:get()
	if registerVal5 ~= nil and registerVal5 ~= "" then
		local registerVal6 = Engine.StructTableLookupString("game_types", "name", registerVal5, "description")
		arg0.GameTypeDesc:setText(Engine.Localize(registerVal6))
	end
	registerVal6 = LuaUtils.IsGamescomBuild()
	if registerVal6 then
		arg0.NetworkStatsRowWidgetContainer0:setAlpha(0.000000)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_GameOptions = registerVal2
local function __FUNC_70F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_GameOptions)
	registerVal2.id = "StartMenu_GameOptions"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 12.000000, 292.000000)
	registerVal3:setTopBottom(true, false, 5.000000, 173.000000)
	registerVal3:setWidgetType(CoD.List1ButtonLarge_PH)
	registerVal3:setVerticalCount(5.000000)
	registerVal3:setDataSource("StartMenuGameOptions")
	local function __FUNC_1E24_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1E24_)
	local function __FUNC_1FB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1FB7_)
	local function __FUNC_2086_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_20E7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2086_, __FUNC_20E7_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonList = registerVal3
	local registerVal4 = CoD.StartMenu_Minimap.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 429.640000, 1062.640000)
	registerVal4:setTopBottom(true, false, 14.410000, 367.780000)
	registerVal4:setAlpha(0.250000)
	registerVal4:setScale(0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.minimap = registerVal4
	local registerVal5 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 460.010000, 1033.640000)
	registerVal5:setTopBottom(true, false, -2.000000, 35.000000)
	registerVal5:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.TitleGlow1 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 469.300000, 1025.700000)
	registerVal6:setTopBottom(true, false, 5.000000, 30.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_21E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MapInfo", "mapName", __FUNC_21E2_)
	registerVal2:addElement(registerVal6)
	registerVal2.mapName = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 470.000000, 1018.390000)
	registerVal7:setTopBottom(true, false, 9.410000, 29.410000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_229A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "MapInfo", "location", __FUNC_229A_)
	registerVal2:addElement(registerVal7)
	registerVal2.mapLocation = registerVal7
	local registerVal8 = CoD.ProgressBar_Rank.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 4.870000, 1147.870000)
	registerVal8:setTopBottom(true, false, 451.000000, 517.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_2352_(arg0, arg2, arg3)
		local registerVal3 = IsPublicOrLeagueGame(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2352_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "XPProgressionBar.nextRank")
	local function __FUNC_23AE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "XPProgressionBar.nextRank"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_23AE_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.lobbyNav")
	local function __FUNC_24DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_24DB_)
	registerVal2:addElement(registerVal8)
	registerVal2.rankProgress = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 558.230000, 1033.640000)
	registerVal9:setTopBottom(true, false, 378.870000, 402.870000)
	registerVal9:setText(LocalizedGameType("Domination"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setLetterSpacing(1.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.GameType = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 559.230000, 1033.640000)
	registerVal10:setTopBottom(true, false, 403.370000, 425.370000)
	registerVal10:setText(Engine.Localize("MENU_NEW"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.GameTypeDesc = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 460.010000, 547.140000)
	registerVal11:setTopBottom(true, false, 372.780000, 459.910000)
	local function __FUNC_2600_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "gameTypeIcon", __FUNC_2600_)
	registerVal2:addElement(registerVal11)
	registerVal2.GameTypeIcon = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 1023.870000, 1059.870000)
	registerVal12:setTopBottom(true, false, 30.910000, 34.910000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel2000 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 1023.870000, 1059.870000)
	registerVal13:setTopBottom(true, false, 348.000000, 352.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel2002 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 433.300000, 469.300000)
	registerVal14:setTopBottom(true, false, 30.910000, 34.910000)
	registerVal14:setYRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Pixel20000 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 433.300000, 469.300000)
	registerVal15:setTopBottom(true, false, 348.000000, 352.000000)
	registerVal15:setYRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Pixel20020 = registerVal15
	local registerVal16 = CoD.StartMenu_ConnectionMeterContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 55.500000, 404.500000)
	registerVal16:setTopBottom(true, false, 206.000000, 409.370000)
	registerVal2:addElement(registerVal16)
	registerVal2.StartMenuConnectionMeterContainer0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 433.300000, 469.300000)
	registerVal17:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal17:setYRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image0 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 1023.870000, 1059.870000)
	registerVal18:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image1 = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_26B4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.minimap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TitleGlow1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mapName:setLeftRight(true, false, 469.300000, 1023.870000)
		registerVal2.mapName:setTopBottom(true, false, 5.000000, 30.000000)
		registerVal2.mapName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.mapName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.mapLocation:setLeftRight(true, false, 469.300000, 1018.390000)
		registerVal2.mapLocation:setTopBottom(true, false, 9.410000, 29.410000)
		registerVal2.mapLocation:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.mapLocation:setAlpha(1.000000)
		registerVal2.mapLocation:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rankProgress:setLeftRight(true, false, 4.870000, 1147.870000)
		registerVal2.rankProgress:setTopBottom(true, false, 451.000000, 517.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GameType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GameTypeDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal20.DefaultClip = __FUNC_26B4_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_2C3C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.minimap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TitleGlow1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.mapName:setLeftRight(true, false, 469.300000, 1023.870000)
		registerVal2.mapName:setTopBottom(true, false, 5.000000, 30.000000)
		registerVal2.mapName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.mapName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.mapLocation:setLeftRight(true, false, 469.300000, 1018.390000)
		registerVal2.mapLocation:setTopBottom(true, false, 9.410000, 29.410000)
		registerVal2.mapLocation:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.mapLocation:setAlpha(1.000000)
		registerVal2.mapLocation:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rankProgress:setLeftRight(true, false, 4.870000, 1147.870000)
		registerVal2.rankProgress:setTopBottom(true, false, 451.000000, 517.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GameType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GameTypeDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal20.DefaultClip = __FUNC_2C3C_
	registerVal19.FreeRun = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "FreeRun"
	local function __FUNC_31C4_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("fr")
	end

	registerVal22.condition = __FUNC_31C4_
	registerVal21 = {registerVal22}
	registerVal2:mergeStateConditions(registerVal21)
	registerVal3.id = "buttonList"
	local function __FUNC_322D_(arg0, arg1)
		local registerVal2 = arg0.buttonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_322D_)
	local function __FUNC_3332_(arg0)
		arg0.buttonList:close()
		arg0.minimap:close()
		arg0.TitleGlow1:close()
		arg0.rankProgress:close()
		arg0.StartMenuConnectionMeterContainer0:close()
		arg0.mapName:close()
		arg0.mapLocation:close()
		arg0.GameTypeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3332_)
	if __FUNC_33F_ then
		__FUNC_33F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_GameOptions.new = __FUNC_70F_
