-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.button")
function PostLoadFunc(arg0)
end

function LUI.createMenu.Pacifier(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Pacifier")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pacifier.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 431.000000, 838.000000)
	registerVal3:setTopBottom(true, false, 251.500000, 416.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.imgBg = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 472.000000, 570.000000)
	registerVal4:setTopBottom(true, false, 312.000000, 337.000000)
	registerVal4:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.lblPleaseWait = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 472.000000, 776.000000)
	registerVal5:setTopBottom(true, false, 264.000000, 312.000000)
	registerVal5:setText(Engine.Localize("Creating Game Lobby."))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.lblMessage = registerVal5
	local registerVal6 = CoD.button.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, true, -504.000000, -442.000000)
	registerVal6:setTopBottom(false, true, -304.000000, -274.000000)
	registerVal6.buttoninternal0.Text0:setText(Engine.Localize("MENU_CANCEL"))
	local function __FUNC_B35_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_B35_)
	local function __FUNC_CC7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_CC7_)
	local function __FUNC_D96_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_DE8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_D96_, __FUNC_DE8_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.btnCancel = registerVal6
	local function __FUNC_EE6_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("pacifier_set_message", __FUNC_EE6_)
	registerVal6.id = "btnCancel"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.btnCancel:processEvent(registerVal9)
	end
	local function __FUNC_F51_(arg1)
		arg1.btnCancel:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Pacifier.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F51_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

