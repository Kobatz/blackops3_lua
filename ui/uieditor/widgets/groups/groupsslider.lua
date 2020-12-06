-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Item_Arrow")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_278_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2D4_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_278_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GroupsSlider = registerVal3
local function __FUNC_347_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSlider)
	registerVal2.id = "GroupsSlider"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -15.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setZRot(-90.000000)
	local function __FUNC_C91_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_C91_)
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = CoD.StartMenu_Options_Slider_Item_Arrow.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, 0.000000, 15.000000)
	registerVal4:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(-90.000000)
	local function __FUNC_D81_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("button_action", __FUNC_D81_)
	registerVal2:addElement(registerVal4)
	registerVal2.right = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -84.000000, 84.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_E72_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "text", true, __FUNC_E72_)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -3.500000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_F2A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_F2A_
	local function __FUNC_1197_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.TextBox:setRGB(1.000000, 0.590000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_1197_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1363_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal9.DefaultClip = __FUNC_1363_
	registerVal8.ArrowsHidden = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_14AF_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "DefaultState")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "left", arg1, "DefaultState")
			SetElementStateByElementName(registerVal2, "right", arg1, "DefaultState")
		else
			registerVal2 = IsElementInState(arg0, "ArrowsHidden")
			if registerVal2 then
				SetElementStateByElementName(registerVal2, "left", arg1, "Hidden")
				SetElementStateByElementName(registerVal2, "right", arg1, "Hidden")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_14AF_)
	local function __FUNC_1605_(arg0)
		arg0.left:close()
		arg0.right:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.TextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1605_)
	if __FUNC_2D4_ then
		__FUNC_2D4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupsSlider.new = __FUNC_347_
