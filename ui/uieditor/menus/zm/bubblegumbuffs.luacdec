-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumPack")
require("ui.uieditor.menus.ZM.BubblegumPacks")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
require("ui.uieditor.menus.ZM.BubblegumPackEdit")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMember")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumFootnote")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumBuffTitle")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_46D_(arg0, arg1)
	if CoD.useMouse then
		arg0.LobbyList.m_mouseDisabled = true
	end
end

local function __FUNC_50D_(arg0, arg1)
	arg0.disableBlur = true
	if arg0.LobbyList then
		arg0.LobbyList:makeNotFocusable()
	end
	__FUNC_46D_(arg0, arg1)
end

local function __FUNC_5B8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BubblegumBuffs")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BubblegumBuffs.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.scorestreakVignetteContainer = registerVal3
	local registerVal4 = CoD.BubbleGumPack.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 432.000000)
	registerVal4:setTopBottom(true, false, 144.000000, 293.000000)
	local function __FUNC_1788_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1788_)
	local function __FUNC_191B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_191B_)
	local function __FUNC_19EA_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "BubblegumPacks", true, arg2)
		return true
	end

	local function __FUNC_1A64_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_19EA_, __FUNC_1A64_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.EquippedBubbleGumPack = registerVal4
	local registerVal5 = CoD.FE_List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 64.000000, 344.000000)
	registerVal5:setTopBottom(true, false, 304.000000, 336.000000)
	registerVal5.btnDisplayText:setText(Engine.Localize("MENU_EDIT_BUBBLEGUM_PACK"))
	registerVal5.btnDisplayTextStroke:setText(Engine.Localize("MENU_EDIT_BUBBLEGUM_PACK"))
	local function __FUNC_1B62_(arg1, arg2)
		SetElementProperty(arg1, "isBreadcrumbNew", IsCACAnyBubblegumNew(arg0))
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1B62_)
	local function __FUNC_1C3C_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1C3C_)
	local function __FUNC_1DCF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1DCF_)
	local function __FUNC_1E9E_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "BubblegumPackEdit", true, arg2)
		return true
	end

	local function __FUNC_1F1B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E9E_, __FUNC_1F1B_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.FEList1ButtonLargePH0 = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -554.000000, -64.000000)
	registerVal6:setTopBottom(true, false, 142.000000, 256.000000)
	registerVal6:setDataSource("LobbyList")
	registerVal6:setWidgetType(CoD.LobbyMember)
	registerVal6:setVerticalCount(4.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.LobbyList = registerVal6
	local registerVal7 = CoD.BubbleGumFootnote.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -576.000000, -64.000000)
	registerVal7:setTopBottom(false, true, -175.000000, -79.000000)
	registerVal7.FootnoteTextBox:setText(Engine.Localize("MENU_EQUIPPED_BGB_FOOTNOTE"))
	registerVal1:addElement(registerVal7)
	registerVal1.BubbleGumFootnote = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BUBBLEGUM_BUFFS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal8)
	registerVal1.GenericMenuFrame0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 50.900000, 53.900000)
	registerVal9:setTopBottom(true, false, 84.000000, 676.000000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.LineSide = registerVal9
	local registerVal10 = CoD.BubbleGumBuffTitle.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 64.000000, 318.000000)
	registerVal10:setTopBottom(true, false, 105.000000, 130.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.BubbleGumBuffTitle = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = {}
	registerVal12.right = registerVal6
	registerVal12.down = registerVal5
	registerVal4.navigation = registerVal12
	registerVal12 = {}
	registerVal12.up = registerVal4
	registerVal5.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal4
	registerVal6.navigation = registerVal12
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2016_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "GenericMenuFrame0"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		SetHeadingKickerText("MENU_PLAY_LOCAL")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2016_)
	local function __FUNC_222B_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerText("MPUI_PUBLIC_MATCH_LOBBY")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_222B_)
	local function __FUNC_22FF_(arg0, arg1, arg2, arg3)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		SaveLoadout(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
		ForceLobbyButtonUpdate(arg2)
		return true
	end

	local function __FUNC_2461_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_22FF_, __FUNC_2461_, false)
	registerVal4.id = "EquippedBubbleGumPack"
	registerVal5.id = "FEList1ButtonLargePH0"
	registerVal6.id = "LobbyList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal14 = {}
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
		registerVal1.EquippedBubbleGumPack:processEvent(registerVal14)
	end
	local function __FUNC_255B_(arg1)
		arg1.scorestreakVignetteContainer:close()
		arg1.EquippedBubbleGumPack:close()
		arg1.FEList1ButtonLargePH0:close()
		arg1.LobbyList:close()
		arg1.BubbleGumFootnote:close()
		arg1.GenericMenuFrame0:close()
		arg1.BubbleGumBuffTitle:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BubblegumBuffs.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_255B_)
	if __FUNC_50D_ then
		__FUNC_50D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BubblegumBuffs = __FUNC_5B8_
