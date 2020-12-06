-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Item_Arrow")
local function __FUNC_239_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0.m_preventFromBeingCurrentMouseFocus = true
		arg0:setForceMouseEventDispatch(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.demo_options_slider_control_item = registerVal2
local function __FUNC_2FA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.demo_options_slider_control_item)
	registerVal2.id = "demo_options_slider_control_item"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_AA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "text", true, __FUNC_AA7_)
	registerVal2:addElement(registerVal3)
	registerVal2.TextBox = registerVal3
	local registerVal4 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -15.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal4:setZRot(-90.000000)
	local function __FUNC_B5E_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("button_action", __FUNC_B5E_)
	registerVal2:addElement(registerVal4)
	registerVal2.left = registerVal4
	local registerVal5 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, 0.000000, 15.000000)
	registerVal5:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal5:setYRot(180.000000)
	registerVal5:setZRot(-90.000000)
	local function __FUNC_C4D_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_C4D_)
	registerVal2:addElement(registerVal5)
	registerVal2.right = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D3E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.right:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D3E_
	local function __FUNC_F14_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.TextBox:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.Focus = __FUNC_F14_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_10A3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10A3_
	registerVal6.ArrowsHidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_11EF_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "arrow", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "arrow", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "left", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "right", arg1, "DefaultState")
		else
			registerVal2 = IsElementInState(arg0, "ArrowsHidden")
			if registerVal2 then
				SetElementStateByElementName(registerVal2, "arrow", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "arrow0", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "left", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "right", arg1, "Hidden")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_11EF_)
	local function __FUNC_13C4_(arg0)
		arg0.left:close()
		arg0.right:close()
		arg0.TextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13C4_)
	if __FUNC_239_ then
		__FUNC_239_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.demo_options_slider_control_item.new = __FUNC_2FA_
