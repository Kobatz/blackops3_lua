-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.client_demo_files_button")
function LUI.createMenu.ClientDemoFiles(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ClientDemoFiles")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ClientDemoFiles.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, 13.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 131.280000, 631.280000)
	registerVal3:setTopBottom(true, false, 141.000000, 632.000000)
	registerVal3:setDataSource("ClientDemoFiles")
	registerVal3:setWidgetType(CoD.client_demo_files_button)
	registerVal3:setVerticalCount(8.000000)
	registerVal3:setSpacing(13.000000)
	local function __FUNC_A3D_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_A3D_)
	local function __FUNC_BCF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_BCF_)
	local function __FUNC_C9E_(arg0, arg1, arg2, arg3)
		RunClientDemo(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_CFB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_C9E_, __FUNC_CFB_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.List0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 131.280000, 409.280000)
	registerVal4:setTopBottom(true, false, 68.500000, 116.500000)
	registerVal4:setText(Engine.Localize("MENU_CLIENT_DEMO"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.Label0 = registerVal4
	local function __FUNC_DF6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_E48_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_DF6_, __FUNC_E48_, false)
	registerVal3.id = "List0"
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.List0:processEvent(registerVal7)
	end
	local function __FUNC_F45_(arg1)
		arg1.List0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ClientDemoFiles.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F45_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

