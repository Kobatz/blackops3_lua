-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.KeyPrompt")
local function __FUNC_21B_(arg0)
	local registerVal1 = IsElementInState(arg0, "DefaultState")
	if registerVal1 then
		OverrideWidgetWidth(arg0, 0.000000)
	else
		local registerVal8 = Engine.LastInput_Gamepad()
		if registerVal8 then
			registerVal8, registerVal9, registerVal10, registerVal11 = arg0.buttonPromptImage:getLocalLeftRight()
			registerVal8, registerVal9 = arg0.buttonPromptImage:getLocalSize()
			arg0.buttonPromptImage:setLeftRight(registerVal8, registerVal9, 14.000000, (14.000000 + registerVal8))
		else
			ScaleWidgetToLabelCentered(arg0.keyPrompt, arg0.keyPrompt.keybind, 8.000000)
			registerVal8, registerVal9, registerVal10, registerVal11 = arg0.keyPrompt:getLocalLeftRight()
			registerVal8, registerVal9 = arg0.keyPrompt:getLocalSize()
			arg0.keyPrompt:setLeftRight(registerVal8, registerVal9, 14.000000, (14.000000 + registerVal8))
		end
		registerVal8, registerVal9, registerVal10, registerVal11 = arg0.label:getLocalLeftRight()
		local registerVal12 = arg0.label:getTextWidth()
		arg0.label:setLeftRight(registerVal8, registerVal9, ((14.000000 + registerVal8) + 4.000000), (((14.000000 + registerVal8) + 4.000000) + registerVal12))
		arg0:setWidth((((14.000000 + registerVal8) + 4.000000) + registerVal12))
	end
	registerVal1 = arg0:getParent()
	if registerVal1 then
		registerVal1:setLayoutCached(false)
	end
end

local function __FUNC_5AD_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_797_(arg1, arg2)
		__FUNC_21B_(arg0)
	end

	arg0:registerEventHandler("resize_prompt", __FUNC_797_)
	local function __FUNC_7CC_(arg0, arg2)
		CoD.PCUtil.SimulateButtonPressUsingElement(arg1, arg0)
		return true
	end

	arg0:registerEventHandler("button_action", __FUNC_7CC_)
	local function __FUNC_86E_(arg1, arg2)
		__FUNC_21B_(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_86E_)
	local function __FUNC_8A4_(arg1)
		if arg1 then
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 == Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE then
				arg0.keyPrompt.keybind:setText(Engine.Localize("KEY_ESC_SHORT"))
			else
				if registerVal1 == Enum.LUIButton.LUI_KEY_XBA_PSCROSS then
					arg0.keyPrompt.keybind:setText(Engine.Localize("KEY_ENTER"))
				else
					if registerVal1 == Enum.LUIButton.LUI_KEY_XBX_PSSQUARE then
						if arg2 then
							local registerVal2 = arg0.keyPrompt.keybind:getText()
							local registerVal3 = Engine.Localize("")
							if registerVal2 and registerVal2 == "" or registerVal2 == registerVal3 then
								if arg2.menuName ~= "PurchaseSupplyDropConfirmation" and arg2.menuName ~= "BurnDuplicatesConfirmation" and arg2.menuName ~= "PurchaseVials" and arg2.menuName == "PurchaseTrifectaConfirmation" or arg2.menuName == "PurchaseDistillsConfirmation" then
									arg0.keyPrompt.keybind:setText("P")
								else
									if arg2.menuName == "PregameCACWarning" or arg2.menuName == "PregameStreakWarning" then
										arg0.keyPrompt.keybind:setText("S")
									else
										arg0.keyPrompt.keybind:setText("T")
										if arg2.menuName == "GroupHeadquarters" and registerVal1 == Enum.LUIButton.LUI_KEY_START and arg2 then
											if arg2.menuName == "Community" or arg2.menuName == "Theater_SelectFilm" then
												registerVal2 = arg0.keyPrompt.keybind:getText()
												registerVal3 = Engine.Localize("")
												if registerVal2 and registerVal2 == "" or registerVal2 == registerVal3 then
													arg0.keyPrompt.keybind:setText("O")
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
			__FUNC_21B_(arg0)
		end
	end

	arg0.keyPrompt:linkToElementModel(arg0, "Button", true, __FUNC_8A4_)
	local function __FUNC_F1C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal2 = string.len(registerVal1)
			if 1.000000 < registerVal2 then
			end
			arg0.keyPrompt.keybind:setText(Engine.Localize(("KEY_" .. registerVal1)))
			__FUNC_21B_(arg0)
		end
	end

	arg0.keyPrompt:linkToElementModel(arg0, "KeyShortcut", true, __FUNC_F1C_)
end

local function __FUNC_107A_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_5AD_(arg0, arg1, arg2)
	end
	local function __FUNC_1151_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.label:setText(Engine.Localize(registerVal1))
		if registerVal1 and CoD.isPC then
			__FUNC_21B_(arg0)
		end
	end

	arg0.label:linkToElementModel(arg0, "Label", true, __FUNC_1151_)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.FooterButtonPrompt = registerVal4
local function __FUNC_1264_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FooterButtonPrompt)
	registerVal2.id = "FooterButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 14.000000, 38.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 42.000000, 88.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal4:setText(Engine.Localize("Select"))
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_1D9D_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_1D9D_)
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal6 = IsPC()
	if registerVal6 then
		registerVal6 = CoD.KeyPrompt.new(arg0, arg1)
	else
		registerVal6 = LUI.UIElement.createFake()
	end
	registerVal6:setLeftRight(true, false, 14.000000, 38.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.keybind:setText(Engine.Localize(""))
	registerVal6 = IsPC()
	if registerVal6 then
		registerVal2:addElement(registerVal6)
	end
	registerVal2.keyPrompt = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1DFD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_1DFD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_20FA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.500000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_20FA_
	registerVal6.Disabled = registerVal7
	registerVal7 = {}
	local function __FUNC_23F6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_23F6_
	local function __FUNC_26F2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Hide = __FUNC_26F2_
	local function __FUNC_290B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_290B_
	registerVal6.Enabled = registerVal7
	registerVal7 = {}
	local function __FUNC_2BB9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.keyPrompt:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_2BB9_
	registerVal6.DisabledPC = registerVal7
	registerVal7 = {}
	local function __FUNC_2EB6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.keyPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_2EB6_
	local function __FUNC_31B2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Hide = __FUNC_31B2_
	local function __FUNC_33CB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Over = __FUNC_33CB_
	registerVal6.EnabledPC = registerVal7
	registerVal7 = {}
	local function __FUNC_3679_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_3679_
	registerVal6.InitialState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_36DA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_36DA_
	local registerVal10 = {}
	registerVal10.stateName = "Enabled"
	local function __FUNC_37D9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_37D9_
	local registerVal11 = {}
	registerVal11.stateName = "DisabledPC"
	local function __FUNC_38D8_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_38D8_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_3A2A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "", Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1, arg0)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_3A2A_
	local registerVal13 = {}
	registerVal13.stateName = "InitialState"
	local function __FUNC_3B79_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_3B79_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_3BC5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_3BC5_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_3CD1_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_3CD1_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_3D5B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_3D5B_)
	local function __FUNC_3E77_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			OverrideWidgetWidth(registerVal2, "0")
			DisableMouseButton(registerVal2, arg1)
		else
			RestoreWidgetWidth(registerVal2)
			EnableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_3E77_)
	local function __FUNC_3FA3_(arg0)
		arg0.keyPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3FA3_)
	if __FUNC_107A_ then
		__FUNC_107A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FooterButtonPrompt.new = __FUNC_1264_
