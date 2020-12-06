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
		local registerVal2 = arg0:playClip("GainOver")
		if registerVal2 then
			arg0.nextClip = "Over"
		else
			arg0:playClip("Over")
		end
	end

	arg0:registerEventHandler("mouseenter", __FUNC_371_)
	local function __FUNC_47F_(arg0, arg2)
		local registerVal4 = {}
		registerVal4.name = "enable_mouse_button"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
		local registerVal2 = arg0:isInFocus()
		if not registerVal2 then
			registerVal2 = arg0:playClip("LoseOver")
			if registerVal2 then
				arg0.nextClip = "DefaultClip"
			else
				arg0:playClip("DefaultClip")
			end
		end
	end

	arg0:registerEventHandler("mouseleave", __FUNC_47F_)
	local function __FUNC_5B4_(arg0, arg2)
		if arg2.isMouse then
			local registerVal4 = {}
			registerVal4.name = "personalize_class_item"
			registerVal4.controller = arg1
			arg0:dispatchEventToParent(registerVal4)
		end
	end

	arg0:registerEventHandler("button_action", __FUNC_5B4_)
end

local function __FUNC_67E_(arg0, arg1)
	if CoD.isPC then
		__FUNC_28B_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.VariantOptionsButton = registerVal3
local function __FUNC_6EB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VariantOptionsButton)
	registerVal2.id = "VariantOptionsButton"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.520000, 0.520000, 0.520000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Whitebox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fullBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cacselection_personalizebutton"))
	registerVal2:addElement(registerVal5)
	registerVal2.imageIcon = registerVal5
	local registerVal6 = CoD.ItemHintText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -90.000000, 20.000000)
	registerVal6:setTopBottom(false, true, 0.000000, 30.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.textCenterAlign:setText(Engine.Localize("MENU_GUNSMITH_VARIANT_OPTIONS"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_10F8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_10F8_
	local registerVal11 = {}
	registerVal11.stateName = "LeftAlign"
	local function __FUNC_1145_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1145_
	local registerVal12 = {}
	registerVal12.stateName = "RightAlign"
	local function __FUNC_1191_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1191_
	local registerVal13 = {}
	registerVal13.stateName = "CenterAlign"
	local function __FUNC_11DD_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_11DD_
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
	local function __FUNC_1228_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1228_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1275_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imageIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1275_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_14D5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		registerVal2.fullBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imageIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.imageIcon:setAlpha(0.750000)
		registerVal2.imageIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_14D5_
	local function __FUNC_17BD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.800000)
		registerVal2.fullBacking:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imageIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.imageIcon:setAlpha(1.000000)
		registerVal2.imageIcon:setScale(1.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(true, false, -91.000000, 22.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 3.000000, 33.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_17BD_
	local function __FUNC_1AE9_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1C90_(arg0, arg1)
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
		__FUNC_1C90_(registerVal4, {})
		local function __FUNC_1E45_(arg0, arg1)
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
		registerVal2.imageIcon:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.imageIcon:setAlpha(1.000000)
		registerVal2.imageIcon:setScale(1.000000)
		__FUNC_1E45_(registerVal5, {})
	end

	registerVal9.GainOver = __FUNC_1AE9_
	local function __FUNC_2045_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_220D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.800000)
		registerVal2.fullBacking:setScale(1.200000)
		__FUNC_220D_(registerVal4, {})
		local function __FUNC_23E4_(arg0, arg1)
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
		registerVal2.imageIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.imageIcon:setAlpha(1.000000)
		registerVal2.imageIcon:setScale(1.200000)
		__FUNC_23E4_(registerVal5, {})
	end

	registerVal9.LoseOver = __FUNC_2045_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_25E0_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = Gunsmith_IsVariantOccupied(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_25E0_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2695_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2695_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	local function __FUNC_271F_(arg0)
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_271F_)
	if __FUNC_67E_ then
		__FUNC_67E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.VariantOptionsButton.new = __FUNC_6EB_
