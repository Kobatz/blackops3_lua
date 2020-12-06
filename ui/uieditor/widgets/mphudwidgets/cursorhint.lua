-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.cursorhint_text")
require("ui.uieditor.widgets.MPHudWidgets.cursorhint_image")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CursorHint = registerVal1
function CoD.CursorHint.new(arg0, arg1)
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
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CursorHint)
	registerVal2.id = "CursorHint"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.cursorhint_text.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -242.500000, 120.170000)
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cursorhinttext0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 370.170000, 384.500000)
	registerVal4:setTopBottom(true, false, -46.370000, 81.630000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = CoD.cursorhint_image.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 134.500000, 242.500000)
	registerVal5:setTopBottom(true, false, -17.500000, 36.500000)
	local function __FUNC_BA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.c1x1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "cursorHintImage", __FUNC_BA3_)
	local function __FUNC_C6E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.x1x4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "cursorHintImage", __FUNC_C6E_)
	local function __FUNC_D3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.c1x2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "cursorHintImage", __FUNC_D3A_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Active_1x1"
	local function __FUNC_E06_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cursorHintIconRatio", 1.000000)
	end

	registerVal9.condition = __FUNC_E06_
	local registerVal10 = {}
	registerVal10.stateName = "Active_2x1"
	local function __FUNC_E90_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cursorHintIconRatio", 2.000000)
	end

	registerVal10.condition = __FUNC_E90_
	local registerVal11 = {}
	registerVal11.stateName = "Active_4x1"
	local function __FUNC_F1C_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cursorHintIconRatio", 4.000000)
	end

	registerVal11.condition = __FUNC_F1C_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "hudItems.cursorHintIconRatio")
	local function __FUNC_FA8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cursorHintIconRatio"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_FA8_)
	registerVal2:addElement(registerVal5)
	registerVal2.cursorhintimage0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_10DA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 370.170000, 384.500000)
		registerVal2.Image0:setTopBottom(true, false, -46.370000, 81.630000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setLeftRight(false, false, 120.170000, 228.170000)
		registerVal2.cursorhintimage0:setTopBottom(true, false, -17.500000, 36.500000)
		registerVal2.cursorhintimage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10DA_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1369_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_15F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(0.440000)
		__FUNC_15F6_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 370.170000, 384.500000)
		registerVal2.Image0:setTopBottom(true, false, -46.370000, 81.630000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_17A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, 120.170000, 228.170000)
			arg0:setTopBottom(true, false, -17.500000, 36.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setLeftRight(false, false, 120.170000, 228.170000)
		registerVal2.cursorhintimage0:setTopBottom(true, false, -17.500000, 36.500000)
		registerVal2.cursorhintimage0:setAlpha(0.360000)
		__FUNC_17A9_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1369_
	local function __FUNC_19CD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1B13_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(1.000000)
		__FUNC_1B13_(registerVal3, {})
		local function __FUNC_1CC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setAlpha(1.000000)
		__FUNC_1CC5_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_19CD_
	registerVal6.Active_1x1 = registerVal7
	registerVal7 = {}
	local function __FUNC_1E79_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2106_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(0.410000)
		__FUNC_2106_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 370.170000, 384.500000)
		registerVal2.Image0:setTopBottom(true, false, -46.370000, 81.630000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_22B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, 120.170000, 228.170000)
			arg0:setTopBottom(true, false, -17.500000, 36.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setLeftRight(false, false, 120.170000, 228.170000)
		registerVal2.cursorhintimage0:setTopBottom(true, false, -17.500000, 36.500000)
		registerVal2.cursorhintimage0:setAlpha(0.370000)
		__FUNC_22B9_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1E79_
	local function __FUNC_24DD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2623_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(1.000000)
		__FUNC_2623_(registerVal3, {})
		local function __FUNC_27D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setAlpha(1.000000)
		__FUNC_27D5_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_24DD_
	registerVal6.Active_2x1 = registerVal7
	registerVal7 = {}
	local function __FUNC_2989_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2C16_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(0.450000)
		__FUNC_2C16_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 370.170000, 384.500000)
		registerVal2.Image0:setTopBottom(true, false, -46.370000, 81.630000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2DC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(false, false, 120.170000, 228.170000)
			arg0:setTopBottom(true, false, -17.500000, 36.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setLeftRight(false, false, 120.170000, 228.170000)
		registerVal2.cursorhintimage0:setTopBottom(true, false, -17.500000, 36.500000)
		registerVal2.cursorhintimage0:setAlpha(0.320000)
		__FUNC_2DC9_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2989_
	local function __FUNC_2FED_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_3133_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(1.000000)
		__FUNC_3133_(registerVal3, {})
		local function __FUNC_32E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.320000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setAlpha(1.000000)
		__FUNC_32E5_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_2FED_
	registerVal6.Active_4x1 = registerVal7
	registerVal7 = {}
	local function __FUNC_3499_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_36FF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(0.450000)
		__FUNC_36FF_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 370.170000, 370.170000)
		registerVal2.Image0:setTopBottom(true, false, -46.370000, 81.630000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setLeftRight(false, false, 120.170000, 120.170000)
		registerVal2.cursorhintimage0:setTopBottom(true, false, -17.500000, 36.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_3499_
	registerVal6.Active_NoImage = registerVal7
	registerVal7 = {}
	local function __FUNC_38B1_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_39F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.cursorhinttext0:setAlpha(1.000000)
		__FUNC_39F7_(registerVal3, {})
		local function __FUNC_3BA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cursorhintimage0:setAlpha(1.000000)
		__FUNC_3BA9_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_38B1_
	registerVal6.Out = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_3D5D_(arg0)
		arg0.cursorhinttext0:close()
		arg0.cursorhintimage0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3D5D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

