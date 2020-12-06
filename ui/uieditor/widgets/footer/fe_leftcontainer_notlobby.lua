-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_21F_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_278_(arg0, arg1, arg2)
	if DataSources and DataSources.LiveEventViewer then
		local registerVal3 = DataSources.LiveEventViewer.getModel()
	end
	local registerVal4 = Engine.GetModel(registerVal3, "currentQuality")
	if registerVal3 and registerVal4 then
		local function __FUNC_403_(arg1)
			local registerVal1 = arg0.Xbtn:getModel()
			if registerVal1 then
				local registerVal2 = Engine.GetModel(registerVal1, "Label")
			end
			if registerVal2 then
				Engine.ForceNotifyModelSubscriptions(registerVal2)
			end
		end

		arg0:subscribeToModel(registerVal4, __FUNC_403_)
	end
	if CoD.isPC then
		__FUNC_21F_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.fe_LeftContainer_NOTLobby = registerVal3
local function __FUNC_504_(arg0, arg1)
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
	registerVal2:setClass(CoD.fe_LeftContainer_NOTLobby)
	registerVal2.id = "fe_LeftContainer_NOTLobby"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 528.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal3:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal3.label:setText(Engine.Localize(""))
	registerVal3.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_1571_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_1571_)
	local function __FUNC_164B_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBA_PSCROSS), false, __FUNC_164B_)
	registerVal2:addElement(registerVal3)
	registerVal2.Abtn = registerVal3
	local registerVal4 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 88.000000, 168.000000)
	registerVal4:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal4.label:setText(Engine.Localize(""))
	registerVal4.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_169A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_169A_)
	local function __FUNC_1773_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE), false, __FUNC_1773_)
	registerVal2:addElement(registerVal4)
	registerVal2.Bbtn = registerVal4
	local registerVal5 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 168.000000, 256.000000)
	registerVal5:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal5.label:setText(Engine.Localize(""))
	registerVal5.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_17C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_17C2_)
	local function __FUNC_189B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBX_PSSQUARE), false, __FUNC_189B_)
	registerVal2:addElement(registerVal5)
	registerVal2.Xbtn = registerVal5
	local registerVal6 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 256.000000, 344.000000)
	registerVal6:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal6.label:setText(Engine.Localize(""))
	registerVal6.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_18EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "start_button_image", __FUNC_18EA_)
	local function __FUNC_19C3_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_START), false, __FUNC_19C3_)
	registerVal2:addElement(registerVal6)
	registerVal2.OptionsBtn = registerVal6
	local registerVal7 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 344.000000, 432.000000)
	registerVal7:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal7.label:setText(Engine.Localize(""))
	registerVal7.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_1A12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_1A12_)
	local function __FUNC_1AEB_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE), false, __FUNC_1AEB_)
	registerVal2:addElement(registerVal7)
	registerVal2.Ybtn = registerVal7
	local registerVal8 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 432.000000, 520.000000)
	registerVal8:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal8.label:setText(Engine.Localize(""))
	registerVal8.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_1B3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "left_trigger_button_image", __FUNC_1B3A_)
	local function __FUNC_1C13_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LTRIG), false, __FUNC_1C13_)
	registerVal2:addElement(registerVal8)
	registerVal2.LTbtn = registerVal8
	local registerVal9 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 520.000000, 608.000000)
	registerVal9:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal9.label:setText(Engine.Localize(""))
	registerVal9.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_1C62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "right_trigger_button_image", __FUNC_1C62_)
	local function __FUNC_1D3B_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_RTRIG), false, __FUNC_1D3B_)
	registerVal2:addElement(registerVal9)
	registerVal2.RTbtn = registerVal9
	local registerVal10 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 608.000000, 696.000000)
	registerVal10:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal10.label:setText(Engine.Localize(""))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize(""))
	local function __FUNC_1D8A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "move_left_stick_button_image", __FUNC_1D8A_)
	local function __FUNC_1E63_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, ("" .. Enum.LUIButton.LUI_KEY_LSTICK_PRESSED), false, __FUNC_1E63_)
	registerVal2:addElement(registerVal10)
	registerVal2.LeftStick = registerVal10
	local function __FUNC_1EB2_(arg0)
		arg0.Abtn:close()
		arg0.Bbtn:close()
		arg0.Xbtn:close()
		arg0.OptionsBtn:close()
		arg0.Ybtn:close()
		arg0.LTbtn:close()
		arg0.RTbtn:close()
		arg0.LeftStick:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1EB2_)
	if __FUNC_278_ then
		__FUNC_278_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.fe_LeftContainer_NOTLobby.new = __FUNC_504_
