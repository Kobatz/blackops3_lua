-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.SelectMenuWidgetNew")
require("ui.uieditor.widgets.CAC.GridItemButtonNew")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
local function __FUNC_350_(arg0, arg1)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
	arg0:setModel(CoD.perController[arg1].classModel)
	local function __FUNC_457_(arg0)
		local registerVal1 = arg0:getModel()
		local registerVal4 = Engine.GetModelValue(arg0:getModel(arg1, (CoD.perController[arg1].weaponCategory .. ".itemIndex")))
		local registerVal7 = {}
		registerVal7.itemIndex = registerVal4
		arg0.selectionList:findItem(registerVal7, nil, true, nil)
	end

	arg0.restoreState = __FUNC_457_
end

local function __FUNC_5FA_(arg0)
	local registerVal1 = arg0:getOwner()
	arg0:setModel(CoD.perController[registerVal1].classModel)
	local registerVal4 = {}
	registerVal4.name = "update_from_data_source"
	registerVal4.controller = registerVal1
	arg0:processEvent(registerVal4)
end

local function __FUNC_725_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PrimaryOpticSelect")
	if __FUNC_350_ then
		__FUNC_350_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_PrimaryAttachment"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PrimaryOpticSelect.buttonPrompts")
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
	local registerVal5 = CoD.SelectMenuWidgetNew.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GetPrimaryAttachmentMenuTitle(arg0, "MPUI_OPTICS_CAPS")))
	registerVal5.selectionInfoWidget.itemName.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "GridLayout"
	local function __FUNC_17FF_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_17FF_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.selectMenuWidget = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 77.000000, 415.000000)
	registerVal6:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal6:setDataSource("WeaponAttachments")
	registerVal6:setWidgetType(CoD.GridItemButtonNew)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(7.000000)
	local function __FUNC_1848_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1848_)
	local function __FUNC_1A06_(arg1, arg2)
		local registerVal3 = IsCACAttachmentNew(registerVal1, arg1, arg0)
		if registerVal3 then
			SetCACAttachmentAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			FocusClassItem(registerVal1, arg1, arg0)
		else
			FocusClassItem(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_1A06_)
	local function __FUNC_1B17_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1B17_)
	local function __FUNC_1CA7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1CA7_)
	local function __FUNC_1D76_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		if not registerVal4 then
			SetClassAttachment(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1E0D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D76_, __FUNC_1E0D_, true)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "New"
	local function __FUNC_1F47_(arg1, arg2, arg3)
		return IsCACAttachmentNew(arg1, arg2, arg0)
	end

	registerVal10.condition = __FUNC_1F47_
	local registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_1FA4_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1FA4_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1FF1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1FF1_)
	registerVal1:addElement(registerVal6)
	registerVal1.selectionList = registerVal6
	local registerVal7 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_210F_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_210F_)
	registerVal1:addElement(registerVal7)
	registerVal1.feFooterContainer = registerVal7
	registerVal8 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "AttachmentSelect"
	local function __FUNC_21CE_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_21CE_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.Pregame.state")
	local function __FUNC_2218_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2218_)
	registerVal1:addElement(registerVal8)
	registerVal1.PregameTimerOverlay = registerVal8
	local function __FUNC_2345_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:linkToElementModel(registerVal6, nil, false, __FUNC_2345_)
	local function __FUNC_2396_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.selectionInfoWidget.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "name", true, __FUNC_2396_)
	local function __FUNC_24D8_(arg1)
		registerVal5.selectionInfoWidget.WeaponAttributesInternal:setModel(arg1, arg0)
	end

	registerVal5:linkToElementModel(registerVal6, "weaponAttributes", false, __FUNC_24D8_)
	local function __FUNC_2581_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "selectMenuWidget", arg0, "Update3")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2581_)
	local function __FUNC_2656_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		GetCustomClassModel(arg2)
		return true
	end

	local function __FUNC_2717_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2656_, __FUNC_2717_, false)
	local function __FUNC_2811_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_287D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_2811_, __FUNC_287D_, false)
	registerVal6.id = "selectionList"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.selectionList:processEvent(registerVal11)
	end
	local function __FUNC_29CF_(arg1)
		arg1.LeftPanel:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.selectMenuWidget:close()
		arg1.selectionList:close()
		arg1.feFooterContainer:close()
		arg1.PregameTimerOverlay:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PrimaryOpticSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_29CF_)
	if __FUNC_5FA_ then
		__FUNC_5FA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PrimaryOpticSelect = __FUNC_725_
