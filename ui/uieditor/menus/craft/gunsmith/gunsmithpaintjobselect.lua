-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.Craft.Paintshop.PaintjobSelectorItem")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_429_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
	local function __FUNC_5C0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0:getModel(arg1, "paintjobIndex"))
		local registerVal2 = Engine.GetModelValue(arg0:getModel(arg1, "paintjobSlot"))
		local registerVal5 = {}
		registerVal5.paintjobIndex = registerVal1
		registerVal5.paintjobSlot = registerVal2
		arg0.paintjobsList:findItem(registerVal5, nil, true, nil)
	end

	arg0.restoreState = __FUNC_5C0_
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "Paintshop.UpdateDataSource")
	local function __FUNC_6EF_(arg2)
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].selectedpaintjobModel, "paintjobIndex"))
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].selectedpaintjobModel, "paintjobSlot"))
		if CoD.perController[arg1].selectedpaintjobModel and arg0.paintjobsList ~= nil then
			arg0.paintjobsList:updateDataSource(true)
			local registerVal6 = {}
			registerVal6.paintjobIndex = registerVal2
			registerVal6.paintjobSlot = registerVal3
			arg0.paintjobsList:findItem(registerVal6, nil, true, nil)
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_6EF_)
end

local function __FUNC_8FD_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithPaintjobSelect")
	if __FUNC_429_ then
		__FUNC_429_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithPaintjobSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 448.000000)
	registerVal3:setTopBottom(true, false, 85.000000, 720.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal4:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleDotsWidget0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 79.500000, 441.000000)
	registerVal5:setTopBottom(true, false, 123.500000, 621.500000)
	registerVal5:setRGB(0.740000, 0.820000, 0.860000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.WeaponListBacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListPanel = registerVal6
	local registerVal7 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, -71.250000, 506.750000)
	registerVal7:setTopBottom(true, false, -5.500000, 140.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_PAINTJOBS_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.cac3dTitleIntermediary0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 79.750000, 417.750000)
	registerVal9:setTopBottom(true, false, 123.500000, 576.500000)
	registerVal9:setWidgetType(CoD.PaintjobSelectorItem)
	registerVal9:setHorizontalCount(3.000000)
	registerVal9:setVerticalCount(4.000000)
	registerVal9:setSpacing(7.000000)
	registerVal9:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal9:setDataSource("PaintjobList")
	local function __FUNC_1DA9_(arg1, arg2)
		Gunsmith_PaintjobSelector_GainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_1DA9_)
	local function __FUNC_1E1D_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_1E1D_)
	local function __FUNC_2015_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2015_)
	local function __FUNC_20E6_(arg0, arg1, arg2, arg3)
		local registerVal4 = Paintjobs_IsOccupied(arg0, arg2)
		registerVal4 = PaintshopEditAvailable(arg0, arg2)
		if not registerVal4 and registerVal4 then
			OpenEmblemEditor(arg0, arg1, arg2, arg3, "PaintjobSelect")
			return true
		else
			registerVal4 = Paintjobs_IsOccupied(arg0, arg2)
			if registerVal4 then
				Gunsmith_PaintjobSelector_ChooseOccupiedPaintjob(registerVal1, arg0, arg2)
				GoBack(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_2266_(arg0, arg1, arg2)
		local registerVal3 = Paintjobs_IsOccupied(arg0, arg2)
		registerVal3 = PaintshopEditAvailable(arg0, arg2)
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = Paintjobs_IsOccupied(arg0, arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_20E6_, __FUNC_2266_, false)
	local function __FUNC_2440_(arg0, arg1, arg2, arg3)
		local registerVal4 = Paintjobs_IsOccupied(arg0, arg2)
		registerVal4 = PaintshopEditAvailable(arg0, arg2)
		if registerVal4 and registerVal4 then
			OpenEmblemEditor(arg0, arg1, arg2, arg3, "PaintjobSelect")
			return true
		end
	end

	local function __FUNC_2530_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_EDIT_PAINTJOB")
		local registerVal3 = Paintjobs_IsOccupied(arg0, arg2)
		registerVal3 = PaintshopEditAvailable(arg0, arg2)
		if registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "E", __FUNC_2440_, __FUNC_2530_, true)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Unavailable"
	local function __FUNC_26AC_(arg1, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = Paintjobs_IsOccupied(arg2, arg0)
			if not registerVal3 then
				registerVal3 = PaintshopEditAvailable(arg2, arg0)
			else
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_26AC_
	local registerVal14 = {}
	registerVal14.stateName = "EmptySlot"
	local function __FUNC_2770_(arg1, arg2, arg3)
		local registerVal3 = Paintjobs_IsOccupied(arg2, arg0)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_2770_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.paintjobsList = registerVal9
	local registerVal10 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 459.500000, 840.500000)
	registerVal10:setTopBottom(true, false, 125.500000, 159.500000)
	local function __FUNC_27D2_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal10.weaponNameWithVariant.itemName.itemName:setText(LocalizeWeaponNameIntoString("MENU_PAINTSHOP_WEAPON_PAINTJOBS_SMALL", "mp", arg0, registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_27D2_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Equipped"
	local function __FUNC_292E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_292E_
	local registerVal15 = {}
	registerVal15.stateName = "Available"
	local function __FUNC_2978_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_2978_
	local registerVal16 = {}
	registerVal16.stateName = "NotEquippable"
	local function __FUNC_29AC_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_29AC_
	local registerVal17 = {}
	registerVal17.stateName = "NotAvailable"
	local function __FUNC_29E0_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_29E0_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.itemName = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_paintshop"))
	local function __FUNC_2A14_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.titleLabel:setText(LocalizeWeaponNameIntoString("MENU_PAINTSHOP_WEAPON_PAINTJOBS", "mp", arg0, registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_2A14_)
	local function __FUNC_2B37_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeWeaponNameIntoString("MENU_PAINTSHOP_WEAPON_PAINTJOBS", "mp", arg0, registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "Customization", "weapon_index", __FUNC_2B37_)
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame = registerVal12
	registerVal13 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, true, -772.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 223.000000, -198.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.XCamMouseControl = registerVal13
	local function __FUNC_2CE6_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal9, nil, false, __FUNC_2CE6_)
	local function __FUNC_2D36_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal9, "paintjobName", true, __FUNC_2D36_)
	local function __FUNC_2E32_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerTextToGameMode("MENU_ZOMBIES")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2E32_)
	local function __FUNC_2F14_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2F68_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2F14_, __FUNC_2F68_, false)
	local function __FUNC_3065_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3098_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3065_, __FUNC_3098_, false)
	local function __FUNC_3196_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_31C8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3196_, __FUNC_31C8_, false)
	registerVal9.id = "paintjobsList"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.paintjobsList:processEvent(registerVal16)
	end
	local function __FUNC_32DA_(arg1)
		arg1.LeftPanel:close()
		arg1.TitleDotsWidget0:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.paintjobsList:close()
		arg1.itemName:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithPaintjobSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_32DA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithPaintjobSelect = __FUNC_8FD_
