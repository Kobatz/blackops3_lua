-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.menus.ZM.BubblegumBuffSelect")
require("ui.uieditor.widgets.BubbleGumBuffs.EquippedBubbleGumBuffButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
function LUI.createMenu.BubblegumPackEdit(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BubblegumPackEdit")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BubblegumPackEdit.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal3:setTopBottom(true, false, 84.000000, 738.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 77.000000, 645.000000)
	registerVal5:setTopBottom(true, false, 152.000000, 605.000000)
	registerVal5:setWidgetType(CoD.EquippedBubbleGumBuffButton)
	registerVal5:setHorizontalCount(5.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(7.000000)
	registerVal5:setDataSource("BubbleGumBuffs")
	local function __FUNC_1A98_(arg1, arg2)
		local registerVal3 = IsCACItemNew(arg1, arg0)
		if registerVal3 then
			SetCACItemAsOld(arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
			ShowBubblegumBuffModel(registerVal1, arg1, arg0)
		else
			ShowBubblegumBuffModel(registerVal1, arg1, arg0)
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1A98_)
	local function __FUNC_1BA3_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1BA3_)
	local function __FUNC_1D33_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1D33_)
	local function __FUNC_1E02_(arg0, arg1, arg2, arg3)
		SelectBubblegumBuff(registerVal1, arg0, arg2)
		NavigateToMenu(registerVal1, "BubblegumBuffSelect", true, arg2)
		return true
	end

	local function __FUNC_1EB2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E02_, __FUNC_1EB2_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_1FAE_(arg1, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1FAE_
	local registerVal10 = {}
	registerVal10.stateName = "New"
	local function __FUNC_2030_(arg1, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg0)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2030_
	local registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_20AB_(arg1, arg2, arg3)
		return IsBGBItemLocked(arg1, arg2, arg0)
	end

	registerVal11.condition = __FUNC_20AB_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_2105_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_2105_)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	local function __FUNC_2223_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7.titleLabel:setText(Engine.Localize(GetBubbleGumPackNameFromPackIndex(arg0, registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "EquippedBubbleGumPack", "bgbPackIndex", __FUNC_2223_)
	local function __FUNC_2331_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(GetBubbleGumPackNameFromPackIndex(arg0, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "EquippedBubbleGumPack", "bgbPackIndex", __FUNC_2331_)
	registerVal1:addElement(registerVal7)
	registerVal1.GenericMenuFrame0 = registerVal7
	registerVal8 = CoD.scorestreaks_TitleBox.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 700.000000, 951.000000)
	registerVal8:setTopBottom(true, false, 152.000000, 187.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.scorestreaksTitleBox = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 60.000000, 380.310000)
	registerVal9:setTopBottom(false, false, -163.450000, -144.450000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setLineSpacing(0.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.highlightedDescription = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 49.900000, 52.900000)
	registerVal10:setTopBottom(true, false, 23.000000, 677.000000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.LineSide = registerVal10
	registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 80.000000, 331.000000)
	registerVal11:setTopBottom(true, false, 103.400000, 128.400000)
	registerVal11:setText(Engine.Localize("MENU_EDIT_BUBBLEGUM_PACK"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.TextBox0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 51.000000, 53.000000)
	registerVal12:setTopBottom(true, false, 76.000000, 675.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.LineSide0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal13:setTopBottom(true, false, 607.000000, 611.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.LineDot = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal14:setTopBottom(true, false, 147.000000, 151.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.LineDot0 = registerVal14
	local registerVal15 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -470.500000, -64.000000)
	registerVal15:setTopBottom(true, true, 256.000000, -183.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.XCamMouseControl = registerVal15
	local function __FUNC_24AA_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal5, nil, false, __FUNC_24AA_)
	local function __FUNC_24FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ScorestreaksLabel:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_24FA_)
	local function __FUNC_25FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(GetItemDescriptionFromIndex(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_25FF_)
	local function __FUNC_26E3_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetFocusToElement(registerVal1, "selectionList", arg0)
		SetPerControllerTableProperty(arg0, "weaponCategory", "bubblegum")
		UpdateState(registerVal1, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_26E3_)
	local function __FUNC_28C5_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_28C5_)
	local function __FUNC_2959_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		SaveLoadout(registerVal1, arg2)
		return true
	end

	local function __FUNC_2A55_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2959_, __FUNC_2A55_, false)
	local function __FUNC_2B51_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2BBD_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_2B51_, __FUNC_2BBD_, false)
	registerVal5.id = "selectionList"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	local registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	local registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.selectionList:processEvent(registerVal18)
	end
	local function __FUNC_2D0F_(arg1)
		arg1.LeftPanel:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.selectionList:close()
		arg1.GenericMenuFrame0:close()
		arg1.scorestreaksTitleBox:close()
		arg1.XCamMouseControl:close()
		arg1.highlightedDescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BubblegumPackEdit.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2D0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

