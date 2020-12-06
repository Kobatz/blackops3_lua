-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialistCompletionEpicChallengeNotification = registerVal1
function CoD.SpecialistCompletionEpicChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialistCompletionEpicChallengeNotification)
	registerVal2.id = "SpecialistCompletionEpicChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 198.030000, 318.030000)
	registerVal3:setTopBottom(true, false, 38.830000, 110.830000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_global_top_tier_effect"))
	registerVal2:addElement(registerVal3)
	registerVal2.Side02 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 29.970000, 149.970000)
	registerVal4:setTopBottom(true, false, 38.830000, 110.830000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_global_top_tier_effect"))
	registerVal2:addElement(registerVal4)
	registerVal2.Side01 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal5:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_specialist_center_shadow"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterShadow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal6:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal6:setRGB(0.160000, 0.160000, 0.160000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_specialist_center_fill"))
	registerVal2:addElement(registerVal6)
	registerVal2.CenterFill = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal7:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_fill"))
	registerVal2:addElement(registerVal7)
	registerVal2.SideFill = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal8:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_stroke"))
	registerVal2:addElement(registerVal8)
	registerVal2.SideStroke = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal9:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal9:setRGB(0.160000, 0.160000, 0.160000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal9)
	registerVal2.DescBacking = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal10:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.Desc = registerVal10
	local registerVal11 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal11:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.NotifGlobalTitleLine = registerVal11
	local registerVal12 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 34.000000, 315.000000)
	registerVal12:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.NotifGlobalTitle = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 118.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.highlight = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal14:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal14:setRGB(0.000000, 0.270000, 0.010000)
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal14:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.imageG = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal15:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal15:setRGB(0.550000, 0.090000, 0.090000)
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal15:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.imageR = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal16:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_notif_specialist_notch_panels"))
	registerVal2:addElement(registerVal16)
	registerVal2.NotchPanels = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal17:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.image = registerVal17
	local registerVal18 = LUI.UIElement.new()
	registerVal18:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.levelUpSound = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 78.500000, 270.500000)
	registerVal19:setTopBottom(true, false, -59.000000, 181.000000)
	registerVal19:setRGB(1.000000, 0.760000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZRot(90.000000)
	registerVal19:setScale(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.ParticleFX01 = registerVal19
	local function __FUNC_1830_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal2.Side02:linkToElementModel(registerVal2, "color", true, __FUNC_1830_)
	local function __FUNC_18C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal2.Side01:linkToElementModel(registerVal2, "color", true, __FUNC_18C3_)
	local function __FUNC_1953_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.SideFill:linkToElementModel(registerVal2, "color", true, __FUNC_1953_)
	local function __FUNC_19E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.SideStroke:linkToElementModel(registerVal2, "color", true, __FUNC_19E3_)
	local function __FUNC_1A73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1A73_)
	local function __FUNC_1B2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1B2A_)
	local function __FUNC_1C12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1C12_)
	local function __FUNC_1CF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1CF0_)
	local function __FUNC_1DC7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_1DC7_)
	local function __FUNC_1E84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1E84_)
	local function __FUNC_1F5B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1F5B_)
	local function __FUNC_1FEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_1FEB_)
	local function __FUNC_209C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_209C_)
	local function __FUNC_2150_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setRGB(registerVal1)
		end
	end

	registerVal2.NotchPanels:linkToElementModel(registerVal2, "color", true, __FUNC_2150_)
	local function __FUNC_21E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_21E3_)
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_2294_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_2C33_(arg0, arg1)
			local function __FUNC_2D88_(arg0, arg1)
				local function __FUNC_2F39_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(true, false, 198.030000, 318.030000)
					arg0:setTopBottom(true, false, 38.830000, 110.830000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2F39_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 214.690000, 334.690000)
				arg0:setAlpha(0.940000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F39_)
			end

			if arg1.interrupted then
				__FUNC_2D88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D88_)
		end

		registerVal3:completeAnimation()
		registerVal2.Side02:setLeftRight(true, false, 148.030000, 268.030000)
		registerVal2.Side02:setTopBottom(true, false, 38.830000, 110.830000)
		registerVal2.Side02:setAlpha(0.000000)
		__FUNC_2C33_(registerVal3, {})
		local function __FUNC_315D_(arg0, arg1)
			local function __FUNC_32B4_(arg0, arg1)
				local function __FUNC_3465_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(true, false, 29.970000, 149.970000)
					arg0:setTopBottom(true, false, 38.830000, 110.830000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3465_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 13.310000, 133.310000)
				arg0:setAlpha(0.940000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3465_)
			end

			if arg1.interrupted then
				__FUNC_32B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32B4_)
		end

		registerVal4:completeAnimation()
		registerVal2.Side01:setLeftRight(true, false, 79.970000, 199.970000)
		registerVal2.Side01:setTopBottom(true, false, 38.830000, 110.830000)
		registerVal2.Side01:setAlpha(0.000000)
		__FUNC_315D_(registerVal4, {})
		local function __FUNC_3689_(arg0, arg1)
			local function __FUNC_37E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_37E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E0_)
		end

		registerVal5:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_3689_(registerVal5, {})
		local function __FUNC_3995_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.CenterFill:setAlpha(0.000000)
		registerVal2.CenterFill:setScale(5.000000)
		__FUNC_3995_(registerVal6, {})
		local function __FUNC_3B6C_(arg0, arg1)
			local function __FUNC_3CC4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, true, CoD.TweenType.Linear)
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
				__FUNC_3CC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CC4_)
		end

		registerVal7:completeAnimation()
		registerVal2.SideFill:setAlpha(0.000000)
		registerVal2.SideFill:setScale(5.000000)
		__FUNC_3B6C_(registerVal7, {})
		local function __FUNC_3E97_(arg0, arg1)
			local function __FUNC_3FEC_(arg0, arg1)
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
				__FUNC_3FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FEC_)
		end

		registerVal8:completeAnimation()
		registerVal2.SideStroke:setAlpha(0.000000)
		registerVal2.SideStroke:setScale(5.000000)
		__FUNC_3E97_(registerVal8, {})
		local function __FUNC_41BF_(arg0, arg1)
			local function __FUNC_4314_(arg0, arg1)
				local function __FUNC_448F_(arg0, arg1)
					local function __FUNC_4607_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4607_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4607_)
				end

				if arg1.interrupted then
					__FUNC_448F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_448F_)
			end

			if arg1.interrupted then
				__FUNC_4314_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4314_)
		end

		registerVal9:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_41BF_(registerVal9, {})
		local function __FUNC_47B9_(arg0, arg1)
			local function __FUNC_4910_(arg0, arg1)
				local function __FUNC_4A8B_(arg0, arg1)
					local function __FUNC_4C03_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4C03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C03_)
				end

				if arg1.interrupted then
					__FUNC_4A8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A8B_)
			end

			if arg1.interrupted then
				__FUNC_4910_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4910_)
		end

		registerVal10:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_47B9_(registerVal10, {})
		local function __FUNC_4DB5_(arg0, arg1)
			local function __FUNC_4F0C_(arg0, arg1)
				local function __FUNC_5087_(arg0, arg1)
					local function __FUNC_51FF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_51FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51FF_)
				end

				if arg1.interrupted then
					__FUNC_5087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5087_)
			end

			if arg1.interrupted then
				__FUNC_4F0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F0C_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_4DB5_(registerVal11, {})
		local function __FUNC_53B1_(arg0, arg1)
			local function __FUNC_5508_(arg0, arg1)
				local function __FUNC_5683_(arg0, arg1)
					local function __FUNC_57FB_(arg0, arg1)
						local function __FUNC_5973_(arg0, arg1)
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
							__FUNC_5973_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5973_)
					end

					if arg1.interrupted then
						__FUNC_57FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57FB_)
				end

				if arg1.interrupted then
					__FUNC_5683_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5683_)
			end

			if arg1.interrupted then
				__FUNC_5508_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5508_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_53B1_(registerVal12, {})
		local function __FUNC_5B25_(arg0, arg1)
			local function __FUNC_5C7C_(arg0, arg1)
				local function __FUNC_5E3C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.200000)
					arg0:setZRot(360.000000)
					arg0:setScale(2.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5E3C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(102.860000)
				arg0:setScale(3.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E3C_)
			end

			if arg1.interrupted then
				__FUNC_5C7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C7C_)
		end

		registerVal13:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_5B25_(registerVal13, {})
		local function __FUNC_6036_(arg0, arg1)
			local function __FUNC_618C_(arg0, arg1)
				local function __FUNC_6362_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -60.000000, 68.000000)
					arg0:setTopBottom(true, false, 1.000000, 129.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6362_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -40.910000, 87.090000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.520000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6362_)
			end

			if arg1.interrupted then
				__FUNC_618C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_618C_)
		end

		registerVal14:completeAnimation()
		registerVal2.imageG:setLeftRight(false, false, 13.000000, 141.000000)
		registerVal2.imageG:setTopBottom(true, false, 1.000000, 129.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		__FUNC_6036_(registerVal14, {})
		local function __FUNC_659E_(arg0, arg1)
			local function __FUNC_66F4_(arg0, arg1)
				local function __FUNC_68CA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -60.000000, 68.000000)
					arg0:setTopBottom(true, false, 1.000000, 129.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_68CA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -80.920000, 47.080000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.520000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68CA_)
			end

			if arg1.interrupted then
				__FUNC_66F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66F4_)
		end

		registerVal15:completeAnimation()
		registerVal2.imageR:setLeftRight(false, false, -140.000000, -12.000000)
		registerVal2.imageR:setTopBottom(true, false, 1.000000, 129.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		__FUNC_659E_(registerVal15, {})
		local function __FUNC_6B06_(arg0, arg1)
			local function __FUNC_6C5C_(arg0, arg1)
				local function __FUNC_6DFA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Bounce)
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
					__FUNC_6DFA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DFA_)
			end

			if arg1.interrupted then
				__FUNC_6C5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C5C_)
		end

		registerVal16:completeAnimation()
		registerVal2.NotchPanels:setAlpha(0.000000)
		registerVal2.NotchPanels:setScale(0.100000)
		__FUNC_6B06_(registerVal16, {})
		local function __FUNC_6FCB_(arg0, arg1)
			local function __FUNC_7120_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
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
				__FUNC_7120_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7120_)
		end

		registerVal17:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(1.000000)
		__FUNC_6FCB_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.levelUpSound:setPlaySoundDirect(true)
		registerVal2.levelUpSound:playSound("mpl_notification_tier_up", arg1)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_72F3_(arg0, arg1)
			local function __FUNC_746B_(arg0, arg1)
				local function __FUNC_75E3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_75E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75E3_)
			end

			if arg1.interrupted then
				__FUNC_746B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_746B_)
		end

		registerVal19:completeAnimation()
		registerVal2.ParticleFX01:setAlpha(0.000000)
		registerVal2.ParticleFX01:setScale(0.000000)
		__FUNC_72F3_(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_2294_
	local function __FUNC_77B8_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_7D60_(arg0, arg1)
			local function __FUNC_7EB8_(arg0, arg1)
				local function __FUNC_8033_(arg0, arg1)
					local function __FUNC_81AB_(arg0, arg1)
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
						__FUNC_81AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81AB_)
				end

				if arg1.interrupted then
					__FUNC_8033_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8033_)
			end

			if arg1.interrupted then
				__FUNC_7EB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EB8_)
		end

		registerVal3:completeAnimation()
		registerVal2.Side02:setAlpha(1.000000)
		__FUNC_7D60_(registerVal3, {})
		local function __FUNC_835D_(arg0, arg1)
			local function __FUNC_84B4_(arg0, arg1)
				local function __FUNC_862F_(arg0, arg1)
					local function __FUNC_87A7_(arg0, arg1)
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
						__FUNC_87A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87A7_)
				end

				if arg1.interrupted then
					__FUNC_862F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_862F_)
			end

			if arg1.interrupted then
				__FUNC_84B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84B4_)
		end

		registerVal4:completeAnimation()
		registerVal2.Side01:setAlpha(1.000000)
		__FUNC_835D_(registerVal4, {})
		local function __FUNC_8959_(arg0, arg1)
			local function __FUNC_8AB0_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_8AB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AB0_)
		end

		registerVal5:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.600000)
		__FUNC_8959_(registerVal5, {})
		local function __FUNC_8C65_(arg0, arg1)
			local function __FUNC_8DBC_(arg0, arg1)
				local function __FUNC_8F14_(arg0, arg1)
					local function __FUNC_906C_(arg0, arg1)
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
						__FUNC_906C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_906C_)
				end

				if arg1.interrupted then
					__FUNC_8F14_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F14_)
			end

			if arg1.interrupted then
				__FUNC_8DBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DBC_)
		end

		registerVal6:completeAnimation()
		registerVal2.CenterFill:setAlpha(0.400000)
		__FUNC_8C65_(registerVal6, {})
		local function __FUNC_9221_(arg0, arg1)
			local function __FUNC_9378_(arg0, arg1)
				local function __FUNC_94F3_(arg0, arg1)
					local function __FUNC_966B_(arg0, arg1)
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
						__FUNC_966B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_966B_)
				end

				if arg1.interrupted then
					__FUNC_94F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94F3_)
			end

			if arg1.interrupted then
				__FUNC_9378_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9378_)
		end

		registerVal7:completeAnimation()
		registerVal2.SideFill:setAlpha(1.000000)
		__FUNC_9221_(registerVal7, {})
		local function __FUNC_981D_(arg0, arg1)
			local function __FUNC_9974_(arg0, arg1)
				local function __FUNC_9AEF_(arg0, arg1)
					local function __FUNC_9C67_(arg0, arg1)
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
						__FUNC_9C67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C67_)
				end

				if arg1.interrupted then
					__FUNC_9AEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9AEF_)
			end

			if arg1.interrupted then
				__FUNC_9974_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9974_)
		end

		registerVal8:completeAnimation()
		registerVal2.SideStroke:setAlpha(1.000000)
		__FUNC_981D_(registerVal8, {})
		local function __FUNC_9E19_(arg0, arg1)
			local function __FUNC_9F93_(arg0, arg1)
				local function __FUNC_A10B_(arg0, arg1)
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
					__FUNC_A10B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A10B_)
			end

			if arg1.interrupted then
				__FUNC_9F93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F93_)
		end

		registerVal9:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_9E19_(registerVal9, {})
		local function __FUNC_A2BD_(arg0, arg1)
			local function __FUNC_A437_(arg0, arg1)
				local function __FUNC_A5AF_(arg0, arg1)
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
					__FUNC_A5AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5AF_)
			end

			if arg1.interrupted then
				__FUNC_A437_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A437_)
		end

		registerVal10:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_A2BD_(registerVal10, {})
		local function __FUNC_A761_(arg0, arg1)
			local function __FUNC_A8B8_(arg0, arg1)
				local function __FUNC_AA33_(arg0, arg1)
					local function __FUNC_ABAB_(arg0, arg1)
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
						__FUNC_ABAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABAB_)
				end

				if arg1.interrupted then
					__FUNC_AA33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA33_)
			end

			if arg1.interrupted then
				__FUNC_A8B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8B8_)
		end

		registerVal11:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_A761_(registerVal11, {})
		local function __FUNC_AD5D_(arg0, arg1)
			local function __FUNC_AEB4_(arg0, arg1)
				local function __FUNC_B02F_(arg0, arg1)
					local function __FUNC_B1A7_(arg0, arg1)
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
						__FUNC_B1A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1A7_)
				end

				if arg1.interrupted then
					__FUNC_B02F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B02F_)
			end

			if arg1.interrupted then
				__FUNC_AEB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEB4_)
		end

		registerVal12:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_AD5D_(registerVal12, {})
		local function __FUNC_B359_(arg0, arg1)
			local function __FUNC_B4B0_(arg0, arg1)
				local function __FUNC_B62B_(arg0, arg1)
					local function __FUNC_B7A3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B7A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7A3_)
				end

				if arg1.interrupted then
					__FUNC_B62B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B62B_)
			end

			if arg1.interrupted then
				__FUNC_B4B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4B0_)
		end

		registerVal13:completeAnimation()
		registerVal2.highlight:setAlpha(1.000000)
		__FUNC_B359_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_B955_(arg0, arg1)
			local function __FUNC_BAAC_(arg0, arg1)
				local function __FUNC_BC27_(arg0, arg1)
					local function __FUNC_BD9F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BD9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD9F_)
				end

				if arg1.interrupted then
					__FUNC_BC27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC27_)
			end

			if arg1.interrupted then
				__FUNC_BAAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAAC_)
		end

		registerVal16:completeAnimation()
		registerVal2.NotchPanels:setAlpha(1.000000)
		__FUNC_B955_(registerVal16, {})
		local function __FUNC_BF51_(arg0, arg1)
			local function __FUNC_C0A8_(arg0, arg1)
				local function __FUNC_C223_(arg0, arg1)
					local function __FUNC_C39B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C39B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C39B_)
				end

				if arg1.interrupted then
					__FUNC_C223_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C223_)
			end

			if arg1.interrupted then
				__FUNC_C0A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0A8_)
		end

		registerVal17:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_BF51_(registerVal17, {})
	end

	registerVal21.TimeUp = __FUNC_77B8_
	registerVal20.DefaultState = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_C54D_(arg0)
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.Side02:close()
		arg0.Side01:close()
		arg0.SideFill:close()
		arg0.SideStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.NotchPanels:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C54D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

