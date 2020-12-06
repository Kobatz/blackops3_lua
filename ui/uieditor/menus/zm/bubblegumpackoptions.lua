-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.menus.ZM.CopyBubblegumPack")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
local function __FUNC_3BF_(arg0, arg1)
	local registerVal2 = arg0:getOwner()
	local registerVal4 = arg0:getModel(registerVal2, "bgbPackIndex")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if arg1.input ~= nil then
		SetBubbleGumPackNameFromPackIndex(registerVal2, registerVal5, arg1.input)
	end
	GoBack(arg0, registerVal2)
end

local function __FUNC_4FC_(arg0, arg1)
	arg0.renameButton.navigation.up = arg0.copyButton
	arg0.copyButton.navigation.down = arg0.renameButton
	arg0:setModel(CoD.perController[arg1].bubbleGumPackModel)
	arg0:registerEventHandler("ui_keyboard_input", __FUNC_3BF_)
end

local function __FUNC_69B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BubblegumPackOptions")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BubblegumPackOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version5_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal4:setTopBottom(true, false, 78.000000, 738.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal5:setTopBottom(true, false, 78.000000, 738.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.480000)
	registerVal1:addElement(registerVal5)
	registerVal1.Black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -68.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.bottomBorder = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.660000)
	registerVal1:addElement(registerVal7)
	registerVal1.topBorder = registerVal7
	local registerVal8 = CoD.cac_ItemTitleGlow.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 63.000000, 257.000000)
	registerVal8:setTopBottom(true, false, 110.500000, 152.500000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleGlow1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 53.000000, -908.340000)
	registerVal9:setTopBottom(false, false, -207.500000, -249.500000)
	registerVal9:setAlpha(0.140000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Glow = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 70.000000, 209.000000)
	registerVal10:setTopBottom(true, false, 120.000000, 145.000000)
	registerVal10:setRGB(0.030000, 0.010000, 0.010000)
	registerVal10:setTTF("fonts/escom.ttf")
	local function __FUNC_1C8F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal1, "bubbleGumPackName", true, __FUNC_1C8F_)
	registerVal1:addElement(registerVal10)
	registerVal1.BubbleGumPackNameLabel = registerVal10
	local registerVal11 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, -74.270000, 503.730000)
	registerVal11:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal11.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BGB_PACK_OPTIONS_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.cac3dTitleIntermediary0 = registerVal11
	local registerVal12 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 2.000000, 69.870000)
	registerVal12:setTopBottom(true, false, 48.000000, 718.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.ElemsSideList = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal13:setTopBottom(true, false, 88.000000, 96.000000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListLine = registerVal13
	local registerVal14 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 63.000000, 343.000000)
	registerVal14:setTopBottom(true, false, 190.000000, 222.000000)
	registerVal14.btnDisplayText:setText(Engine.Localize("MENU_BGB_PACK_RENAME_CAPS"))
	registerVal14.btnDisplayTextStroke:setText(Engine.Localize("MENU_BGB_PACK_RENAME_CAPS"))
	local function __FUNC_1D20_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_1D20_)
	local function __FUNC_1EB3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_1EB3_)
	local function __FUNC_1F82_(arg0, arg1, arg2, arg3)
		BubblegumPackOptionsRename(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1FEC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1F82_, __FUNC_1FEC_, false)
	registerVal1:addElement(registerVal14)
	registerVal1.renameButton = registerVal14
	local registerVal15 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 63.000000, 343.000000)
	registerVal15:setTopBottom(true, false, 220.000000, 252.000000)
	registerVal15.btnDisplayText:setText(Engine.Localize("MENU_COPY_CAPS"))
	registerVal15.btnDisplayTextStroke:setText(Engine.Localize("MENU_COPY_CAPS"))
	local function __FUNC_20EA_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_20EA_)
	local function __FUNC_227B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_227B_)
	local function __FUNC_234A_(arg0, arg1, arg2, arg3)
		OpenPopup(registerVal1, "CopyBubblegumPack", arg2, "", "")
		return true
	end

	local function __FUNC_23D0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_234A_, __FUNC_23D0_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.copyButton = registerVal15
	local registerVal16 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_24CE_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_24CE_)
	registerVal1:addElement(registerVal16)
	registerVal1.feFooterContainer = registerVal16
	local registerVal17 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "ClassOptions"
	local function __FUNC_2561_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal21.condition = __FUNC_2561_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.Pregame.state")
	local function __FUNC_25AC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_25AC_)
	registerVal1:addElement(registerVal17)
	registerVal1.PregameTimerOverlay = registerVal17
	local registerVal18 = {}
	registerVal18.left = registerVal15
	registerVal18.down = registerVal15
	registerVal14.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal14
	registerVal18.up = registerVal14
	registerVal15.navigation = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_26D9_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2755_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_26D9_, __FUNC_2755_, false)
	registerVal14.id = "renameButton"
	registerVal15.id = "copyButton"
	registerVal16:setModel(registerVal1.buttonModel, arg0)
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.renameButton:processEvent(registerVal20)
	end
	local function __FUNC_2851_(arg1)
		arg1.LeftPanel:close()
		arg1.TitleGlow1:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.ElemsSideList:close()
		arg1.renameButton:close()
		arg1.copyButton:close()
		arg1.feFooterContainer:close()
		arg1.PregameTimerOverlay:close()
		arg1.BubbleGumPackNameLabel:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BubblegumPackOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2851_)
	if __FUNC_4FC_ then
		__FUNC_4FC_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BubblegumPackOptions = __FUNC_69B_
