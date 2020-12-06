-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.CAC.OverCapacityItem")
require("ui.uieditor.widgets.CAC.popup_warninglabel")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Scrollbars.horizontalCounterHide")
local function __FUNC_2DF_(arg0, arg1)
	if CoD.perController[arg1].weaponCategory then
		local registerVal5 = Engine.GetItemName(CoD.perController[arg1].overCapacityItemIndex)
		local registerVal6 = LUI.startswith(CoD.perController[arg1].weaponCategory, "primaryattachment")
		if registerVal6 then
			registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, "primary.itemIndex"))
			local registerVal7 = Engine.GetAttachmentName(registerVal6, CoD.perController[arg1].overCapacityItemIndex)
		else
			registerVal6 = LUI.startswith(CoD.perController[arg1].weaponCategory, "secondaryattachment")
			if registerVal6 then
				registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, "secondary.itemIndex"))
				registerVal7 = Engine.GetAttachmentName(registerVal6, CoD.perController[arg1].overCapacityItemIndex)
			else
				registerVal6 = LUI.startswith(CoD.perController[arg1].weaponCategory, "primarygadgetattachment")
				if registerVal6 then
					registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, "primarygadget.itemIndex"))
					registerVal7 = Engine.GetItemName(registerVal6)
				else
					registerVal6 = LUI.startswith(CoD.perController[arg1].weaponCategory, "secondarygadgetattachment")
					if registerVal6 then
						registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, "secondarygadget.itemIndex"))
						registerVal7 = Engine.GetItemName(registerVal6)
					end
				end
			end
		end
		arg0.popupwarninglabel.menudescription:setText(Engine.Localize("MENU_TOO_MANY_ITEMS_DESC_CAPS", Engine.Localize(registerVal7)))
	end
end

local function __FUNC_833_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("OverCapacity")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "OverCapacity.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MENU_TOO_MANY_ITEMS_CAPS"))
	local function __FUNC_1F02_(arg1)
		registerVal3.buttons:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_1F02_)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 101.000000, 1570.000000)
	registerVal4:setTopBottom(true, false, 332.000000, 461.000000)
	registerVal4:setWidgetType(CoD.OverCapacityItem)
	registerVal4:setHorizontalCount(11.000000)
	registerVal4:setSpacing(5.000000)
	registerVal4:setDataSource("OverCapacityList")
	local function __FUNC_1F6F_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1F6F_)
	local function __FUNC_20FF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_20FF_)
	local function __FUNC_21CE_(arg0, arg1, arg2, arg3)
		RemoveOverflowItemFromClass(registerVal1, arg0, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2262_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_21CE_, __FUNC_2262_, true)
	registerVal1:addElement(registerVal4)
	registerVal1.itemList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal5:setTopBottom(false, false, 101.560000, 105.060000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal5)
	registerVal1.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 57.000000, 93.000000)
	registerVal6:setTopBottom(false, false, -23.690000, -20.190000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal6)
	registerVal1.Image4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 72.500000, 77.500000)
	registerVal7:setTopBottom(true, false, 350.060000, 440.440000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.LineSide0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 1186.000000, 1222.000000)
	registerVal8:setTopBottom(false, false, 103.380000, 107.060000)
	registerVal8:setZRot(360.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image30 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1186.000000, 1222.000000)
	registerVal9:setTopBottom(false, false, -22.750000, -19.250000)
	registerVal9:setZRot(360.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image41 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1201.500000, 1206.500000)
	registerVal10:setTopBottom(true, false, 348.060000, 451.440000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.LineSide00 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1192.500000, 1208.500000)
	registerVal11:setTopBottom(true, false, 388.000000, 396.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image000000 = registerVal11
	local registerVal12 = CoD.popup_warninglabel.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 57.000000, 790.000000)
	registerVal12:setTopBottom(true, false, 241.250000, 276.000000)
	registerVal12.menudescription:setText(Engine.Localize("MENU_TOO_MANY_ITEMS_DESC_CAPS"))
	registerVal1:addElement(registerVal12)
	registerVal1.popupwarninglabel = registerVal12
	local registerVal13 = CoD.popup_warninglabel.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 57.000000, 790.000000)
	registerVal13:setTopBottom(true, false, 241.250000, 276.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13.menudescription:setText(GetCustomOverCapacityDescription(arg0, "MENU_TOO_MANY_ITEMS_CUSTOM_DESC_CAPS"))
	registerVal1:addElement(registerVal13)
	registerVal1.custompopupwarninglabel0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 70.500000, 86.500000)
	registerVal14:setTopBottom(true, false, 390.000000, 398.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image000001 = registerVal14
	local registerVal15 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "OverCapacity"
	local function __FUNC_235E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_235E_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.Pregame.state")
	local function __FUNC_23A8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_23A8_)
	registerVal1:addElement(registerVal15)
	registerVal1.PregameTimerOverlay = registerVal15
	local registerVal16 = CoD.horizontalCounterHide.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal16:setTopBottom(false, true, -215.500000, -190.500000)
	local function __FUNC_24D5_(arg0, arg1)
		SetAsListHorizontalCounter(registerVal1, arg0, "itemList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_24D5_)
	registerVal1:addElement(registerVal16)
	registerVal1.horizontalCounter = registerVal16
	local registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_258B_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.popupwarninglabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.custompopupwarninglabel0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_258B_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_26FC_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.popupwarninglabel:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.custompopupwarninglabel0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_26FC_
	registerVal17.CustomAllocation = registerVal18
	registerVal1.clipsPerState = registerVal17
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "CustomAllocation"
	local function __FUNC_2870_(arg1, arg2, arg3)
		local registerVal3 = IsClassAllocationInState(arg0, 10.000000)
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_2870_
	registerVal19 = {registerVal20}
	registerVal1:mergeStateConditions(registerVal19)
	local function __FUNC_28DB_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_299B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_28DB_, __FUNC_299B_, false)
	local function __FUNC_2A95_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2AC8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2A95_, __FUNC_2AC8_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "itemList"
	registerVal19 = {}
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
		registerVal1.itemList:processEvent(registerVal19)
	end
	local function __FUNC_2BC6_(arg1)
		arg1.background:close()
		arg1.itemList:close()
		arg1.popupwarninglabel:close()
		arg1.custompopupwarninglabel0:close()
		arg1.PregameTimerOverlay:close()
		arg1.horizontalCounter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "OverCapacity.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2BC6_)
	if __FUNC_2DF_ then
		__FUNC_2DF_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.OverCapacity = __FUNC_833_
