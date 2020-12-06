-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Camo_CenterBacking")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CamoGoldChallengeNotification = registerVal1
function CoD.CamoGoldChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CamoGoldChallengeNotification)
	registerVal2.id = "CamoGoldChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 153.670000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_camo_center_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterShadow = registerVal3
	local registerVal4 = CoD.Notif_Camo_CenterBacking.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 28.970000, 317.030000)
	registerVal4:setTopBottom(true, false, -18.650000, 174.140000)
	registerVal2:addElement(registerVal4)
	registerVal2.NotifCamoCenterBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 239.780000, 317.030000)
	registerVal5:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill"))
	registerVal2:addElement(registerVal5)
	registerVal2.CornerFill = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 28.970000, 106.220000)
	registerVal6:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal6:setAlpha(0.200000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill"))
	registerVal2:addElement(registerVal6)
	registerVal2.CornerFill0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 239.780000, 317.030000)
	registerVal7:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_stroke"))
	registerVal2:addElement(registerVal7)
	registerVal2.CornerStroke = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 28.970000, 106.220000)
	registerVal8:setTopBottom(true, false, 0.000000, 154.490000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_stroke"))
	registerVal2:addElement(registerVal8)
	registerVal2.CornerStroke0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 239.780000, 317.530000)
	registerVal9:setTopBottom(true, false, 0.000000, 155.490000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_camo_edge_fill"))
	registerVal2:addElement(registerVal9)
	registerVal2.EdgeFill = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 28.970000, 106.720000)
	registerVal10:setTopBottom(true, false, 0.000000, 155.490000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_notif_camo_edge_fill"))
	registerVal2:addElement(registerVal10)
	registerVal2.EdgeFill0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 37.680000, 310.000000)
	registerVal11:setTopBottom(true, false, -8.000000, 160.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_notif_camo_corner_fill_wide"))
	registerVal2:addElement(registerVal11)
	registerVal2.CornerFillWide = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal12:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal12:setRGB(0.160000, 0.160000, 0.160000)
	registerVal12:setAlpha(0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal12)
	registerVal2.DescBacking = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal13:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.Desc = registerVal13
	local registerVal14 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal14:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.NotifGlobalTitleLine = registerVal14
	local registerVal15 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 34.000000, 315.000000)
	registerVal15:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.NotifGlobalTitle = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 71.000000, 285.000000)
	registerVal16:setTopBottom(true, false, -1.670000, 158.000000)
	registerVal16:setRGB(1.000000, 0.750000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.highlight = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 55.420000, 290.590000)
	registerVal17:setTopBottom(true, false, 25.000000, 127.000000)
	registerVal17:setRGB(0.000000, 0.270000, 0.010000)
	registerVal17:setScale(0.000000)
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal17:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.imageG = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 55.420000, 290.590000)
	registerVal18:setTopBottom(true, false, 25.000000, 127.000000)
	registerVal18:setRGB(0.550000, 0.090000, 0.090000)
	registerVal18:setScale(0.000000)
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal18:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.imageR = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 55.420000, 290.590000)
	registerVal19:setTopBottom(true, false, 25.000000, 127.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.image = registerVal19
	local registerVal20 = LUI.UIElement.new()
	registerVal20:setLeftRight(true, false, -181.500000, -133.500000)
	registerVal20:setTopBottom(true, false, 95.500000, 143.500000)
	registerVal2:addElement(registerVal20)
	registerVal2.Sound = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 78.500000, 270.500000)
	registerVal21:setTopBottom(true, false, -39.000000, 201.000000)
	registerVal21:setRGB(1.000000, 0.770000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setZRot(90.000000)
	registerVal21:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.ParticleFX01 = registerVal21
	local function __FUNC_1A2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill:linkToElementModel(registerVal2, "color", true, __FUNC_1A2B_)
	local function __FUNC_1ABB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill0:linkToElementModel(registerVal2, "color", true, __FUNC_1ABB_)
	local function __FUNC_1B4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke:linkToElementModel(registerVal2, "color", true, __FUNC_1B4B_)
	local function __FUNC_1BDB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke0:linkToElementModel(registerVal2, "color", true, __FUNC_1BDB_)
	local function __FUNC_1C6B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill:linkToElementModel(registerVal2, "color", true, __FUNC_1C6B_)
	local function __FUNC_1CFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill0:linkToElementModel(registerVal2, "color", true, __FUNC_1CFB_)
	local function __FUNC_1D8B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFillWide:linkToElementModel(registerVal2, "color", true, __FUNC_1D8B_)
	local function __FUNC_1E1B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1E1B_)
	local function __FUNC_1ED2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1ED2_)
	local function __FUNC_1FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1FBA_)
	local function __FUNC_2098_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_2098_)
	local function __FUNC_216F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_216F_)
	local function __FUNC_222C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_222C_)
	local function __FUNC_2303_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_2303_)
	local function __FUNC_23B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_23B4_)
	local function __FUNC_2468_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_2468_)
	local registerVal22 = {}
	local registerVal23 = {}
	local function __FUNC_251C_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_32C5_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_32C5_(registerVal3, {})
		local function __FUNC_3479_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.NotifCamoCenterBacking:setAlpha(0.000000)
		registerVal2.NotifCamoCenterBacking:setScale(3.000000)
		__FUNC_3479_(registerVal4, {})
		local function __FUNC_3650_(arg0, arg1)
			local function __FUNC_37A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 239.780000, 317.030000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(0.200000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_37A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37A8_)
		end

		registerVal5:completeAnimation()
		registerVal2.CornerFill:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerFill:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill:setAlpha(0.000000)
		registerVal2.CornerFill:setScale(3.000000)
		__FUNC_3650_(registerVal5, {})
		local function __FUNC_39F0_(arg0, arg1)
			local function __FUNC_3B48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 28.970000, 106.220000)
				arg0:setTopBottom(true, false, 0.000000, 154.490000)
				arg0:setAlpha(0.200000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3B48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B48_)
		end

		registerVal6:completeAnimation()
		registerVal2.CornerFill0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerFill0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill0:setAlpha(0.000000)
		registerVal2.CornerFill0:setScale(3.000000)
		__FUNC_39F0_(registerVal6, {})
		local function __FUNC_3D90_(arg0, arg1)
			local function __FUNC_3EE8_(arg0, arg1)
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
				__FUNC_3EE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE8_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerStroke:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerStroke:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke:setAlpha(0.000000)
		registerVal2.CornerStroke:setScale(3.000000)
		__FUNC_3D90_(registerVal7, {})
		local function __FUNC_412B_(arg0, arg1)
			local function __FUNC_4280_(arg0, arg1)
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
				__FUNC_4280_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4280_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerStroke0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerStroke0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke0:setAlpha(0.000000)
		registerVal2.CornerStroke0:setScale(3.000000)
		__FUNC_412B_(registerVal8, {})
		local function __FUNC_44C3_(arg0, arg1)
			local function __FUNC_4618_(arg0, arg1)
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
				__FUNC_4618_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4618_)
		end

		registerVal9:completeAnimation()
		registerVal2.EdgeFill:setLeftRight(true, false, 347.500000, 425.250000)
		registerVal2.EdgeFill:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill:setAlpha(0.000000)
		registerVal2.EdgeFill:setScale(1.000000)
		__FUNC_44C3_(registerVal9, {})
		local function __FUNC_485B_(arg0, arg1)
			local function __FUNC_49B0_(arg0, arg1)
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
				__FUNC_49B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49B0_)
		end

		registerVal10:completeAnimation()
		registerVal2.EdgeFill0:setLeftRight(true, false, -77.250000, 0.500000)
		registerVal2.EdgeFill0:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill0:setAlpha(0.000000)
		registerVal2.EdgeFill0:setScale(1.000000)
		__FUNC_485B_(registerVal10, {})
		local function __FUNC_4BF3_(arg0, arg1)
			local function __FUNC_4D48_(arg0, arg1)
				local function __FUNC_4EC3_(arg0, arg1)
					local function __FUNC_503B_(arg0, arg1)
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
						__FUNC_503B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503B_)
				end

				if arg1.interrupted then
					__FUNC_4EC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC3_)
			end

			if arg1.interrupted then
				__FUNC_4D48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D48_)
		end

		registerVal12:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_4BF3_(registerVal12, {})
		local function __FUNC_51ED_(arg0, arg1)
			local function __FUNC_5344_(arg0, arg1)
				local function __FUNC_54BF_(arg0, arg1)
					local function __FUNC_5637_(arg0, arg1)
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
						__FUNC_5637_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5637_)
				end

				if arg1.interrupted then
					__FUNC_54BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54BF_)
			end

			if arg1.interrupted then
				__FUNC_5344_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5344_)
		end

		registerVal13:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_51ED_(registerVal13, {})
		local function __FUNC_57E9_(arg0, arg1)
			local function __FUNC_5940_(arg0, arg1)
				local function __FUNC_5ABB_(arg0, arg1)
					local function __FUNC_5C33_(arg0, arg1)
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
						__FUNC_5C33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C33_)
				end

				if arg1.interrupted then
					__FUNC_5ABB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ABB_)
			end

			if arg1.interrupted then
				__FUNC_5940_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5940_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_57E9_(registerVal14, {})
		local function __FUNC_5DE5_(arg0, arg1)
			local function __FUNC_5F3C_(arg0, arg1)
				local function __FUNC_60B7_(arg0, arg1)
					local function __FUNC_622F_(arg0, arg1)
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
						__FUNC_622F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_622F_)
				end

				if arg1.interrupted then
					__FUNC_60B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60B7_)
			end

			if arg1.interrupted then
				__FUNC_5F3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F3C_)
		end

		registerVal15:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_5DE5_(registerVal15, {})
		local function __FUNC_63E1_(arg0, arg1)
			local function __FUNC_6538_(arg0, arg1)
				local function __FUNC_66F8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_66F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(120.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66F8_)
			end

			if arg1.interrupted then
				__FUNC_6538_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6538_)
		end

		registerVal16:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(0.800000)
		__FUNC_63E1_(registerVal16, {})
		local function __FUNC_68F2_(arg0, arg1)
			local function __FUNC_6A48_(arg0, arg1)
				local function __FUNC_6C1E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 55.420000, 290.590000)
					arg0:setTopBottom(true, false, 25.000000, 127.000000)
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
					__FUNC_6C1E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 93.720000, 328.890000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C1E_)
			end

			if arg1.interrupted then
				__FUNC_6A48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A48_)
		end

		registerVal17:completeAnimation()
		registerVal2.imageG:setLeftRight(true, false, 208.630000, 443.800000)
		registerVal2.imageG:setTopBottom(true, false, 25.000000, 127.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		registerVal2.imageG:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageG:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageG:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_68F2_(registerVal17, {})
		local function __FUNC_6F70_(arg0, arg1)
			local function __FUNC_70C8_(arg0, arg1)
				local function __FUNC_729E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 55.420000, 290.590000)
					arg0:setTopBottom(true, false, 25.000000, 127.000000)
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
					__FUNC_729E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 17.520000, 252.690000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_729E_)
			end

			if arg1.interrupted then
				__FUNC_70C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70C8_)
		end

		registerVal18:completeAnimation()
		registerVal2.imageR:setLeftRight(true, false, -96.170000, 139.010000)
		registerVal2.imageR:setTopBottom(true, false, 25.000000, 127.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		registerVal2.imageR:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.imageR:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.imageR:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_6F70_(registerVal18, {})
		local function __FUNC_75F0_(arg0, arg1)
			local function __FUNC_7748_(arg0, arg1)
				local function __FUNC_78C3_(arg0, arg1)
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
					__FUNC_78C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78C3_)
			end

			if arg1.interrupted then
				__FUNC_7748_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7748_)
		end

		registerVal19:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_75F0_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("mpl_notification_tier_up", arg1)
		registerVal2.clipFinished(registerVal20, {})
		local function __FUNC_7A93_(arg0, arg1)
			local function __FUNC_7BE8_(arg0, arg1)
				local function __FUNC_7D86_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_7D86_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D86_)
			end

			if arg1.interrupted then
				__FUNC_7BE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BE8_)
		end

		registerVal21:completeAnimation()
		registerVal2.ParticleFX01:setAlpha(0.000000)
		registerVal2.ParticleFX01:setScale(2.000000)
		__FUNC_7A93_(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_251C_
	local function __FUNC_7F5C_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_857E_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.400000)
		__FUNC_857E_(registerVal3, {})
		local function __FUNC_8731_(arg0, arg1)
			local function __FUNC_8888_(arg0, arg1)
				local function __FUNC_8A03_(arg0, arg1)
					local function __FUNC_8B7B_(arg0, arg1)
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
						__FUNC_8B7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B7B_)
				end

				if arg1.interrupted then
					__FUNC_8A03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A03_)
			end

			if arg1.interrupted then
				__FUNC_8888_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8888_)
		end

		registerVal4:completeAnimation()
		registerVal2.NotifCamoCenterBacking:setAlpha(0.500000)
		__FUNC_8731_(registerVal4, {})
		local function __FUNC_8D2D_(arg0, arg1)
			local function __FUNC_8E84_(arg0, arg1)
				local function __FUNC_8FFF_(arg0, arg1)
					local function __FUNC_9177_(arg0, arg1)
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
						__FUNC_9177_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9177_)
				end

				if arg1.interrupted then
					__FUNC_8FFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FFF_)
			end

			if arg1.interrupted then
				__FUNC_8E84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E84_)
		end

		registerVal5:completeAnimation()
		registerVal2.CornerFill:setAlpha(0.200000)
		__FUNC_8D2D_(registerVal5, {})
		local function __FUNC_9329_(arg0, arg1)
			local function __FUNC_9480_(arg0, arg1)
				local function __FUNC_95FB_(arg0, arg1)
					local function __FUNC_9773_(arg0, arg1)
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
						__FUNC_9773_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9773_)
				end

				if arg1.interrupted then
					__FUNC_95FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95FB_)
			end

			if arg1.interrupted then
				__FUNC_9480_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9480_)
		end

		registerVal6:completeAnimation()
		registerVal2.CornerFill0:setAlpha(0.200000)
		__FUNC_9329_(registerVal6, {})
		local function __FUNC_9925_(arg0, arg1)
			local function __FUNC_9A7C_(arg0, arg1)
				local function __FUNC_9BF7_(arg0, arg1)
					local function __FUNC_9D6F_(arg0, arg1)
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
						__FUNC_9D6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D6F_)
				end

				if arg1.interrupted then
					__FUNC_9BF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BF7_)
			end

			if arg1.interrupted then
				__FUNC_9A7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A7C_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerStroke:setAlpha(1.000000)
		__FUNC_9925_(registerVal7, {})
		local function __FUNC_9F21_(arg0, arg1)
			local function __FUNC_A078_(arg0, arg1)
				local function __FUNC_A1F3_(arg0, arg1)
					local function __FUNC_A36B_(arg0, arg1)
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
						__FUNC_A36B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A36B_)
				end

				if arg1.interrupted then
					__FUNC_A1F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1F3_)
			end

			if arg1.interrupted then
				__FUNC_A078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A078_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerStroke0:setAlpha(1.000000)
		__FUNC_9F21_(registerVal8, {})
		local function __FUNC_A51D_(arg0, arg1)
			local function __FUNC_A674_(arg0, arg1)
				local function __FUNC_A7EF_(arg0, arg1)
					local function __FUNC_A967_(arg0, arg1)
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
						__FUNC_A967_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A967_)
				end

				if arg1.interrupted then
					__FUNC_A7EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7EF_)
			end

			if arg1.interrupted then
				__FUNC_A674_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A674_)
		end

		registerVal9:completeAnimation()
		registerVal2.EdgeFill:setAlpha(1.000000)
		__FUNC_A51D_(registerVal9, {})
		local function __FUNC_AB19_(arg0, arg1)
			local function __FUNC_AC70_(arg0, arg1)
				local function __FUNC_ADEB_(arg0, arg1)
					local function __FUNC_AF63_(arg0, arg1)
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
						__FUNC_AF63_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF63_)
				end

				if arg1.interrupted then
					__FUNC_ADEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADEB_)
			end

			if arg1.interrupted then
				__FUNC_AC70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC70_)
		end

		registerVal10:completeAnimation()
		registerVal2.EdgeFill0:setAlpha(1.000000)
		__FUNC_AB19_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFillWide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_B115_(arg0, arg1)
			local function __FUNC_B28F_(arg0, arg1)
				local function __FUNC_B407_(arg0, arg1)
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
					__FUNC_B407_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B407_)
			end

			if arg1.interrupted then
				__FUNC_B28F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B28F_)
		end

		registerVal12:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_B115_(registerVal12, {})
		local function __FUNC_B5B9_(arg0, arg1)
			local function __FUNC_B733_(arg0, arg1)
				local function __FUNC_B8AB_(arg0, arg1)
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
					__FUNC_B8AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8AB_)
			end

			if arg1.interrupted then
				__FUNC_B733_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B733_)
		end

		registerVal13:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_B5B9_(registerVal13, {})
		local function __FUNC_BA5D_(arg0, arg1)
			local function __FUNC_BBB4_(arg0, arg1)
				local function __FUNC_BD2F_(arg0, arg1)
					local function __FUNC_BEA7_(arg0, arg1)
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
						__FUNC_BEA7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEA7_)
				end

				if arg1.interrupted then
					__FUNC_BD2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD2F_)
			end

			if arg1.interrupted then
				__FUNC_BBB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBB4_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_BA5D_(registerVal14, {})
		local function __FUNC_C059_(arg0, arg1)
			local function __FUNC_C1B0_(arg0, arg1)
				local function __FUNC_C32B_(arg0, arg1)
					local function __FUNC_C4A3_(arg0, arg1)
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
						__FUNC_C4A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4A3_)
				end

				if arg1.interrupted then
					__FUNC_C32B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C32B_)
			end

			if arg1.interrupted then
				__FUNC_C1B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1B0_)
		end

		registerVal15:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_C059_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_C655_(arg0, arg1)
			local function __FUNC_C7AC_(arg0, arg1)
				local function __FUNC_C927_(arg0, arg1)
					local function __FUNC_CA9F_(arg0, arg1)
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
						__FUNC_CA9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA9F_)
				end

				if arg1.interrupted then
					__FUNC_C927_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C927_)
			end

			if arg1.interrupted then
				__FUNC_C7AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7AC_)
		end

		registerVal19:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_C655_(registerVal19, {})
	end

	registerVal23.TimeUp = __FUNC_7F5C_
	registerVal22.DefaultState = registerVal23
	registerVal2.clipsPerState = registerVal22
	local function __FUNC_CC51_(arg0)
		arg0.NotifCamoCenterBacking:close()
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
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

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CC51_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

