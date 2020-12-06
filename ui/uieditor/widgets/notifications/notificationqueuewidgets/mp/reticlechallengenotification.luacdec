-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ReticleChallengeNotification = registerVal1
function CoD.ReticleChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ReticleChallengeNotification)
	registerVal2.id = "ReticleChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal3:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_reticle_center_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterShadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal4:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal4:setRGB(0.160000, 0.160000, 0.160000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_reticle_center_backing"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal5:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_reticle_frame_fill"))
	registerVal2:addElement(registerVal5)
	registerVal2.FrameFill = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal6:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_reticle_frame_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.FrameGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal7:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_reticle_frame_notch"))
	registerVal2:addElement(registerVal7)
	registerVal2.FrameNotch = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal8:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_reticle_frame_notch_glow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.FrameNotchGlow = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 85.000000, 263.000000)
	registerVal9:setTopBottom(true, false, -12.000000, 166.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_reticle_frame_stroke"))
	registerVal2:addElement(registerVal9)
	registerVal2.FrameStroke = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal10:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal10:setRGB(0.160000, 0.160000, 0.160000)
	registerVal10:setAlpha(0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal10)
	registerVal2.DescBacking = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal11:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.Desc = registerVal11
	local registerVal12 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal12:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.NotifGlobalTitleLine = registerVal12
	local registerVal13 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 34.000000, 315.000000)
	registerVal13:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.NotifGlobalTitle = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal14:setTopBottom(true, false, 18.000000, 136.000000)
	registerVal14:setScale(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.highlight = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, 41.000000, 123.000000)
	registerVal15:setTopBottom(true, false, 36.000000, 118.000000)
	registerVal15:setRGB(0.000000, 0.270000, 0.010000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal15:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.imageG = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -127.000000, -45.000000)
	registerVal16:setTopBottom(true, false, 36.000000, 118.000000)
	registerVal16:setRGB(0.550000, 0.090000, 0.090000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setScale(5.000000)
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal16:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal16:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.imageR = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -41.000000, 41.000000)
	registerVal17:setTopBottom(true, false, 36.000000, 118.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.image = registerVal17
	local registerVal18 = LUI.UIElement.new()
	registerVal18:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.levelUpSound = registerVal18
	local function __FUNC_1779_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.FrameFill:linkToElementModel(registerVal2, "color", true, __FUNC_1779_)
	local function __FUNC_180B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.FrameGlow:linkToElementModel(registerVal2, "color", true, __FUNC_180B_)
	local function __FUNC_189B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.FrameNotch:linkToElementModel(registerVal2, "color", true, __FUNC_189B_)
	local function __FUNC_192B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.FrameNotchGlow:linkToElementModel(registerVal2, "color", true, __FUNC_192B_)
	local function __FUNC_19BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal2.FrameStroke:linkToElementModel(registerVal2, "color", true, __FUNC_19BB_)
	local function __FUNC_1A4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1A4B_)
	local function __FUNC_1B02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1B02_)
	local function __FUNC_1BEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1BEA_)
	local function __FUNC_1CC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1CC8_)
	local function __FUNC_1D9F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_1D9F_)
	local function __FUNC_1E5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1E5C_)
	local function __FUNC_1F33_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1F33_)
	local function __FUNC_1FC3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_1FC3_)
	local function __FUNC_2074_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_2074_)
	local function __FUNC_2128_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_2128_)
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_21DC_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_2C5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_2C5D_(registerVal3, {})
		local function __FUNC_2E11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
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
		__FUNC_2E11_(registerVal4, {})
		local function __FUNC_2FE8_(arg0, arg1)
			local function __FUNC_3140_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3140_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3140_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.000000)
		registerVal2.FrameFill:setScale(5.000000)
		__FUNC_2FE8_(registerVal5, {})
		local function __FUNC_3318_(arg0, arg1)
			local function __FUNC_3470_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, true, CoD.TweenType.Linear)
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
				__FUNC_3470_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3470_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameGlow:setAlpha(0.000000)
		registerVal2.FrameGlow:setScale(5.000000)
		__FUNC_3318_(registerVal6, {})
		local function __FUNC_3643_(arg0, arg1)
			local function __FUNC_3798_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Bounce)
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
				__FUNC_3798_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3798_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameNotch:setAlpha(0.000000)
		registerVal2.FrameNotch:setScale(5.000000)
		__FUNC_3643_(registerVal7, {})
		local function __FUNC_396B_(arg0, arg1)
			local function __FUNC_3AE3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Bounce)
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
				__FUNC_3AE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(5.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE3_)
		end

		registerVal8:completeAnimation()
		registerVal2.FrameNotchGlow:setAlpha(0.000000)
		registerVal2.FrameNotchGlow:setScale(1.000000)
		__FUNC_396B_(registerVal8, {})
		local function __FUNC_3CB3_(arg0, arg1)
			local function __FUNC_3E08_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
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
				__FUNC_3E08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E08_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrameStroke:setAlpha(0.000000)
		registerVal2.FrameStroke:setScale(5.000000)
		__FUNC_3CB3_(registerVal9, {})
		local function __FUNC_3FDB_(arg0, arg1)
			local function __FUNC_4130_(arg0, arg1)
				local function __FUNC_42AB_(arg0, arg1)
					local function __FUNC_4423_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4423_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4423_)
				end

				if arg1.interrupted then
					__FUNC_42AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42AB_)
			end

			if arg1.interrupted then
				__FUNC_4130_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4130_)
		end

		registerVal10:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_3FDB_(registerVal10, {})
		local function __FUNC_45D5_(arg0, arg1)
			local function __FUNC_472C_(arg0, arg1)
				local function __FUNC_48A7_(arg0, arg1)
					local function __FUNC_4A1F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4A1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A1F_)
				end

				if arg1.interrupted then
					__FUNC_48A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A7_)
			end

			if arg1.interrupted then
				__FUNC_472C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_472C_)
		end

		registerVal11:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_45D5_(registerVal11, {})
		local function __FUNC_4BD1_(arg0, arg1)
			local function __FUNC_4D28_(arg0, arg1)
				local function __FUNC_4EA3_(arg0, arg1)
					local function __FUNC_501B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_501B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_501B_)
				end

				if arg1.interrupted then
					__FUNC_4EA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EA3_)
			end

			if arg1.interrupted then
				__FUNC_4D28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D28_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_4BD1_(registerVal12, {})
		local function __FUNC_51CD_(arg0, arg1)
			local function __FUNC_5324_(arg0, arg1)
				local function __FUNC_549F_(arg0, arg1)
					local function __FUNC_5617_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5617_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5617_)
				end

				if arg1.interrupted then
					__FUNC_549F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_549F_)
			end

			if arg1.interrupted then
				__FUNC_5324_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5324_)
		end

		registerVal13:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_51CD_(registerVal13, {})
		local function __FUNC_57C9_(arg0, arg1)
			local function __FUNC_5920_(arg0, arg1)
				local function __FUNC_5AE0_(arg0, arg1)
					local function __FUNC_5CA0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
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
						__FUNC_5CA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(0.530000)
					arg0:setZRot(325.620000)
					arg0:setScale(1.150000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CA0_)
				end

				if arg1.interrupted then
					__FUNC_5AE0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(208.160000)
				arg0:setScale(2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AE0_)
			end

			if arg1.interrupted then
				__FUNC_5920_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5920_)
		end

		registerVal14:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(0.000000)
		__FUNC_57C9_(registerVal14, {})
		local function __FUNC_5E9A_(arg0, arg1)
			local function __FUNC_6013_(arg0, arg1)
				local function __FUNC_61E6_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -40.500000, 41.500000)
					arg0:setTopBottom(true, false, 36.000000, 118.000000)
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
					__FUNC_61E6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 12.240000, 94.240000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.290000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61E6_)
			end

			if arg1.interrupted then
				__FUNC_6013_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(3.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6013_)
		end

		registerVal15:completeAnimation()
		registerVal2.imageG:setLeftRight(false, false, 41.000000, 123.000000)
		registerVal2.imageG:setTopBottom(true, false, 36.000000, 118.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(0.000000)
		registerVal2.imageG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageG:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_5E9A_(registerVal15, {})
		local function __FUNC_6538_(arg0, arg1)
			local function __FUNC_6690_(arg0, arg1)
				local function __FUNC_6866_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -41.000000, 41.000000)
					arg0:setTopBottom(true, false, 36.000000, 118.000000)
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
					__FUNC_6866_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -93.740000, -11.740000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.290000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6866_)
			end

			if arg1.interrupted then
				__FUNC_6690_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6690_)
		end

		registerVal16:completeAnimation()
		registerVal2.imageR:setLeftRight(false, false, -122.500000, -40.500000)
		registerVal2.imageR:setTopBottom(true, false, 36.000000, 118.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		registerVal2.imageR:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageR:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_6538_(registerVal16, {})
		local function __FUNC_6BB8_(arg0, arg1)
			local function __FUNC_6D10_(arg0, arg1)
				local function __FUNC_6EAE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_6EAE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EAE_)
			end

			if arg1.interrupted then
				__FUNC_6D10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D10_)
		end

		registerVal17:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_6BB8_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.levelUpSound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_21DC_
	local function __FUNC_707F_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_758F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.400000)
		__FUNC_758F_(registerVal3, {})
		local function __FUNC_7741_(arg0, arg1)
			local function __FUNC_7898_(arg0, arg1)
				local function __FUNC_7A13_(arg0, arg1)
					local function __FUNC_7B8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7B8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B8B_)
				end

				if arg1.interrupted then
					__FUNC_7A13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A13_)
			end

			if arg1.interrupted then
				__FUNC_7898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7898_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterBacking:setAlpha(0.200000)
		__FUNC_7741_(registerVal4, {})
		local function __FUNC_7D3D_(arg0, arg1)
			local function __FUNC_7E94_(arg0, arg1)
				local function __FUNC_800F_(arg0, arg1)
					local function __FUNC_8187_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8187_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8187_)
				end

				if arg1.interrupted then
					__FUNC_800F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_800F_)
			end

			if arg1.interrupted then
				__FUNC_7E94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E94_)
		end

		registerVal5:completeAnimation()
		registerVal2.FrameFill:setAlpha(0.200000)
		__FUNC_7D3D_(registerVal5, {})
		local function __FUNC_8339_(arg0, arg1)
			local function __FUNC_8490_(arg0, arg1)
				local function __FUNC_860B_(arg0, arg1)
					local function __FUNC_8783_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8783_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8783_)
				end

				if arg1.interrupted then
					__FUNC_860B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_860B_)
			end

			if arg1.interrupted then
				__FUNC_8490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8490_)
		end

		registerVal6:completeAnimation()
		registerVal2.FrameGlow:setAlpha(1.000000)
		__FUNC_8339_(registerVal6, {})
		local function __FUNC_8935_(arg0, arg1)
			local function __FUNC_8A8C_(arg0, arg1)
				local function __FUNC_8C07_(arg0, arg1)
					local function __FUNC_8D7F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8D7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D7F_)
				end

				if arg1.interrupted then
					__FUNC_8C07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C07_)
			end

			if arg1.interrupted then
				__FUNC_8A8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A8C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FrameNotch:setAlpha(1.000000)
		__FUNC_8935_(registerVal7, {})
		local function __FUNC_8F31_(arg0, arg1)
			local function __FUNC_9088_(arg0, arg1)
				local function __FUNC_9203_(arg0, arg1)
					local function __FUNC_937B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_937B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_937B_)
				end

				if arg1.interrupted then
					__FUNC_9203_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9203_)
			end

			if arg1.interrupted then
				__FUNC_9088_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9088_)
		end

		registerVal8:completeAnimation()
		registerVal2.FrameNotchGlow:setAlpha(1.000000)
		__FUNC_8F31_(registerVal8, {})
		local function __FUNC_952D_(arg0, arg1)
			local function __FUNC_9684_(arg0, arg1)
				local function __FUNC_97FF_(arg0, arg1)
					local function __FUNC_9977_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9977_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9977_)
				end

				if arg1.interrupted then
					__FUNC_97FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97FF_)
			end

			if arg1.interrupted then
				__FUNC_9684_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9684_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrameStroke:setAlpha(1.000000)
		__FUNC_952D_(registerVal9, {})
		local function __FUNC_9B29_(arg0, arg1)
			local function __FUNC_9CA3_(arg0, arg1)
				local function __FUNC_9E1B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9E1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E1B_)
			end

			if arg1.interrupted then
				__FUNC_9CA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CA3_)
		end

		registerVal10:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_9B29_(registerVal10, {})
		local function __FUNC_9FCD_(arg0, arg1)
			local function __FUNC_A147_(arg0, arg1)
				local function __FUNC_A2BF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A2BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2BF_)
			end

			if arg1.interrupted then
				__FUNC_A147_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A147_)
		end

		registerVal11:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_9FCD_(registerVal11, {})
		local function __FUNC_A471_(arg0, arg1)
			local function __FUNC_A5C8_(arg0, arg1)
				local function __FUNC_A743_(arg0, arg1)
					local function __FUNC_A8BB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A8BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8BB_)
				end

				if arg1.interrupted then
					__FUNC_A743_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A743_)
			end

			if arg1.interrupted then
				__FUNC_A5C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5C8_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_A471_(registerVal12, {})
		local function __FUNC_AA6D_(arg0, arg1)
			local function __FUNC_ABC4_(arg0, arg1)
				local function __FUNC_AD3F_(arg0, arg1)
					local function __FUNC_AEB7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AEB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEB7_)
				end

				if arg1.interrupted then
					__FUNC_AD3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD3F_)
			end

			if arg1.interrupted then
				__FUNC_ABC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABC4_)
		end

		registerVal13:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_AA6D_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_B069_(arg0, arg1)
			local function __FUNC_B1C0_(arg0, arg1)
				local function __FUNC_B33B_(arg0, arg1)
					local function __FUNC_B4B3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B4B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4B3_)
				end

				if arg1.interrupted then
					__FUNC_B33B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B33B_)
			end

			if arg1.interrupted then
				__FUNC_B1C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1C0_)
		end

		registerVal17:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_B069_(registerVal17, {})
	end

	registerVal20.TimeUp = __FUNC_707F_
	registerVal19.DefaultState = registerVal20
	registerVal2.clipsPerState = registerVal19
	local function __FUNC_B665_(arg0)
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.FrameFill:close()
		arg0.FrameGlow:close()
		arg0.FrameNotch:close()
		arg0.FrameNotchGlow:close()
		arg0.FrameStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B665_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

