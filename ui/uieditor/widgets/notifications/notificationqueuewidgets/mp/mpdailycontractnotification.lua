-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationWeeklyDailyWidget")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MPDailyContractNotification = registerVal1
function CoD.MPDailyContractNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPDailyContractNotification)
	registerVal2.id = "MPDailyContractNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.NotificationWeeklyDailyWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -95.000000, 99.000000)
	registerVal3:setTopBottom(true, false, 135.000000, 165.600000)
	registerVal3.NotificationWeeklyDailyTextWidget.WeeklyText:setText(Engine.Localize("MPUI_BM_CONTRACT_DAILY"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationWeeklyDailyWidget = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_challenge_center_shadow"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterShadow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal5:setRGB(0.160000, 0.160000, 0.160000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_challenge_center_backing"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterBacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal6:setAlpha(0.300000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_fill"))
	registerVal2:addElement(registerVal6)
	registerVal2.FrameFill = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal7:setRGB(0.110000, 0.110000, 0.110000)
	registerVal7:setAlpha(0.400000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_notches"))
	registerVal2:addElement(registerVal7)
	registerVal2.FrameNotches = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 151.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_challenge_frame_stroke"))
	registerVal2:addElement(registerVal8)
	registerVal2.FrameStroke = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal9:setTopBottom(true, false, 161.000000, 339.000000)
	registerVal9:setRGB(0.160000, 0.160000, 0.160000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal9)
	registerVal2.DescBacking = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal10:setTopBottom(true, false, 199.000000, 219.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.Desc = registerVal10
	local registerVal11 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal11:setTopBottom(true, false, 161.000000, 201.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.NotifGlobalTitleLine = registerVal11
	local registerVal12 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -140.000000, 141.000000)
	registerVal12:setTopBottom(true, false, 161.000000, 201.000000)
	registerVal12.NotifGlobalTitleBacking.left:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_left"))
	registerVal12.NotifGlobalTitleBacking.right:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_right"))
	registerVal12.NotifGlobalTitleBacking.Image0:setImage(RegisterImage("uie_t7_hud_notif_bm_titlebacking_center"))
	registerVal12.SubText:setRGB(0.940000, 0.890000, 0.590000)
	registerVal2:addElement(registerVal12)
	registerVal2.NotifGlobalTitle = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal13:setTopBottom(true, false, 16.000000, 134.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.highlight = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal14:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal14:setRGB(0.000000, 0.270000, 0.010000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal14:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.imageG = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal15:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal15:setRGB(0.550000, 0.090000, 0.090000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal15:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.imageR = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -67.250000, 66.250000)
	registerVal16:setTopBottom(true, false, 9.500000, 143.000000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_notif_daily_challenge"))
	registerVal2:addElement(registerVal16)
	registerVal2.image = registerVal16
	local registerVal17 = LUI.UIElement.new()
	registerVal17:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal17:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.levelUpSound = registerVal17
	local function __FUNC_1859_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.FrameFill:linkToElementModel(registerVal2, "color", true, __FUNC_1859_)
	local function __FUNC_18EB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.FrameStroke:linkToElementModel(registerVal2, "color", true, __FUNC_18EB_)
	local function __FUNC_197B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_197B_)
	local function __FUNC_1A32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1A32_)
	local function __FUNC_1B1A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1B1A_)
	local function __FUNC_1BF8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1BF8_)
	local function __FUNC_1CCF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1CCF_)
	local function __FUNC_1DA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1DA3_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1E33_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_2837_(arg0, arg1)
			local function __FUNC_298C_(arg0, arg1)
				local function __FUNC_2B07_(arg0, arg1)
					local function __FUNC_2C7F_(arg0, arg1)
						local function __FUNC_2DF7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2DF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, true, true, CoD.TweenType.Bounce)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF7_)
					end

					if arg1.interrupted then
						__FUNC_2C7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, true, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7F_)
				end

				if arg1.interrupted then
					__FUNC_2B07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, true, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B07_)
			end

			if arg1.interrupted then
				__FUNC_298C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298C_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationWeeklyDailyWidget:setAlpha(0.000000)
		__FUNC_2837_(registerVal3, {})
		local function __FUNC_2FA9_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_2FA9_(registerVal4, {})
		local function __FUNC_315D_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.000000)
		registerVal2.CenterBacking:setScale(5.000000)
		__FUNC_315D_(registerVal5, {})
		local function __FUNC_3334_(arg0, arg1)
			local function __FUNC_348C_(arg0, arg1)
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
				__FUNC_348C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_348C_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.000000)
		registerVal2.FrameFill:setScale(5.000000)
		__FUNC_3334_(registerVal6, {})
		local function __FUNC_3664_(arg0, arg1)
			local function __FUNC_37BC_(arg0, arg1)
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
				__FUNC_37BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37BC_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.000000)
		registerVal2.FrameNotches:setScale(5.000000)
		__FUNC_3664_(registerVal7, {})
		local function __FUNC_3994_(arg0, arg1)
			local function __FUNC_3AEC_(arg0, arg1)
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
				__FUNC_3AEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AEC_)
		end

		registerVal8:completeAnimation()
		registerVal2.FrameStroke:setAlpha(0.000000)
		registerVal2.FrameStroke:setScale(5.000000)
		__FUNC_3994_(registerVal8, {})
		local function __FUNC_3CBF_(arg0, arg1)
			local function __FUNC_3E14_(arg0, arg1)
				local function __FUNC_3F8F_(arg0, arg1)
					local function __FUNC_4105_(arg0, arg1)
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
						__FUNC_4105_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Back)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4105_)
				end

				if arg1.interrupted then
					__FUNC_3F8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F8F_)
			end

			if arg1.interrupted then
				__FUNC_3E14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E14_)
		end

		registerVal9:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_3CBF_(registerVal9, {})
		local function __FUNC_42B9_(arg0, arg1)
			local function __FUNC_4410_(arg0, arg1)
				local function __FUNC_458B_(arg0, arg1)
					local function __FUNC_4703_(arg0, arg1)
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
						__FUNC_4703_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4703_)
				end

				if arg1.interrupted then
					__FUNC_458B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458B_)
			end

			if arg1.interrupted then
				__FUNC_4410_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4410_)
		end

		registerVal10:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_42B9_(registerVal10, {})
		local function __FUNC_48B5_(arg0, arg1)
			local function __FUNC_4A0C_(arg0, arg1)
				local function __FUNC_4B87_(arg0, arg1)
					local function __FUNC_4CFF_(arg0, arg1)
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
						__FUNC_4CFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CFF_)
				end

				if arg1.interrupted then
					__FUNC_4B87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B87_)
			end

			if arg1.interrupted then
				__FUNC_4A0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A0C_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_48B5_(registerVal11, {})
		local function __FUNC_4EB1_(arg0, arg1)
			local function __FUNC_5008_(arg0, arg1)
				local function __FUNC_5183_(arg0, arg1)
					local function __FUNC_52FB_(arg0, arg1)
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
						__FUNC_52FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52FB_)
				end

				if arg1.interrupted then
					__FUNC_5183_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5183_)
			end

			if arg1.interrupted then
				__FUNC_5008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5008_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_4EB1_(registerVal12, {})
		local function __FUNC_54AD_(arg0, arg1)
			local function __FUNC_5604_(arg0, arg1)
				local function __FUNC_57C4_(arg0, arg1)
					local function __FUNC_5984_(arg0, arg1)
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
						__FUNC_5984_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.530000)
					arg0:setZRot(240.000000)
					arg0:setScale(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5984_)
				end

				if arg1.interrupted then
					__FUNC_57C4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(72.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57C4_)
			end

			if arg1.interrupted then
				__FUNC_5604_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5604_)
		end

		registerVal13:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_54AD_(registerVal13, {})
		local function __FUNC_5B7E_(arg0, arg1)
			local function __FUNC_5CD4_(arg0, arg1)
				local function __FUNC_5EAA_(arg0, arg1)
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
					__FUNC_5EAA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 9.160000, 117.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EAA_)
			end

			if arg1.interrupted then
				__FUNC_5CD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CD4_)
		end

		registerVal14:completeAnimation()
		registerVal2.imageG:setLeftRight(false, false, 66.000000, 174.000000)
		registerVal2.imageG:setTopBottom(true, false, 26.000000, 134.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		registerVal2.imageG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageG:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_5B7E_(registerVal14, {})
		local function __FUNC_61FC_(arg0, arg1)
			local function __FUNC_6354_(arg0, arg1)
				local function __FUNC_652A_(arg0, arg1)
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
					__FUNC_652A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -117.160000, -9.160000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_652A_)
			end

			if arg1.interrupted then
				__FUNC_6354_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6354_)
		end

		registerVal15:completeAnimation()
		registerVal2.imageR:setLeftRight(false, false, -174.000000, -66.000000)
		registerVal2.imageR:setTopBottom(true, false, 26.000000, 134.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		registerVal2.imageR:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageR:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_61FC_(registerVal15, {})
		local function __FUNC_687C_(arg0, arg1)
			local function __FUNC_69D4_(arg0, arg1)
				local function __FUNC_6B72_(arg0, arg1)
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
					__FUNC_6B72_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B72_)
			end

			if arg1.interrupted then
				__FUNC_69D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69D4_)
		end

		registerVal16:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_687C_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.levelUpSound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1E33_
	local function __FUNC_6D43_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_72BE_(arg0, arg1)
			local function __FUNC_7414_(arg0, arg1)
				local function __FUNC_758F_(arg0, arg1)
					local function __FUNC_7707_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, true, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7707_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, true, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7707_)
				end

				if arg1.interrupted then
					__FUNC_758F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, true, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_758F_)
			end

			if arg1.interrupted then
				__FUNC_7414_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7414_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationWeeklyDailyWidget:setAlpha(1.000000)
		__FUNC_72BE_(registerVal3, {})
		local function __FUNC_78B9_(arg0, arg1)
			local function __FUNC_7A10_(arg0, arg1)
				local function __FUNC_7B8B_(arg0, arg1)
					local function __FUNC_7CE0_(arg0, arg1)
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
						__FUNC_7CE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CE0_)
				end

				if arg1.interrupted then
					__FUNC_7B8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B8B_)
			end

			if arg1.interrupted then
				__FUNC_7A10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A10_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.500000)
		__FUNC_78B9_(registerVal4, {})
		local function __FUNC_7E95_(arg0, arg1)
			local function __FUNC_7FEC_(arg0, arg1)
				local function __FUNC_8167_(arg0, arg1)
					local function __FUNC_82BC_(arg0, arg1)
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
						__FUNC_82BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82BC_)
				end

				if arg1.interrupted then
					__FUNC_8167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8167_)
			end

			if arg1.interrupted then
				__FUNC_7FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FEC_)
		end

		registerVal5:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.400000)
		__FUNC_7E95_(registerVal5, {})
		local function __FUNC_8471_(arg0, arg1)
			local function __FUNC_85C8_(arg0, arg1)
				local function __FUNC_8743_(arg0, arg1)
					local function __FUNC_88BB_(arg0, arg1)
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
						__FUNC_88BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88BB_)
				end

				if arg1.interrupted then
					__FUNC_8743_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8743_)
			end

			if arg1.interrupted then
				__FUNC_85C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85C8_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.300000)
		__FUNC_8471_(registerVal6, {})
		local function __FUNC_8A6D_(arg0, arg1)
			local function __FUNC_8BC4_(arg0, arg1)
				local function __FUNC_8D3F_(arg0, arg1)
					local function __FUNC_8EB7_(arg0, arg1)
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
						__FUNC_8EB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EB7_)
				end

				if arg1.interrupted then
					__FUNC_8D3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D3F_)
			end

			if arg1.interrupted then
				__FUNC_8BC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BC4_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameNotches:setAlpha(0.400000)
		__FUNC_8A6D_(registerVal7, {})
		local function __FUNC_9069_(arg0, arg1)
			local function __FUNC_91C0_(arg0, arg1)
				local function __FUNC_933B_(arg0, arg1)
					local function __FUNC_94B3_(arg0, arg1)
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
						__FUNC_94B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94B3_)
				end

				if arg1.interrupted then
					__FUNC_933B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_933B_)
			end

			if arg1.interrupted then
				__FUNC_91C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91C0_)
		end

		registerVal8:completeAnimation()
		registerVal2.FrameStroke:setAlpha(1.000000)
		__FUNC_9069_(registerVal8, {})
		local function __FUNC_9665_(arg0, arg1)
			local function __FUNC_97DF_(arg0, arg1)
				local function __FUNC_9957_(arg0, arg1)
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
					__FUNC_9957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9957_)
			end

			if arg1.interrupted then
				__FUNC_97DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97DF_)
		end

		registerVal9:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_9665_(registerVal9, {})
		local function __FUNC_9B09_(arg0, arg1)
			local function __FUNC_9C83_(arg0, arg1)
				local function __FUNC_9DFB_(arg0, arg1)
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
					__FUNC_9DFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DFB_)
			end

			if arg1.interrupted then
				__FUNC_9C83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C83_)
		end

		registerVal10:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_9B09_(registerVal10, {})
		local function __FUNC_9FAD_(arg0, arg1)
			local function __FUNC_A104_(arg0, arg1)
				local function __FUNC_A27F_(arg0, arg1)
					local function __FUNC_A3F7_(arg0, arg1)
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
						__FUNC_A3F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3F7_)
				end

				if arg1.interrupted then
					__FUNC_A27F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A27F_)
			end

			if arg1.interrupted then
				__FUNC_A104_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A104_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_9FAD_(registerVal11, {})
		local function __FUNC_A5A9_(arg0, arg1)
			local function __FUNC_A700_(arg0, arg1)
				local function __FUNC_A87B_(arg0, arg1)
					local function __FUNC_A9F3_(arg0, arg1)
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
						__FUNC_A9F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9F3_)
				end

				if arg1.interrupted then
					__FUNC_A87B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A87B_)
			end

			if arg1.interrupted then
				__FUNC_A700_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A700_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_A5A9_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_ABA5_(arg0, arg1)
			local function __FUNC_ACFC_(arg0, arg1)
				local function __FUNC_AE77_(arg0, arg1)
					local function __FUNC_AFEF_(arg0, arg1)
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
						__FUNC_AFEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFEF_)
				end

				if arg1.interrupted then
					__FUNC_AE77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE77_)
			end

			if arg1.interrupted then
				__FUNC_ACFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACFC_)
		end

		registerVal16:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_ABA5_(registerVal16, {})
	end

	registerVal19.TimeUp = __FUNC_6D43_
	registerVal18.DefaultState = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_B19F_(arg0)
		arg0.NotificationWeeklyDailyWidget:close()
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.FrameFill:close()
		arg0.FrameStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B19F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

