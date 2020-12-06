-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Camo_CenterBacking")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CamoDiamondChallengeNotification = registerVal1
function CoD.CamoDiamondChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CamoDiamondChallengeNotification)
	registerVal2.id = "CamoDiamondChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 258.030000, 378.030000)
	registerVal3:setTopBottom(true, false, 40.830000, 112.830000)
	registerVal3:setZRot(180.000000)
	registerVal3:setScale(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_global_top_tier_effect"))
	registerVal2:addElement(registerVal3)
	registerVal2.Side02 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -31.030000, 88.970000)
	registerVal4:setTopBottom(true, false, 40.830000, 112.830000)
	registerVal4:setScale(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_global_top_tier_effect"))
	registerVal2:addElement(registerVal4)
	registerVal2.Side01 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 153.670000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_camo_center_shadow"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterShadow = registerVal5
	local registerVal6 = CoD.Notif_Camo_CenterBacking.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 28.970000, 317.030000)
	registerVal6:setTopBottom(true, false, -18.650000, 174.140000)
	registerVal2:addElement(registerVal6)
	registerVal2.NotifCamoCenterBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 239.780000, 317.030000)
	registerVal7:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill"))
	registerVal2:addElement(registerVal7)
	registerVal2.CornerFill = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 28.970000, 106.220000)
	registerVal8:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill"))
	registerVal2:addElement(registerVal8)
	registerVal2.CornerFill0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 239.780000, 317.030000)
	registerVal9:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_stroke"))
	registerVal2:addElement(registerVal9)
	registerVal2.CornerStroke = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 28.970000, 106.220000)
	registerVal10:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_stroke"))
	registerVal2:addElement(registerVal10)
	registerVal2.CornerStroke0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 239.780000, 317.530000)
	registerVal11:setTopBottom(true, false, 0.000000, 155.490000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_notif_camo_edge_fill"))
	registerVal2:addElement(registerVal11)
	registerVal2.EdgeFill = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 28.970000, 106.720000)
	registerVal12:setTopBottom(true, false, 0.000000, 155.490000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notif_camo_edge_fill"))
	registerVal2:addElement(registerVal12)
	registerVal2.EdgeFill0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 37.680000, 310.000000)
	registerVal13:setTopBottom(true, false, -8.000000, 160.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill_wide"))
	registerVal2:addElement(registerVal13)
	registerVal2.CornerFillWide = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal14:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal14:setRGB(0.160000, 0.160000, 0.160000)
	registerVal14:setAlpha(0.900000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal14)
	registerVal2.DescBacking = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal15:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.Desc = registerVal15
	local registerVal16 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal16:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.NotifGlobalTitleLine = registerVal16
	local registerVal17 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 34.000000, 315.000000)
	registerVal17:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.NotifGlobalTitle = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 71.000000, 285.000000)
	registerVal18:setTopBottom(true, false, -1.670000, 158.000000)
	registerVal18:setRGB(1.000000, 0.760000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.highlight = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 55.420000, 290.590000)
	registerVal19:setTopBottom(true, false, 25.000000, 127.000000)
	registerVal19:setRGB(0.000000, 0.270000, 0.010000)
	registerVal19:setScale(0.000000)
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal19:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.imageG = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 63.330000, 284.670000)
	registerVal20:setTopBottom(true, false, 25.000000, 127.000000)
	registerVal20:setRGB(0.550000, 0.090000, 0.090000)
	registerVal20:setScale(0.000000)
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal20:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal20:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.imageR = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -100.870000, 100.870000)
	registerVal21:setTopBottom(true, false, -8.140000, 174.140000)
	registerVal2:addElement(registerVal21)
	registerVal2.image = registerVal21
	local registerVal22 = LUI.UIElement.new()
	registerVal22:setLeftRight(true, false, -101.500000, -53.500000)
	registerVal22:setTopBottom(true, false, 101.500000, 149.500000)
	registerVal2:addElement(registerVal22)
	registerVal2.Sound = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 78.500000, 270.500000)
	registerVal23:setTopBottom(true, false, -39.000000, 201.000000)
	registerVal23:setRGB(1.000000, 0.760000, 0.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setZRot(90.000000)
	registerVal23:setScale(2.000000)
	registerVal23:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.ParticleFX01 = registerVal23
	local function __FUNC_1C11_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal2.Side02:linkToElementModel(registerVal2, "color", true, __FUNC_1C11_)
	local function __FUNC_1CA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal2.Side01:linkToElementModel(registerVal2, "color", true, __FUNC_1CA3_)
	local function __FUNC_1D33_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill:linkToElementModel(registerVal2, "color", true, __FUNC_1D33_)
	local function __FUNC_1DC3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill0:linkToElementModel(registerVal2, "color", true, __FUNC_1DC3_)
	local function __FUNC_1E53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke:linkToElementModel(registerVal2, "color", true, __FUNC_1E53_)
	local function __FUNC_1EE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke0:linkToElementModel(registerVal2, "color", true, __FUNC_1EE3_)
	local function __FUNC_1F73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill:linkToElementModel(registerVal2, "color", true, __FUNC_1F73_)
	local function __FUNC_2003_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill0:linkToElementModel(registerVal2, "color", true, __FUNC_2003_)
	local function __FUNC_2093_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFillWide:linkToElementModel(registerVal2, "color", true, __FUNC_2093_)
	local function __FUNC_2123_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_2123_)
	local function __FUNC_21DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_21DA_)
	local function __FUNC_22C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_22C2_)
	local function __FUNC_23A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_23A0_)
	local function __FUNC_2477_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_2477_)
	local function __FUNC_2534_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_2534_)
	local function __FUNC_260B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_260B_)
	local function __FUNC_26BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_26BC_)
	local function __FUNC_2770_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_2770_)
	local registerVal24 = {}
	local registerVal25 = {}
	local function __FUNC_2824_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_372B_(arg0, arg1)
			local function __FUNC_3880_(arg0, arg1)
				local function __FUNC_3A33_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(true, false, 254.000000, 374.000000)
					arg0:setTopBottom(true, false, 40.830000, 112.830000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3A33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(true, false, 292.220000, 412.220000)
				arg0:setAlpha(0.960000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A33_)
			end

			if arg1.interrupted then
				__FUNC_3880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3880_)
		end

		registerVal3:completeAnimation()
		registerVal2.Side02:setLeftRight(true, false, 174.500000, 294.500000)
		registerVal2.Side02:setTopBottom(true, false, 40.830000, 112.830000)
		registerVal2.Side02:setAlpha(0.000000)
		__FUNC_372B_(registerVal3, {})
		local function __FUNC_3C55_(arg0, arg1)
			local function __FUNC_3DE4_(arg0, arg1)
				local function __FUNC_3F97_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(true, false, -27.000000, 93.000000)
					arg0:setTopBottom(true, false, 40.830000, 112.830000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3F97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(true, false, -65.580000, 54.420000)
				arg0:setAlpha(0.960000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F97_)
			end

			if arg1.interrupted then
				__FUNC_3DE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 51.000000, 171.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DE4_)
		end

		registerVal4:completeAnimation()
		registerVal2.Side01:setLeftRight(true, false, 53.000000, 173.000000)
		registerVal2.Side01:setTopBottom(true, false, 40.830000, 112.830000)
		registerVal2.Side01:setAlpha(0.000000)
		__FUNC_3C55_(registerVal4, {})
		local function __FUNC_41B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_41B9_(registerVal5, {})
		local function __FUNC_436D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.NotifCamoCenterBacking:setAlpha(0.000000)
		registerVal2.NotifCamoCenterBacking:setScale(3.000000)
		__FUNC_436D_(registerVal6, {})
		local function __FUNC_4544_(arg0, arg1)
			local function __FUNC_469C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 239.780000, 317.030000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_469C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_469C_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerFill:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerFill:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill:setAlpha(0.000000)
		registerVal2.CornerFill:setScale(3.000000)
		__FUNC_4544_(registerVal7, {})
		local function __FUNC_48DF_(arg0, arg1)
			local function __FUNC_4A34_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 28.970000, 106.220000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4A34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A34_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerFill0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerFill0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill0:setAlpha(0.000000)
		registerVal2.CornerFill0:setScale(3.000000)
		__FUNC_48DF_(registerVal8, {})
		local function __FUNC_4C77_(arg0, arg1)
			local function __FUNC_4DCC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 239.780000, 317.030000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4DCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DCC_)
		end

		registerVal9:completeAnimation()
		registerVal2.CornerStroke:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerStroke:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke:setAlpha(0.000000)
		registerVal2.CornerStroke:setScale(3.000000)
		__FUNC_4C77_(registerVal9, {})
		local function __FUNC_500F_(arg0, arg1)
			local function __FUNC_5164_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 28.970000, 106.220000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5164_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5164_)
		end

		registerVal10:completeAnimation()
		registerVal2.CornerStroke0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerStroke0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke0:setAlpha(0.000000)
		registerVal2.CornerStroke0:setScale(3.000000)
		__FUNC_500F_(registerVal10, {})
		local function __FUNC_53A7_(arg0, arg1)
			local function __FUNC_54FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 239.780000, 317.530000)
				arg0:setTopBottom(true, false, 0.000000, 155.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_54FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54FC_)
		end

		registerVal11:completeAnimation()
		registerVal2.EdgeFill:setLeftRight(true, false, 347.500000, 425.250000)
		registerVal2.EdgeFill:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill:setAlpha(0.000000)
		registerVal2.EdgeFill:setScale(1.000000)
		__FUNC_53A7_(registerVal11, {})
		local function __FUNC_573F_(arg0, arg1)
			local function __FUNC_5894_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 28.970000, 106.720000)
				arg0:setTopBottom(true, false, 0.000000, 155.490000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5894_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5894_)
		end

		registerVal12:completeAnimation()
		registerVal2.EdgeFill0:setLeftRight(true, false, -77.250000, 0.500000)
		registerVal2.EdgeFill0:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill0:setAlpha(0.000000)
		registerVal2.EdgeFill0:setScale(1.000000)
		__FUNC_573F_(registerVal12, {})
		local function __FUNC_5AD7_(arg0, arg1)
			local function __FUNC_5C2C_(arg0, arg1)
				local function __FUNC_5DA7_(arg0, arg1)
					local function __FUNC_5F1F_(arg0, arg1)
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
						__FUNC_5F1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F1F_)
				end

				if arg1.interrupted then
					__FUNC_5DA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DA7_)
			end

			if arg1.interrupted then
				__FUNC_5C2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C2C_)
		end

		registerVal14:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_5AD7_(registerVal14, {})
		local function __FUNC_60D1_(arg0, arg1)
			local function __FUNC_6228_(arg0, arg1)
				local function __FUNC_63A3_(arg0, arg1)
					local function __FUNC_651B_(arg0, arg1)
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
						__FUNC_651B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_651B_)
				end

				if arg1.interrupted then
					__FUNC_63A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63A3_)
			end

			if arg1.interrupted then
				__FUNC_6228_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6228_)
		end

		registerVal15:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_60D1_(registerVal15, {})
		local function __FUNC_66CD_(arg0, arg1)
			local function __FUNC_6824_(arg0, arg1)
				local function __FUNC_699F_(arg0, arg1)
					local function __FUNC_6B17_(arg0, arg1)
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
						__FUNC_6B17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B17_)
				end

				if arg1.interrupted then
					__FUNC_699F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_699F_)
			end

			if arg1.interrupted then
				__FUNC_6824_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6824_)
		end

		registerVal16:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_66CD_(registerVal16, {})
		local function __FUNC_6CC9_(arg0, arg1)
			local function __FUNC_6E20_(arg0, arg1)
				local function __FUNC_6F9B_(arg0, arg1)
					local function __FUNC_7113_(arg0, arg1)
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
						__FUNC_7113_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7113_)
				end

				if arg1.interrupted then
					__FUNC_6F9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F9B_)
			end

			if arg1.interrupted then
				__FUNC_6E20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E20_)
		end

		registerVal17:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_6CC9_(registerVal17, {})
		local function __FUNC_72C5_(arg0, arg1)
			local function __FUNC_741C_(arg0, arg1)
				local function __FUNC_75DC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.300000)
					arg0:setZRot(360.000000)
					arg0:setScale(1.200000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_75DC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(120.000000)
				arg0:setScale(1.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75DC_)
			end

			if arg1.interrupted then
				__FUNC_741C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_741C_)
		end

		registerVal18:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(0.800000)
		__FUNC_72C5_(registerVal18, {})
		local function __FUNC_77D6_(arg0, arg1)
			local function __FUNC_7964_(arg0, arg1)
				local function __FUNC_7B3A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 55.420000, 290.590000)
					arg0:setTopBottom(true, false, 25.000000, 127.000000)
					arg0:setAlpha(0.000000)
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
					__FUNC_7B3A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 93.720000, 328.890000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B3A_)
			end

			if arg1.interrupted then
				__FUNC_7964_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 208.630000, 443.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7964_)
		end

		registerVal19:completeAnimation()
		registerVal2.imageG:setLeftRight(true, false, 127.630000, 362.800000)
		registerVal2.imageG:setTopBottom(true, false, 25.000000, 127.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		registerVal2.imageG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageG:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_77D6_(registerVal19, {})
		local function __FUNC_7E8C_(arg0, arg1)
			local function __FUNC_7FE4_(arg0, arg1)
				local function __FUNC_81BA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 55.420000, 290.590000)
					arg0:setTopBottom(true, false, 25.000000, 127.000000)
					arg0:setAlpha(0.000000)
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
					__FUNC_81BA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 17.520000, 252.690000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81BA_)
			end

			if arg1.interrupted then
				__FUNC_7FE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FE4_)
		end

		registerVal20:completeAnimation()
		registerVal2.imageR:setLeftRight(true, false, -96.170000, 139.010000)
		registerVal2.imageR:setTopBottom(true, false, 25.000000, 127.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		registerVal2.imageR:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageR:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_7E8C_(registerVal20, {})
		local function __FUNC_850C_(arg0, arg1)
			local function __FUNC_8664_(arg0, arg1)
				local function __FUNC_87DF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_87DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87DF_)
			end

			if arg1.interrupted then
				__FUNC_8664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8664_)
		end

		registerVal21:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_850C_(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("mpl_notification_tier_up", arg1)
		registerVal2.clipFinished(registerVal22, {})
		local function __FUNC_89AF_(arg0, arg1)
			local function __FUNC_8B04_(arg0, arg1)
				local function __FUNC_8CA2_(arg0, arg1)
					local function __FUNC_8E1B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8E1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E1B_)
				end

				if arg1.interrupted then
					__FUNC_8CA2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CA2_)
			end

			if arg1.interrupted then
				__FUNC_8B04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B04_)
		end

		registerVal23:completeAnimation()
		registerVal2.ParticleFX01:setAlpha(0.000000)
		registerVal2.ParticleFX01:setScale(2.000000)
		__FUNC_89AF_(registerVal23, {})
	end

	registerVal25.DefaultClip = __FUNC_2824_
	local function __FUNC_8FF0_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_9797_(arg0, arg1)
			local function __FUNC_98EC_(arg0, arg1)
				local function __FUNC_9A67_(arg0, arg1)
					local function __FUNC_9BDF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 254.000000, 374.000000)
						arg0:setTopBottom(true, false, 40.830000, 112.830000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9BDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BDF_)
				end

				if arg1.interrupted then
					__FUNC_9A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A67_)
			end

			if arg1.interrupted then
				__FUNC_98EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98EC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Side02:setLeftRight(true, false, 254.000000, 374.000000)
		registerVal2.Side02:setTopBottom(true, false, 40.830000, 112.830000)
		registerVal2.Side02:setAlpha(1.000000)
		__FUNC_9797_(registerVal3, {})
		local function __FUNC_9E01_(arg0, arg1)
			local function __FUNC_9F58_(arg0, arg1)
				local function __FUNC_A0D3_(arg0, arg1)
					local function __FUNC_A24B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -27.000000, 93.000000)
						arg0:setTopBottom(true, false, 40.830000, 112.830000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A24B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A24B_)
				end

				if arg1.interrupted then
					__FUNC_A0D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0D3_)
			end

			if arg1.interrupted then
				__FUNC_9F58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F58_)
		end

		registerVal4:completeAnimation()
		registerVal2.Side01:setLeftRight(true, false, -27.000000, 93.000000)
		registerVal2.Side01:setTopBottom(true, false, 40.830000, 112.830000)
		registerVal2.Side01:setAlpha(1.000000)
		__FUNC_9E01_(registerVal4, {})
		local function __FUNC_A46D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.400000)
		__FUNC_A46D_(registerVal5, {})
		local function __FUNC_A621_(arg0, arg1)
			local function __FUNC_A778_(arg0, arg1)
				local function __FUNC_A8F3_(arg0, arg1)
					local function __FUNC_AA6B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AA6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA6B_)
				end

				if arg1.interrupted then
					__FUNC_A8F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8F3_)
			end

			if arg1.interrupted then
				__FUNC_A778_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A778_)
		end

		registerVal6:completeAnimation()
		registerVal2.NotifCamoCenterBacking:setAlpha(0.500000)
		__FUNC_A621_(registerVal6, {})
		local function __FUNC_AC1D_(arg0, arg1)
			local function __FUNC_AD74_(arg0, arg1)
				local function __FUNC_AEEF_(arg0, arg1)
					local function __FUNC_B067_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B067_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B067_)
				end

				if arg1.interrupted then
					__FUNC_AEEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEEF_)
			end

			if arg1.interrupted then
				__FUNC_AD74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD74_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerFill:setAlpha(1.000000)
		__FUNC_AC1D_(registerVal7, {})
		local function __FUNC_B219_(arg0, arg1)
			local function __FUNC_B370_(arg0, arg1)
				local function __FUNC_B4EB_(arg0, arg1)
					local function __FUNC_B663_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B663_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B663_)
				end

				if arg1.interrupted then
					__FUNC_B4EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4EB_)
			end

			if arg1.interrupted then
				__FUNC_B370_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B370_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerFill0:setAlpha(1.000000)
		__FUNC_B219_(registerVal8, {})
		local function __FUNC_B815_(arg0, arg1)
			local function __FUNC_B96C_(arg0, arg1)
				local function __FUNC_BAE7_(arg0, arg1)
					local function __FUNC_BC5F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BC5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC5F_)
				end

				if arg1.interrupted then
					__FUNC_BAE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAE7_)
			end

			if arg1.interrupted then
				__FUNC_B96C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B96C_)
		end

		registerVal9:completeAnimation()
		registerVal2.CornerStroke:setAlpha(1.000000)
		__FUNC_B815_(registerVal9, {})
		local function __FUNC_BE11_(arg0, arg1)
			local function __FUNC_BF68_(arg0, arg1)
				local function __FUNC_C0E3_(arg0, arg1)
					local function __FUNC_C25B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C25B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C25B_)
				end

				if arg1.interrupted then
					__FUNC_C0E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0E3_)
			end

			if arg1.interrupted then
				__FUNC_BF68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF68_)
		end

		registerVal10:completeAnimation()
		registerVal2.CornerStroke0:setAlpha(1.000000)
		__FUNC_BE11_(registerVal10, {})
		local function __FUNC_C40D_(arg0, arg1)
			local function __FUNC_C564_(arg0, arg1)
				local function __FUNC_C6DF_(arg0, arg1)
					local function __FUNC_C857_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C857_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C857_)
				end

				if arg1.interrupted then
					__FUNC_C6DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6DF_)
			end

			if arg1.interrupted then
				__FUNC_C564_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C564_)
		end

		registerVal11:completeAnimation()
		registerVal2.EdgeFill:setAlpha(1.000000)
		__FUNC_C40D_(registerVal11, {})
		local function __FUNC_CA09_(arg0, arg1)
			local function __FUNC_CB60_(arg0, arg1)
				local function __FUNC_CCDB_(arg0, arg1)
					local function __FUNC_CE53_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CE53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE53_)
				end

				if arg1.interrupted then
					__FUNC_CCDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCDB_)
			end

			if arg1.interrupted then
				__FUNC_CB60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB60_)
		end

		registerVal12:completeAnimation()
		registerVal2.EdgeFill0:setAlpha(1.000000)
		__FUNC_CA09_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CornerFillWide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_D005_(arg0, arg1)
			local function __FUNC_D17F_(arg0, arg1)
				local function __FUNC_D2F7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D2F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2F7_)
			end

			if arg1.interrupted then
				__FUNC_D17F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D17F_)
		end

		registerVal14:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_D005_(registerVal14, {})
		local function __FUNC_D4A9_(arg0, arg1)
			local function __FUNC_D623_(arg0, arg1)
				local function __FUNC_D79B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D79B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D79B_)
			end

			if arg1.interrupted then
				__FUNC_D623_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D623_)
		end

		registerVal15:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_D4A9_(registerVal15, {})
		local function __FUNC_D94D_(arg0, arg1)
			local function __FUNC_DAA4_(arg0, arg1)
				local function __FUNC_DC1F_(arg0, arg1)
					local function __FUNC_DD97_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_DD97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD97_)
				end

				if arg1.interrupted then
					__FUNC_DC1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC1F_)
			end

			if arg1.interrupted then
				__FUNC_DAA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAA4_)
		end

		registerVal16:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_D94D_(registerVal16, {})
		local function __FUNC_DF49_(arg0, arg1)
			local function __FUNC_E0A0_(arg0, arg1)
				local function __FUNC_E21B_(arg0, arg1)
					local function __FUNC_E393_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E393_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E393_)
				end

				if arg1.interrupted then
					__FUNC_E21B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E21B_)
			end

			if arg1.interrupted then
				__FUNC_E0A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0A0_)
		end

		registerVal17:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_DF49_(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		local function __FUNC_E545_(arg0, arg1)
			local function __FUNC_E69C_(arg0, arg1)
				local function __FUNC_E817_(arg0, arg1)
					local function __FUNC_E98F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E98F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E98F_)
				end

				if arg1.interrupted then
					__FUNC_E817_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E817_)
			end

			if arg1.interrupted then
				__FUNC_E69C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E69C_)
		end

		registerVal21:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_E545_(registerVal21, {})
	end

	registerVal25.TimeUp = __FUNC_8FF0_
	registerVal24.DefaultState = registerVal25
	registerVal2.clipsPerState = registerVal24
	local function __FUNC_EB41_(arg0)
		arg0.NotifCamoCenterBacking:close()
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.Side02:close()
		arg0.Side01:close()
		arg0.CornerFill:close()
		arg0.CornerFill0:close()
		arg0.CornerStroke:close()
		arg0.CornerStroke0:close()
		arg0.EdgeFill:close()
		arg0.EdgeFill0:close()
		arg0.CornerFillWide:close()
		arg0.Desc:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EB41_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

