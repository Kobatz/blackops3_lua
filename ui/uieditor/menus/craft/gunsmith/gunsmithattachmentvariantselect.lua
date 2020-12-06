-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CAC.Customization.CustomizationItem_ND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_489_(arg0, arg1)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
	arg0:setModel(CoD.perController[arg1].gunsmithAttachmentModel)
	local function __FUNC_59C_(arg0)
		if CoD.perController[arg1].gunsmithAttachmentVariantModel then
			local registerVal2 = Engine.GetModelValue(CoD.perController[arg1].gunsmithAttachmentVariantModel)
			local registerVal5 = {}
			registerVal5.variantIndex = registerVal2
			arg0.selectionList:findItem(registerVal5, nil, true, nil)
		end
	end

	arg0.restoreState = __FUNC_59C_
end

local function __FUNC_6EE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithAttachmentVariantSelect")
	if __FUNC_489_ then
		__FUNC_489_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryAttachment"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithAttachmentVariantSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 428.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 720.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal4:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEMenuLeftGraphics = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GetGunsmithAttachmentVariantMenuTitle(arg0, "MENU_VARIANTS_CAPS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cac"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame0 = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal6:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal6:setWidgetType(CoD.CustomizationItem_ND)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(7.000000)
	registerVal6:setVerticalCounter(CoD.verticalCounter)
	registerVal6:setDataSource("GunsmithAttachmentVariantList")
	local function __FUNC_1E07_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_1E07_)
	local function __FUNC_1FC7_(arg1, arg2)
		local registerVal3 = Gunsmith_IsACVItemNew(arg1, arg0)
		if registerVal3 then
			Gunsmith_SetACVASOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			Gunsmith_FocusAttachment(registerVal1, arg1, arg0, true)
		else
			registerVal3 = IsSelfModelValueTrue(arg1, arg0, "isBMClassified")
			if not registerVal3 then
				Gunsmith_FocusAttachment(registerVal1, arg1, arg0, true)
			end
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_1FC7_)
	local function __FUNC_2139_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2139_)
	local function __FUNC_22CB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_22CB_)
	local function __FUNC_239A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			Gunsmith_SetAttachmentVariant(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_2479_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_239A_, __FUNC_2479_, true)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_25D0_(arg1, arg2, arg3)
		return IsGunsmithCurrentACVEquipped(registerVal1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_25D0_
	local registerVal11 = {}
	registerVal11.stateName = "New"
	local function __FUNC_263A_(arg1, arg2, arg3)
		return Gunsmith_IsACVItemNew(arg2, arg0)
	end

	registerVal11.condition = __FUNC_263A_
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_2697_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_2697_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_26E1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_26E1_)
	local function __FUNC_2804_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isChallengeClassified", true, __FUNC_2804_)
	registerVal1:addElement(registerVal6)
	registerVal1.selectionList = registerVal6
	local registerVal7 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "AttachmentSelect"
	local function __FUNC_292F_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_292F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.Pregame.state")
	local function __FUNC_2978_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2978_)
	registerVal1:addElement(registerVal7)
	registerVal1.PregameTimerOverlay = registerVal7
	local registerVal8 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 448.000000, 832.000000)
	registerVal8:setTopBottom(true, false, 175.000000, 197.000000)
	registerVal8.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MPUI_ATTACHMENT_VARIANT"))
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "NotVisible"
	local function __FUNC_2AA5_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2AA5_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2B22_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "isBMClassified", true, __FUNC_2B22_)
	registerVal1:addElement(registerVal8)
	registerVal1.itemDescription = registerVal8
	registerVal9 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 447.000000, 828.000000)
	registerVal9:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal9.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Equipped"
	local function __FUNC_2C44_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_2C44_
	local registerVal14 = {}
	registerVal14.stateName = "Available"
	local function __FUNC_2C90_(arg0, arg1, arg2)
		return true
	end

	registerVal14.condition = __FUNC_2C90_
	local registerVal15 = {}
	registerVal15.stateName = "NeedsWildcard"
	local function __FUNC_2CC4_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_2CC4_
	local registerVal16 = {}
	registerVal16.stateName = "NotEquippable"
	local function __FUNC_2CF8_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_2CF8_
	local registerVal17 = {}
	registerVal17.stateName = "NotAvailable"
	local function __FUNC_2D2C_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_2D2C_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.itemName = registerVal9
	registerVal10 = CoD.CryptokeyTypeNameLeft.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 447.000000, 558.000000)
	registerVal10:setTopBottom(false, true, -100.000000, -78.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_2D60_(arg1, arg2, arg3)
		local registerVal3 = AlwaysTrue()
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "rarity")
			else
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_2D60_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_2E5E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBMClassified", true, __FUNC_2E5E_)
	local function __FUNC_2F80_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "rarity", true, __FUNC_2F80_)
	registerVal1:addElement(registerVal10)
	registerVal1.CryptokeyTypeNameLeft0 = registerVal10
	registerVal12 = IsPC()
	if registerVal12 then
		registerVal12 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal12 = LUI.UIElement.createFake()
	end
	registerVal12:setLeftRight(true, false, 448.000000, 1216.000000)
	registerVal12:setTopBottom(true, false, 206.090000, 606.090000)
	registerVal12 = IsPC()
	if registerVal12 then
		registerVal1:addElement(registerVal12)
	end
	registerVal1.XCamMouseControl = registerVal12
	local function __FUNC_309C_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_309C_)
	local function __FUNC_30EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal6, "name", true, __FUNC_30EE_)
	local function __FUNC_31FB_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal6, "rarityType", false, __FUNC_31FB_)
	local function __FUNC_324A_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_324A_)
	local function __FUNC_32E2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		return true
	end

	local function __FUNC_337A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_32E2_, __FUNC_337A_, false)
	local function __FUNC_3475_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_34E1_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "PLATFORM_EMBLEM_ROTATE_LAYER_BUTTON")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, nil, __FUNC_3475_, __FUNC_34E1_, false)
	local function __FUNC_3630_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_369D_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3630_, __FUNC_369D_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "selectionList"
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.selectionList:processEvent(registerVal14)
	end
	local function __FUNC_37EF_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.GenericMenuFrame0:close()
		arg1.selectionList:close()
		arg1.PregameTimerOverlay:close()
		arg1.itemDescription:close()
		arg1.itemName:close()
		arg1.CryptokeyTypeNameLeft0:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithAttachmentVariantSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_37EF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithAttachmentVariantSelect = __FUNC_6EE_
