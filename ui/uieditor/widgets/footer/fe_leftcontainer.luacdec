-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_216_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_270_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_216_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_LeftContainer = registerVal3
local function __FUNC_2E3_(arg0, arg1)
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
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_LeftContainer)
	registerVal2.id = "fe_LeftContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 431.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3.label:setText(Engine.Localize(""))
	registerVal3.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_D58_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_D58_)
	local function __FUNC_E33_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBA_PSCROSS), false, __FUNC_E33_)
	registerVal2:addElement(registerVal3)
	registerVal2.Abtn = registerVal3
	local registerVal4 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 88.000000, 168.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4.label:setText(Engine.Localize(""))
	registerVal4.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_E82_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_E82_)
	local function __FUNC_F5B_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE), false, __FUNC_F5B_)
	registerVal2:addElement(registerVal4)
	registerVal2.Bbtn = registerVal4
	local registerVal5 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 168.000000, 256.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5.label:setText(Engine.Localize(""))
	registerVal5.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_FAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_FAA_)
	local function __FUNC_1083_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBX_PSSQUARE), false, __FUNC_1083_)
	registerVal2:addElement(registerVal5)
	registerVal2.Xbtn = registerVal5
	local registerVal6 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 256.000000, 344.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal6.label:setText(Engine.Localize(""))
	registerVal6.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_10D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_10D2_)
	local function __FUNC_11AB_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LTRIG), false, __FUNC_11AB_)
	registerVal2:addElement(registerVal6)
	registerVal2.LTbtn = registerVal6
	local function __FUNC_11FA_(arg0)
		arg0.Abtn:close()
		arg0.Bbtn:close()
		arg0.Xbtn:close()
		arg0.LTbtn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11FA_)
	if __FUNC_270_ then
		__FUNC_270_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_LeftContainer.new = __FUNC_2E3_
