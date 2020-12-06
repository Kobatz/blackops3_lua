-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MPChallengeNotification = registerVal1
function CoD.MPChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPChallengeNotification)
	registerVal2.id = "MPChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_challenge_center_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterShadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal4:setRGB(0.160000, 0.160000, 0.160000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_challenge_center_backing"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_fill"))
	registerVal2:addElement(registerVal5)
	registerVal2.FrameFill = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal6:setRGB(0.110000, 0.110000, 0.110000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_notches"))
	registerVal2:addElement(registerVal6)
	registerVal2.FrameNotches = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_stroke"))
	registerVal2:addElement(registerVal7)
	registerVal2.FrameStroke = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal8:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal8:setRGB(0.160000, 0.160000, 0.160000)
	registerVal8:setAlpha(0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal8)
	registerVal2.DescBacking = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal9:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Desc = registerVal9
	local registerVal10 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal10:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.NotifGlobalTitleLine = registerVal10
	local registerVal11 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -140.000000, 141.000000)
	registerVal11:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.NotifGlobalTitle = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal12:setTopBottom(true, false, 16.000000, 134.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.highlight = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal13:setTopBottom(true, false, 26.000000, 134.000000)
	registerVal13:setRGB(0.000000, 0.270000, 0.010000)
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal13:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.imageG = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal14:setTopBottom(true, false, 26.000000, 134.000000)
	registerVal14:setRGB(0.550000, 0.090000, 0.090000)
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal14:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.imageR = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal15:setTopBottom(true, false, 26.000000, 134.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.image = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.levelUpSound = registerVal16
	local function __FUNC_14FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.FrameFill:linkToElementModel(registerVal2, "color", true, __FUNC_14FE_)
	local function __FUNC_158F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.FrameStroke:linkToElementModel(registerVal2, "color", true, __FUNC_158F_)
	local function __FUNC_161F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_161F_)
	local function __FUNC_16D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_16D6_)
	local function __FUNC_17BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_17BE_)
	local function __FUNC_189C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_189C_)
	local function __FUNC_1973_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_1973_)
	local function __FUNC_1A30_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1A30_)
	local function __FUNC_1B07_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1B07_)
	local function __FUNC_1B97_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_1B97_)
	local function __FUNC_1C48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_1C48_)
	local function __FUNC_1CFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_1CFC_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1DB0_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_2750_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_2750_(registerVal3, {})
		local function __FUNC_2905_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.000000)
		registerVal2.CenterBacking:setScale(5.000000)
		__FUNC_2905_(registerVal4, {})
		local function __FUNC_2ADC_(arg0, arg1)
			local function __FUNC_2C34_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.300000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C34_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.000000)
		registerVal2.FrameFill:setScale(5.000000)
		__FUNC_2ADC_(registerVal5, {})
		local function __FUNC_2E0C_(arg0, arg1)
			local function __FUNC_2F64_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.400000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F64_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.000000)
		registerVal2.FrameNotches:setScale(5.000000)
		__FUNC_2E0C_(registerVal6, {})
		local function __FUNC_313C_(arg0, arg1)
			local function __FUNC_3294_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3294_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3294_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameStroke:setAlpha(0.000000)
		registerVal2.FrameStroke:setScale(5.000000)
		__FUNC_313C_(registerVal7, {})
		local function __FUNC_3467_(arg0, arg1)
			local function __FUNC_35BC_(arg0, arg1)
				local function __FUNC_3737_(arg0, arg1)
					local function __FUNC_38AD_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_38AD_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Back)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AD_)
				end

				if arg1.interrupted then
					__FUNC_3737_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3737_)
			end

			if arg1.interrupted then
				__FUNC_35BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35BC_)
		end

		registerVal8:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_3467_(registerVal8, {})
		local function __FUNC_3A61_(arg0, arg1)
			local function __FUNC_3BB8_(arg0, arg1)
				local function __FUNC_3D33_(arg0, arg1)
					local function __FUNC_3EAB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3EAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EAB_)
				end

				if arg1.interrupted then
					__FUNC_3D33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D33_)
			end

			if arg1.interrupted then
				__FUNC_3BB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB8_)
		end

		registerVal9:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_3A61_(registerVal9, {})
		local function __FUNC_405D_(arg0, arg1)
			local function __FUNC_41B4_(arg0, arg1)
				local function __FUNC_432F_(arg0, arg1)
					local function __FUNC_44A7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_44A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44A7_)
				end

				if arg1.interrupted then
					__FUNC_432F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_432F_)
			end

			if arg1.interrupted then
				__FUNC_41B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41B4_)
		end

		registerVal10:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_405D_(registerVal10, {})
		local function __FUNC_4659_(arg0, arg1)
			local function __FUNC_47B0_(arg0, arg1)
				local function __FUNC_492B_(arg0, arg1)
					local function __FUNC_4AA3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4AA3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AA3_)
				end

				if arg1.interrupted then
					__FUNC_492B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_492B_)
			end

			if arg1.interrupted then
				__FUNC_47B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47B0_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_4659_(registerVal11, {})
		local function __FUNC_4C55_(arg0, arg1)
			local function __FUNC_4DAC_(arg0, arg1)
				local function __FUNC_4F6C_(arg0, arg1)
					local function __FUNC_512C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.200000)
						arg0:setZRot(360.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_512C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.530000)
					arg0:setZRot(240.000000)
					arg0:setScale(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_512C_)
				end

				if arg1.interrupted then
					__FUNC_4F6C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(72.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F6C_)
			end

			if arg1.interrupted then
				__FUNC_4DAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DAC_)
		end

		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_4C55_(registerVal12, {})
		local function __FUNC_5326_(arg0, arg1)
			local function __FUNC_547C_(arg0, arg1)
				local function __FUNC_5652_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -54.000000, 54.000000)
					arg0:setTopBottom(true, false, 26.000000, 134.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
					arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5652_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 9.160000, 117.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5652_)
			end

			if arg1.interrupted then
				__FUNC_547C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_547C_)
		end

		registerVal13:completeAnimation()
		registerVal2.imageG:setLeftRight(false, false, 66.000000, 174.000000)
		registerVal2.imageG:setTopBottom(true, false, 26.000000, 134.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		registerVal2.imageG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageG:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_5326_(registerVal13, {})
		local function __FUNC_59A4_(arg0, arg1)
			local function __FUNC_5AFC_(arg0, arg1)
				local function __FUNC_5CD2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -54.000000, 54.000000)
					arg0:setTopBottom(true, false, 26.000000, 134.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
					arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5CD2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -117.160000, -9.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CD2_)
			end

			if arg1.interrupted then
				__FUNC_5AFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AFC_)
		end

		registerVal14:completeAnimation()
		registerVal2.imageR:setLeftRight(false, false, -174.000000, -66.000000)
		registerVal2.imageR:setTopBottom(true, false, 26.000000, 134.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		registerVal2.imageR:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageR:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_59A4_(registerVal14, {})
		local function __FUNC_6024_(arg0, arg1)
			local function __FUNC_617C_(arg0, arg1)
				local function __FUNC_631A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_631A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_631A_)
			end

			if arg1.interrupted then
				__FUNC_617C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_617C_)
		end

		registerVal15:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_6024_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelUpSound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1DB0_
	local function __FUNC_64EB_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_69FF_(arg0, arg1)
			local function __FUNC_6B54_(arg0, arg1)
				local function __FUNC_6CCF_(arg0, arg1)
					local function __FUNC_6E24_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6E24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E24_)
				end

				if arg1.interrupted then
					__FUNC_6CCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CCF_)
			end

			if arg1.interrupted then
				__FUNC_6B54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B54_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.500000)
		__FUNC_69FF_(registerVal3, {})
		local function __FUNC_6FD9_(arg0, arg1)
			local function __FUNC_7130_(arg0, arg1)
				local function __FUNC_72AB_(arg0, arg1)
					local function __FUNC_7400_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7400_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7400_)
				end

				if arg1.interrupted then
					__FUNC_72AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72AB_)
			end

			if arg1.interrupted then
				__FUNC_7130_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7130_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.400000)
		__FUNC_6FD9_(registerVal4, {})
		local function __FUNC_75B5_(arg0, arg1)
			local function __FUNC_770C_(arg0, arg1)
				local function __FUNC_7887_(arg0, arg1)
					local function __FUNC_79FF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_79FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79FF_)
				end

				if arg1.interrupted then
					__FUNC_7887_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7887_)
			end

			if arg1.interrupted then
				__FUNC_770C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_770C_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.300000)
		__FUNC_75B5_(registerVal5, {})
		local function __FUNC_7BB1_(arg0, arg1)
			local function __FUNC_7D08_(arg0, arg1)
				local function __FUNC_7E83_(arg0, arg1)
					local function __FUNC_7FFB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7FFB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FFB_)
				end

				if arg1.interrupted then
					__FUNC_7E83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E83_)
			end

			if arg1.interrupted then
				__FUNC_7D08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D08_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.400000)
		__FUNC_7BB1_(registerVal6, {})
		local function __FUNC_81AD_(arg0, arg1)
			local function __FUNC_8304_(arg0, arg1)
				local function __FUNC_847F_(arg0, arg1)
					local function __FUNC_85F7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_85F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85F7_)
				end

				if arg1.interrupted then
					__FUNC_847F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_847F_)
			end

			if arg1.interrupted then
				__FUNC_8304_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8304_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameStroke:setAlpha(1.000000)
		__FUNC_81AD_(registerVal7, {})
		local function __FUNC_87A9_(arg0, arg1)
			local function __FUNC_8923_(arg0, arg1)
				local function __FUNC_8A9B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8A9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A9B_)
			end

			if arg1.interrupted then
				__FUNC_8923_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8923_)
		end

		registerVal8:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_87A9_(registerVal8, {})
		local function __FUNC_8C4D_(arg0, arg1)
			local function __FUNC_8DC7_(arg0, arg1)
				local function __FUNC_8F3F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F3F_)
			end

			if arg1.interrupted then
				__FUNC_8DC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DC7_)
		end

		registerVal9:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_8C4D_(registerVal9, {})
		local function __FUNC_90F1_(arg0, arg1)
			local function __FUNC_9248_(arg0, arg1)
				local function __FUNC_93C3_(arg0, arg1)
					local function __FUNC_953B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_953B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_953B_)
				end

				if arg1.interrupted then
					__FUNC_93C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93C3_)
			end

			if arg1.interrupted then
				__FUNC_9248_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9248_)
		end

		registerVal10:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_90F1_(registerVal10, {})
		local function __FUNC_96ED_(arg0, arg1)
			local function __FUNC_9844_(arg0, arg1)
				local function __FUNC_99BF_(arg0, arg1)
					local function __FUNC_9B37_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9B37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B37_)
				end

				if arg1.interrupted then
					__FUNC_99BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99BF_)
			end

			if arg1.interrupted then
				__FUNC_9844_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9844_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_96ED_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_9CE9_(arg0, arg1)
			local function __FUNC_9E40_(arg0, arg1)
				local function __FUNC_9FBB_(arg0, arg1)
					local function __FUNC_A133_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Back)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A133_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A133_)
				end

				if arg1.interrupted then
					__FUNC_9FBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FBB_)
			end

			if arg1.interrupted then
				__FUNC_9E40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E40_)
		end

		registerVal15:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_9CE9_(registerVal15, {})
	end

	registerVal18.TimeUp = __FUNC_64EB_
	registerVal17.DefaultState = registerVal18
	registerVal2.clipsPerState = registerVal17
	local function __FUNC_A2E3_(arg0)
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.FrameFill:close()
		arg0.FrameStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A2E3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

