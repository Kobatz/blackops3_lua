-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.CustomGamesDelete(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomGamesDelete")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesDelete.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
	registerVal3.ButtonList:setDataSource("CustomGamesOptionsDeleteButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_DELETE"))
	registerVal3.Title:setText(Engine.Localize("MENU_CUSTOMGAMES_DELETE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CUSTOMGAMES_DELETE_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_DELETE_DONE"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_CUSTOMGAMES_DELETE_ERROR"))
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 457.960000, 737.960000)
	registerVal4:setTopBottom(true, false, 487.000000, 518.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.btnDisplayText:setText(Engine.Localize("MENU_SAVE"))
	registerVal4.btnDisplayTextStroke:setText(Engine.Localize("MENU_SAVE"))
	local function __FUNC_F75_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_F75_)
	local function __FUNC_1107_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1107_)
	local function __FUNC_11D6_(arg0, arg1, arg2, arg3)
		SaveCustomGameYes(registerVal1, arg0, arg2, "", arg1)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_1268_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_11D6_, __FUNC_1268_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_1366_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1366_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.BtnPublish = registerVal4
	local registerVal5 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal5:setTopBottom(true, false, 531.000000, 563.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.leftButtonBar = registerVal5
	local registerVal6 = {}
	registerVal6.left = registerVal4
	registerVal6.down = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.up = registerVal3
	registerVal6.right = registerVal3
	registerVal4.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_13B1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1404_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_13B1_, __FUNC_1404_, false)
	registerVal3.id = "FullscreenPopupTemplate"
	registerVal4.id = "BtnPublish"
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.FullscreenPopupTemplate:processEvent(registerVal8)
	end
	local function __FUNC_1502_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.BtnPublish:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomGamesDelete.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1502_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

