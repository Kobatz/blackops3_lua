-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.buttonprompt")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
require("ui.uieditor.widgets.GenericPopups.List1ButtonLarge_Dialog")
local function __FUNC_290_(arg0, arg1)
	local function __FUNC_339_(arg0, arg1)
		arg0.PopupContent:setText(arg1)
	end

	arg0.setContent = __FUNC_339_
	local function __FUNC_3A3_(arg0, arg1)
		arg0.PopupSubContent:setText(arg1)
	end

	arg0.setSubContent = __FUNC_3A3_
	local function __FUNC_40E_(arg0, arg1)
		arg0.OkButton.buttoninternal0.Text0:setText(arg1)
	end

	arg0.setButton1Text = __FUNC_40E_
	local function __FUNC_4B3_(arg0, arg1)
		local function __FUNC_547_(arg2, arg3)
			_G[arg1](arg0, arg2, arg3.controller)
		end

		arg0.OkButton:registerEventHandler("button_action", __FUNC_547_)
	end

	arg0.setButton1Action = __FUNC_4B3_
end

local function __FUNC_5BC_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LargePopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LargePopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 416.000000, 864.000000)
	registerVal3:setTopBottom(true, false, 232.000000, 488.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.BackGround = registerVal3
	local registerVal4 = CoD.buttonprompt.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 416.000000, 630.000000)
	registerVal4:setTopBottom(true, false, 493.000000, 524.000000)
	registerVal4.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_14C9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_14C9_)
	local function __FUNC_15A3_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_15A3_)
	local function __FUNC_1734_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1734_)
	local function __FUNC_1806_(arg0, arg1, arg2, arg3)
		GroupNotifyPopupButtonAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1872_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1806_, __FUNC_1872_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.BackButtonPrompt = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 429.560000, 840.560000)
	registerVal5:setTopBottom(true, false, 247.050000, 283.050000)
	registerVal5:setRGB(0.870000, 0.880000, 0.780000)
	registerVal5:setText(Engine.Localize("<Popup Content>"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.PopupContent = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 429.560000, 847.560000)
	registerVal6:setTopBottom(true, false, 300.500000, 320.500000)
	registerVal6:setText(Engine.Localize("<Popup SubContent>"))
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.PopupSubContent = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 531.060000, 739.060000)
	registerVal7:setTopBottom(true, false, 268.050000, 288.050000)
	registerVal7:setText(Engine.Localize("GROUPS_PROCESSING_REQUEST"))
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.ProcessingText = registerVal7
	local registerVal8 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 566.000000, 694.000000)
	registerVal8:setTopBottom(true, false, 325.500000, 453.500000)
	registerVal1:addElement(registerVal8)
	registerVal1.Spinner = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Dialog.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 429.560000, 851.000000)
	registerVal9:setTopBottom(true, false, 443.670000, 475.670000)
	registerVal9.buttoninternal0.Text0:setText(Engine.Localize("MENU_OK"))
	local function __FUNC_1964_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1964_)
	local function __FUNC_1AF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1AF7_)
	local function __FUNC_1BC6_(arg0, arg1, arg2, arg3)
		RunClientDemo(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1C23_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1BC6_, __FUNC_1C23_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.OkButton = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1D1E_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal1.BackButtonPrompt:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.PopupContent:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.PopupSubContent:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.Spinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.OkButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1D1E_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1FE7_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal1.BackGround:setAlpha(0.420000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackButtonPrompt:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.PopupContent:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.PopupSubContent:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ProcessingText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.Spinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.OkButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1FE7_
	registerVal10.Processing = registerVal11
	registerVal1.clipsPerState = registerVal10
	local function __FUNC_230C_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2360_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_230C_, __FUNC_2360_, false)
	registerVal9.id = "OkButton"
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.OkButton:processEvent(registerVal12)
	end
	local function __FUNC_2454_(arg1)
		arg1.BackGround:close()
		arg1.BackButtonPrompt:close()
		arg1.Spinner:close()
		arg1.OkButton:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LargePopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2454_)
	if __FUNC_290_ then
		__FUNC_290_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LargePopup = __FUNC_5BC_
