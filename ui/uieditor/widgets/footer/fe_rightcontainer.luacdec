-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_FooterButtonPromptWithContainer")
require("ui.uieditor.widgets.Footer.FooterButtonDoublePrompts")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_2B4_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_310_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_2B4_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_RightContainer = registerVal3
local function __FUNC_383_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_RightContainer)
	registerVal2.id = "fe_RightContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 870.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.fe_FooterButtonPromptWithContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -91.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -49.000000, 12.000000)
	registerVal3.label:setText(Engine.Localize(""))
	local function __FUNC_1632_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_1632_)
	local function __FUNC_170B_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE), false, __FUNC_170B_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disabled"
	local function __FUNC_175A_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_175A_
	local registerVal8 = {}
	registerVal8.stateName = "Enabled"
	local function __FUNC_17CC_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if registerVal3 then
			registerVal3 = IsLAN()
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_17CC_
	local registerVal9 = {}
	registerVal9.stateName = "DisabledPC"
	local function __FUNC_183E_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_183E_
	local registerVal10 = {}
	registerVal10.stateName = "EnabledPC"
	local function __FUNC_18BC_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = IsLAN()
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_18BC_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	if registerVal3.m_eventHandlers.input_source_changed then
		local function __FUNC_193A_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal3.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal3:registerEventHandler("input_source_changed", __FUNC_193A_)
	else
		registerVal3:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "LastInput")
	local function __FUNC_19C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_19C3_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1ADF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1ADF_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_1C0C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1C0C_)
	registerVal2:addElement(registerVal3)
	registerVal2.feFooterButtonPromptWithContainer0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 776.000000, 779.000000)
	registerVal4:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = CoD.fe_FooterButtonPromptWithContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -176.000000, -94.000000)
	registerVal5:setTopBottom(false, true, -49.000000, 12.000000)
	registerVal5.label:setText(Engine.Localize(""))
	local function __FUNC_1D34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "start_button_image", __FUNC_1D34_)
	local function __FUNC_1E0F_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_START), false, __FUNC_1E0F_)
	registerVal2:addElement(registerVal5)
	registerVal2.feFooterButtonPromptWithContainer = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 691.000000, 694.000000)
	registerVal6:setTopBottom(true, false, -39.000000, 89.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image000 = registerVal6
	registerVal7 = CoD.fe_FooterButtonPromptWithContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -279.000000, -179.000000)
	registerVal7:setTopBottom(false, true, -49.000000, 12.000000)
	registerVal7.label:setText(Engine.Localize("Select"))
	local function __FUNC_1E5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "left_stick_button_image", __FUNC_1E5E_)
	local function __FUNC_1F37_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LSTICK_PRESSED), false, __FUNC_1F37_)
	registerVal2:addElement(registerVal7)
	registerVal2.ServerBrowserPrompt = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 575.000000, 591.000000)
	registerVal8:setTopBottom(true, false, -36.000000, 92.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Image0 = registerVal8
	registerVal9 = CoD.FooterButtonDoublePrompts.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -477.000000, -295.000000)
	registerVal9:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal9.label:setText(Engine.Localize(""))
	local function __FUNC_1F86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1F86_)
	local function __FUNC_205F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_205F_)
	local function __FUNC_2138_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LB), false, __FUNC_2138_)
	registerVal2:addElement(registerVal9)
	registerVal2.FooterButtonDoublePrompts = registerVal9
	registerVal10 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -637.500000, -477.000000)
	registerVal10:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal10.label:setText(Engine.Localize(""))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_218A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "back_button_image", __FUNC_218A_)
	local function __FUNC_2263_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_BACK), false, __FUNC_2263_)
	registerVal2:addElement(registerVal10)
	registerVal2.Padbtn = registerVal10
	local registerVal11 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -728.500000, -637.500000)
	registerVal11:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal11.label:setText(Engine.Localize(""))
	registerVal11.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_22B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "right_stick_button_image", __FUNC_22B2_)
	local function __FUNC_238B_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_RSTICK_PRESSED), false, __FUNC_238B_)
	registerVal2:addElement(registerVal11)
	registerVal2.RJoystickbtn = registerVal11
	local function __FUNC_23DA_(arg0)
		arg0.feFooterButtonPromptWithContainer0:close()
		arg0.feFooterButtonPromptWithContainer:close()
		arg0.ServerBrowserPrompt:close()
		arg0.FooterButtonDoublePrompts:close()
		arg0.Padbtn:close()
		arg0.RJoystickbtn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_23DA_)
	if __FUNC_310_ then
		__FUNC_310_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_RightContainer.new = __FUNC_383_
