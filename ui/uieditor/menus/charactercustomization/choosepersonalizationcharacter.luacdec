-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.menus.CharacterCustomization.PersonalizeCharacter")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacterCarouselItem")
require("ui.uieditor.widgets.onOffText")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Heroes.PersonalizeElemsSideList")
local function __FUNC_353_(arg0, arg1)
	arg0.characterCarousel.m_disableNavigation = true
end

local function __FUNC_3C6_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChoosePersonalizationCharacter")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChoosePersonalizationCharacter.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.BG = registerVal3
	local registerVal4 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4.titleLabel:setText(Engine.Localize(AppendString("_CAPS", "HEROES_PERSONALIZE_HERO_NAME_CAPS")))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("HEROES_PERSONALIZE_SPECIALISTS_CAPS"))
	registerVal4.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	local function __FUNC_1EB3_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_1EB3_)
	registerVal1:addElement(registerVal4)
	registerVal1.GenericMenuFrame0 = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 4.000000, 200.000000, nil, false, true, 232.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 0.000000, 7608.000000)
	registerVal5:setTopBottom(true, false, 137.000000, 637.000000)
	registerVal5:setDataSource("HeroesList")
	registerVal5:setWidgetType(CoD.PersonalizeCharacterCarouselItem)
	registerVal5:setHorizontalCount(9.000000)
	registerVal5:setSpacing(4.000000)
	local function __FUNC_1F4A_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "disabled", true, __FUNC_1F4A_)
	local function __FUNC_2105_(arg1, arg2)
		UpdateEditingHero(arg1, arg0)
		UpdateElementState(registerVal1, "leftBumper", arg0)
		UpdateElementState(registerVal1, "rightBumper", arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_2105_)
	local function __FUNC_21D0_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_21D0_)
	local function __FUNC_241B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_241B_)
	local function __FUNC_24EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			NavigateToMenu(registerVal1, "PersonalizeCharacter", true, arg2)
			return true
		end
	end

	local function __FUNC_2596_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_24EA_, __FUNC_2596_, false)
	local function __FUNC_26C6_(arg0, arg1, arg2, arg3)
		SelectPreviousItemIfPossible(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2732_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_LB, "A", __FUNC_26C6_, __FUNC_2732_, false)
	local function __FUNC_281A_(arg0, arg1, arg2, arg3)
		SelectNextItemIfPossible(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2882_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_RB, "D", __FUNC_281A_, __FUNC_2882_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.characterCarousel = registerVal5
	local registerVal6 = CoD.onOffText.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 237.000000, 464.000000)
	registerVal6:setTopBottom(true, false, 106.000000, 131.000000)
	registerVal6.lbText:setText(Engine.Localize("^BBUTTON_LUI_SHOULDERL^"))
	registerVal6.lbText:setTTF("fonts/default.ttf")
	registerVal6.lbText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_296A_(arg0, arg1, arg2)
		return IsListAtStart(registerVal1, "characterCarousel", arg2)
	end

	registerVal10.condition = __FUNC_296A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	if registerVal6.m_eventHandlers.list_focus_changed then
		local function __FUNC_29DE_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal6.m_eventHandlers.list_focus_changed(arg0, arg1)
		end

		registerVal6:registerEventHandler("list_focus_changed", __FUNC_29DE_)
	else
		registerVal6:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	if registerVal6.m_eventHandlers.input_source_changed then
		local function __FUNC_2A67_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal6.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal6:registerEventHandler("input_source_changed", __FUNC_2A67_)
	else
		registerVal6:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal1:addElement(registerVal6)
	registerVal1.leftBumper = registerVal6
	local registerVal7 = CoD.onOffText.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 806.000000, 1043.000000)
	registerVal7:setTopBottom(true, false, 106.000000, 131.000000)
	registerVal7.lbText:setText(Engine.Localize("^BBUTTON_LUI_SHOULDERR^"))
	registerVal7.lbText:setTTF("fonts/default.ttf")
	registerVal7.lbText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Invisible"
	local function __FUNC_2AEF_(arg0, arg1, arg2)
		return IsListAtEnd(registerVal1, "characterCarousel", arg2)
	end

	registerVal11.condition = __FUNC_2AEF_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	if registerVal7.m_eventHandlers.list_focus_changed then
		local function __FUNC_2B60_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal7.m_eventHandlers.list_focus_changed(arg0, arg1)
		end

		registerVal7:registerEventHandler("list_focus_changed", __FUNC_2B60_)
	else
		registerVal7:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	if registerVal7.m_eventHandlers.input_source_changed then
		local function __FUNC_2BEB_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal7.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal7:registerEventHandler("input_source_changed", __FUNC_2BEB_)
	else
		registerVal7:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal1:addElement(registerVal7)
	registerVal1.rightBumper = registerVal7
	local registerVal8 = CoD.FE_TitleNumBrdr.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 232.000000, -232.000000)
	registerVal8:setTopBottom(false, false, -256.000000, -227.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FETitleNumBrdr0 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal9:setTopBottom(false, false, -257.750000, -254.250000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image0 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal10:setTopBottom(false, false, -229.000000, -226.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image1 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1053.000000, 1089.000000)
	registerVal11:setTopBottom(false, false, -257.750000, -254.250000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 1053.000000, 1089.000000)
	registerVal12:setTopBottom(false, false, -228.500000, -225.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 191.000000, 227.000000)
	registerVal13:setTopBottom(false, false, 273.500000, 276.500000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image4 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 1053.000000, 1089.000000)
	registerVal14:setTopBottom(false, false, 275.000000, 278.500000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image5 = registerVal14
	local registerVal15 = CoD.PersonalizeElemsSideList.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal15:setTopBottom(true, false, 78.000000, 748.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.PersonalizeElemsSideList = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal16:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal16:setRGB(0.900000, 0.900000, 0.900000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal16)
	registerVal1.CategoryListLine = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2C73_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_2D65_(arg0, arg1)
			local function __FUNC_2EBC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2EBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EBC_)
		end

		registerVal5:completeAnimation()
		registerVal1.characterCarousel:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_2D65_(registerVal5, {})
	end

	registerVal18.DefaultClip = __FUNC_2C73_
	registerVal17.DefaultState = registerVal18
	registerVal1.clipsPerState = registerVal17
	local function __FUNC_3077_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_3077_)
	local function __FUNC_311F_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3150_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_311F_, __FUNC_3150_, false)
	local function __FUNC_3253_(arg0, arg1, arg2, arg3)
		ClearSavedHeroForEdits(arg2)
		ClearSavedState(registerVal1, arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_3337_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3253_, __FUNC_3337_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "characterCarousel"
	local registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.characterCarousel:processEvent(registerVal19)
	end
	local function __FUNC_3431_(arg1)
		arg1.GenericMenuFrame0:close()
		arg1.characterCarousel:close()
		arg1.leftBumper:close()
		arg1.rightBumper:close()
		arg1.FETitleNumBrdr0:close()
		arg1.PersonalizeElemsSideList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChoosePersonalizationCharacter.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3431_)
	if __FUNC_353_ then
		__FUNC_353_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChoosePersonalizationCharacter = __FUNC_3C6_
