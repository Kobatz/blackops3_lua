-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Item_Arrow")
local function __FUNC_23E_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0.m_preventFromBeingCurrentMouseFocus = true
		arg0:setForceMouseEventDispatch(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Slider_Control_Item = registerVal2
local function __FUNC_2FE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Slider_Control_Item)
	registerVal2.id = "StartMenu_Options_Slider_Control_Item"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 168.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -15.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setZRot(-90.000000)
	local function __FUNC_B9E_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_B9E_)
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 0.000000, 15.000000)
	registerVal4:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(-90.000000)
	local function __FUNC_C8D_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("button_action", __FUNC_C8D_)
	registerVal2:addElement(registerVal4)
	registerVal2.right = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_D7E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "text", true, __FUNC_D7E_)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_E36_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E36_
	local function __FUNC_FF0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_FF0_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_117B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_117B_
	local function __FUNC_1339_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_1339_
	registerVal6.ArrowsHidden = registerVal7
	registerVal7 = {}
	local function __FUNC_14FE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_14FE_
	local function __FUNC_16C2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_16C2_
	registerVal6.LeftArrowHidden = registerVal7
	registerVal7 = {}
	local function __FUNC_188B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_188B_
	local function __FUNC_1A4E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_1A4E_
	registerVal6.RightArrowHidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1C17_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "left", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "right", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "left", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "right", arg1, "DefaultState")
		else
			registerVal2 = IsElementInState(arg0, "ArrowsHidden")
			if registerVal2 then
				SetElementStateByElementName(registerVal2, "left", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "right", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "left", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "right", arg1, "Hidden")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_1C17_)
	local function __FUNC_1DCD_(arg0)
		arg0.left:close()
		arg0.right:close()
		arg0.TextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DCD_)
	if __FUNC_23E_ then
		__FUNC_23E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_Slider_Control_Item.new = __FUNC_2FE_
