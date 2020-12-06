-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_BracketBlur = registerVal1
function CoD.AbilityWheel_BracketBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_BracketBlur)
	registerVal2.id = "AbilityWheel_BracketBlur"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 819.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 613.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -174.250000, 174.350000)
	registerVal3:setTopBottom(false, false, -306.330000, -207.670000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal3:setZoom(257.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.B1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -174.250000, 174.350000)
	registerVal4:setTopBottom(false, false, 207.670000, 306.330000)
	registerVal4:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal4:setXRot(-180.000000)
	registerVal4:setZoom(257.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.B4 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 61.050000, 409.650000)
	registerVal5:setTopBottom(false, false, -173.000000, -74.340000)
	registerVal5:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal5:setZRot(-60.000000)
	registerVal5:setZoom(257.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.B2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 61.050000, 409.650000)
	registerVal6:setTopBottom(false, false, 78.010000, 176.670000)
	registerVal6:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal6:setZRot(-120.000000)
	registerVal6:setZoom(257.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.B3 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -409.650000, -61.050000)
	registerVal7:setTopBottom(false, false, -173.000000, -74.340000)
	registerVal7:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal7:setYRot(180.000000)
	registerVal7:setZRot(-60.000000)
	registerVal7:setZoom(257.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.B6 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -409.650000, -61.050000)
	registerVal8:setTopBottom(false, false, 78.010000, 176.670000)
	registerVal8:setAlpha(RandomAddPercent(-10.000000, 0.990000))
	registerVal8:setYRot(-180.000000)
	registerVal8:setZRot(-120.000000)
	registerVal8:setZoom(257.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_bracketblur"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.B5 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B08_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_DFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.B1:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_DFA_(registerVal3, {})
		local function __FUNC_FD8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.B4:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_FD8_(registerVal4, {})
		local function __FUNC_11B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.B2:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_11B8_(registerVal5, {})
		local function __FUNC_1398_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.B3:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_1398_(registerVal6, {})
		local function __FUNC_1578_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.B6:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_1578_(registerVal7, {})
		local function __FUNC_1758_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.B5:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_1758_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_B08_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

