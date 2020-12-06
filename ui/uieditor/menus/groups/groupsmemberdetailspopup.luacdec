-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.Social.Social_InfoPane")
function LUI.createMenu.GroupsMemberDetailsPopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupsMemberDetailsPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupsMemberDetailsPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 64.000000, 344.000000)
	registerVal4:setTopBottom(true, false, 180.000000, 484.000000)
	registerVal4:setDataSource("GroupsMemberDetailsButtons")
	registerVal4:setWidgetType(CoD.List1ButtonLarge_PH)
	registerVal4:setVerticalCount(9.000000)
	local function __FUNC_D75_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_D75_)
	local function __FUNC_F07_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_F07_)
	local function __FUNC_FD6_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1037_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_FD6_, __FUNC_1037_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.Buttons = registerVal4
	local registerVal5 = CoD.Social_InfoPane.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -811.000000, -64.000000)
	registerVal5:setTopBottom(true, false, 180.000000, 480.000000)
	registerVal5.friendship:setAlpha(0.000000)
	local function __FUNC_1132_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_1132_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "PlayerDetails"
	local function __FUNC_1182_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_1182_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.playerInfo = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -188.840000, -182.840000)
	registerVal1:addElement(registerVal6)
	registerVal1.Image1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -592.840000, -586.840000)
	registerVal1:addElement(registerVal7)
	registerVal1.Image2 = registerVal7
	registerVal8 = {}
	registerVal8.right = registerVal5
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal4
	registerVal5.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_11CC_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1220_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_11CC_, __FUNC_1220_, false)
	registerVal4.id = "Buttons"
	registerVal5.id = "playerInfo"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.Buttons:processEvent(registerVal10)
	end
	local function __FUNC_131D_(arg1)
		arg1.Buttons:close()
		arg1.playerInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupsMemberDetailsPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_131D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

