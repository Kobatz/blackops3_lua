-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.ItemGridButtom_Internal")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ItemGridButton = registerVal1
function CoD.ItemGridButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ItemGridButton)
	registerVal2.id = "ItemGridButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ItemGridButtom_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -80.000000, 80.000000)
	registerVal3:setTopBottom(false, false, -45.000000, 45.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_8A0_(arg0, arg2, arg3)
		return IsCACItemEquipped(arg0, arg2, arg1)
	end

	registerVal7.condition = __FUNC_8A0_
	local registerVal8 = {}
	registerVal8.stateName = "MutuallyExclusive"
	local function __FUNC_8FF_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal8.condition = __FUNC_8FF_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.itemGridButtom = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -80.000000, 80.000000)
	registerVal4:setTopBottom(false, false, -45.000000, 45.000000)
	registerVal4:setRGB(1.000000, 0.410000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.border = registerVal4
	local function __FUNC_96D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.nameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.itemGridButtom:linkToElementModel(registerVal2, "name", true, __FUNC_96D_)
	local function __FUNC_A45_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.itemGridButtom:linkToElementModel(registerVal2, "image", true, __FUNC_A45_)
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_B17_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.itemGridButtom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.itemGridButtom:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.border:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B17_
	local function __FUNC_CD4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.itemGridButtom:setZoom(25.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.border:setZoom(25.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Focus = __FUNC_CD4_
	local function __FUNC_E60_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_FCE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(25.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.itemGridButtom:setZoom(0.000000)
		__FUNC_FCE_(registerVal3, {})
		local function __FUNC_1180_(arg0, arg1)
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
		__FUNC_1180_(registerVal4, {})
	end

	registerVal6.GainFocus = __FUNC_E60_
	local function __FUNC_1357_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_14C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.itemGridButtom:setZoom(25.000000)
		__FUNC_14C2_(registerVal3, {})
		local function __FUNC_1674_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.border:setZoom(25.000000)
		__FUNC_1674_(registerVal4, {})
	end

	registerVal6.LoseFocus = __FUNC_1357_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1846_(arg0)
		arg0.itemGridButtom:close()
		arg0.border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1846_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

