-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Demo.LightmanColorElement")
local function __FUNC_200_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
end

LUI.hudMenuType.LightmanColorPicker = "hud"
local function __FUNC_269_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LightmanColorPicker")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LightmanColorPicker.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -222.500000, 222.500000)
	registerVal3:setTopBottom(false, true, -309.000000, -149.000000)
	registerVal3:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal3:setAlpha(0.300000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, false, -220.000000, 220.000000)
	registerVal4:setTopBottom(false, true, -309.000000, -149.000000)
	registerVal4:setWidgetType(CoD.LightmanColorElement)
	registerVal4:setHorizontalCount(13.000000)
	registerVal4:setVerticalCount(9.000000)
	registerVal4:setDataSource("EmblemColorList")
	local function __FUNC_BE1_(arg1, arg2)
		SelectLightmanColor(registerVal1, arg1, arg0, registerVal1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_BE1_)
	local function __FUNC_C49_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_C49_)
	local function __FUNC_DDB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_DDB_)
	local function __FUNC_EAA_(arg0, arg1, arg2, arg3)
		SelectLightmanColor(registerVal1, arg0, arg2, arg1)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showLightmanColorPicker")
		return true
	end

	local function __FUNC_F85_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_EAA_, __FUNC_F85_, false)
	local function __FUNC_1077_(arg0, arg1, arg2, arg3)
		SelectLightmanColor(registerVal1, arg0, arg2, arg1)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showLightmanColorPicker")
		return true
	end

	local function __FUNC_1151_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1077_, __FUNC_1151_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ColorPicker = registerVal4
	local function __FUNC_123D_(arg1, arg2)
		StoreCurrentLightmanColor(registerVal1, arg1, arg0, registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_123D_)
	local function __FUNC_12E4_(arg0, arg1, arg2, arg3)
		CancelLightmanColorSelection(registerVal1, arg0, arg2, arg1)
		GoBack(registerVal1, arg2)
		SetGlobalModelValueFalse("demo.showLightmanColorPicker")
		return true
	end

	local function __FUNC_13CA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_12E4_, __FUNC_13CA_, false)
	registerVal4.id = "ColorPicker"
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.ColorPicker:processEvent(registerVal7)
	end
	local function __FUNC_14C5_(arg1)
		arg1.ColorPicker:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LightmanColorPicker.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_14C5_)
	if __FUNC_200_ then
		__FUNC_200_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LightmanColorPicker = __FUNC_269_
