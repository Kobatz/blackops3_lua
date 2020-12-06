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
local function __FUNC_499_(arg0, arg1)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
	arg0:setModel(CoD.perController[arg1].classModel)
	local registerVal5 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg1].weaponCategory)
	local registerVal6 = Engine.GetWeaponString(arg1, CoD.perController[arg1].classNum, registerVal5)
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, (registerVal5 .. ".itemIndex")))
	CoD.WC_Category.ACV.selectedAttachmentWeaponIndex = registerVal7
	local registerVal9 = Engine.GetAttachmentCosmeticVariantTable(registerVal6)
	CoD.WC_Category.ACV.attachmentTable = registerVal9
	local function __FUNC_81E_(arg0)
		local registerVal2 = Engine.GetModelValue(arg0:getModel(arg1, (CoD.perController[arg1].weaponCategory .. "cosmeticvariant.itemIndex")))
		local registerVal5 = {}
		registerVal5.variantIndex = registerVal2
		local registerVal3 = arg0.selectionList:findItem(registerVal5, nil, true, nil)
		if registerVal3 then
			local registerVal4 = {}
			registerVal4.itemIndex = registerVal3.itemIndex
			registerVal4.acvIndex = registerVal2
			registerVal4.getModel = CoD.NullFunction
			FocusClassItem(arg0, registerVal4, arg1)
		end
	end

	arg0.restoreState = __FUNC_81E_
end

local function __FUNC_A3A_(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
	if not registerVal3 then
		arg1.acvIndex = arg1.variantIndex
		FocusClassItem(arg0, arg1, arg2)
	end
end

local function __FUNC_B1A_(arg0, arg1)
	arg0.updateFocus = __FUNC_A3A_
end

local function __FUNC_B61_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("AttachmentCosmeticVariantSelect")
	if __FUNC_499_ then
		__FUNC_499_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryAttachment"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "AttachmentCosmeticVariantSelect.buttonPrompts")
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
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GetAttachmentCosmeticVariantMenuTitle("MENU_VARIANTS_CAPS")))
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
	registerVal6:setDataSource("AttachmentCosmeticVariantList")
	local function __FUNC_21BA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_21BA_)
	local function __FUNC_237B_(arg1, arg2)
		local registerVal3 = IsCACACVItemNew(arg1, arg0)
		if registerVal3 then
			SetCACACVAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			CallCustomElementFunction_Self(registerVal1, "updateFocus", arg1, arg0)
		else
			CallCustomElementFunction_Self(registerVal1, "updateFocus", arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_237B_)
	local function __FUNC_24AA_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_24AA_)
	local function __FUNC_263B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_263B_)
	local function __FUNC_270A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			SetAttachmentVariantClassItem(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_27E9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_270A_, __FUNC_27E9_, true)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_2940_(arg1, arg2, arg3)
		return IsCurrentACVEquipped(registerVal1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_2940_
	local registerVal11 = {}
	registerVal11.stateName = "New"
	local function __FUNC_29A2_(arg1, arg2, arg3)
		return IsCACACVItemNew(arg2, arg0)
	end

	registerVal11.condition = __FUNC_29A2_
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_29F9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_29F9_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_2A45_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_2A45_)
	local function __FUNC_2B68_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isChallengeClassified", true, __FUNC_2B68_)
	registerVal1:addElement(registerVal6)
	registerVal1.selectionList = registerVal6
	local registerVal7 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "AttachmentSelect"
	local function __FUNC_2C93_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_2C93_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.Pregame.state")
	local function __FUNC_2CDC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2CDC_)
	registerVal1:addElement(registerVal7)
	registerVal1.PregameTimerOverlay = registerVal7
	local registerVal8 = CoD.BlackMarketItemDescription.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 448.000000, 832.000000)
	registerVal8:setTopBottom(true, false, 175.000000, 197.000000)
	registerVal8.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MPUI_ATTACHMENT_VARIANT"))
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "NotVisible"
	local function __FUNC_2E09_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2E09_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2E86_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "isBMClassified", true, __FUNC_2E86_)
	registerVal1:addElement(registerVal8)
	registerVal1.itemDescription = registerVal8
	registerVal9 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 447.000000, 828.000000)
	registerVal9:setTopBottom(true, false, 137.000000, 171.000000)
	registerVal9.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Equipped"
	local function __FUNC_2FA8_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_2FA8_
	local registerVal14 = {}
	registerVal14.stateName = "Available"
	local function __FUNC_2FF4_(arg0, arg1, arg2)
		return true
	end

	registerVal14.condition = __FUNC_2FF4_
	local registerVal15 = {}
	registerVal15.stateName = "NotEquippable"
	local function __FUNC_3028_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_3028_
	local registerVal16 = {}
	registerVal16.stateName = "NotAvailable"
	local function __FUNC_305C_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_305C_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal1:addElement(registerVal9)
	registerVal1.itemName = registerVal9
	registerVal10 = CoD.CryptokeyTypeNameLeft.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 447.000000, 558.000000)
	registerVal10:setTopBottom(false, true, -100.000000, -78.000000)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_3090_(arg1, arg2, arg3)
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

	registerVal14.condition = __FUNC_3090_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_318E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBMClassified", true, __FUNC_318E_)
	local function __FUNC_32B0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "rarity", true, __FUNC_32B0_)
	registerVal1:addElement(registerVal10)
	registerVal1.CryptokeyTypeNameLeft0 = registerVal10
	registerVal11 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 446.000000, 1216.000000)
	registerVal11:setTopBottom(true, false, 208.000000, 564.600000)
	registerVal1:addElement(registerVal11)
	registerVal1.XCamMouseControl = registerVal11
	local function __FUNC_33CC_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_33CC_)
	local function __FUNC_341E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal6, "name", true, __FUNC_341E_)
	local function __FUNC_352B_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal6, "rarityType", false, __FUNC_352B_)
	local function __FUNC_357A_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_357A_)
	local function __FUNC_3612_(arg0, arg1, arg2, arg3)
		WC_VariantSelectionCancel(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		return true
	end

	local function __FUNC_36E1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3612_, __FUNC_36E1_, false)
	local function __FUNC_37DD_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_3849_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "PLATFORM_EMBLEM_ROTATE_LAYER_BUTTON")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, nil, __FUNC_37DD_, __FUNC_3849_, false)
	local function __FUNC_3998_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_3A05_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3998_, __FUNC_3A05_, false)
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
	local function __FUNC_3B57_(arg1)
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
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "AttachmentCosmeticVariantSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3B57_)
	if __FUNC_B1A_ then
		__FUNC_B1A_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.AttachmentCosmeticVariantSelect = __FUNC_B61_
