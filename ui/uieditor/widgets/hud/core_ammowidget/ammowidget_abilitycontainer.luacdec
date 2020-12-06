-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityRingBackDeplete")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityRingBack")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityRing")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityIconContainer")
local function __FUNC_345_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "playerAbilities.inRange")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityContainer = registerVal2
local function __FUNC_405_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_345_ then
		__FUNC_345_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityContainer)
	registerVal2.id = "AmmoWidget_AbilityContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setZoom(-30.000000)
	registerVal3:setScale(0.850000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_cm_heroringglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal3)
	registerVal2.GlowMultiply = registerVal3
	local registerVal4 = CoD.AmmoWidget_AbilityRingBackDeplete.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.640000, 0.660000, 0.770000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setZRot(87.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.AbilityRingBackDuplicate = registerVal4
	local registerVal5 = CoD.AmmoWidget_AbilityRingBackDeplete.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 5.500000, -5.500000)
	registerVal5:setTopBottom(true, true, 5.500000, -5.500000)
	registerVal5:setRGB(0.620000, 0.740000, 0.950000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.AbilityRingBackDeplete = registerVal5
	local registerVal6 = CoD.AmmoWidget_AbilityRingBack.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.AbilityRingBack = registerVal6
	local registerVal7 = CoD.AmmoWidget_AbilityRing.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.AbilityRing = registerVal7
	local registerVal8 = CoD.AmmoWidget_AbilityIconContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 36.170000, -36.170000)
	registerVal8:setTopBottom(true, true, 32.340000, -30.340000)
	registerVal2:addElement(registerVal8)
	registerVal2.AbilityIconContainer = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_154F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_154F_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_184A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_184A_
	local function __FUNC_1B50_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1DE6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		__FUNC_1DE6_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1F9F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_1F9F_(registerVal5, {})
		local function __FUNC_2151_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_2151_(registerVal6, {})
		local function __FUNC_2305_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_2305_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_1B50_
	local function __FUNC_24B9_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2734_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		__FUNC_2734_(registerVal3, {})
		local function __FUNC_28EF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_28EF_(registerVal4, {})
		local function __FUNC_2AA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_2AA1_(registerVal5, {})
		local function __FUNC_2C55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_2C55_(registerVal6, {})
		local function __FUNC_2E07_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_2E07_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_24B9_
	local function __FUNC_2FB7_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_324A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		__FUNC_324A_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_3403_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_3403_(registerVal5, {})
		local function __FUNC_35B3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_35B3_(registerVal6, {})
		local function __FUNC_3763_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_3763_(registerVal7, {})
	end

	registerVal10.Stowed = __FUNC_2FB7_
	registerVal9.AdvertisedReady = registerVal10
	registerVal10 = {}
	local function __FUNC_3913_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.400000, 0.400000, 0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3913_
	local function __FUNC_3C18_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3EAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.400000, 0.400000, 0.400000)
		__FUNC_3EAE_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_4067_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_4067_(registerVal5, {})
		local function __FUNC_4219_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_4219_(registerVal6, {})
		local function __FUNC_43CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_43CD_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_3C18_
	local function __FUNC_4581_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_47FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.400000, 0.400000, 0.400000)
		__FUNC_47FC_(registerVal3, {})
		local function __FUNC_49B7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_49B7_(registerVal4, {})
		local function __FUNC_4B69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_4B69_(registerVal5, {})
		local function __FUNC_4D1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_4D1D_(registerVal6, {})
		local function __FUNC_4ECF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_4ECF_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_4581_
	local function __FUNC_507F_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5312_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.400000, 0.400000, 0.400000)
		__FUNC_5312_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_54CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_54CB_(registerVal5, {})
		local function __FUNC_567B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_567B_(registerVal6, {})
		local function __FUNC_582B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_582B_(registerVal7, {})
	end

	registerVal10.Stowed = __FUNC_507F_
	registerVal9.Ready = registerVal10
	registerVal10 = {}
	local function __FUNC_59DB_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_59DB_
	local function __FUNC_5CDB_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5F69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_5F69_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_6123_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_6123_(registerVal5, {})
		local function __FUNC_62D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_62D5_(registerVal6, {})
		local function __FUNC_6489_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_6489_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_5CDB_
	local function __FUNC_663D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_68D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_68D2_(registerVal4, {})
		local function __FUNC_6A85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_6A85_(registerVal5, {})
		local function __FUNC_6C37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_6C37_(registerVal6, {})
		local function __FUNC_6DE7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_6DE7_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_663D_
	local function __FUNC_6F97_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_722E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_722E_(registerVal5, {})
		local function __FUNC_73DF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 620.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_73DF_(registerVal6, {})
		local function __FUNC_758F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_758F_(registerVal7, {})
	end

	registerVal10.Stowed = __FUNC_6F97_
	local function __FUNC_773F_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_79CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.400000, 0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_79CD_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_7B87_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_7B87_(registerVal5, {})
		local function __FUNC_7D39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_7D39_(registerVal6, {})
		local function __FUNC_7EED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_7EED_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_773F_
	registerVal9.Charge = registerVal10
	registerVal10 = {}
	local function __FUNC_80A1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_80A1_
	local function __FUNC_83A8_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_8624_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.400000, 0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_8624_(registerVal3, {})
		local function __FUNC_87DF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.400000)
		__FUNC_87DF_(registerVal4, {})
		local function __FUNC_8991_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_8991_(registerVal5, {})
		local function __FUNC_8B43_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 779.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_8B43_(registerVal6, {})
		local function __FUNC_8CF3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_8CF3_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_83A8_
	local function __FUNC_8EA3_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_90A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.400000)
		__FUNC_90A9_(registerVal4, {})
		local function __FUNC_925D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_925D_(registerVal5, {})
		local function __FUNC_940F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 899.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_940F_(registerVal6, {})
		local function __FUNC_95BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 660.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_95BF_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_8EA3_
	local function __FUNC_976F_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_9975_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.400000)
		__FUNC_9975_(registerVal4, {})
		local function __FUNC_9B29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_9B29_(registerVal5, {})
		local function __FUNC_9CDB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_9CDB_(registerVal6, {})
		local function __FUNC_9E8B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_9E8B_(registerVal7, {})
	end

	registerVal10.Stowed = __FUNC_976F_
	local function __FUNC_A03B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_A2B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.400000, 0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_A2B4_(registerVal3, {})
		local function __FUNC_A46F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.400000)
		__FUNC_A46F_(registerVal4, {})
		local function __FUNC_A621_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(1.000000)
		__FUNC_A621_(registerVal5, {})
		local function __FUNC_A7D3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 779.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(1.000000)
		__FUNC_A7D3_(registerVal6, {})
		local function __FUNC_A983_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(1.000000)
		__FUNC_A983_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_A03B_
	registerVal9.InUse = registerVal10
	registerVal10 = {}
	local function __FUNC_AB33_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AbilityIconContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_AB33_
	local function __FUNC_AE33_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_B0BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.400000, 0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_B0BC_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_B277_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_B277_(registerVal5, {})
		local function __FUNC_B427_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 740.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_B427_(registerVal6, {})
		local function __FUNC_B5D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		__FUNC_B5D7_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_AE33_
	local function __FUNC_B787_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_B9A2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_B9A2_(registerVal5, {})
		local function __FUNC_BB53_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 579.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_BB53_(registerVal6, {})
		local function __FUNC_BD03_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		__FUNC_BD03_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_B787_
	local function __FUNC_BEB3_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_C0B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		__FUNC_C0B4_(registerVal4, {})
		local function __FUNC_C269_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_C269_(registerVal5, {})
		local function __FUNC_C41B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 649.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_C41B_(registerVal6, {})
		local function __FUNC_C5CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		__FUNC_C5CB_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_BEB3_
	local function __FUNC_C77B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_CA04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.400000, 0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowMultiply:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_CA04_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityRingBackDuplicate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_CBBF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityRingBackDeplete:setAlpha(0.000000)
		__FUNC_CBBF_(registerVal5, {})
		local function __FUNC_CD6F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 740.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityRingBack:setAlpha(0.000000)
		__FUNC_CD6F_(registerVal6, {})
		local function __FUNC_CF1F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityRing:setAlpha(0.000000)
		__FUNC_CF1F_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_C77B_
	registerVal9.Stowed = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "AdvertisedReady"
	local function __FUNC_D0CF_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
				if not registerVal3 then
					registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.inRange", 1.000000)
					if registerVal3 then
						registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.powerRatio", 1.000000)
					else
					else
					end
				end
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_D0CF_
	local registerVal13 = {}
	registerVal13.stateName = "Ready"
	local function __FUNC_D26E_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
				if not registerVal3 then
					registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.powerRatio", 1.000000)
				else
				else
				end
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_D26E_
	local registerVal14 = {}
	registerVal14.stateName = "Charge"
	local function __FUNC_D3D1_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_D3D1_
	local registerVal15 = {}
	registerVal15.stateName = "InUse"
	local function __FUNC_D46D_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUse(arg0, arg1)
	end

	registerVal15.condition = __FUNC_D46D_
	local registerVal16 = {}
	registerVal16.stateName = "Stowed"
	local function __FUNC_D4CF_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_D4CF_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_D52E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_D52E_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_D667_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_D667_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_D7A2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_D7A2_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.inRange")
	local function __FUNC_D8D8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.inRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_D8D8_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "currentWeapon.weapon")
	local function __FUNC_DA05_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_DA05_)
	local function __FUNC_DB2E_(arg0)
		arg0.AbilityRingBackDuplicate:close()
		arg0.AbilityRingBackDeplete:close()
		arg0.AbilityRingBack:close()
		arg0.AbilityRing:close()
		arg0.AbilityIconContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DB2E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_AbilityContainer.new = __FUNC_405_
