-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Camo_CenterBacking")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CamoChallengeNotification = registerVal1
function CoD.CamoChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CamoChallengeNotification)
	registerVal2.id = "CamoChallengeNotification"
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
	registerVal9:setAlpha(0.300000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notif_camo_edge_fill"))
	registerVal2:addElement(registerVal9)
	registerVal2.EdgeFill = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 28.970000, 106.720000)
	registerVal10:setTopBottom(true, false, 0.000000, 155.490000)
	registerVal10:setAlpha(0.200000)
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
	registerVal20:setLeftRight(true, false, -130.500000, -82.500000)
	registerVal20:setTopBottom(true, false, 121.500000, 169.500000)
	registerVal2:addElement(registerVal20)
	registerVal2.UISound = registerVal20
	local function __FUNC_192A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill:linkToElementModel(registerVal2, "color", true, __FUNC_192A_)
	local function __FUNC_19BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFill0:linkToElementModel(registerVal2, "color", true, __FUNC_19BB_)
	local function __FUNC_1A4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke:linkToElementModel(registerVal2, "color", true, __FUNC_1A4B_)
	local function __FUNC_1ADB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal2.CornerStroke0:linkToElementModel(registerVal2, "color", true, __FUNC_1ADB_)
	local function __FUNC_1B6B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill:linkToElementModel(registerVal2, "color", true, __FUNC_1B6B_)
	local function __FUNC_1BFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setRGB(registerVal1)
		end
	end

	registerVal2.EdgeFill0:linkToElementModel(registerVal2, "color", true, __FUNC_1BFB_)
	local function __FUNC_1C8B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal2.CornerFillWide:linkToElementModel(registerVal2, "color", true, __FUNC_1C8B_)
	local function __FUNC_1D1B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1D1B_)
	local function __FUNC_1DD2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1DD2_)
	local function __FUNC_1EBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1EBA_)
	local function __FUNC_1F98_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1F98_)
	local function __FUNC_206F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_206F_)
	local function __FUNC_212C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_212C_)
	local function __FUNC_2203_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_2203_)
	local function __FUNC_2293_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_2293_)
	local function __FUNC_2344_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_2344_)
	local function __FUNC_23F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_23F8_)
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_24AC_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_31A4_(arg0, arg1)
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
		__FUNC_31A4_(registerVal3, {})
		local function __FUNC_3359_(arg0, arg1)
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
		__FUNC_3359_(registerVal4, {})
		local function __FUNC_3530_(arg0, arg1)
			local function __FUNC_3688_(arg0, arg1)
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
				__FUNC_3688_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3688_)
		end

		registerVal5:completeAnimation()
		registerVal2.CornerFill:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerFill:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill:setAlpha(0.000000)
		registerVal2.CornerFill:setScale(3.000000)
		__FUNC_3530_(registerVal5, {})
		local function __FUNC_38D0_(arg0, arg1)
			local function __FUNC_3A28_(arg0, arg1)
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
				__FUNC_3A28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A28_)
		end

		registerVal6:completeAnimation()
		registerVal2.CornerFill0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerFill0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerFill0:setAlpha(0.000000)
		registerVal2.CornerFill0:setScale(3.000000)
		__FUNC_38D0_(registerVal6, {})
		local function __FUNC_3C70_(arg0, arg1)
			local function __FUNC_3DC8_(arg0, arg1)
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
				__FUNC_3DC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC8_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerStroke:setLeftRight(true, false, 348.000000, 425.250000)
		registerVal2.CornerStroke:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke:setAlpha(0.000000)
		registerVal2.CornerStroke:setScale(3.000000)
		__FUNC_3C70_(registerVal7, {})
		local function __FUNC_400B_(arg0, arg1)
			local function __FUNC_4160_(arg0, arg1)
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
				__FUNC_4160_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4160_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerStroke0:setLeftRight(true, false, -77.250000, 0.000000)
		registerVal2.CornerStroke0:setTopBottom(true, false, 0.000000, 154.490000)
		registerVal2.CornerStroke0:setAlpha(0.000000)
		registerVal2.CornerStroke0:setScale(3.000000)
		__FUNC_400B_(registerVal8, {})
		local function __FUNC_43A3_(arg0, arg1)
			local function __FUNC_44F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 239.780000, 317.530000)
				arg0:setTopBottom(true, false, 0.000000, 155.490000)
				arg0:setAlpha(0.200000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_44F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44F8_)
		end

		registerVal9:completeAnimation()
		registerVal2.EdgeFill:setLeftRight(true, false, 347.500000, 425.250000)
		registerVal2.EdgeFill:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill:setAlpha(0.000000)
		registerVal2.EdgeFill:setScale(1.000000)
		__FUNC_43A3_(registerVal9, {})
		local function __FUNC_4740_(arg0, arg1)
			local function __FUNC_4898_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 28.970000, 106.720000)
				arg0:setTopBottom(true, false, 0.000000, 155.490000)
				arg0:setAlpha(0.200000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4898_)
		end

		registerVal10:completeAnimation()
		registerVal2.EdgeFill0:setLeftRight(true, false, -77.250000, 0.500000)
		registerVal2.EdgeFill0:setTopBottom(true, false, 0.000000, 155.490000)
		registerVal2.EdgeFill0:setAlpha(0.000000)
		registerVal2.EdgeFill0:setScale(1.000000)
		__FUNC_4740_(registerVal10, {})
		local function __FUNC_4AE0_(arg0, arg1)
			local function __FUNC_4C38_(arg0, arg1)
				local function __FUNC_4DB3_(arg0, arg1)
					local function __FUNC_4F2B_(arg0, arg1)
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
						__FUNC_4F2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F2B_)
				end

				if arg1.interrupted then
					__FUNC_4DB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB3_)
			end

			if arg1.interrupted then
				__FUNC_4C38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C38_)
		end

		registerVal12:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_4AE0_(registerVal12, {})
		local function __FUNC_50DD_(arg0, arg1)
			local function __FUNC_5234_(arg0, arg1)
				local function __FUNC_53AF_(arg0, arg1)
					local function __FUNC_5527_(arg0, arg1)
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
						__FUNC_5527_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5527_)
				end

				if arg1.interrupted then
					__FUNC_53AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53AF_)
			end

			if arg1.interrupted then
				__FUNC_5234_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5234_)
		end

		registerVal13:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_50DD_(registerVal13, {})
		local function __FUNC_56D9_(arg0, arg1)
			local function __FUNC_5830_(arg0, arg1)
				local function __FUNC_59AB_(arg0, arg1)
					local function __FUNC_5B23_(arg0, arg1)
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
						__FUNC_5B23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B23_)
				end

				if arg1.interrupted then
					__FUNC_59AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59AB_)
			end

			if arg1.interrupted then
				__FUNC_5830_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5830_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_56D9_(registerVal14, {})
		local function __FUNC_5CD5_(arg0, arg1)
			local function __FUNC_5E2C_(arg0, arg1)
				local function __FUNC_5FA7_(arg0, arg1)
					local function __FUNC_611F_(arg0, arg1)
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
						__FUNC_611F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_611F_)
				end

				if arg1.interrupted then
					__FUNC_5FA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FA7_)
			end

			if arg1.interrupted then
				__FUNC_5E2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E2C_)
		end

		registerVal15:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_5CD5_(registerVal15, {})
		local function __FUNC_62D1_(arg0, arg1)
			local function __FUNC_6428_(arg0, arg1)
				local function __FUNC_65E8_(arg0, arg1)
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
					__FUNC_65E8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(120.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65E8_)
			end

			if arg1.interrupted then
				__FUNC_6428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6428_)
		end

		registerVal16:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(0.800000)
		__FUNC_62D1_(registerVal16, {})
		local function __FUNC_67E2_(arg0, arg1)
			local function __FUNC_6938_(arg0, arg1)
				local function __FUNC_6B0E_(arg0, arg1)
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
					__FUNC_6B0E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 93.720000, 328.890000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B0E_)
			end

			if arg1.interrupted then
				__FUNC_6938_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6938_)
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
		__FUNC_67E2_(registerVal17, {})
		local function __FUNC_6E60_(arg0, arg1)
			local function __FUNC_6FB8_(arg0, arg1)
				local function __FUNC_718E_(arg0, arg1)
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
					__FUNC_718E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 17.520000, 252.690000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_718E_)
			end

			if arg1.interrupted then
				__FUNC_6FB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FB8_)
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
		__FUNC_6E60_(registerVal18, {})
		local function __FUNC_74E0_(arg0, arg1)
			local function __FUNC_7638_(arg0, arg1)
				local function __FUNC_77B3_(arg0, arg1)
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
					__FUNC_77B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(1.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77B3_)
			end

			if arg1.interrupted then
				__FUNC_7638_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7638_)
		end

		registerVal19:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.image:setScale(0.000000)
		__FUNC_74E0_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.UISound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_24AC_
	local function __FUNC_7983_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_804E_(arg0, arg1)
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
		__FUNC_804E_(registerVal3, {})
		local function __FUNC_8201_(arg0, arg1)
			local function __FUNC_837B_(arg0, arg1)
				local function __FUNC_84F3_(arg0, arg1)
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
					__FUNC_84F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84F3_)
			end

			if arg1.interrupted then
				__FUNC_837B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_837B_)
		end

		registerVal4:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.500000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_8201_)
		local function __FUNC_86A5_(arg0, arg1)
			local function __FUNC_87FC_(arg0, arg1)
				local function __FUNC_8977_(arg0, arg1)
					local function __FUNC_8AEF_(arg0, arg1)
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
						__FUNC_8AEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AEF_)
				end

				if arg1.interrupted then
					__FUNC_8977_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8977_)
			end

			if arg1.interrupted then
				__FUNC_87FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87FC_)
		end

		registerVal5:completeAnimation()
		registerVal2.CornerFill:setAlpha(0.200000)
		__FUNC_86A5_(registerVal5, {})
		local function __FUNC_8CA1_(arg0, arg1)
			local function __FUNC_8DF8_(arg0, arg1)
				local function __FUNC_8F73_(arg0, arg1)
					local function __FUNC_90EB_(arg0, arg1)
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
						__FUNC_90EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90EB_)
				end

				if arg1.interrupted then
					__FUNC_8F73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F73_)
			end

			if arg1.interrupted then
				__FUNC_8DF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DF8_)
		end

		registerVal6:completeAnimation()
		registerVal2.CornerFill0:setAlpha(0.200000)
		__FUNC_8CA1_(registerVal6, {})
		local function __FUNC_929D_(arg0, arg1)
			local function __FUNC_93F4_(arg0, arg1)
				local function __FUNC_956F_(arg0, arg1)
					local function __FUNC_96E7_(arg0, arg1)
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
						__FUNC_96E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96E7_)
				end

				if arg1.interrupted then
					__FUNC_956F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_956F_)
			end

			if arg1.interrupted then
				__FUNC_93F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93F4_)
		end

		registerVal7:completeAnimation()
		registerVal2.CornerStroke:setAlpha(1.000000)
		__FUNC_929D_(registerVal7, {})
		local function __FUNC_9899_(arg0, arg1)
			local function __FUNC_99F0_(arg0, arg1)
				local function __FUNC_9B6B_(arg0, arg1)
					local function __FUNC_9CE3_(arg0, arg1)
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
						__FUNC_9CE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CE3_)
				end

				if arg1.interrupted then
					__FUNC_9B6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B6B_)
			end

			if arg1.interrupted then
				__FUNC_99F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99F0_)
		end

		registerVal8:completeAnimation()
		registerVal2.CornerStroke0:setAlpha(1.000000)
		__FUNC_9899_(registerVal8, {})
		local function __FUNC_9E95_(arg0, arg1)
			local function __FUNC_9FEC_(arg0, arg1)
				local function __FUNC_A167_(arg0, arg1)
					local function __FUNC_A2DF_(arg0, arg1)
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
						__FUNC_A2DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2DF_)
				end

				if arg1.interrupted then
					__FUNC_A167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A167_)
			end

			if arg1.interrupted then
				__FUNC_9FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FEC_)
		end

		registerVal9:completeAnimation()
		registerVal2.EdgeFill:setAlpha(0.300000)
		__FUNC_9E95_(registerVal9, {})
		local function __FUNC_A491_(arg0, arg1)
			local function __FUNC_A5E8_(arg0, arg1)
				local function __FUNC_A763_(arg0, arg1)
					local function __FUNC_A8DB_(arg0, arg1)
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
						__FUNC_A8DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8DB_)
				end

				if arg1.interrupted then
					__FUNC_A763_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A763_)
			end

			if arg1.interrupted then
				__FUNC_A5E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5E8_)
		end

		registerVal10:completeAnimation()
		registerVal2.EdgeFill0:setAlpha(0.200000)
		__FUNC_A491_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFillWide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_AA8D_(arg0, arg1)
			local function __FUNC_AC07_(arg0, arg1)
				local function __FUNC_AD7F_(arg0, arg1)
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
					__FUNC_AD7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD7F_)
			end

			if arg1.interrupted then
				__FUNC_AC07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC07_)
		end

		registerVal12:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_AA8D_(registerVal12, {})
		local function __FUNC_AF31_(arg0, arg1)
			local function __FUNC_B0AB_(arg0, arg1)
				local function __FUNC_B223_(arg0, arg1)
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
					__FUNC_B223_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B223_)
			end

			if arg1.interrupted then
				__FUNC_B0AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0AB_)
		end

		registerVal13:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_AF31_(registerVal13, {})
		local function __FUNC_B3D5_(arg0, arg1)
			local function __FUNC_B52C_(arg0, arg1)
				local function __FUNC_B6A7_(arg0, arg1)
					local function __FUNC_B81F_(arg0, arg1)
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
						__FUNC_B81F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B81F_)
				end

				if arg1.interrupted then
					__FUNC_B6A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6A7_)
			end

			if arg1.interrupted then
				__FUNC_B52C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B52C_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(1.000000)
		__FUNC_B3D5_(registerVal14, {})
		local function __FUNC_B9D1_(arg0, arg1)
			local function __FUNC_BB28_(arg0, arg1)
				local function __FUNC_BCA3_(arg0, arg1)
					local function __FUNC_BE1B_(arg0, arg1)
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
						__FUNC_BE1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE1B_)
				end

				if arg1.interrupted then
					__FUNC_BCA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCA3_)
			end

			if arg1.interrupted then
				__FUNC_BB28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB28_)
		end

		registerVal15:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(1.000000)
		__FUNC_B9D1_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_BFCD_(arg0, arg1)
			local function __FUNC_C124_(arg0, arg1)
				local function __FUNC_C29F_(arg0, arg1)
					local function __FUNC_C417_(arg0, arg1)
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
						__FUNC_C417_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C417_)
				end

				if arg1.interrupted then
					__FUNC_C29F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C29F_)
			end

			if arg1.interrupted then
				__FUNC_C124_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C124_)
		end

		registerVal19:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_BFCD_(registerVal19, {})
	end

	registerVal22.TimeUp = __FUNC_7983_
	registerVal21.DefaultState = registerVal22
	registerVal2.clipsPerState = registerVal21
	local function __FUNC_C5C9_(arg0)
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
		arg0.highlight:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C5C9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

