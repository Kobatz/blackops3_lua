-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt")
local function __FUNC_1B8_(arg0)
	arg0.disableDarkenElement = true
end

local function __FUNC_208_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LobbyJoinPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LobbyJoinPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 515.000000, 765.000000)
	registerVal3:setTopBottom(true, false, 312.000000, 360.000000)
	registerVal3:setText(Engine.Localize("Error"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal3)
	registerVal1.lblTitle = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 515.000000, 765.000000)
	registerVal4:setTopBottom(true, false, 360.000000, 385.000000)
	registerVal4:setText(Engine.Localize("Unable to join session in progress"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.txtMessage = registerVal4
	local registerVal5 = CoD.buttonprompt.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 780.450000, 855.450000)
	registerVal5:setTopBottom(true, false, 473.400000, 504.400000)
	registerVal5.label:setText(Engine.Localize("OK"))
	registerVal1:addElement(registerVal5)
	registerVal1.btnpromptOk = registerVal5
	local function __FUNC_A47_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_A98_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_OK_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_A47_, __FUNC_A98_, false)
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local function __FUNC_B97_(arg1)
		arg1.btnpromptOk:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LobbyJoinPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B97_)
	if __FUNC_1B8_ then
		__FUNC_1B8_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LobbyJoinPopup = __FUNC_208_
