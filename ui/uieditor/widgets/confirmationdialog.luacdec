-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.button")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ConfirmationDialog = registerVal1
function CoD.ConfirmationDialog.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ConfirmationDialog)
	registerVal2.id = "ConfirmationDialog"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 654.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 361.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 39.000000)
	registerVal3:setText(Engine.Localize("MENU_CONTINUE_RESTART_CHECKPOINT"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 654.000000)
	registerVal4:setTopBottom(true, false, 43.950000, 79.950000)
	registerVal4:setText(Engine.Localize("MENU_CHECKPOINT_RESTART_TEXT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = CoD.button.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal5:setTopBottom(true, false, 331.300000, 361.300000)
	registerVal5.buttoninternal0.Text0:setText(Engine.Localize("MENU_RESUMEGAME_CAPS"))
	local function __FUNC_BFC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_BFC_)
	local function __FUNC_D8F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_D8F_)
	local function __FUNC_E5E_(arg0, arg1, arg2, arg3)
		SetResponseNo(registerVal2, arg2)
		return true
	end

	local function __FUNC_EB7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E5E_, __FUNC_EB7_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.Resume = registerVal5
	local registerVal6 = CoD.button.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal6:setTopBottom(true, false, 301.300000, 331.300000)
	registerVal6.buttoninternal0.Text0:setText(Engine.Localize("MENU_RESTART_CHECKPOINT_CAPS"))
	local function __FUNC_FB2_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_FB2_)
	local function __FUNC_1143_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1143_)
	local function __FUNC_1212_(arg0, arg1, arg2, arg3)
		SetResponseYes(registerVal2, arg2)
		return true
	end

	local function __FUNC_126C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1212_, __FUNC_126C_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.Restart = registerVal6
	local registerVal7 = {}
	registerVal7.up = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal6.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "Resume"
	registerVal6.id = "Restart"
	local function __FUNC_136A_(arg0, arg1)
		local registerVal2 = arg0.Resume:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_136A_)
	local function __FUNC_146A_(arg0)
		arg0.Resume:close()
		arg0.Restart:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_146A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

