-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.menus.CPLevels.CPSelectDifficulty")
require("ui.uieditor.widgets.Heroes.chooseFaceOption")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_330_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "firstTimeFlowCPConfirm")
end

local function __FUNC_422_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseHead")
	if __FUNC_330_ then
		__FUNC_330_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseHead.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 425.000000)
	registerVal3:setTopBottom(true, true, 80.000000, 0.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 75.000000, 413.000000)
	registerVal4:setTopBottom(true, false, 138.000000, 591.000000)
	registerVal4:setDataSource("HeroFaceButtonList")
	registerVal4:setWidgetType(CoD.chooseFaceOption)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setSpacing(7.000000)
	local function __FUNC_1367_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal4, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "disabled", true, __FUNC_1367_)
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.GetModel(registerVal8, "firstTimeFlowCPConfirm")
	local function __FUNC_1521_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "firstTimeFlowCPConfirm"
		CoD.Menu.UpdateButtonShownState(registerVal4, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1521_)
	local function __FUNC_16EB_(arg1, arg2)
		HeadHighlighted(registerVal1, arg1, arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_16EB_)
	local function __FUNC_1749_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1749_)
	local function __FUNC_18DB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_18DB_)
	local function __FUNC_19AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsInGame()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "firstTimeFlowCPConfirm")
		if not registerVal4 and not registerVal4 and registerVal4 then
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			SelectHead(registerVal1, arg0, arg2)
			SaveLoadout(registerVal1, arg2)
			RefreshCharacterCustomization(registerVal1, arg0, arg2)
			GoBackToMenu(arg1, arg2, "CPConfirmSelection")
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			registerVal4 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_CAMPAIGN)
			registerVal4 = IsInGame()
			if not registerVal4 and registerVal4 and not registerVal4 then
				SendClientScriptMenuChangeNotify(arg2, arg1, false)
				SelectHead(registerVal1, arg0, arg2)
				SaveLoadout(registerVal1, arg2)
				RefreshCharacterCustomization(registerVal1, arg0, arg2)
				NavigateToMenu(registerVal1, "CPSelectDifficulty", true, arg2)
				return true
			else
				registerVal4 = IsDisabled(arg0, arg2)
				if not registerVal4 then
					SendClientScriptMenuChangeNotify(arg2, arg1, false)
					SelectHead(registerVal1, arg0, arg2)
					UploadStats(registerVal1, arg2)
					RefreshCharacterCustomization(registerVal1, arg0, arg2)
					GoBackToMenu(arg1, arg2, "PersonalizeCharacter")
					return true
				end
			end
		end
	end

	local function __FUNC_1D94_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsInGame()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "firstTimeFlowCPConfirm")
		if not registerVal3 and not registerVal3 and registerVal3 then
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			registerVal3 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_CAMPAIGN)
			registerVal3 = IsInGame()
			if not registerVal3 and registerVal3 and not registerVal3 then
				return true
			else
				registerVal3 = IsDisabled(arg0, arg2)
				if not registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_19AA_, __FUNC_1D94_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.selectionList = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_CREATE_OPERATIVE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CREATE_OPERATIVE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	registerVal7 = CoD.verticalCounter.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 144.000000, 344.000000)
	registerVal7:setTopBottom(true, false, 611.490000, 636.490000)
	local function __FUNC_200D_(arg0, arg1)
		SetAsListVerticalCounter(registerVal1, arg0, "selectionList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_200D_)
	registerVal1:addElement(registerVal7)
	registerVal1.verticalCounter0 = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 75.000000, 275.000000)
	registerVal8:setTopBottom(true, false, 96.230000, 120.230000)
	registerVal8:setText(Engine.Localize("MENU_SELECT_FACE_CAPS"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.SelectFaceTxt = registerVal8
	local function __FUNC_20C6_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "update")
		local registerVal5 = {}
		registerVal5.elementName = "GenericMenuFrame0"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		SetHeadingKickerTextToGameMode("MENU_CP_OUTFITS")
		SetHeadingKickerText("MENU_CP_OUTFITS")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_20C6_)
	registerVal4.id = "selectionList"
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.selectionList:processEvent(registerVal11)
	end
	local function __FUNC_230F_(arg1)
		arg1.LeftPanel:close()
		arg1.selectionList:close()
		arg1.GenericMenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.verticalCounter0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseHead.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_230F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseHead = __FUNC_422_
