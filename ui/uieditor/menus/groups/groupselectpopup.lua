-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Groups.GroupSelectListItemRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
function LUI.createMenu.GroupSelectPopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupSelectPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupSelectPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -20.000000, 0.000000)
	registerVal4:setRGB(0.170000, 0.160000, 0.160000)
	registerVal4:setAlpha(0.950000)
	registerVal1:addElement(registerVal4)
	registerVal1.darkbg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 134.000000, 577.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.topBar = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(true, false, 134.000000, 537.170000)
	registerVal6:setRGB(0.630000, 0.610000, 0.610000)
	registerVal6:setAlpha(0.750000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal1:addElement(registerVal6)
	registerVal1.Smokebkg = registerVal6
	local registerVal7 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.scorestreakVignetteContainer = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 133.000000, -182.830000)
	registerVal8:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal8)
	registerVal1.BlackBG = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 122.000000, 478.000000)
	registerVal9:setTopBottom(true, false, 227.000000, 490.000000)
	registerVal9:setWidgetType(CoD.GroupSelectListItemRow)
	registerVal9:setVerticalCount(5.000000)
	registerVal9:setSpacing(7.000000)
	registerVal9:setVerticalCounter(CoD.verticalCounter)
	registerVal9:setDataSource("GroupsInviteButtonList")
	local function __FUNC_16B8_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "inviteSent"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "inviteSent", true, __FUNC_16B8_)
	local function __FUNC_1877_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1877_)
	local function __FUNC_1A07_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1A07_)
	local function __FUNC_1AD6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "inviteSent")
		if not registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1B85_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "inviteSent")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1AD6_, __FUNC_1B85_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.ButtonList = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 122.000000, 322.000000)
	registerVal10:setTopBottom(true, false, 151.500000, 185.500000)
	registerVal10:setText(Engine.Localize("GROUPS_CHOOSE_GROUP_CAPS"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal10)
	registerVal1.Title = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 122.000000, 1014.000000)
	registerVal11:setTopBottom(true, false, 188.500000, 208.500000)
	registerVal11:setText(Engine.Localize("GROUPS_CHOOSE_GROUP_MESSAGE"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.TextBox0 = registerVal11
	local registerVal12 = CoD.systemOverlay_alertStatusBar.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, false, 129.000000, 133.000000)
	local function __FUNC_1CD8_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal1, nil, false, __FUNC_1CD8_)
	registerVal1:addElement(registerVal12)
	registerVal1.alertStatusBar = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 533.830000, 540.500000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListLineTopBottom0 = registerVal13
	local registerVal14 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 103.000000, 535.000000)
	registerVal14:setTopBottom(false, true, -178.830000, -146.830000)
	registerVal1:addElement(registerVal14)
	registerVal1.buttons = registerVal14
	local registerVal15 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 0.000000, 52.000000)
	registerVal15:setTopBottom(true, false, 56.000000, 494.000000)
	registerVal15:setScale(0.700000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEMenuLeftGraphics = registerVal15
	local registerVal16 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 1228.000000, 1280.000000)
	registerVal16:setTopBottom(true, false, 55.000000, 493.000000)
	registerVal16:setYRot(180.000000)
	registerVal16:setScale(0.700000)
	registerVal1:addElement(registerVal16)
	registerVal1.FEMenuLeftGraphics0 = registerVal16
	local function __FUNC_1D2A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1D7C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1D2A_, __FUNC_1D7C_, false)
	registerVal9.id = "ButtonList"
	registerVal14:setModel(registerVal1.buttonModel, arg0)
	local registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	local registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal19)
	end
	local function __FUNC_1E79_(arg1)
		arg1.scorestreakVignetteContainer:close()
		arg1.ButtonList:close()
		arg1.alertStatusBar:close()
		arg1.buttons:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FEMenuLeftGraphics0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupSelectPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1E79_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

