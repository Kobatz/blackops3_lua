-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ConfirmationDialog")
function LUI.createMenu.ConfirmRestartCheckpoint(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ConfirmRestartCheckpoint")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ConfirmRestartCheckpoint.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.ConfirmationDialog.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 313.000000, 967.000000)
	registerVal3:setTopBottom(true, false, 179.350000, 540.650000)
	registerVal3.Title:setText(Engine.Localize("MENU_CONTINUE_RESTART_CHECKPOINT"))
	registerVal3.TextBox0:setText(Engine.Localize("MENU_CHECKPOINT_RESTART_TEXT"))
	registerVal3.Resume.buttoninternal0.Text0:setText(Engine.Localize("MENU_RESUMEGAME_CAPS"))
	registerVal3.Restart.buttoninternal0.Text0:setText(Engine.Localize("MENU_RESTART_CHECKPOINT_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.ConfirmationDialog = registerVal3
	local function __FUNC_969_(arg0, arg1, arg2, arg3)
		SetResponseNo(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_9E3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_RESUMEGAME_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESC", __FUNC_969_, __FUNC_9E3_, false)
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
	local function __FUNC_AE8_(arg1)
		arg1.ConfirmationDialog:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ConfirmRestartCheckpoint.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_AE8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

