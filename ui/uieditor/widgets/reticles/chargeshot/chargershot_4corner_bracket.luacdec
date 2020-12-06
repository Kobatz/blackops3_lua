-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.ChargeShot.ChargeShot_OuterReticle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargerShot_4corner_Bracket = registerVal1
function CoD.ChargerShot_4corner_Bracket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargerShot_4corner_Bracket)
	registerVal2.id = "ChargerShot_4corner_Bracket"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 414.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 401.000000)
	local registerVal3 = CoD.ChargeShot_OuterReticle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 247.000000, -0.120000)
	registerVal3:setTopBottom(true, true, 0.170000, -233.940000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChargeShotOuterReticle0 = registerVal3
	local registerVal4 = CoD.ChargeShot_OuterReticle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.120000, -247.000000)
	registerVal4:setTopBottom(true, true, 0.170000, -233.940000)
	registerVal4:setYRot(180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChargeShotOuterReticle1 = registerVal4
	local registerVal5 = CoD.ChargeShot_OuterReticle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.120000, -247.000000)
	registerVal5:setTopBottom(true, true, 233.940000, -0.170000)
	registerVal5:setZRot(-180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ChargeShotOuterReticle2 = registerVal5
	local registerVal6 = CoD.ChargeShot_OuterReticle.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 247.000000, -0.120000)
	registerVal6:setTopBottom(true, true, 233.940000, -0.170000)
	registerVal6:setYRot(180.000000)
	registerVal6:setZRot(-180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ChargeShotOuterReticle3 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_81A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ChargeShotOuterReticle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChargeShotOuterReticle1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.ChargeShotOuterReticle3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_81A_
	local function __FUNC_9F1_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_E19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 26.200000, 147.710000)
			arg0:setTopBottom(false, false, -141.500000, -19.980000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ChargeShotOuterReticle0:setLeftRight(false, false, 26.200000, 147.710000)
		registerVal2.ChargeShotOuterReticle0:setTopBottom(false, false, -141.500000, -19.980000)
		registerVal2.ChargeShotOuterReticle0:setScale(1.000000)
		__FUNC_E19_(registerVal3, {})
		registerVal4:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(false, false, -148.290000, -26.770000)
		registerVal4:setTopBottom(false, false, -141.500000, -19.980000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal5:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(false, false, -148.290000, -26.770000)
		registerVal5:setTopBottom(false, false, 24.220000, 145.740000)
		registerVal5:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_103D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 26.200000, 147.710000)
			arg0:setTopBottom(false, false, 24.220000, 145.740000)
			arg0:setXRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(false, false, 26.200000, 147.710000)
		registerVal6:setTopBottom(false, false, 24.220000, 145.740000)
		registerVal6:setXRot(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_103D_)
	end

	registerVal8.Fire = __FUNC_9F1_
	local function __FUNC_1260_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Cancel = __FUNC_1260_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_12C2_(arg0)
		arg0.ChargeShotOuterReticle0:close()
		arg0.ChargeShotOuterReticle1:close()
		arg0.ChargeShotOuterReticle2:close()
		arg0.ChargeShotOuterReticle3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

