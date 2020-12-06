-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.CAC.OverCapacityItem")
require("ui.uieditor.widgets.StartMenu.StartMenu_TitlePopup")
require("ui.uieditor.widgets.CAC.cac_wildcardwarningtext")
require("ui.uieditor.widgets.CAC.cac_2lines")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
local function __FUNC_332_(arg0, arg1)
	local registerVal3 = CoD.CACUtility.WildcardNeededForSlot(arg1, CoD.perController[arg1].weaponCategory)
	if not registerVal3 then
	end
	if CoD.perController[arg1].wildcardOverCapacityRefName then
		local registerVal5 = Engine.GetModelForController(arg1)
		local registerVal4 = Engine.GetModel(registerVal5, "CACMenu.curWeaponVariantName")
		registerVal5 = Engine.GetItemIndexFromReference(CoD.perController[arg1].wildcardOverCapacityRefName)
		local registerVal6 = Engine.GetItemImage(registerVal5)
		local registerVal7 = Engine.ToUpper(Engine.GetItemName(registerVal5))
		arg0.selectedWildcard:setImage(RegisterImage(registerVal6))
		if CoD.perController[arg1].weaponCategory == "primary" or CoD.perController[arg1].weaponCategory == "secondary" then
			if registerVal4 then
				local registerVal8 = Engine.MarkAsLocalize(Engine.GetModelValue(registerVal4))
				arg0.desc.desc:setText(Engine.Localize("MENU_TOO_MANY_WILDCARDS_WEAPVAR_CAPS", registerVal8, registerVal7))
			else
			else
				arg0.desc.desc:setText(Engine.Localize("MENU_TOO_MANY_WILDCARDS_DESC_CAPS", registerVal7))
			end
		end
	end
end

local function __FUNC_7CE_(arg0, arg1)
	arg0.updateWildcardToReplaceInfo = __FUNC_332_
end

local function __FUNC_825_(arg0, arg1)
	__FUNC_332_(arg0, arg1)
end

local function __FUNC_860_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WildcardCapacity")
	if __FUNC_7CE_ then
		__FUNC_7CE_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WildcardCapacity.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize(""))
	local function __FUNC_2518_(arg1)
		registerVal3.buttons:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_2518_)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 100.500000, 374.500000)
	registerVal4:setTopBottom(true, false, 223.060000, 471.220000)
	registerVal1:addElement(registerVal4)
	registerVal1.selectedWildcard = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 470.000000, 877.000000)
	registerVal5:setTopBottom(true, false, 287.500000, 416.500000)
	registerVal5:setDataSource("WildcardOvercapacityList")
	registerVal5:setWidgetType(CoD.OverCapacityItem)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setSpacing(10.000000)
	local function __FUNC_2587_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_2587_)
	local function __FUNC_2717_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2717_)
	local function __FUNC_27E6_(arg0, arg1, arg2, arg3)
		RemoveOverflowWildcardFromClass(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2855_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_27E6_, __FUNC_2855_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = CoD.StartMenu_TitlePopup.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, -51.000000, 848.000000)
	registerVal6:setTopBottom(true, false, 112.000000, 258.000000)
	registerVal6.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MENU_TOO_MANY_WILDCARDS"))
	registerVal1:addElement(registerVal6)
	registerVal1.StartMenuTitlePopup = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 878.000000, 914.000000)
	registerVal7:setTopBottom(false, false, -78.000000, -74.500000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Image5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 878.000000, 914.000000)
	registerVal8:setTopBottom(false, false, 58.250000, 61.750000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 433.000000, 469.000000)
	registerVal9:setTopBottom(false, false, -77.750000, -74.250000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal10:setTopBottom(false, false, 108.560000, 112.060000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image3 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal11:setTopBottom(false, false, -138.690000, -135.190000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image4 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 72.500000, 77.500000)
	registerVal12:setTopBottom(true, false, 233.060000, 463.440000)
	registerVal12:setAlpha(0.800000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.LineSide0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 54.000000, 70.000000)
	registerVal13:setTopBottom(true, false, 293.060000, 345.060000)
	registerVal13:setZoom(-5.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image40 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal14:setTopBottom(true, false, 192.830000, 200.500000)
	registerVal14:setRGB(0.900000, 0.900000, 0.900000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryListLine = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 433.000000, 469.000000)
	registerVal15:setTopBottom(false, false, 57.500000, 61.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Image10 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal16:setTopBottom(true, false, 533.830000, 541.500000)
	registerVal16:setRGB(0.900000, 0.900000, 0.900000)
	registerVal16:setAlpha(0.250000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal16)
	registerVal1.CategoryListLine0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 1186.000000, 1222.000000)
	registerVal17:setTopBottom(false, false, 109.380000, 113.060000)
	registerVal17:setZRot(360.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.Image30 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 1186.000000, 1222.000000)
	registerVal18:setTopBottom(false, false, -137.750000, -134.250000)
	registerVal18:setZRot(360.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.Image41 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 1201.500000, 1206.500000)
	registerVal19:setTopBottom(true, false, 233.060000, 463.440000)
	registerVal19:setAlpha(0.800000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal19)
	registerVal1.LineSide00 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 1209.000000, 1225.000000)
	registerVal20:setTopBottom(true, false, 293.000000, 345.000000)
	registerVal20:setZoom(-5.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal20)
	registerVal1.Image400 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal21:setTopBottom(true, false, 580.830000, 588.500000)
	registerVal21:setRGB(0.900000, 0.900000, 0.900000)
	registerVal21:setAlpha(0.250000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal21)
	registerVal1.CategoryListLine00 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal22:setTopBottom(true, false, 130.830000, 138.500000)
	registerVal22:setRGB(0.900000, 0.900000, 0.900000)
	registerVal22:setAlpha(0.250000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal22)
	registerVal1.CategoryListLine01 = registerVal22
	local registerVal23 = CoD.cac_wildcardwarningtext.new(registerVal1, arg0)
	registerVal23:setLeftRight(true, false, 471.000000, 898.000000)
	registerVal23:setTopBottom(true, false, 223.060000, 259.060000)
	registerVal23.desc:setText(Engine.Localize("MENU_TOO_MANY_WILDCARDS_DESC_CAPS"))
	registerVal1:addElement(registerVal23)
	registerVal1.desc = registerVal23
	local registerVal24 = CoD.cac_2lines.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, false, 433.000000, 469.000000)
	registerVal24:setTopBottom(true, false, 222.310000, 259.060000)
	registerVal24:setRGB(0.890000, 0.310000, 0.070000)
	registerVal1:addElement(registerVal24)
	registerVal1.cac2lines0 = registerVal24
	local registerVal25 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal25:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal28 = {}
	local registerVal29 = {}
	registerVal29.stateName = "WildcardSelect"
	local function __FUNC_2952_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal29.condition = __FUNC_2952_
	registerVal28 = {registerVal29}
	registerVal25:mergeStateConditions(registerVal28)
	registerVal29 = Engine.GetGlobalModel()
	registerVal28 = Engine.GetModel(registerVal29, "lobbyRoot.Pregame.state")
	local function __FUNC_299C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal25, registerVal4)
	end

	registerVal25:subscribeToModel(registerVal28, __FUNC_299C_)
	registerVal1:addElement(registerVal25)
	registerVal1.PregameTimerOverlay = registerVal25
	local function __FUNC_2AC9_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2B8B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2AC9_, __FUNC_2B8B_, false)
	local function __FUNC_2C85_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2CB8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2C85_, __FUNC_2CB8_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "selectionList"
	registerVal28 = {}
	registerVal28.name = "menu_loaded"
	registerVal28.controller = arg0
	registerVal1:processEvent(registerVal28)
	registerVal28 = {}
	registerVal28.name = "update_state"
	registerVal28.menu = registerVal1
	registerVal1:processEvent(registerVal28)
	local registerVal26 = registerVal1:restoreState()
	if not registerVal26 then
		registerVal28 = {}
		registerVal28.name = "gain_focus"
		registerVal28.controller = arg0
		registerVal1.selectionList:processEvent(registerVal28)
	end
	local function __FUNC_2DB6_(arg1)
		arg1.background:close()
		arg1.selectionList:close()
		arg1.StartMenuTitlePopup:close()
		arg1.desc:close()
		arg1.cac2lines0:close()
		arg1.PregameTimerOverlay:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WildcardCapacity.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2DB6_)
	if __FUNC_825_ then
		__FUNC_825_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WildcardCapacity = __FUNC_860_
