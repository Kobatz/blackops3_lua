-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.codcaster_ScoreLogoWidget = registerVal1
function CoD.codcaster_ScoreLogoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_ScoreLogoWidget)
	registerVal2.id = "codcaster_ScoreLogoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 210.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 67.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -8.000000, 131.500000)
	registerVal3:setTopBottom(true, false, -129.980000, 178.980000)
	registerVal3:setAlpha(0.570000)
	registerVal3:setZRot(-90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.GlowWhiteOver = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -105.000000, 105.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_colorback"))
	registerVal2:addElement(registerVal4)
	registerVal2.teamcolor = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 71.000000, 182.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 67.000000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_logobottom"))
	registerVal2:addElement(registerVal5)
	registerVal2.logobacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 92.000000, 171.000000)
	registerVal6:setTopBottom(true, false, 5.000000, 63.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 75.000000, 181.000000)
	registerVal7:setTopBottom(true, false, 4.970000, 63.530000)
	registerVal7:setImage(RegisterImage("uie_t7_codcaster_faction2"))
	registerVal2:addElement(registerVal7)
	registerVal2.logo = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 72.000000, 187.000000)
	registerVal8:setTopBottom(true, false, 2.000000, 67.000000)
	registerVal8:setImage(RegisterImage("uie_t7_codcaster_logotop"))
	registerVal2:addElement(registerVal8)
	registerVal2.logotopRight = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1.000000, 92.000000)
	registerVal9:setTopBottom(true, false, 1.000000, 67.000000)
	registerVal9:setImage(RegisterImage("uie_t7_codcaster_numberbacking"))
	registerVal2:addElement(registerVal9)
	registerVal2.numberbacking = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, 61.000000, 85.000000)
	registerVal10:setTopBottom(true, false, 1.500000, 66.500000)
	registerVal10:setImage(RegisterImage("uie_t7_codcaster_blackbar"))
	registerVal2:addElement(registerVal10)
	registerVal2.teamiconbg = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -26.500000, 216.500000)
	registerVal11:setTopBottom(true, false, -14.000000, 67.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setYRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar1full"))
	registerVal2:addElement(registerVal11)
	registerVal2.testElementFull = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -26.500000, 216.500000)
	registerVal12:setTopBottom(true, false, -14.000000, 67.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setYRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar1"))
	registerVal2:addElement(registerVal12)
	registerVal2.testElement = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 26.500000, 220.000000)
	registerVal13:setTopBottom(true, false, -36.000000, -11.810000)
	registerVal13:setAlpha(0.500000)
	registerVal13:setYRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar2full"))
	registerVal2:addElement(registerVal13)
	registerVal2.testElement0Full = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 26.500000, 220.000000)
	registerVal14:setTopBottom(true, false, -36.000000, -11.810000)
	registerVal14:setAlpha(0.700000)
	registerVal14:setYRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar2"))
	registerVal2:addElement(registerVal14)
	registerVal2.testElement0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -26.500000, 216.500000)
	registerVal15:setTopBottom(true, false, -14.000000, 67.000000)
	registerVal15:setAlpha(0.500000)
	registerVal15:setYRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_codcaster_teamcolorbar1"))
	registerVal2:addElement(registerVal15)
	registerVal2.FlashElement = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -18.500000, 5.500000)
	registerVal16:setTopBottom(true, false, 3.000000, 51.000000)
	registerVal16:setAlpha(0.800000)
	registerVal16:setImage(RegisterImage("uie_t7_codcaster_teamarrow"))
	registerVal2:addElement(registerVal16)
	registerVal2.Arrow = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_10FA_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamcolor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.logo:setAlpha(1.000000)
		registerVal2.logo:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.testElementFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.testElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.testElement0Full:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.testElement0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FlashElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.Arrow:setScale(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_10FA_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_1564_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamcolor:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.teamcolor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.testElementFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.testElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.testElement0Full:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.testElement0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FlashElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1564_
	registerVal17.NonTeamBased = registerVal18
	registerVal18 = {}
	local function __FUNC_19BA_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1E09_(arg0, arg1)
			local function __FUNC_1F83_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F83_)
		end

		registerVal3:completeAnimation()
		registerVal2.GlowWhiteOver:setAlpha(0.000000)
		__FUNC_1E09_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamcolor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2135_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.logo:setAlpha(1.000000)
		registerVal2.logo:setScale(1.000000)
		__FUNC_2135_(registerVal7, {})
		local function __FUNC_230A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.testElementFull:setAlpha(0.000000)
		__FUNC_230A_(registerVal11, {})
		local function __FUNC_24BB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.testElement:setAlpha(0.000000)
		__FUNC_24BB_(registerVal12, {})
		local function __FUNC_266B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.testElement0Full:setAlpha(0.000000)
		__FUNC_266B_(registerVal13, {})
		local function __FUNC_281B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.testElement0:setAlpha(0.000000)
		__FUNC_281B_(registerVal14, {})
		local function __FUNC_29CB_(arg0, arg1)
			local function __FUNC_2B41_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 710.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B41_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B41_)
		end

		registerVal15:completeAnimation()
		registerVal2.FlashElement:setAlpha(0.000000)
		__FUNC_29CB_(registerVal15, {})
		local function __FUNC_2CF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.Arrow:setScale(0.500000)
		__FUNC_2CF5_(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_19BA_
	registerVal17.SpectatingThisTeam = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "NonTeamBased"
	local function __FUNC_2EC5_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeTeambased()
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_2EC5_
	local registerVal21 = {}
	registerVal21.stateName = "SpectatingThisTeam"
	local function __FUNC_2F1D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_2F1D_
	registerVal19 = {registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal19)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

