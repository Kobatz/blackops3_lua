-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ConfirmationDialog")
function LUI.createMenu.ConfirmQuitGame(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ConfirmQuitGame")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ConfirmQuitGame.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.ConfirmationDialog.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 313.000000, 967.000000)
	registerVal3:setTopBottom(true, false, 179.500000, 540.500000)
	registerVal3.Title:setText(Engine.Localize("MPUI_END_GAME1"))
	registerVal3.TextBox0:setText(Engine.Localize(""))
	registerVal3.Resume.buttoninternal0.Text0:setText(Engine.Localize("MENU_NO"))
	registerVal3.Restart.buttoninternal0.Text0:setText(Engine.Localize("MENU_YES"))
	registerVal1:addElement(registerVal3)
	registerVal1.ConfirmationDialog = registerVal3
	local function __FUNC_8FC_(arg0, arg1, arg2, arg3)
		SetResponseNo(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_977_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_RESUMEGAME_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESC", __FUNC_8FC_, __FUNC_977_, false)
	registerVal3.id = "ConfirmationDialog"
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.ConfirmationDialog:processEvent(registerVal6)
	end
	local function __FUNC_A7C_(arg1)
		arg1.ConfirmationDialog:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ConfirmQuitGame.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A7C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

