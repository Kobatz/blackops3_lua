-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local function __FUNC_28B_(arg0, arg1)
	arg0:setHandleMouse(true)
	local function __FUNC_371_(arg0, arg2)
		local registerVal4 = {}
		registerVal4.name = "disable_mouse_button"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
		LUI.UIElement.mouseEnter(arg0, arg2)
	end

	arg0:registerEventHandler("mouseenter", __FUNC_371_)
	local function __FUNC_46F_(arg0, arg2)
		local registerVal4 = {}
		registerVal4.name = "enable_mouse_button"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
		LUI.UIElement.mouseLeave(arg0, arg2)
	end

	arg0:registerEventHandler("mouseleave", __FUNC_46F_)
	local function __FUNC_56A_(arg0, arg2)
		if arg2.isMouse then
			local registerVal4 = {}
			registerVal4.name = "gunsmith_remove_item"
			registerVal4.controller = arg1
			arg0:dispatchEventToParent(registerVal4)
		end
	end

	arg0:registerEventHandler("button_action", __FUNC_56A_)
end

local function __FUNC_630_(arg0, arg1)
	if CoD.isPC then
		__FUNC_28B_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GunsmithRemoveButton = registerVal3
local function __FUNC_69F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithRemoveButton)
	registerVal2.id = "GunsmithRemoveButton"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 15.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 15.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.520000, 0.520000, 0.520000)
	registerVal3:setAlpha(0.950000)
	registerVal2:addElement(registerVal3)
	registerVal2.Whitebox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fullBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.750000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cacselection_removebutton"))
	registerVal2:addElement(registerVal5)
	registerVal2.RemoveIcon = registerVal5
	local registerVal6 = CoD.ItemHintText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -50.000000, 14.000000)
	registerVal6:setTopBottom(false, true, 0.000000, 30.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.textCenterAlign:setText(Engine.Localize("MENU_REMOVE"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_10B2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_10B2_
	local registerVal11 = {}
	registerVal11.stateName = "LeftAlign"
	local function __FUNC_10FD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_10FD_
	local registerVal12 = {}
	registerVal12.stateName = "RightAlign"
	local function __FUNC_1149_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1149_
	local registerVal13 = {}
	registerVal13.stateName = "CenterAlign"
	local function __FUNC_1195_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1195_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.itemHintText = registerVal6
	local registerVal7 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal7:setTopBottom(true, false, -15.000000, -5.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZRot(180.000000)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_11E0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_11E0_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_122D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -56.000000, 15.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 0.000000, 30.000000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_122D_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1519_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Whitebox:setAlpha(0.950000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		registerVal2.fullBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.RemoveIcon:setAlpha(0.750000)
		registerVal2.RemoveIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -56.000000, 15.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 0.000000, 30.000000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1519_
	local function __FUNC_1892_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.800000)
		registerVal2.fullBacking:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.RemoveIcon:setAlpha(1.000000)
		registerVal2.RemoveIcon:setScale(1.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.textCenterAlign:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -56.000000, 16.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 2.000000, 32.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText.textCenterAlign:setText(Engine.Localize("MENU_REMOVE"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_1892_
	local function __FUNC_1C73_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1EF8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		__FUNC_1EF8_(registerVal4, {})
		local function __FUNC_20AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.780000, 0.780000, 0.780000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.RemoveIcon:setAlpha(1.000000)
		registerVal2.RemoveIcon:setScale(1.000000)
		__FUNC_20AD_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -56.000000, 14.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 0.000000, 30.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.GainOver = __FUNC_1C73_
	local function __FUNC_22AD_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2555_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(1.000000)
		registerVal2.fullBacking:setScale(1.200000)
		__FUNC_2555_(registerVal4, {})
		local function __FUNC_272C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.200000, 0.200000, 0.200000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.RemoveIcon:setAlpha(1.000000)
		registerVal2.RemoveIcon:setScale(1.200000)
		__FUNC_272C_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -56.000000, 16.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 2.000000, 32.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.LoseOver = __FUNC_22AD_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_2928_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2928_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2999_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2999_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	local function __FUNC_2A23_(arg0)
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A23_)
	if __FUNC_630_ then
		__FUNC_630_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GunsmithRemoveButton.new = __FUNC_69F_
