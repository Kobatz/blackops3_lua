-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local function __FUNC_287_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_36D_(arg0, arg2)
		local registerVal4 = {}
		registerVal4.name = "disable_mouse_button"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
		LUI.UIElement.mouseEnter(arg0, arg2)
	end

	arg0:registerEventHandler("mouseenter", __FUNC_36D_)
	local function __FUNC_46B_(arg0, arg2)
		local registerVal4 = {}
		registerVal4.name = "enable_mouse_button"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
		LUI.UIElement.mouseLeave(arg0, arg2)
	end

	arg0:registerEventHandler("mouseleave", __FUNC_46B_)
	local function __FUNC_566_(arg0, arg2)
		if arg2.isMouse then
			local registerVal4 = {}
			registerVal4.name = "remove_item_from_class"
			registerVal4.controller = arg1
			arg0:dispatchEventToParent(registerVal4)
			return true
		end
	end

	arg0:registerEventHandler("button_action", __FUNC_566_)
end

local function __FUNC_636_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_287_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.RemoveItemButton = registerVal3
local function __FUNC_6A7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RemoveItemButton)
	registerVal2.id = "RemoveItemButton"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
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
	registerVal6:setLeftRight(false, false, -25.000000, 25.000000)
	registerVal6:setTopBottom(true, false, -45.000000, -15.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.textCenterAlign:setText(Engine.Localize("MENU_REMOVE"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_1154_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_1154_
	local registerVal11 = {}
	registerVal11.stateName = "LeftAlign"
	local function __FUNC_11A1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_11A1_
	local registerVal12 = {}
	registerVal12.stateName = "RightAlign"
	local function __FUNC_11ED_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_11ED_
	local registerVal13 = {}
	registerVal13.stateName = "CenterAlign"
	local function __FUNC_1239_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1239_
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
	local function __FUNC_1284_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1284_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_12D1_()
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
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_12D1_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1532_()
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
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1532_
	local function __FUNC_181F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.RemoveIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.textCenterAlign:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText.textCenterAlign:setText(Engine.Localize("MENU_REMOVE"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_181F_
	local function __FUNC_1B1B_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1C93_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.000000)
		__FUNC_1C93_(registerVal4, {})
		local function __FUNC_1E45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.780000, 0.780000, 0.780000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.RemoveIcon:setAlpha(0.750000)
		__FUNC_1E45_(registerVal5, {})
	end

	registerVal9.GainOver = __FUNC_1B1B_
	local function __FUNC_2022_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_219B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.fullBacking:setAlpha(0.800000)
		__FUNC_219B_(registerVal4, {})
		local function __FUNC_234D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.200000, 0.200000, 0.200000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RemoveIcon:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.RemoveIcon:setAlpha(1.000000)
		__FUNC_234D_(registerVal5, {})
	end

	registerVal9.LoseOver = __FUNC_2022_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_252A_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		registerVal3 = IsCurrentMenu(arg0, "CustomClass")
		if registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = IsGamepad(arg1)
			if not registerVal3 then
				registerVal3 = CACShowRemovePrompt(registerVal2, arg2)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_252A_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2651_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2651_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_26DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_26DB_)
	local function __FUNC_27F7_(arg0)
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27F7_)
	if __FUNC_636_ then
		__FUNC_636_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.RemoveItemButton.new = __FUNC_6A7_
