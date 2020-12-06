-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
local function __FUNC_2E7_(arg0)
	if not CoD.perController[arg0].isInCybercoreUpgrade then
	end
	local function __FUNC_4A1_(arg0, arg1)
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = arg0
		registerVal2.models = registerVal3
		registerVal3 = {}
		registerVal3.action = arg1
		registerVal2.properties = registerVal3
		return registerVal2
	end

	local function __FUNC_535_(arg0, arg1, arg2)
		local registerVal3 = arg0:getModel(arg2, "itemIndex")
		local registerVal4 = arg1:getModel()
		local registerVal6 = Engine.CreateModel(registerVal4, "itemIndex")
		Engine.SetModelValue(registerVal6, Engine.GetModelValue(registerVal3))
	end

	local function __FUNC_638_(arg0, arg1, arg2, arg3, arg4)
		__FUNC_535_(arg0, arg1, arg2)
		UnlockItem(arg0, arg1, arg2)
		local registerVal5 = GoBackAndUpdateStateOnPreviousMenu(arg0, arg2)
		if false then
			UpdateCybercoreTree(registerVal5, registerVal5, arg2)
		end
		ClearSavedState(arg0, arg2)
	end

	local function __FUNC_742_(arg0, arg1, arg2, arg3, arg4)
		__FUNC_535_(arg0, arg1, arg2)
		UnlockAndEquipItem(arg0, arg1, arg2)
		GoBackToCustomClassMenu(arg0, arg2)
		ClearSavedState(arg0, arg2)
	end

	local function __FUNC_80A_(arg0, arg1, arg2, arg3, arg4)
		GoBack(arg0, arg2)
		ClearSavedState(arg0, arg2)
	end

	table.insert({}, __FUNC_4A1_("MENU_UNLOCK", __FUNC_638_))
	if (not ) then
		table.insert({}, __FUNC_4A1_("MENU_UNLOCK_AND_EQUIP", __FUNC_742_))
	end
	table.insert({}, __FUNC_4A1_("MENU_CANCEL_UNLOCK", __FUNC_80A_))
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("UnlockTokenMenuList", __FUNC_2E7_, true)
DataSources.UnlockTokenMenuList = registerVal2
function LUI.createMenu.UnlockConfirmation(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("UnlockConfirmation")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "UnlockConfirmation.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MPUI_CONFIRM_PURCHASE_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 450.000000, 798.000000)
	registerVal4:setTopBottom(true, false, 223.250000, 248.250000)
	registerVal4:setRGB(0.500000, 0.510000, 0.520000)
	registerVal4:setText(Engine.Localize(GetUnlockTokenItemString(arg0, "MPUI_UNLOCK_ITEM")))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.desc = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 92.000000, 330.000000)
	registerVal5:setTopBottom(true, false, 226.000000, 464.000000)
	local function __FUNC_1C77_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetItemImageFromIndexPerWeaponCategory(arg0, registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal1, "itemIndex", true, __FUNC_1C77_)
	registerVal1:addElement(registerVal5)
	registerVal1.previewImage = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 450.000000, 730.000000)
	registerVal6:setTopBottom(true, false, 329.000000, 445.000000)
	registerVal6:setDataSource("UnlockTokenMenuList")
	registerVal6:setWidgetType(CoD.CACGenericButton)
	registerVal6:setVerticalCount(3.000000)
	registerVal6:setSpacing(10.000000)
	local function __FUNC_1D64_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1D64_)
	local function __FUNC_1EF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1EF7_)
	local function __FUNC_1FC6_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2027_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1FC6_, __FUNC_2027_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.buttonList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal7:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Image3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal8:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 25.500000, 30.500000)
	registerVal9:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal9:setAlpha(0.800000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.LineSide0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 7.000000, 23.000000)
	registerVal10:setTopBottom(true, false, 295.000000, 347.000000)
	registerVal10:setZoom(-5.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image40 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal11:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image30 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal12:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image41 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 1246.500000, 1251.500000)
	registerVal13:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal13:setAlpha(0.800000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.LineSide00 = registerVal13
	local registerVal14 = CoD.UnlockTokensWidget.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, true, -499.000000, -260.000000)
	registerVal14:setTopBottom(true, false, 148.000000, 192.000000)
	registerVal14.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.UnlockTokensWidget = registerVal14
	local function __FUNC_2117_(arg1, arg2)
		SetModelFromPerControllerTable(arg0, registerVal1, "UnlockTokenInfo")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2117_)
	local function __FUNC_21D6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2251_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_21D6_, __FUNC_2251_, false)
	local function __FUNC_234D_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2380_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_234D_, __FUNC_2380_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "buttonList"
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.buttonList:processEvent(registerVal17)
	end
	local function __FUNC_247E_(arg1)
		arg1.background:close()
		arg1.buttonList:close()
		arg1.UnlockTokensWidget:close()
		arg1.previewImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "UnlockConfirmation.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_247E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

