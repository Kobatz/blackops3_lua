-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Layout_CreateVariantName = registerVal1
function CoD.systemOverlay_Layout_CreateVariantName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Layout_CreateVariantName)
	registerVal2.id = "systemOverlay_Layout_CreateVariantName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 40.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	local function __FUNC_119A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "title", true, __FUNC_119A_)
	registerVal2:addElement(registerVal3)
	registerVal2.title = registerVal3
	local registerVal4 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 423.000000, 1218.000000)
	registerVal4:setTopBottom(true, false, 40.000000, 60.000000)
	local function __FUNC_1252_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "description", true, __FUNC_1252_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = CoD.GunsmithInputButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 423.000000, 808.000000)
	registerVal5:setTopBottom(true, false, 97.000000, 144.000000)
	local function __FUNC_1324_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1324_)
	local function __FUNC_1376_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Text:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "inputText", true, __FUNC_1376_)
	local function __FUNC_1422_(arg0, arg2)
		Gunsmith_HandleKeyboardComplete(registerVal2, arg0, arg1, arg2)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("ui_keyboard_input", __FUNC_1422_)
	local function __FUNC_14CE_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_14CE_)
	local function __FUNC_165F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_165F_)
	local function __FUNC_172E_(arg0, arg1, arg2, arg3)
		ProcessKeyboardCompleteAction(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_179F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_172E_, __FUNC_179F_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.input = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 66.000000, 392.000000)
	registerVal6:setTopBottom(true, false, 6.500000, 219.500000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_gunsmith_nameyourvariant"))
	registerVal2:addElement(registerVal6)
	registerVal2.image = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 66.000000, 392.000000)
	registerVal7:setTopBottom(true, false, 231.860000, 256.860000)
	registerVal7:setText(Engine.Localize("MENU_GUNSMITH_WELCOME_TITLE"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.welcomeTitle = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 66.000000, 392.000000)
	registerVal8:setTopBottom(true, false, 256.860000, 281.860000)
	registerVal8:setText(Engine.Localize("MENU_GUNSMITH_WELCOME_SUBTITLE"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.welcomeSubtitle = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Left_ND.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 423.000000, 703.000000)
	registerVal9:setTopBottom(true, false, 160.000000, 192.000000)
	registerVal9.btnDisplayText:setText(Engine.Localize("MENU_CONFIRM_CAPS"))
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("MENU_CONFIRM_CAPS"))
	local function __FUNC_189A_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_189A_)
	local function __FUNC_1A2B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1A2B_)
	local function __FUNC_1AFA_(arg0, arg1, arg2, arg3)
		ProcessConfirmVariantNameAction(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_1B6D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1AFA_, __FUNC_1B6D_, false)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_1C6A_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_ValidVariantNameEntered(arg2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1C6A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "Gunsmith.validVariantNameEntered")
	local function __FUNC_1CD6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Gunsmith.validVariantNameEntered"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1CD6_)
	registerVal2:addElement(registerVal9)
	registerVal2.confirmButton = registerVal9
	local registerVal10 = {}
	registerVal10.down = registerVal9
	registerVal5.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal5
	registerVal9.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "input"
	registerVal9.id = "confirmButton"
	local function __FUNC_1E0A_(arg0, arg1)
		local registerVal2 = arg0.input:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1E0A_)
	local function __FUNC_1F09_(arg0)
		arg0.text:close()
		arg0.input:close()
		arg0.confirmButton:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F09_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

