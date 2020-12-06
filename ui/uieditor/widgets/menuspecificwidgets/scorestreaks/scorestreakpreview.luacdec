-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_LockBig")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scorestreakPreview = registerVal1
function CoD.scorestreakPreview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scorestreakPreview)
	registerVal2.id = "scorestreakPreview"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 322.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 470.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -161.000000, 161.000000)
	registerVal3:setTopBottom(false, true, -344.000000, -21.000000)
	local function __FUNC_813_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(AppendString("_menu_large", GetItemImageFromIndexByMode(1.000000, registerVal1))))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_813_)
	registerVal2:addElement(registerVal3)
	registerVal2.highlightedImage = registerVal3
	local registerVal4 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.circles:setRGB(0.260000, 0.890000, 1.000000)
	local function __FUNC_931_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_931_)
	registerVal2:addElement(registerVal4)
	registerVal2.lockedIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_982_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.highlightedImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.highlightedImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_982_
	local function __FUNC_B19_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C98_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_C98_)
	end

	registerVal6.Intro = __FUNC_B19_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_E4D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.highlightedImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.highlightedImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E4D_
	registerVal5.Locked = registerVal6
	registerVal6 = {}
	local function __FUNC_FE5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.highlightedImage:setRGB(0.260000, 0.890000, 1.000000)
		registerVal2.highlightedImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_FE5_
	registerVal5.NotAvailable = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_1187_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_1187_
	local registerVal9 = {}
	registerVal9.stateName = "NotAvailable"
	local function __FUNC_11E1_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_11E1_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1240_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1240_)
	local function __FUNC_135F_(arg0)
		arg0.lockedIcon:close()
		arg0.highlightedImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_135F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

