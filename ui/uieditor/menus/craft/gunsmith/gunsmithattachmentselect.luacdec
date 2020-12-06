-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropContainer3x4")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithAttachmentItemButtonND")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropSymbols")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.Gunsmith.GunSmithSubDescription")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CAC.WeaponAttributes_Internal")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithWarningWidget")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_4EA_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithAttachmentModel)
	local function __FUNC_5B9_(arg0)
		local registerVal1 = arg0:getModel()
		local registerVal2 = Engine.GetModelValue(registerVal1)
		local registerVal5 = {}
		registerVal5.attachmentIndex = registerVal2
		arg0.selectionList:findItem(registerVal5, nil, true, nil)
	end

	arg0.restoreState = __FUNC_5B9_
end

local function __FUNC_6A7_(arg0, arg1)
	if arg1 == nil then
	end
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.GunsmithSelectedItemProperties.attachmentType")
	local registerVal4 = Engine.GetModelForController(arg0)
	registerVal3 = Engine.CreateModel(registerVal4, "Gunsmith.GunsmithSelectedItemProperties.title")
	registerVal4 = CoD.GetCustomization(arg0, "weapon_index")
	if "attachment" == "optic" then
	end
	local registerVal6 = Engine.Localize(LocalizeWeaponNameIntoString("MENU_GUNSMITH_OPTICS_SELECT_TITLE", "mp", arg0, registerVal4))
	Engine.SetModelValue(registerVal3, registerVal6)
	Engine.SetModelValue(registerVal2, "attachment")
end

local function __FUNC_99D_(arg0, arg1)
	__FUNC_6A7_(arg1, CoD.perController[arg1].gunsmithAttachmentType)
end

local function __FUNC_A40_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithAttachmentSelect")
	if __FUNC_4EA_ then
		__FUNC_4EA_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithAttachmentSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 418.000000)
	registerVal3:setTopBottom(true, false, 84.000000, 720.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.GridItemButtonBackdropContainer3x4.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 99.000000, 443.000000)
	registerVal4:setTopBottom(true, false, 145.500000, 601.500000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.GridItemButtonBackdropContainer3x4 = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal5:setTopBottom(true, false, 137.000000, 590.000000)
	registerVal5:setWidgetType(CoD.GunsmithAttachmentItemButtonND)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(7.000000)
	registerVal5:setDataSource("GunsmithWeaponAttachments")
	local function __FUNC_1F52_(arg1, arg2)
		Gunsmith_FocusAttachment(registerVal1, arg1, arg0, false)
		SetHintText(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1F52_)
	local function __FUNC_1FE7_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1FE7_)
	local function __FUNC_2177_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2177_)
	local function __FUNC_2246_(arg0, arg1, arg2, arg3)
		Gunsmith_SelectAttachment(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_22F8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2246_, __FUNC_22F8_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_23F6_(arg1, arg2, arg3)
		return Gunsmith_IsAttachmentEquipped(arg1, arg2, arg0)
	end

	registerVal9.condition = __FUNC_23F6_
	local registerVal10 = {}
	registerVal10.stateName = "MutuallyExclusive"
	local function __FUNC_245F_(arg1, arg2, arg3)
		return Gunsmith_IsItemMutuallyExclusiveWithSelection(arg2, arg0)
	end

	registerVal10.condition = __FUNC_245F_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.GridItemButtonBackdropSymbols.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 99.000000, 1193.670000)
	registerVal7:setTopBottom(true, false, 145.500000, 602.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(-7.020000)
	registerVal1:addElement(registerVal7)
	registerVal1.GridItemButtonBackdropSymbols = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine0 = registerVal8
	registerVal9 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 431.000000, 812.000000)
	registerVal9:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.WeaponNameWidget0 = registerVal9
	registerVal10 = CoD.GunSmithSubDescription.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 431.000000, 684.000000)
	registerVal10:setTopBottom(true, false, 174.500000, 211.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.GunSmithSubDescription0 = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	local function __FUNC_24D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.titleLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "GunsmithSelectedItemProperties", "title", __FUNC_24D3_)
	local function __FUNC_25AA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "GunsmithSelectedItemProperties", "title", __FUNC_25AA_)
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.WeaponAttributes_Internal.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 441.000000, 862.000000)
	registerVal12:setTopBottom(true, false, 554.000000, 640.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.weaponAttributes = registerVal12
	local registerVal13 = CoD.GunsmithWarningWidget.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 64.000000, 431.000000)
	registerVal13:setTopBottom(true, false, 88.000000, 112.000000)
	registerVal13.warningMsg.text:setText(Engine.Localize("MENU_GUNSMITH_VARIANT_STATS_ATTACHMENT_WARNING"))
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Hide"
	local function __FUNC_2711_(arg1, arg2, arg3)
		return Gunsmith_IsNewVariant(arg0)
	end

	registerVal17.condition = __FUNC_2711_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.warningMsg = registerVal13
	local registerVal15 = IsPC()
	if registerVal15 then
		registerVal15 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal15 = LUI.UIElement.createFake()
	end
	registerVal15:setLeftRight(false, true, -836.000000, -64.000000)
	registerVal15:setTopBottom(true, true, 214.000000, -207.000000)
	registerVal15 = IsPC()
	if registerVal15 then
		registerVal1:addElement(registerVal15)
	end
	registerVal1.XCamMouseControl = registerVal15
	local function __FUNC_276B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal5, "name", true, __FUNC_276B_)
	local function __FUNC_2847_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal5, "description", true, __FUNC_2847_)
	local function __FUNC_2925_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal5, "weaponAttributes", false, __FUNC_2925_)
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_2976_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal1.GridItemButtonBackdropSymbols:setLeftRight(true, false, 93.660000, 1188.340000)
		registerVal1.GridItemButtonBackdropSymbols:setTopBottom(true, false, 145.500000, 602.500000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal1.GunSmithSubDescription0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal16.DefaultClip = __FUNC_2976_
	registerVal15.DefaultState = registerVal16
	registerVal1.clipsPerState = registerVal15
	local function __FUNC_2B62_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2B62_)
	local function __FUNC_2BFA_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_2C75_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2BFA_, __FUNC_2C75_, false)
	local function __FUNC_2D71_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2DDD_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_2D71_, __FUNC_2DDD_, false)
	registerVal5.id = "selectionList"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.selectionList:processEvent(registerVal17)
	end
	local function __FUNC_2F2F_(arg1)
		arg1.LeftPanel:close()
		arg1.GridItemButtonBackdropContainer3x4:close()
		arg1.selectionList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.GridItemButtonBackdropSymbols:close()
		arg1.WeaponNameWidget0:close()
		arg1.GunSmithSubDescription0:close()
		arg1.MenuFrame:close()
		arg1.weaponAttributes:close()
		arg1.warningMsg:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithAttachmentSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2F2F_)
	if __FUNC_99D_ then
		__FUNC_99D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithAttachmentSelect = __FUNC_A40_
