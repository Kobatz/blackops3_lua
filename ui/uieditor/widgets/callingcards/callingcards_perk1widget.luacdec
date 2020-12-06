-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_KillerEyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Perk1Widget = registerVal1
function CoD.CallingCards_Perk1Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Perk1Widget)
	registerVal2.id = "CallingCards_Perk1Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setRGB(0.700000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.RED = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_perk1_black"))
	registerVal2:addElement(registerVal4)
	registerVal2.black = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 388.000000, 508.000000)
	registerVal5:setTopBottom(true, false, -38.000000, 178.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_perk1_flameleft"))
	registerVal2:addElement(registerVal5)
	registerVal2.flameright = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 142.000000, 298.000000)
	registerVal6:setTopBottom(true, false, -44.000000, 172.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_perk1_flameright"))
	registerVal2:addElement(registerVal6)
	registerVal2.flameleft = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 65.250000, 159.000000)
	registerVal7:setTopBottom(true, false, 17.000000, 142.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_perk1_hand"))
	registerVal2:addElement(registerVal7)
	registerVal2.hand = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 276.250000, 396.250000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_perk1_flame_flipbook"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal8:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 8.060000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.b1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 276.250000, 396.250000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_perk1_man"))
	registerVal2:addElement(registerVal9)
	registerVal2.man = registerVal9
	local registerVal10 = CoD.CallingCards_KillerEyes.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 345.110000, 377.110000)
	registerVal10:setTopBottom(true, false, 8.970000, 20.970000)
	registerVal10:setZRot(-10.000000)
	registerVal10:setScale(0.500000)
	registerVal2:addElement(registerVal10)
	registerVal2.CallingCardsKillerEyes0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_C25_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_FB3_(arg0, arg1)
			local function __FUNC_113B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.700000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_113B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.860000, 0.380000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113B_)
		end

		registerVal3:completeAnimation()
		registerVal2.RED:setRGB(0.700000, 0.000000, 0.000000)
		registerVal2.RED:setAlpha(1.000000)
		__FUNC_FB3_(registerVal3, {})
		local function __FUNC_131B_(arg0, arg1)
			local function __FUNC_14A3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_14A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.750000, 1.000000, 0.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A3_)
		end

		registerVal5:completeAnimation()
		registerVal2.flameright:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_131B_(registerVal5, {})
		local function __FUNC_165B_(arg0, arg1)
			local function __FUNC_17E3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_17E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.750000, 1.000000, 0.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E3_)
		end

		registerVal6:completeAnimation()
		registerVal2.flameleft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.flameleft:setAlpha(1.000000)
		__FUNC_165B_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hand:setLeftRight(true, false, 65.250000, 159.000000)
		registerVal2.hand:setTopBottom(true, false, 17.000000, 142.000000)
		registerVal2.hand:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.CallingCardsKillerEyes0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_C25_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_19B9_(arg0)
		arg0.CallingCardsKillerEyes0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19B9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

