-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleLine")
require("ui.uieditor.widgets.Notifications.Global.Notif_Global_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialistEpicChallengeNotification = registerVal1
function CoD.SpecialistEpicChallengeNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialistEpicChallengeNotification)
	registerVal2.id = "SpecialistEpicChallengeNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal3:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_specialist_center_shadow"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterShadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal4:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal4:setRGB(0.160000, 0.160000, 0.160000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_specialist_center_fill"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterFill = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal5:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_fill"))
	registerVal2:addElement(registerVal5)
	registerVal2.SideFill = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal6:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notif_specialist_side_stroke"))
	registerVal2:addElement(registerVal6)
	registerVal2.SideStroke = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -220.850000, 220.850000)
	registerVal7:setTopBottom(true, false, 143.000000, 321.000000)
	registerVal7:setRGB(0.160000, 0.160000, 0.160000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notif_global_desc_backing"))
	registerVal2:addElement(registerVal7)
	registerVal2.DescBacking = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -195.000000, 195.000000)
	registerVal8:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.Desc = registerVal8
	local registerVal9 = CoD.Notif_Global_TitleLine.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -258.000000, 258.000000)
	registerVal9:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.NotifGlobalTitleLine = registerVal9
	local registerVal10 = CoD.Notif_Global_Title.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 34.000000, 315.000000)
	registerVal10:setTopBottom(true, false, 143.000000, 183.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.NotifGlobalTitle = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 118.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.highlight = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal12:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal12:setRGB(0.000000, 0.270000, 0.010000)
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal12:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.imageG = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal13:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal13:setRGB(0.550000, 0.090000, 0.090000)
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal13:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.imageR = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal14:setTopBottom(true, false, -31.000000, 177.000000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_notif_specialist_notch_panels"))
	registerVal2:addElement(registerVal14)
	registerVal2.NotchPanels = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -60.000000, 68.000000)
	registerVal15:setTopBottom(true, false, 1.000000, 129.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.image = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.levelUpSound = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 78.500000, 270.500000)
	registerVal17:setTopBottom(true, false, -59.000000, 181.000000)
	registerVal17:setRGB(1.000000, 0.760000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZRot(90.000000)
	registerVal17:setScale(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_crate_ember"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.ParticleFX01 = registerVal17
	local function __FUNC_1663_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal2.SideFill:linkToElementModel(registerVal2, "color", true, __FUNC_1663_)
	local function __FUNC_16F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.SideStroke:linkToElementModel(registerVal2, "color", true, __FUNC_16F3_)
	local function __FUNC_1783_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Desc:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1783_)
	local function __FUNC_183A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.NotifGlobalTitleBackingLine.TitleBackingLine:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_183A_)
	local function __FUNC_1922_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.NotifGlobalTitleBackingLine.Image0:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "color", true, __FUNC_1922_)
	local function __FUNC_1A00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitleLine:linkToElementModel(registerVal2, "title", true, __FUNC_1A00_)
	local function __FUNC_1AD7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.NotifGlobalTitleBacking:setRGB(registerVal1)
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "color", true, __FUNC_1AD7_)
	local function __FUNC_1B94_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.NotifGlobalTitle:linkToElementModel(registerVal2, "title", true, __FUNC_1B94_)
	local function __FUNC_1C6B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1C6B_)
	local function __FUNC_1CFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageG:linkToElementModel(registerVal2, "icon", true, __FUNC_1CFB_)
	local function __FUNC_1DAC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.imageR:linkToElementModel(registerVal2, "icon", true, __FUNC_1DAC_)
	local function __FUNC_1E60_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setRGB(registerVal1)
		end
	end

	registerVal2.NotchPanels:linkToElementModel(registerVal2, "color", true, __FUNC_1E60_)
	local function __FUNC_1EF3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_1EF3_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1FA4_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_27E5_(arg0, arg1)
			local function __FUNC_293C_(arg0, arg1)
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
				__FUNC_293C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_293C_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterShadow:setAlpha(0.000000)
		__FUNC_27E5_(registerVal3, {})
		local function __FUNC_2AF1_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.CenterFill:setAlpha(0.000000)
		registerVal2.CenterFill:setScale(5.000000)
		__FUNC_2AF1_(registerVal4, {})
		local function __FUNC_2CC8_(arg0, arg1)
			local function __FUNC_2E20_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, true, CoD.TweenType.Linear)
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
				__FUNC_2E20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E20_)
		end

		registerVal5:completeAnimation()
		registerVal2.SideFill:setAlpha(0.000000)
		registerVal2.SideFill:setScale(5.000000)
		__FUNC_2CC8_(registerVal5, {})
		local function __FUNC_2FF8_(arg0, arg1)
			local function __FUNC_3150_(arg0, arg1)
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
				__FUNC_3150_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3150_)
		end

		registerVal6:completeAnimation()
		registerVal2.SideStroke:setAlpha(0.000000)
		registerVal2.SideStroke:setScale(5.000000)
		__FUNC_2FF8_(registerVal6, {})
		local function __FUNC_3323_(arg0, arg1)
			local function __FUNC_3478_(arg0, arg1)
				local function __FUNC_35F3_(arg0, arg1)
					local function __FUNC_376B_(arg0, arg1)
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
						__FUNC_376B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_376B_)
				end

				if arg1.interrupted then
					__FUNC_35F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35F3_)
			end

			if arg1.interrupted then
				__FUNC_3478_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3478_)
		end

		registerVal7:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.000000)
		__FUNC_3323_(registerVal7, {})
		local function __FUNC_391D_(arg0, arg1)
			local function __FUNC_3A74_(arg0, arg1)
				local function __FUNC_3BEF_(arg0, arg1)
					local function __FUNC_3D67_(arg0, arg1)
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
						__FUNC_3D67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D67_)
				end

				if arg1.interrupted then
					__FUNC_3BEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BEF_)
			end

			if arg1.interrupted then
				__FUNC_3A74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A74_)
		end

		registerVal8:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		__FUNC_391D_(registerVal8, {})
		local function __FUNC_3F19_(arg0, arg1)
			local function __FUNC_4070_(arg0, arg1)
				local function __FUNC_41EB_(arg0, arg1)
					local function __FUNC_4363_(arg0, arg1)
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
						__FUNC_4363_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4363_)
				end

				if arg1.interrupted then
					__FUNC_41EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41EB_)
			end

			if arg1.interrupted then
				__FUNC_4070_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4070_)
		end

		registerVal9:completeAnimation()
		registerVal2.NotifGlobalTitleLine:setAlpha(0.000000)
		__FUNC_3F19_(registerVal9, {})
		local function __FUNC_4515_(arg0, arg1)
			local function __FUNC_466C_(arg0, arg1)
				local function __FUNC_47E7_(arg0, arg1)
					local function __FUNC_495F_(arg0, arg1)
						local function __FUNC_4AD7_(arg0, arg1)
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
							__FUNC_4AD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AD7_)
					end

					if arg1.interrupted then
						__FUNC_495F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_495F_)
				end

				if arg1.interrupted then
					__FUNC_47E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47E7_)
			end

			if arg1.interrupted then
				__FUNC_466C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_466C_)
		end

		registerVal10:completeAnimation()
		registerVal2.NotifGlobalTitle:setAlpha(0.000000)
		__FUNC_4515_(registerVal10, {})
		local function __FUNC_4C89_(arg0, arg1)
			local function __FUNC_4DE0_(arg0, arg1)
				local function __FUNC_4FA0_(arg0, arg1)
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
					__FUNC_4FA0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(102.860000)
				arg0:setScale(3.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FA0_)
			end

			if arg1.interrupted then
				__FUNC_4DE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DE0_)
		end

		registerVal11:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_4C89_(registerVal11, {})
		local function __FUNC_519A_(arg0, arg1)
			local function __FUNC_52F0_(arg0, arg1)
				local function __FUNC_54C6_(arg0, arg1)
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
					__FUNC_54C6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -40.910000, 87.090000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.520000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54C6_)
			end

			if arg1.interrupted then
				__FUNC_52F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52F0_)
		end

		registerVal12:completeAnimation()
		registerVal2.imageG:setLeftRight(false, false, 13.000000, 141.000000)
		registerVal2.imageG:setTopBottom(true, false, 1.000000, 129.000000)
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.imageG:setScale(3.000000)
		__FUNC_519A_(registerVal12, {})
		local function __FUNC_5702_(arg0, arg1)
			local function __FUNC_5858_(arg0, arg1)
				local function __FUNC_5A2E_(arg0, arg1)
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
					__FUNC_5A2E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -80.920000, 47.080000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.520000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A2E_)
			end

			if arg1.interrupted then
				__FUNC_5858_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5858_)
		end

		registerVal13:completeAnimation()
		registerVal2.imageR:setLeftRight(false, false, -140.000000, -12.000000)
		registerVal2.imageR:setTopBottom(true, false, 1.000000, 129.000000)
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.imageR:setScale(3.000000)
		__FUNC_5702_(registerVal13, {})
		local function __FUNC_5C6A_(arg0, arg1)
			local function __FUNC_5DC0_(arg0, arg1)
				local function __FUNC_5F5E_(arg0, arg1)
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
					__FUNC_5F5E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F5E_)
			end

			if arg1.interrupted then
				__FUNC_5DC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DC0_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotchPanels:setAlpha(0.000000)
		registerVal2.NotchPanels:setScale(0.100000)
		__FUNC_5C6A_(registerVal14, {})
		local function __FUNC_612F_(arg0, arg1)
			local function __FUNC_6284_(arg0, arg1)
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
				__FUNC_6284_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6284_)
		end

		registerVal15:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.image:setScale(1.000000)
		__FUNC_612F_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelUpSound:setPlaySoundDirect(true)
		registerVal2.levelUpSound:playSound("mpl_notification_tier_up", arg1)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_6457_(arg0, arg1)
			local function __FUNC_65CF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.150000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_65CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CF_)
		end

		registerVal17:completeAnimation()
		registerVal2.ParticleFX01:setAlpha(0.000000)
		registerVal2.ParticleFX01:setScale(0.000000)
		__FUNC_6457_(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1FA4_
	local function __FUNC_67A4_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_6DD4_(arg0, arg1)
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

		registerVal3:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.600000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_6DD4_)
		local function __FUNC_6F89_(arg0, arg1)
			local function __FUNC_70E0_(arg0, arg1)
				local function __FUNC_7238_(arg0, arg1)
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
					__FUNC_7238_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7238_)
			end

			if arg1.interrupted then
				__FUNC_70E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70E0_)
		end

		registerVal4:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.400000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_6F89_)
		local function __FUNC_73ED_(arg0, arg1)
			local function __FUNC_7567_(arg0, arg1)
				local function __FUNC_76DF_(arg0, arg1)
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
					__FUNC_76DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76DF_)
			end

			if arg1.interrupted then
				__FUNC_7567_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7567_)
		end

		registerVal5:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.200000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_73ED_)
		local function __FUNC_7891_(arg0, arg1)
			local function __FUNC_7A0B_(arg0, arg1)
				local function __FUNC_7B83_(arg0, arg1)
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
					__FUNC_7B83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B83_)
			end

			if arg1.interrupted then
				__FUNC_7A0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A0B_)
		end

		registerVal6:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(1.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_7891_)
		local function __FUNC_7D35_(arg0, arg1)
			local function __FUNC_7EAF_(arg0, arg1)
				local function __FUNC_8027_(arg0, arg1)
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
					__FUNC_8027_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8027_)
			end

			if arg1.interrupted then
				__FUNC_7EAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAF_)
		end

		registerVal7:completeAnimation()
		registerVal2.DescBacking:setAlpha(0.900000)
		__FUNC_7D35_(registerVal7, {})
		local function __FUNC_81D9_(arg0, arg1)
			local function __FUNC_8353_(arg0, arg1)
				local function __FUNC_84CB_(arg0, arg1)
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
					__FUNC_84CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84CB_)
			end

			if arg1.interrupted then
				__FUNC_8353_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8353_)
		end

		registerVal8:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		__FUNC_81D9_(registerVal8, {})
		local function __FUNC_867D_(arg0, arg1)
			local function __FUNC_87F7_(arg0, arg1)
				local function __FUNC_896F_(arg0, arg1)
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
					__FUNC_896F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_896F_)
			end

			if arg1.interrupted then
				__FUNC_87F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87F7_)
		end

		registerVal9:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_867D_)
		local function __FUNC_8B21_(arg0, arg1)
			local function __FUNC_8C9B_(arg0, arg1)
				local function __FUNC_8E13_(arg0, arg1)
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
					__FUNC_8E13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E13_)
			end

			if arg1.interrupted then
				__FUNC_8C9B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C9B_)
		end

		registerVal10:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_8B21_)
		local function __FUNC_8FC5_(arg0, arg1)
			local function __FUNC_913F_(arg0, arg1)
				local function __FUNC_92B7_(arg0, arg1)
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
					__FUNC_92B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92B7_)
			end

			if arg1.interrupted then
				__FUNC_913F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_913F_)
		end

		registerVal11:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(1.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_8FC5_)
		registerVal12:completeAnimation()
		registerVal2.imageG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.imageR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_9469_(arg0, arg1)
			local function __FUNC_95C0_(arg0, arg1)
				local function __FUNC_973B_(arg0, arg1)
					local function __FUNC_98B3_(arg0, arg1)
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
						__FUNC_98B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98B3_)
				end

				if arg1.interrupted then
					__FUNC_973B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_973B_)
			end

			if arg1.interrupted then
				__FUNC_95C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95C0_)
		end

		registerVal14:completeAnimation()
		registerVal2.NotchPanels:setAlpha(1.000000)
		__FUNC_9469_(registerVal14, {})
		local function __FUNC_9A65_(arg0, arg1)
			local function __FUNC_9BDF_(arg0, arg1)
				local function __FUNC_9D57_(arg0, arg1)
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
					__FUNC_9D57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D57_)
			end

			if arg1.interrupted then
				__FUNC_9BDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BDF_)
		end

		registerVal15:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(1.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_9A65_)
	end

	registerVal19.TimeUp = __FUNC_67A4_
	registerVal18.DefaultState = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_9F09_(arg0)
		arg0.NotifGlobalTitleLine:close()
		arg0.NotifGlobalTitle:close()
		arg0.SideFill:close()
		arg0.SideStroke:close()
		arg0.Desc:close()
		arg0.highlight:close()
		arg0.imageG:close()
		arg0.imageR:close()
		arg0.NotchPanels:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F09_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

