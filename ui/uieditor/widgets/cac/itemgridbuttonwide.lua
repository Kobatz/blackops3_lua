-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.ItemGridButtonWide_Internal")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ItemGridButtonWide = registerVal1
function CoD.ItemGridButtonWide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ItemGridButtonWide)
	registerVal2.id = "ItemGridButtonWide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ItemGridButtonWide_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal3:setZoom(25.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_8C6_(arg0, arg2, arg3)
		return IsCACItemEquipped(arg0, arg2, arg1)
	end

	registerVal7.condition = __FUNC_8C6_
	local registerVal8 = {}
	registerVal8.stateName = "MutuallyExclusive"
	local function __FUNC_923_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal8.condition = __FUNC_923_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.itemButtom = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(1.000000, 0.410000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(25.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.border = registerVal4
	local function __FUNC_991_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.nameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.itemButtom:linkToElementModel(registerVal2, "name", true, __FUNC_991_)
	local function __FUNC_A69_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.itemButtom:linkToElementModel(registerVal2, "image", true, __FUNC_A69_)
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_B3B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.itemButtom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.itemButtom:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.border:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B3B_
	local function __FUNC_CF4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.itemButtom:setZoom(25.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.border:setZoom(25.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Focus = __FUNC_CF4_
	local function __FUNC_E7C_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1002_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(25.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.itemButtom:setAlpha(1.000000)
		registerVal2.itemButtom:setZoom(0.000000)
		__FUNC_1002_(registerVal3, {})
		local function __FUNC_11D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(25.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.border:setZoom(0.000000)
		__FUNC_11D7_(registerVal4, {})
	end

	registerVal6.GainFocus = __FUNC_E7C_
	local function __FUNC_13AB_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_156C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.itemButtom:setAlpha(1.000000)
		registerVal2.itemButtom:setZoom(25.000000)
		__FUNC_156C_(registerVal3, {})
		local function __FUNC_1743_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.410000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.border:setAlpha(1.000000)
		registerVal2.border:setZoom(25.000000)
		__FUNC_1743_(registerVal4, {})
	end

	registerVal6.LoseFocus = __FUNC_13AB_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1940_(arg0)
		arg0.itemButtom:close()
		arg0.border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1940_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

