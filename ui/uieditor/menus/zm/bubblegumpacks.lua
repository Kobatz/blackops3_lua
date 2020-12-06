-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.ZM.BubblegumPackOptions")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumPackListItem")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumPackListItem")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumPackPreview")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_352_(arg0, arg1)
	if arg0.BubbleGumPackPreview then
		arg0.BubbleGumPackPreview:makeNotFocusable()
	end
end

local function __FUNC_3DC_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BubblegumPacks")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BubblegumPacks.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 738.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal4:setTopBottom(true, false, 78.000000, 738.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.480000)
	registerVal1:addElement(registerVal4)
	registerVal1.Black = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 87.000000, 367.000000)
	registerVal5:setTopBottom(true, false, 285.000000, 623.000000)
	registerVal5:setDataSource("BubbleGumPacks")
	registerVal5:setWidgetType(CoD.BubbleGumPackListItem)
	registerVal5:setVerticalCount(10.000000)
	local function __FUNC_126D_(arg1, arg2)
		SetBubblegumPackIndex(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_126D_)
	local function __FUNC_12D3_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_12D3_)
	local function __FUNC_1463_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1463_)
	local function __FUNC_1532_(arg0, arg1, arg2, arg3)
		SetBubblegumPackIndex(registerVal1, arg0, arg2)
		EquipBubblegumPack(registerVal1, arg0, arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_164E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1532_, __FUNC_164E_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.BubbleGumPacks = registerVal5
	local registerVal6 = CoD.BubbleGumPackPreview.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 77.000000, 645.000000)
	registerVal6:setTopBottom(true, false, 136.000000, 589.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.BubbleGumPackPreview = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_CHOOSE_BUBBLEGUM_PACK_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHOOSE_BUBBLEGUM_PACK_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal7)
	registerVal1.GenericMenuFrame0 = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics = registerVal8
	local function __FUNC_174A_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal5, nil, false, __FUNC_174A_)
	local registerVal9 = {}
	registerVal9.up = registerVal6
	registerVal9.right = registerVal6
	registerVal5.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal5
	registerVal9.down = registerVal5
	registerVal6.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_179A_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "GenericMenuFrame0"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_179A_)
	local function __FUNC_1967_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_1A1F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1967_, __FUNC_1A1F_, false)
	local function __FUNC_1B17_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "BubblegumPackOptions", true, arg2)
		PlaySoundSetSound(registerVal1, "menu_sub")
		return true
	end

	local function __FUNC_1BD3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_BGB_PACK_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1B17_, __FUNC_1BD3_, false)
	registerVal5.id = "BubbleGumPacks"
	registerVal6.id = "BubbleGumPackPreview"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
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
		registerVal1.BubbleGumPacks:processEvent(registerVal11)
	end
	local function __FUNC_1CD2_(arg1)
		arg1.LeftPanel:close()
		arg1.BubbleGumPacks:close()
		arg1.BubbleGumPackPreview:close()
		arg1.GenericMenuFrame0:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BubblegumPacks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1CD2_)
	if __FUNC_352_ then
		__FUNC_352_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BubblegumPacks = __FUNC_3DC_
