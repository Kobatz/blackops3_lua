-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.CAC.OverCapacityItem")
local function __FUNC_216_(arg0, arg1)
end

local function __FUNC_240_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("RemoveItemFromClass")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "RemoveItemFromClass.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 83.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 141.000000, 189.000000)
	registerVal4:setRGB(0.870000, 0.880000, 0.780000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_E3D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal4:setText(GetRemoveItemTitle(arg0, registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "CACMenu.numItemsToRemove", __FUNC_E3D_)
	registerVal1:addElement(registerVal4)
	registerVal1.titleLabel = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 84.000000, 693.000000)
	registerVal5:setTopBottom(true, false, 208.000000, 233.000000)
	registerVal5:setRGB(0.500000, 0.510000, 0.520000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_EF8_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal5:setText(GetRemoveItemDescription(arg0, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "CACMenu.numItemsToRemove", __FUNC_EF8_)
	registerVal1:addElement(registerVal5)
	registerVal1.menudescription = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 86.000000, 1421.000000)
	registerVal6:setTopBottom(true, false, 259.000000, 388.000000)
	registerVal6:setDataSource("RemoveItemFromClassList")
	registerVal6:setWidgetType(CoD.OverCapacityItem)
	registerVal6:setHorizontalCount(10.000000)
	registerVal6:setSpacing(5.000000)
	local function __FUNC_FBA_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_FBA_)
	local function __FUNC_114B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_114B_)
	local function __FUNC_121A_(arg0, arg1, arg2, arg3)
		WeaponVariantRemoveItemFromClass(registerVal1, arg0, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_12B3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_121A_, __FUNC_12B3_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.itemList = registerVal6
	local function __FUNC_13AE_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_13E0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_13AE_, __FUNC_13E0_, false)
	local function __FUNC_14DE_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1559_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_14DE_, __FUNC_1559_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "itemList"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.itemList:processEvent(registerVal9)
	end
	local function __FUNC_1655_(arg1)
		arg1.background:close()
		arg1.itemList:close()
		arg1.titleLabel:close()
		arg1.menudescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "RemoveItemFromClass.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1655_)
	if __FUNC_216_ then
		__FUNC_216_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.RemoveItemFromClass = __FUNC_240_
