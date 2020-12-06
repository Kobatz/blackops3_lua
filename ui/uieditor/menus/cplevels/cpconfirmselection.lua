-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.StartGameFlow.List1ButtonConfirmSelection")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.StartGameFlow.CP_ConfirmSelection_Box")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingE")
local function __FUNC_3E1_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_CONFIRM_CAPS")
	registerVal3.displayText = registerVal4
	registerVal3.desc = ""
	registerVal2.models = registerVal3
	registerVal3 = {}
	registerVal3.difficulty = 0.000000
	local function __FUNC_634_(arg0, arg1, arg2, arg3, arg4)
		SetFirstTimeSetupComplete(arg0, arg1, arg2)
		GoBackToMenu(arg4, arg2, "Lobby")
		SendClientScriptMenuChangeNotify(arg2, arg4, false)
	end

	registerVal3.action = __FUNC_634_
	registerVal2.properties = registerVal3
	registerVal3 = {}
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_CHANGE_GENDER")
	registerVal4.displayText = registerVal5
	registerVal4.desc = ""
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.difficulty = 1.000000
	local function __FUNC_70E_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "ChooseGender", true, arg2)
	end

	registerVal4.action = __FUNC_70E_
	registerVal3.properties = registerVal4
	registerVal4 = {}
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_CHANGE_FACE")
	registerVal5.displayText = registerVal6
	registerVal5.desc = ""
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.difficulty = 2.000000
	local function __FUNC_77E_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "ChooseHead", true, arg2)
	end

	registerVal5.action = __FUNC_77E_
	registerVal4.properties = registerVal5
	registerVal5 = {}
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_CHANGE_DIFFICULTY")
	registerVal6.displayText = registerVal7
	registerVal6.desc = ""
	registerVal5.models = registerVal6
	registerVal6 = {}
	registerVal6.difficulty = 3.000000
	local function __FUNC_7EC_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "CPSelectDifficulty", true, arg2)
	end

	registerVal6.action = __FUNC_7EC_
	registerVal5.properties = registerVal6
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5}
	return registerVal1
end

local registerVal2 = DataSourceHelpers.ListSetup("ConfirmCharacterList", __FUNC_3E1_, true)
DataSources.ConfirmCharacterList = registerVal2
function LUI.createMenu.CPConfirmSelection(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPConfirmSelection")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPConfirmSelection.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 3.350000, 3.350000)
	registerVal3:setTopBottom(true, true, -5.920000, -5.920000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_textureoverlaya"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal3)
	registerVal1.NoiseOverlay = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -661.000000, 660.710000)
	registerVal4:setTopBottom(false, false, -1381.500000, 425.500000)
	registerVal4:setXRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_frontend_vingette_c"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal4)
	registerVal1.Vignette = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 64.000000, 378.000000)
	registerVal5:setTopBottom(true, true, 78.000000, 23.000000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal5)
	registerVal1.LeftPanel = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 79.000000, 359.000000)
	registerVal6:setTopBottom(true, false, 144.000000, 312.000000)
	registerVal6:setWidgetType(CoD.List1ButtonConfirmSelection)
	registerVal6:setVerticalCount(5.000000)
	registerVal6:setDataSource("ConfirmCharacterList")
	local function __FUNC_22C7_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_22C7_)
	local function __FUNC_2457_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2457_)
	local function __FUNC_2526_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2587_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2526_, __FUNC_2587_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.Buttons = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 1.000000, 1.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_FINALIZE_OPERATIVE_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FINALIZE_OPERATIVE_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_customgames"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = CoD.CP_ConfirmSelection_Box.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 943.710000, 1212.210000)
	registerVal8:setTopBottom(true, false, 452.750000, 654.750000)
	registerVal1:addElement(registerVal8)
	registerVal1.CPConfirmSelectionBox0 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 984.370000, 1202.210000)
	registerVal9:setTopBottom(true, false, 532.080000, 551.080000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setText(Engine.Localize("MENU_DIFFICULTY_SETTING_HINT"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.DifficultySettingHint = registerVal9
	local registerVal10 = CoD.CP_ConfirmSelection_Box.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 943.710000, 1212.210000)
	registerVal10:setTopBottom(true, false, 130.000000, 326.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.CPConfirmSelectionBox = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 984.370000, 1202.210000)
	registerVal12:setTopBottom(true, false, 593.870000, 612.870000)
	registerVal12:setAlpha(0.900000)
	registerVal12:setText(Engine.Localize("MENU_GENDER_SETTING_HINT"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal12)
	registerVal1.GenderSettingsHint = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -289.290000, -113.790000)
	registerVal13:setTopBottom(true, false, 140.250000, 315.750000)
	local function __FUNC_2682_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "CampaignSettings", "difficultyIcon", __FUNC_2682_)
	registerVal1:addElement(registerVal13)
	registerVal1.DifficulyIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 1216.000000, 1219.000000)
	registerVal14:setTopBottom(true, false, -30.000000, 682.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.LineSide = registerVal14
	local registerVal15 = CoD.FE_LabelSubHeadingE.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 945.710000, 1019.710000)
	registerVal15:setTopBottom(true, false, 302.500000, 325.500000)
	registerVal15.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_2734_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "CampaignSettings", "difficulty", __FUNC_2734_)
	registerVal1:addElement(registerVal15)
	registerVal1.FELabelSubHeadingE1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 956.620000, 978.120000)
	registerVal16:setTopBottom(false, true, -186.920000, -168.920000)
	registerVal16:setRGB(0.950000, 0.890000, 0.030000)
	registerVal16:setImage(RegisterImage("uie_warning_triangle"))
	registerVal1:addElement(registerVal16)
	registerVal1.WarningTriangle0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 956.620000, 978.120000)
	registerVal17:setTopBottom(false, true, -127.130000, -109.130000)
	registerVal17:setRGB(0.950000, 0.890000, 0.030000)
	registerVal17:setImage(RegisterImage("uie_warning_triangle"))
	registerVal1:addElement(registerVal17)
	registerVal1.WarningTriangle00 = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(true, false, 984.370000, 1202.210000)
	registerVal18:setTopBottom(true, false, 472.080000, 491.080000)
	registerVal18:setAlpha(0.900000)
	registerVal18:setText(Engine.Localize("PLATFORM_SAVE_DATA_WARNING"))
	registerVal18:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal18)
	registerVal1.SaveDataHintText = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 956.620000, 978.120000)
	registerVal19:setTopBottom(false, true, -246.920000, -228.920000)
	registerVal19:setRGB(0.950000, 0.890000, 0.030000)
	registerVal19:setImage(RegisterImage("uie_warning_triangle"))
	registerVal1:addElement(registerVal19)
	registerVal1.WarningTriangle2 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_280A_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal8:completeAnimation()
		registerVal1.CPConfirmSelectionBox0:setLeftRight(true, false, 943.710000, 1212.210000)
		registerVal1.CPConfirmSelectionBox0:setTopBottom(true, false, 515.750000, 654.750000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal18:completeAnimation()
		registerVal1.SaveDataHintText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.WarningTriangle2:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_280A_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_2A46_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal8:completeAnimation()
		registerVal1.CPConfirmSelectionBox0:setLeftRight(true, false, 943.710000, 1212.210000)
		registerVal1.CPConfirmSelectionBox0:setTopBottom(true, false, 452.750000, 654.750000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal18:completeAnimation()
		registerVal1.SaveDataHintText:setAlpha(0.900000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.WarningTriangle2:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_2A46_
	registerVal20.Durango = registerVal21
	registerVal1.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Durango"
	local function __FUNC_2C87_(arg0, arg1, arg2)
		return IsDurango()
	end

	registerVal23.condition = __FUNC_2C87_
	registerVal22 = {registerVal23}
	registerVal1:mergeStateConditions(registerVal22)
	local function __FUNC_2CCF_(arg0, arg1)
		SetGlobalModelValueTrue("firstTimeFlowCPConfirm")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2CCF_)
	local function __FUNC_2D86_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetElementStateByElementName(registerVal1, "MenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "MenuFrame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2D86_)
	local function __FUNC_2F25_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2F87_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2F25_, __FUNC_2F87_, false)
	local function __FUNC_3082_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_30B4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3082_, __FUNC_30B4_, false)
	registerVal6.id = "Buttons"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.Buttons:processEvent(registerVal22)
	end
	local function __FUNC_31B2_(arg1)
		arg1.LeftPanel:close()
		arg1.Buttons:close()
		arg1.MenuFrame:close()
		arg1.CPConfirmSelectionBox0:close()
		arg1.CPConfirmSelectionBox:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FELabelSubHeadingE1:close()
		arg1.DifficulyIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPConfirmSelection.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_31B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

