-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_OptionsButton")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_21B_(arg0, arg1)
	arg0.animateInFromOffset = 355.000000
end

local function __FUNC_26A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupAdminOptions")
	if __FUNC_21B_ then
		__FUNC_21B_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupAdminOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -262.000000, 11.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -355.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.040000, 0.040000, 0.040000)
	registerVal4:setAlpha(0.980000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -355.000000, 3.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal5:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.tileTexture = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 1.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -322.500000, -67.500000)
	registerVal6:setTopBottom(true, false, 135.000000, 282.000000)
	registerVal6:setWidgetType(CoD.GameSettings_OptionsButton)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(1.000000)
	registerVal6:setDataSource("GroupHeadquartersAdminOptionsList")
	local function __FUNC_14BB_(arg1, arg2)
		ClassOptionsSetHintText(registerVal1, arg1, arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_14BB_)
	local function __FUNC_1521_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1521_)
	local function __FUNC_16B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_16B3_)
	local function __FUNC_1782_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_17E3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1782_, __FUNC_17E3_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.optionsList = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -322.500000, -100.000000)
	registerVal7:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal7:setRGB(1.000000, 0.470000, 0.000000)
	registerVal7:setText(Engine.Localize("GROUPS_ADMIN_OPTIONS_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.title = registerVal7
	local registerVal8 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal8:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.fefooterRighSlideIn = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.420000)
	registerVal1:addElement(registerVal9)
	registerVal1.Border0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setAlpha(0.420000)
	registerVal1:addElement(registerVal10)
	registerVal1.Border00 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, true, -308.500000, -83.750000)
	registerVal11:setTopBottom(true, false, 312.000000, 332.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.description1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -322.500000, -313.500000)
	registerVal12:setTopBottom(true, false, 317.500000, 326.500000)
	registerVal12:setAlpha(0.600000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal1:addElement(registerVal12)
	registerVal1.Arrow1 = registerVal12
	local function __FUNC_18DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal6, "hintText", true, __FUNC_18DE_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Campaign"
	local function __FUNC_1996_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal16.condition = __FUNC_1996_
	local registerVal17 = {}
	registerVal17.stateName = "ClassSets"
	local function __FUNC_19E0_(arg1, arg2, arg3)
		local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
		if registerVal3 then
			registerVal3 = DoesPlayerHaveExtraSlotsItem(arg0)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_19E0_
	registerVal15 = {registerVal16, registerVal17}
	registerVal1:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNav")
	local function __FUNC_1A82_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_1A82_)
	local function __FUNC_1BA8_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "handleKeyboardComplete", arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_1BA8_)
	local function __FUNC_1C79_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1CF5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1C79_, __FUNC_1CF5_, false)
	registerVal6.id = "optionsList"
	registerVal8.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.optionsList:processEvent(registerVal15)
	end
	local function __FUNC_1DF1_(arg1)
		arg1.optionsList:close()
		arg1.fefooterRighSlideIn:close()
		arg1.description1:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupAdminOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1DF1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupAdminOptions = __FUNC_26A_
