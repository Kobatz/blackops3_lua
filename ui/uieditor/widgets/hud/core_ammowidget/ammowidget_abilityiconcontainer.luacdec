-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityAftStroke")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityFill")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityForeStroke")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityIconContainer = registerVal1
function CoD.AmmoWidget_AbilityIconContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityIconContainer)
	registerVal2.id = "AmmoWidget_AbilityIconContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -63.830000, 64.170000)
	registerVal3:setTopBottom(false, false, -64.000000, 64.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setScale(0.700000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackGlow = registerVal3
	local registerVal4 = CoD.AmmoWidget_AbilityAftStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.330000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.330000)
	registerVal4:setZoom(-15.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.AbilityAftStroke = registerVal4
	local registerVal5 = CoD.AmmoWidget_AbilityFill.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.330000, 47.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 57.330000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setZoom(5.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Fill = registerVal5
	local registerVal6 = CoD.AmmoWidget_AbilityForeStroke.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal6:setZoom(-8.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ForeStroke = registerVal6
	local registerVal7 = CoD.AmmoWidget_AbilityIcon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 5.000000, 42.000000)
	registerVal7:setTopBottom(true, false, 10.000000, 47.000000)
	registerVal7:setZoom(8.000000)
	registerVal7:setScale(1.900000)
	registerVal2:addElement(registerVal7)
	registerVal2.AbilityIcon = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1270_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_1270_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_12D2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.600000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_12D2_
	local function __FUNC_1656_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_19B0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_19B0_(registerVal3, {})
		local function __FUNC_1B65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_1B65_(registerVal4, {})
		local function __FUNC_1D39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.200000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.600000)
		registerVal2.Fill:setZoom(5.000000)
		__FUNC_1D39_(registerVal5, {})
		local function __FUNC_1F0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		__FUNC_1F0D_(registerVal6, {})
		local function __FUNC_20E1_(arg0, arg1)
			local function __FUNC_2238_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 560.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 5.000000, 42.000000)
				arg0:setTopBottom(true, false, 10.000000, 47.000000)
				arg0:setAlpha(0.500000)
				arg0:setZoom(8.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2238_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2238_)
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_20E1_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_1656_
	local function __FUNC_247D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_27D8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_27D8_(registerVal3, {})
		local function __FUNC_298D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_298D_(registerVal4, {})
		local function __FUNC_2B61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.400000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.600000)
		registerVal2.Fill:setZoom(5.000000)
		__FUNC_2B61_(registerVal5, {})
		local function __FUNC_2D35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		__FUNC_2D35_(registerVal6, {})
		local function __FUNC_2F09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 5.000000, 42.000000)
			arg0:setTopBottom(true, false, 10.000000, 47.000000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_2F09_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_247D_
	local function __FUNC_314D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_34A8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_34A8_(registerVal3, {})
		local function __FUNC_365D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_365D_(registerVal4, {})
		local function __FUNC_3831_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.600000)
		registerVal2.Fill:setZoom(5.000000)
		__FUNC_3831_(registerVal5, {})
		local function __FUNC_3A05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		__FUNC_3A05_(registerVal6, {})
		local function __FUNC_3BD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 5.000000, 42.000000)
			arg0:setTopBottom(true, false, 10.000000, 47.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_3BD9_(registerVal7, {})
	end

	registerVal9.NoGadget = __FUNC_314D_
	registerVal8.Ready = registerVal9
	registerVal9 = {}
	local function __FUNC_3E1D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.200000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.500000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_3E1D_
	local function __FUNC_4121_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4486_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_4486_(registerVal3, {})
		local function __FUNC_4639_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_4639_(registerVal4, {})
		local function __FUNC_480D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.600000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.200000)
		registerVal2.Fill:setZoom(-10.000000)
		__FUNC_480D_(registerVal5, {})
		local function __FUNC_49E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		__FUNC_49E1_(registerVal6, {})
		local function __FUNC_4BB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 5.000000, 42.000000)
			arg0:setTopBottom(true, false, 10.000000, 47.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(0.500000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_4BB7_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_4121_
	local function __FUNC_4DFB_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_50D3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_50D3_(registerVal3, {})
		local function __FUNC_5285_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_5285_(registerVal4, {})
		local function __FUNC_5459_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.400000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.200000)
		registerVal2.Fill:setZoom(-10.000000)
		__FUNC_5459_(registerVal5, {})
		local function __FUNC_562D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		__FUNC_562D_(registerVal6, {})
		local function __FUNC_5801_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.800000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.500000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_5801_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_4DFB_
	local function __FUNC_59D5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_5D82_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:setZoom(-15.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_5D82_)
		local function __FUNC_5F55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.200000)
		registerVal5:setZoom(-10.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_5F55_)
		local function __FUNC_6129_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(1.000000)
		registerVal6:setZoom(-5.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_6129_)
		local function __FUNC_62FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.500000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_62FD_(registerVal7, {})
	end

	registerVal9.NoGadget = __FUNC_59D5_
	registerVal8.Charge = registerVal9
	registerVal9 = {}
	local function __FUNC_64D1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.400000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.800000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_64D1_
	local function __FUNC_67D0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_6B31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_6B31_(registerVal3, {})
		local function __FUNC_6CE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_6CE5_(registerVal4, {})
		local function __FUNC_6EB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.600000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.400000)
		registerVal2.Fill:setZoom(-8.000000)
		__FUNC_6EB9_(registerVal5, {})
		local function __FUNC_708D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		__FUNC_708D_(registerVal6, {})
		local function __FUNC_7261_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 5.000000, 42.000000)
			arg0:setTopBottom(true, false, 10.000000, 47.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(0.800000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_7261_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_67D0_
	local function __FUNC_74A7_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_777A_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_777A_(registerVal3, {})
		local function __FUNC_792D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_792D_(registerVal4, {})
		local function __FUNC_7B01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.200000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.400000)
		registerVal2.Fill:setZoom(-8.000000)
		__FUNC_7B01_(registerVal5, {})
		local function __FUNC_7CD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		__FUNC_7CD5_(registerVal6, {})
		local function __FUNC_7EA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.800000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_7EA9_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_74A7_
	local function __FUNC_807D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_8408_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.300000)
		__FUNC_8408_(registerVal3, {})
		local function __FUNC_85BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(1.000000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_85BD_(registerVal4, {})
		local function __FUNC_8791_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.400000)
		registerVal5:setZoom(-8.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_8791_)
		local function __FUNC_8965_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(1.000000)
		registerVal6:setZoom(5.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_8965_)
		local function __FUNC_8B39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 469.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.800000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_8B39_(registerVal7, {})
	end

	registerVal9.NoGadget = __FUNC_807D_
	registerVal8.InUse = registerVal9
	registerVal9 = {}
	local function __FUNC_8D0D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(0.500000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_8D0D_
	local function __FUNC_9002_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9357_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_9357_(registerVal3, {})
		local function __FUNC_9509_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(0.500000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_9509_(registerVal4, {})
		local function __FUNC_96DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.600000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		__FUNC_96DD_(registerVal5, {})
		local function __FUNC_98B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		__FUNC_98B1_(registerVal6, {})
		local function __FUNC_9A85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 5.000000, 42.000000)
			arg0:setTopBottom(true, false, 10.000000, 47.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setLeftRight(true, false, 5.000000, 42.000000)
		registerVal2.AbilityIcon:setTopBottom(true, false, 10.000000, 47.000000)
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		__FUNC_9A85_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_9002_
	local function __FUNC_9CCB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_A06C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 749.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.500000)
		registerVal4:setZoom(-15.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_A06C_)
		local function __FUNC_A241_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.200000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:setZoom(-10.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_A241_)
		local function __FUNC_A415_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.500000)
		registerVal6:setZoom(-5.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_A415_)
		local function __FUNC_A5E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(8.000000)
		__FUNC_A5E9_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_9CCB_
	local function __FUNC_A7BD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_AA88_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BackGlow:setAlpha(0.000000)
		__FUNC_AA88_(registerVal3, {})
		local function __FUNC_AC3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(-15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AbilityAftStroke:setAlpha(0.500000)
		registerVal2.AbilityAftStroke:setZoom(-15.000000)
		__FUNC_AC3D_(registerVal4, {})
		local function __FUNC_AE11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.400000)
			arg0:setZoom(-8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		__FUNC_AE11_(registerVal5, {})
		local function __FUNC_AFE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		__FUNC_AFE5_(registerVal6, {})
		local function __FUNC_B1B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.800000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(0.000000)
		__FUNC_B1B9_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_A7BD_
	registerVal8.NoGadget = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Ready"
	local function __FUNC_B38D_(arg0, arg2, arg3)
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

	registerVal11.condition = __FUNC_B38D_
	local registerVal12 = {}
	registerVal12.stateName = "Charge"
	local function __FUNC_B4F1_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_B4F1_
	local registerVal13 = {}
	registerVal13.stateName = "InUse"
	local function __FUNC_B58D_(arg0, arg2, arg3)
		return IsHeroWeaponOrGadgetInUse(arg0, arg1)
	end

	registerVal13.condition = __FUNC_B58D_
	local registerVal14 = {}
	registerVal14.stateName = "NoGadget"
	local function __FUNC_B5EF_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_B5EF_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_B64E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_B64E_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_B787_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_B787_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_B8C2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_B8C2_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_B9F8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_B9F8_)
	local function __FUNC_BB22_(arg0)
		arg0.AbilityAftStroke:close()
		arg0.Fill:close()
		arg0.ForeStroke:close()
		arg0.AbilityIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BB22_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

