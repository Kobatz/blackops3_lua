-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SideBetChallengeNotification = registerVal1
function CoD.SideBetChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SideBetChallengeNotification)
	registerVal2.id = "SideBetChallengeNotification"
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
	registerVal11.NotifGlobalTitleBacking.left:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_left"))
	registerVal11.NotifGlobalTitleBacking.right:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_right"))
	registerVal11.NotifGlobalTitleBacking.Image0:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_center"))
	registerVal11.SubText:setRGB(0.940000, 0.890000, 0.590000)
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
	registerVal13:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal13:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal13:setRGB(0.000000, 0.270000, 0.010000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal13:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.imageG = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal14:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal14:setRGB(0.550000, 0.090000, 0.090000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal14:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.imageR = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal15:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal2:addElement(registerVal15)
	registerVal2.image = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.levelUpSound = registerVal16
	local function __FUNC_1665_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.FrameFill:linkToElementModel(registerVal2, "color", true, __FUNC_1665_)
	local function __FUNC_16F7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.FrameStroke:linkToElementModel(registerVal2, "color", true, __FUNC_16F7_)
	local function __FUNC_1787_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1787_)
	local function __FUNC_183E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_183E_)
	local function __FUNC_1926_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1926_)
	local function __FUNC_1A04_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1A04_)
	local function __FUNC_1ADB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1ADB_)
	local function __FUNC_1BAF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1BAF_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1C3F_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_25DC_(arg0, arg1)
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
		__FUNC_25DC_(registerVal3, {})
		local function __FUNC_2791_(arg0, arg1)
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
		__FUNC_2791_(registerVal4, {})
		local function __FUNC_2968_(arg0, arg1)
			local function __FUNC_2AC0_(arg0, arg1)
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
				__FUNC_2AC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC0_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.000000)
		registerVal2.FrameFill:setScale(5.000000)
		__FUNC_2968_(registerVal5, {})
		local function __FUNC_2C98_(arg0, arg1)
			local function __FUNC_2DF0_(arg0, arg1)
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
				__FUNC_2DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF0_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.000000)
		registerVal2.FrameNotches:setScale(5.000000)
		__FUNC_2C98_(registerVal6, {})
		local function __FUNC_2FC8_(arg0, arg1)
			local function __FUNC_3120_(arg0, arg1)
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
				__FUNC_3120_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3120_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameStroke:setAlpha(0.000000)
		registerVal2.FrameStroke:setScale(5.000000)
		__FUNC_2FC8_(registerVal7, {})
		local function __FUNC_32F3_(arg0, arg1)
			local function __FUNC_3448_(arg0, arg1)
				local function __FUNC_35C3_(arg0, arg1)
					local function __FUNC_3739_(arg0, arg1)
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
						__FUNC_3739_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Back)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3739_)
				end

				if arg1.interrupted then
					__FUNC_35C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C3_)
			end

			if arg1.interrupted then
				__FUNC_3448_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3448_)
		end

		registerVal8:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_32F3_(registerVal8, {})
		local function __FUNC_38ED_(arg0, arg1)
			local function __FUNC_3A44_(arg0, arg1)
				local function __FUNC_3BBF_(arg0, arg1)
					local function __FUNC_3D37_(arg0, arg1)
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
						__FUNC_3D37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D37_)
				end

				if arg1.interrupted then
					__FUNC_3BBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BBF_)
			end

			if arg1.interrupted then
				__FUNC_3A44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A44_)
		end

		registerVal9:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_38ED_(registerVal9, {})
		local function __FUNC_3EE9_(arg0, arg1)
			local function __FUNC_4040_(arg0, arg1)
				local function __FUNC_41BB_(arg0, arg1)
					local function __FUNC_4333_(arg0, arg1)
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
						__FUNC_4333_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4333_)
				end

				if arg1.interrupted then
					__FUNC_41BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41BB_)
			end

			if arg1.interrupted then
				__FUNC_4040_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4040_)
		end

		registerVal10:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_3EE9_(registerVal10, {})
		local function __FUNC_44E5_(arg0, arg1)
			local function __FUNC_463C_(arg0, arg1)
				local function __FUNC_47B7_(arg0, arg1)
					local function __FUNC_492F_(arg0, arg1)
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
						__FUNC_492F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_492F_)
				end

				if arg1.interrupted then
					__FUNC_47B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47B7_)
			end

			if arg1.interrupted then
				__FUNC_463C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_463C_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_44E5_(registerVal11, {})
		local function __FUNC_4AE1_(arg0, arg1)
			local function __FUNC_4C38_(arg0, arg1)
				local function __FUNC_4DF8_(arg0, arg1)
					local function __FUNC_4FB8_(arg0, arg1)
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
						__FUNC_4FB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.530000)
					arg0:setZRot(240.000000)
					arg0:setScale(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FB8_)
				end

				if arg1.interrupted then
					__FUNC_4DF8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(72.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DF8_)
			end

			if arg1.interrupted then
				__FUNC_4C38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C38_)
		end

		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_4AE1_(registerVal12, {})
		local function __FUNC_51B2_(arg0, arg1)
			local function __FUNC_5308_(arg0, arg1)
				local function __FUNC_54DE_(arg0, arg1)
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
					__FUNC_54DE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 9.160000, 117.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54DE_)
			end

			if arg1.interrupted then
				__FUNC_5308_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5308_)
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
		__FUNC_51B2_(registerVal13, {})
		local function __FUNC_5830_(arg0, arg1)
			local function __FUNC_5988_(arg0, arg1)
				local function __FUNC_5B5E_(arg0, arg1)
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
					__FUNC_5B5E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -117.160000, -9.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B5E_)
			end

			if arg1.interrupted then
				__FUNC_5988_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5988_)
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
		__FUNC_5830_(registerVal14, {})
		local function __FUNC_5EB0_(arg0, arg1)
			local function __FUNC_6008_(arg0, arg1)
				local function __FUNC_61A6_(arg0, arg1)
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
					__FUNC_61A6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61A6_)
			end

			if arg1.interrupted then
				__FUNC_6008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6008_)
		end

		registerVal15:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_5EB0_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelUpSound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1C3F_
	local function __FUNC_6377_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_688B_(arg0, arg1)
			local function __FUNC_69E0_(arg0, arg1)
				local function __FUNC_6B5B_(arg0, arg1)
					local function __FUNC_6CB0_(arg0, arg1)
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
						__FUNC_6CB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CB0_)
				end

				if arg1.interrupted then
					__FUNC_6B5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B5B_)
			end

			if arg1.interrupted then
				__FUNC_69E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69E0_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.500000)
		__FUNC_688B_(registerVal3, {})
		local function __FUNC_6E65_(arg0, arg1)
			local function __FUNC_6FBC_(arg0, arg1)
				local function __FUNC_7137_(arg0, arg1)
					local function __FUNC_728C_(arg0, arg1)
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
						__FUNC_728C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_728C_)
				end

				if arg1.interrupted then
					__FUNC_7137_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7137_)
			end

			if arg1.interrupted then
				__FUNC_6FBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FBC_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.400000)
		__FUNC_6E65_(registerVal4, {})
		local function __FUNC_7441_(arg0, arg1)
			local function __FUNC_7598_(arg0, arg1)
				local function __FUNC_7713_(arg0, arg1)
					local function __FUNC_788B_(arg0, arg1)
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
						__FUNC_788B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_788B_)
				end

				if arg1.interrupted then
					__FUNC_7713_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7713_)
			end

			if arg1.interrupted then
				__FUNC_7598_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7598_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.300000)
		__FUNC_7441_(registerVal5, {})
		local function __FUNC_7A3D_(arg0, arg1)
			local function __FUNC_7B94_(arg0, arg1)
				local function __FUNC_7D0F_(arg0, arg1)
					local function __FUNC_7E87_(arg0, arg1)
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
						__FUNC_7E87_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E87_)
				end

				if arg1.interrupted then
					__FUNC_7D0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D0F_)
			end

			if arg1.interrupted then
				__FUNC_7B94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B94_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.400000)
		__FUNC_7A3D_(registerVal6, {})
		local function __FUNC_8039_(arg0, arg1)
			local function __FUNC_8190_(arg0, arg1)
				local function __FUNC_830B_(arg0, arg1)
					local function __FUNC_8483_(arg0, arg1)
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
						__FUNC_8483_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8483_)
				end

				if arg1.interrupted then
					__FUNC_830B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_830B_)
			end

			if arg1.interrupted then
				__FUNC_8190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8190_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameStroke:setAlpha(1.000000)
		__FUNC_8039_(registerVal7, {})
		local function __FUNC_8635_(arg0, arg1)
			local function __FUNC_87AF_(arg0, arg1)
				local function __FUNC_8927_(arg0, arg1)
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
					__FUNC_8927_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8927_)
			end

			if arg1.interrupted then
				__FUNC_87AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87AF_)
		end

		registerVal8:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_8635_(registerVal8, {})
		local function __FUNC_8AD9_(arg0, arg1)
			local function __FUNC_8C53_(arg0, arg1)
				local function __FUNC_8DCB_(arg0, arg1)
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
					__FUNC_8DCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DCB_)
			end

			if arg1.interrupted then
				__FUNC_8C53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C53_)
		end

		registerVal9:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_8AD9_(registerVal9, {})
		local function __FUNC_8F7D_(arg0, arg1)
			local function __FUNC_90D4_(arg0, arg1)
				local function __FUNC_924F_(arg0, arg1)
					local function __FUNC_93C7_(arg0, arg1)
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
						__FUNC_93C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93C7_)
				end

				if arg1.interrupted then
					__FUNC_924F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_924F_)
			end

			if arg1.interrupted then
				__FUNC_90D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90D4_)
		end

		registerVal10:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_8F7D_(registerVal10, {})
		local function __FUNC_9579_(arg0, arg1)
			local function __FUNC_96D0_(arg0, arg1)
				local function __FUNC_984B_(arg0, arg1)
					local function __FUNC_99C3_(arg0, arg1)
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
						__FUNC_99C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99C3_)
				end

				if arg1.interrupted then
					__FUNC_984B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_984B_)
			end

			if arg1.interrupted then
				__FUNC_96D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96D0_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_9579_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_9B75_(arg0, arg1)
			local function __FUNC_9CCC_(arg0, arg1)
				local function __FUNC_9E47_(arg0, arg1)
					local function __FUNC_9FBF_(arg0, arg1)
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
						__FUNC_9FBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FBF_)
				end

				if arg1.interrupted then
					__FUNC_9E47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E47_)
			end

			if arg1.interrupted then
				__FUNC_9CCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CCC_)
		end

		registerVal15:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_9B75_(registerVal15, {})
	end

	registerVal18.TimeUp = __FUNC_6377_
	registerVal17.DefaultState = registerVal18
	registerVal2.clipsPerState = registerVal17
	local function __FUNC_A16F_(arg0)
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.FrameFill:close()
		arg0.FrameStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A16F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

