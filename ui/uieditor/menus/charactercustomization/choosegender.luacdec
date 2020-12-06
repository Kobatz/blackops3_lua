-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CharacterCustomization.ChooseHead")
require("ui.uieditor.widgets.Heroes.chooseGenderButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Lobby.Common.FE_Guide")
local function __FUNC_2E1_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
end

local function __FUNC_349_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseGender")
	if __FUNC_2E1_ then
		__FUNC_2E1_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseGender.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 25.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, false, -795.000000, 815.000000)
	registerVal4:setTopBottom(false, true, -636.000000, 0.000000)
	registerVal4:setDataSource("GendersList")
	registerVal4:setWidgetType(CoD.chooseGenderButton)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setSpacing(25.000000)
	local function __FUNC_FEC_(arg1, arg2)
		SetElementProperty(arg1, "lostFocus", true)
		UpdateSelfElementState(registerVal1, arg1, arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_lose_focus", __FUNC_FEC_)
	local function __FUNC_1097_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1097_)
	local function __FUNC_1227_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1227_)
	local function __FUNC_12F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyEnumValue(arg0, "gender", Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_INVALID)
		if not registerVal4 then
			SetCharacterModeToSessionMode(registerVal1, arg0, arg2, Enum.eModes.MODE_CAMPAIGN)
			SelectGender(registerVal1, arg0, arg2)
			SaveLoadout(registerVal1, arg2)
			SetEdittingHeroFromStats(arg2)
			RefreshCharacterCustomization(registerVal1, arg0, arg2)
			NavigateToMenu(registerVal1, "ChooseHead", true, arg2)
			ClearMenuSavedState(arg1)
			return true
		end
	end

	local function __FUNC_1586_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementPropertyEnumValue(arg0, "gender", Enum.CharacterGenderTypes.CHARACTER_GENDER_TYPE_INVALID)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_12F6_, __FUNC_1586_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.genderList = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize(LocalizeToUpperString("MENU_CREATE_OPERATIVE_CAPS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CREATE_OPERATIVE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.FE_Guide.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 1096.000000)
	registerVal7:setTopBottom(true, false, 131.930000, 610.930000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEGuide0 = registerVal7
	local function __FUNC_1737_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "GenericMenuFrame"
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

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1737_)
	local function __FUNC_1940_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_19BD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1940_, __FUNC_19BD_, false)
	registerVal4.id = "genderList"
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.genderList:processEvent(registerVal10)
	end
	local function __FUNC_1AB9_(arg1)
		arg1.genderList:close()
		arg1.GenericMenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FEGuide0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseGender.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1AB9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseGender = __FUNC_349_
