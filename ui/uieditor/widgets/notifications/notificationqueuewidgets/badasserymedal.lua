-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Medals.Notification_Medals_Label")
require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BadasseryMedal = registerVal1
function CoD.BadasseryMedal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BadasseryMedal)
	registerVal2.id = "BadasseryMedal"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 188.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Backing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal4:setRGB(1.000000, 0.010000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal4:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RedBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal5:setRGB(0.000000, 0.500000, 0.050000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal5:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.GreenBacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal6:setRGB(0.080000, 0.000000, 0.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal6:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BlueBacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal7:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal7:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal8:setTopBottom(true, false, 145.000000, 187.000000)
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.SubText = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Flash = registerVal9
	local registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(true, false, 155.000000, 203.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.appearSound = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal11:setAlpha(0.100000)
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_digital_noise"))
	registerVal11:setShaderVector(0.000000, 0.600000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 2.480000, 0.000000, 0.000000, 0.000000)
	registerVal11:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.ImageNoise = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -80.750000, 80.750000)
	registerVal12:setTopBottom(true, false, -1.750000, 129.750000)
	registerVal12:setAlpha(0.170000)
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal12:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.800000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal12:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.ImageScanline = registerVal12
	local registerVal13 = CoD.Notification_Medals_Label.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -100.500000, 100.500000)
	registerVal13:setTopBottom(true, false, 116.000000, 156.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.Title = registerVal13
	local registerVal14 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 40.000000, 88.000000)
	registerVal14:setTopBottom(true, false, 86.000000, 134.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setScale(0.900000)
	registerVal2:addElement(registerVal14)
	registerVal2.Notification2xpReward = registerVal14
	local function __FUNC_1592_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Backing:linkToElementModel(registerVal2, "backing", true, __FUNC_1592_)
	local function __FUNC_1644_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RedBacking:linkToElementModel(registerVal2, "backing", true, __FUNC_1644_)
	local function __FUNC_16F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GreenBacking:linkToElementModel(registerVal2, "backing", true, __FUNC_16F8_)
	local function __FUNC_17AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.BlueBacking:linkToElementModel(registerVal2, "backing", true, __FUNC_17AC_)
	local function __FUNC_1860_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Image:linkToElementModel(registerVal2, "icon", true, __FUNC_1860_)
	local function __FUNC_1914_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(registerVal1)
		end
	end

	registerVal2.SubText:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1914_)
	local function __FUNC_19A8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.ImageNoise:linkToElementModel(registerVal2, "icon", true, __FUNC_19A8_)
	local function __FUNC_1A5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.ImageScanline:linkToElementModel(registerVal2, "icon", true, __FUNC_1A5C_)
	local function __FUNC_1B10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.TextBox0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Title:linkToElementModel(registerVal2, "title", true, __FUNC_1B10_)
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1BE8_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_28D1_(arg0, arg1)
			local function __FUNC_2A28_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A28_)
		end

		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		__FUNC_28D1_(registerVal3, {})
		local function __FUNC_2BDD_(arg0, arg1)
			local function __FUNC_2DC7_(arg0, arg1)
				local function __FUNC_2F8C_(arg0, arg1)
					local function __FUNC_30E4_(arg0, arg1)
						local function __FUNC_32A1_(arg0, arg1)
							local function __FUNC_33F8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -64.000000, 64.000000)
								arg0:setTopBottom(true, false, 0.000000, 128.000000)
								arg0:setRGB(1.000000, 0.010000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
								arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_33F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F8_)
						end

						if arg1.interrupted then
							__FUNC_32A1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A1_)
					end

					if arg1.interrupted then
						__FUNC_30E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E4_)
				end

				if arg1.interrupted then
					__FUNC_2F8C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F8C_)
			end

			if arg1.interrupted then
				__FUNC_2DC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -40.730000, 110.550000)
			arg0:setTopBottom(true, false, 27.640000, 97.450000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC7_)
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -32.000000, 128.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 38.000000, 86.000000)
		registerVal2.RedBacking:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.RedBacking:setAlpha(0.000000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_2BDD_(registerVal4, {})
		local function __FUNC_374D_(arg0, arg1)
			local function __FUNC_3937_(arg0, arg1)
				local function __FUNC_3AFC_(arg0, arg1)
					local function __FUNC_3C54_(arg0, arg1)
						local function __FUNC_3E11_(arg0, arg1)
							local function __FUNC_3F68_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -64.000000, 64.000000)
								arg0:setTopBottom(true, false, 0.000000, 128.000000)
								arg0:setRGB(0.000000, 0.500000, 0.050000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
								arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3F68_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F68_)
						end

						if arg1.interrupted then
							__FUNC_3E11_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E11_)
					end

					if arg1.interrupted then
						__FUNC_3C54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C54_)
				end

				if arg1.interrupted then
					__FUNC_3AFC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFC_)
			end

			if arg1.interrupted then
				__FUNC_3937_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -110.550000, 40.730000)
			arg0:setTopBottom(true, false, 27.640000, 97.450000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3937_)
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -128.000000, 32.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 38.000000, 86.000000)
		registerVal2.GreenBacking:setRGB(0.000000, 0.500000, 0.050000)
		registerVal2.GreenBacking:setAlpha(0.000000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_374D_(registerVal5, {})
		local function __FUNC_42C7_(arg0, arg1)
			local function __FUNC_443F_(arg0, arg1)
				local function __FUNC_4604_(arg0, arg1)
					local function __FUNC_47CD_(arg0, arg1)
						local function __FUNC_4924_(arg0, arg1)
							local function __FUNC_4AE1_(arg0, arg1)
								local function __FUNC_4C38_(arg0, arg1)
									local function __FUNC_4DB3_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -64.000000, 64.000000)
										arg0:setTopBottom(true, false, 0.000000, 128.000000)
										arg0:setRGB(0.080000, 0.000000, 0.500000)
										arg0:setAlpha(0.000000)
										arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
										arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_4DB3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB3_)
								end

								if arg1.interrupted then
									__FUNC_4C38_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C38_)
							end

							if arg1.interrupted then
								__FUNC_4AE1_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
							arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE1_)
						end

						if arg1.interrupted then
							__FUNC_4924_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4924_)
					end

					if arg1.interrupted then
						__FUNC_47CD_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Elastic)
					arg0:setLeftRight(false, false, -64.000000, 64.000000)
					arg0:setTopBottom(true, false, 0.000000, 128.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47CD_)
				end

				if arg1.interrupted then
					__FUNC_4604_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -70.000000, 70.000000)
				arg0:setTopBottom(true, false, -6.000000, 134.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4604_)
			end

			if arg1.interrupted then
				__FUNC_443F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_443F_)
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -128.000000, 128.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, 34.000000, 94.000000)
		registerVal2.BlueBacking:setRGB(0.080000, 0.000000, 0.500000)
		registerVal2.BlueBacking:setAlpha(0.000000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_42C7_(registerVal6, {})
		local function __FUNC_510F_(arg0, arg1)
			local function __FUNC_52D4_(arg0, arg1)
				local function __FUNC_54BF_(arg0, arg1)
					local function __FUNC_5684_(arg0, arg1)
						local function __FUNC_584C_(arg0, arg1)
							local function __FUNC_59A4_(arg0, arg1)
								local function __FUNC_5B1F_(arg0, arg1)
									local function __FUNC_5C97_(arg0, arg1)
										local function __FUNC_5E0F_(arg0, arg1)
											local function __FUNC_5F87_(arg0, arg1)
												local function __FUNC_60FF_(arg0, arg1)
													local function __FUNC_6277_(arg0, arg1)
														local function __FUNC_63EF_(arg0, arg1)
															local function __FUNC_6544_(arg0, arg1)
																local function __FUNC_66BF_(arg0, arg1)
																	local function __FUNC_6837_(arg0, arg1)
																		local function __FUNC_698C_(arg0, arg1)
																			local function __FUNC_6B07_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setLeftRight(false, false, -64.000000, 64.000000)
																				arg0:setTopBottom(true, false, 0.000000, 128.000000)
																				arg0:setAlpha(1.000000)
																				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
																				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
																				arg0:setShaderVector(1.000000, 0.090000, 0.000000, 0.000000, 0.000000)
																				arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_6B07_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.900000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B07_)
																		end

																		if arg1.interrupted then
																			__FUNC_698C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_698C_)
																	end

																	if arg1.interrupted then
																		__FUNC_6837_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6837_)
																end

																if arg1.interrupted then
																	__FUNC_66BF_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.900000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66BF_)
															end

															if arg1.interrupted then
																__FUNC_6544_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6544_)
														end

														if arg1.interrupted then
															__FUNC_63EF_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63EF_)
													end

													if arg1.interrupted then
														__FUNC_6277_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
													arg0:setAlpha(0.900000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6277_)
												end

												if arg1.interrupted then
													__FUNC_60FF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60FF_)
											end

											if arg1.interrupted then
												__FUNC_5F87_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
											arg0:setAlpha(0.800000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F87_)
										end

										if arg1.interrupted then
											__FUNC_5E0F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E0F_)
									end

									if arg1.interrupted then
										__FUNC_5C97_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 99.000000, false, true, CoD.TweenType.Linear)
									arg0:setAlpha(0.940000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C97_)
								end

								if arg1.interrupted then
									__FUNC_5B1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.660000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B1F_)
							end

							if arg1.interrupted then
								__FUNC_59A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59A4_)
						end

						if arg1.interrupted then
							__FUNC_584C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -64.000000, 64.000000)
						arg0:setTopBottom(true, false, 0.000000, 128.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_584C_)
					end

					if arg1.interrupted then
						__FUNC_5684_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -120.000000, 119.000000)
					arg0:setTopBottom(true, false, 49.500000, 78.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5684_)
				end

				if arg1.interrupted then
					__FUNC_54BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -17.000000, 17.000000)
				arg0:setTopBottom(true, false, -58.000000, 186.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54BF_)
			end

			if arg1.interrupted then
				__FUNC_52D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -17.450000, 17.450000)
			arg0:setTopBottom(true, false, -57.440000, 185.440000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52D4_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.Image:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.Image:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Image:setShaderVector(1.000000, 0.090000, 0.000000, 0.000000, 0.000000)
		registerVal2.Image:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_510F_(registerVal7, {})
		local function __FUNC_6E3A_(arg0, arg1)
			local function __FUNC_6F90_(arg0, arg1)
				local function __FUNC_7150_(arg0, arg1)
					local function __FUNC_72CA_(arg0, arg1)
						local function __FUNC_7443_(arg0, arg1)
							local function __FUNC_75BB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 180.000000, true, true, CoD.TweenType.Bounce)
								end
								arg0:setAlpha(0.200000)
								arg0:setZRot(360.000000)
								arg0:setScale(2.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_75BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75BB_)
						end

						if arg1.interrupted then
							__FUNC_7443_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.140000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7443_)
					end

					if arg1.interrupted then
						__FUNC_72CA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(360.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72CA_)
				end

				if arg1.interrupted then
					__FUNC_7150_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(180.000000)
				arg0:setScale(2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7150_)
			end

			if arg1.interrupted then
				__FUNC_6F90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F90_)
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setAlpha(0.000000)
		registerVal2.Flash:setZRot(0.000000)
		registerVal2.Flash:setScale(1.000000)
		registerVal2.Flash:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_6E3A_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.appearSound:playSound("medal_earned", arg1)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_783C_(arg0, arg1)
			local function __FUNC_7994_(arg0, arg1)
				local function __FUNC_7B0F_(arg0, arg1)
					local function __FUNC_7C87_(arg0, arg1)
						local function __FUNC_7DFF_(arg0, arg1)
							local function __FUNC_7F77_(arg0, arg1)
								local function __FUNC_80EF_(arg0, arg1)
									local function __FUNC_8267_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.100000)
										arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_digital_noise"))
										arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_8267_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 640.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8267_)
								end

								if arg1.interrupted then
									__FUNC_80EF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.100000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80EF_)
							end

							if arg1.interrupted then
								__FUNC_7F77_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F77_)
						end

						if arg1.interrupted then
							__FUNC_7DFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.100000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DFF_)
					end

					if arg1.interrupted then
						__FUNC_7C87_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C87_)
				end

				if arg1.interrupted then
					__FUNC_7B0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B0F_)
			end

			if arg1.interrupted then
				__FUNC_7994_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7994_)
		end

		registerVal11:completeAnimation()
		registerVal2.ImageNoise:setAlpha(0.000000)
		registerVal2.ImageNoise:setMaterial(LUI.UIImage.GetCachedMaterial("uie_digital_noise"))
		registerVal2.ImageNoise:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageNoise:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_783C_(registerVal11, {})
		local function __FUNC_8509_(arg0, arg1)
			local function __FUNC_8698_(arg0, arg1)
				local function __FUNC_884B_(arg0, arg1)
					local function __FUNC_89FB_(arg0, arg1)
						local function __FUNC_8B73_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -80.750000, 80.750000)
							arg0:setTopBottom(true, false, -1.750000, 129.750000)
							arg0:setAlpha(0.100000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
							arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(1.000000, 0.800000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_8B73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1560.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.150000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B73_)
					end

					if arg1.interrupted then
						__FUNC_89FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -1.750000, 129.750000)
					arg0:setAlpha(0.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89FB_)
				end

				if arg1.interrupted then
					__FUNC_884B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -3.780000, 131.780000)
				arg0:setAlpha(0.120000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_884B_)
			end

			if arg1.interrupted then
				__FUNC_8698_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -4.050000, 132.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8698_)
		end

		registerVal12:completeAnimation()
		registerVal2.ImageScanline:setLeftRight(false, false, -80.750000, 80.750000)
		registerVal2.ImageScanline:setTopBottom(true, false, -5.750000, 133.750000)
		registerVal2.ImageScanline:setAlpha(0.000000)
		registerVal2.ImageScanline:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline:setShaderVector(1.000000, 0.800000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_8509_(registerVal12, {})
		local function __FUNC_8EB0_(arg0, arg1)
			local function __FUNC_9008_(arg0, arg1)
				local function __FUNC_91A1_(arg0, arg1)
					local function __FUNC_931B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_931B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_931B_)
				end

				if arg1.interrupted then
					__FUNC_91A1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A1_)
			end

			if arg1.interrupted then
				__FUNC_9008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9008_)
		end

		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.Title:setScale(0.100000)
		__FUNC_8EB0_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1BE8_
	local function __FUNC_94EB_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_9CBE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(1.000000)
		__FUNC_9CBE_(registerVal3, {})
		local function __FUNC_9E71_(arg0, arg1)
			local function __FUNC_A00C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:setRGB(0.500000, 0.000000, 0.090000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A00C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A00C_)
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.RedBacking:setRGB(0.500000, 0.000000, 0.090000)
		registerVal2.RedBacking:setAlpha(1.000000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_9E71_(registerVal4, {})
		local function __FUNC_A36B_(arg0, arg1)
			local function __FUNC_A537_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -79.000000, 79.000000)
				arg0:setTopBottom(true, false, -15.000000, 143.000000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A537_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A537_)
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.GreenBacking:setAlpha(1.000000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_A36B_(registerVal5, {})
		local function __FUNC_A86A_(arg0, arg1)
			local function __FUNC_AA37_(arg0, arg1)
				local function __FUNC_AC63_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -94.000000, 94.000000)
					arg0:setTopBottom(true, false, -30.000000, 158.000000)
					arg0:setRGB(0.040000, 0.000000, 0.500000)
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
					arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AC63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -116.000000, 116.000000)
				arg0:setTopBottom(true, false, 45.000000, 83.000000)
				arg0:setAlpha(0.500000)
				arg0:setShaderVector(2.000000, 0.078400, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC63_)
			end

			if arg1.interrupted then
				__FUNC_AA37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA37_)
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.BlueBacking:setRGB(0.040000, 0.000000, 0.500000)
		registerVal2.BlueBacking:setAlpha(1.000000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_A86A_(registerVal6, {})
		local function __FUNC_AFC4_(arg0, arg1)
			local function __FUNC_B18C_(arg0, arg1)
				local function __FUNC_B354_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -138.000000, 138.000000)
					arg0:setTopBottom(true, false, 58.000000, 70.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B354_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -138.000000, 138.000000)
				arg0:setTopBottom(true, false, 58.000000, 70.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B354_)
			end

			if arg1.interrupted then
				__FUNC_B18C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -12.000000, 12.000000)
			arg0:setTopBottom(true, false, -50.000000, 178.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B18C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Image:setAlpha(1.000000)
		__FUNC_AFC4_(registerVal7, {})
		local function __FUNC_B579_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.SubText:setAlpha(1.000000)
		__FUNC_B579_(registerVal8, {})
		local function __FUNC_B72D_(arg0, arg1)
			local function __FUNC_B8A7_(arg0, arg1)
				local function __FUNC_BA1F_(arg0, arg1)
					local function __FUNC_BB97_(arg0, arg1)
						local function __FUNC_BD0F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 128.000000)
							arg0:setTopBottom(true, false, 0.000000, 128.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_BD0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD0F_)
					end

					if arg1.interrupted then
						__FUNC_BB97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB97_)
				end

				if arg1.interrupted then
					__FUNC_BA1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA1F_)
			end

			if arg1.interrupted then
				__FUNC_B8A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8A7_)
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setLeftRight(true, false, 0.000000, 128.000000)
		registerVal2.Flash:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Flash:setAlpha(1.000000)
		__FUNC_B72D_(registerVal9, {})
	end

	registerVal16.TimeUp = __FUNC_94EB_
	local function __FUNC_BF22_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_C693_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -55.000000, 73.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.RedBacking:setAlpha(0.500000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_C693_(registerVal4, {})
		local function __FUNC_C9C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -73.000000, 55.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.GreenBacking:setAlpha(0.500000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_C9C1_(registerVal5, {})
		local function __FUNC_CCF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -73.000000, 73.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, -9.000000, 137.000000)
		registerVal2.BlueBacking:setAlpha(0.500000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_CCF1_(registerVal6, {})
		local function __FUNC_D021_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		__FUNC_D021_(registerVal7, {})
		local function __FUNC_D222_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -640.000000, 640.000000)
			arg0:setTopBottom(true, false, 147.000000, 177.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.SubText:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.SubText:setTopBottom(true, false, 146.000000, 187.000000)
		__FUNC_D222_(registerVal8, {})
		local function __FUNC_D422_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setAlpha(0.750000)
		registerVal2.Flash:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_D422_(registerVal9, {})
	end

	registerVal16.Combined = __FUNC_BF22_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_D65F_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_E341_(arg0, arg1)
			local function __FUNC_E498_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E498_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E498_)
		end

		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		__FUNC_E341_(registerVal3, {})
		local function __FUNC_E64D_(arg0, arg1)
			local function __FUNC_E837_(arg0, arg1)
				local function __FUNC_E9FC_(arg0, arg1)
					local function __FUNC_EB54_(arg0, arg1)
						local function __FUNC_ED11_(arg0, arg1)
							local function __FUNC_EE68_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -64.000000, 64.000000)
								arg0:setTopBottom(true, false, 0.000000, 128.000000)
								arg0:setRGB(1.000000, 0.010000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
								arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EE68_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE68_)
						end

						if arg1.interrupted then
							__FUNC_ED11_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED11_)
					end

					if arg1.interrupted then
						__FUNC_EB54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB54_)
				end

				if arg1.interrupted then
					__FUNC_E9FC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9FC_)
			end

			if arg1.interrupted then
				__FUNC_E837_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -40.730000, 110.550000)
			arg0:setTopBottom(true, false, 27.640000, 97.450000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E837_)
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -32.000000, 128.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 38.000000, 86.000000)
		registerVal2.RedBacking:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.RedBacking:setAlpha(0.000000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_E64D_(registerVal4, {})
		local function __FUNC_F1BD_(arg0, arg1)
			local function __FUNC_F3A7_(arg0, arg1)
				local function __FUNC_F56C_(arg0, arg1)
					local function __FUNC_F6C4_(arg0, arg1)
						local function __FUNC_F881_(arg0, arg1)
							local function __FUNC_F9D8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -64.000000, 64.000000)
								arg0:setTopBottom(true, false, 0.000000, 128.000000)
								arg0:setRGB(0.000000, 0.500000, 0.050000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
								arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_F9D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9D8_)
						end

						if arg1.interrupted then
							__FUNC_F881_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F881_)
					end

					if arg1.interrupted then
						__FUNC_F6C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6C4_)
				end

				if arg1.interrupted then
					__FUNC_F56C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F56C_)
			end

			if arg1.interrupted then
				__FUNC_F3A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -110.550000, 40.730000)
			arg0:setTopBottom(true, false, 27.640000, 97.450000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3A7_)
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -128.000000, 32.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 38.000000, 86.000000)
		registerVal2.GreenBacking:setRGB(0.000000, 0.500000, 0.050000)
		registerVal2.GreenBacking:setAlpha(0.000000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_F1BD_(registerVal5, {})
		local function __FUNC_FD37_(arg0, arg1)
			local function __FUNC_FEAF_(arg0, arg1)
				local function __FUNC_10074_(arg0, arg1)
					local function __FUNC_1023D_(arg0, arg1)
						local function __FUNC_10394_(arg0, arg1)
							local function __FUNC_10551_(arg0, arg1)
								local function __FUNC_106A8_(arg0, arg1)
									local function __FUNC_10823_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -64.000000, 64.000000)
										arg0:setTopBottom(true, false, 0.000000, 128.000000)
										arg0:setRGB(0.080000, 0.000000, 0.500000)
										arg0:setAlpha(0.000000)
										arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
										arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_10823_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10823_)
								end

								if arg1.interrupted then
									__FUNC_106A8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106A8_)
							end

							if arg1.interrupted then
								__FUNC_10551_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
							arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10551_)
						end

						if arg1.interrupted then
							__FUNC_10394_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10394_)
					end

					if arg1.interrupted then
						__FUNC_1023D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Elastic)
					arg0:setLeftRight(false, false, -64.000000, 64.000000)
					arg0:setTopBottom(true, false, 0.000000, 128.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1023D_)
				end

				if arg1.interrupted then
					__FUNC_10074_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -70.000000, 70.000000)
				arg0:setTopBottom(true, false, -6.000000, 134.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10074_)
			end

			if arg1.interrupted then
				__FUNC_FEAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEAF_)
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -128.000000, 128.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, 34.000000, 94.000000)
		registerVal2.BlueBacking:setRGB(0.080000, 0.000000, 0.500000)
		registerVal2.BlueBacking:setAlpha(0.000000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_FD37_(registerVal6, {})
		local function __FUNC_10B7F_(arg0, arg1)
			local function __FUNC_10D44_(arg0, arg1)
				local function __FUNC_10F2F_(arg0, arg1)
					local function __FUNC_110F4_(arg0, arg1)
						local function __FUNC_112BC_(arg0, arg1)
							local function __FUNC_11414_(arg0, arg1)
								local function __FUNC_1158F_(arg0, arg1)
									local function __FUNC_11707_(arg0, arg1)
										local function __FUNC_1187F_(arg0, arg1)
											local function __FUNC_119F7_(arg0, arg1)
												local function __FUNC_11B6F_(arg0, arg1)
													local function __FUNC_11CE7_(arg0, arg1)
														local function __FUNC_11E5F_(arg0, arg1)
															local function __FUNC_11FB4_(arg0, arg1)
																local function __FUNC_1212F_(arg0, arg1)
																	local function __FUNC_122A7_(arg0, arg1)
																		local function __FUNC_123FC_(arg0, arg1)
																			local function __FUNC_12577_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setLeftRight(false, false, -64.000000, 64.000000)
																				arg0:setTopBottom(true, false, 0.000000, 128.000000)
																				arg0:setAlpha(1.000000)
																				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
																				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
																				arg0:setShaderVector(1.000000, 0.090000, 0.000000, 0.000000, 0.000000)
																				arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_12577_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.900000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12577_)
																		end

																		if arg1.interrupted then
																			__FUNC_123FC_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123FC_)
																	end

																	if arg1.interrupted then
																		__FUNC_122A7_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122A7_)
																end

																if arg1.interrupted then
																	__FUNC_1212F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.900000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1212F_)
															end

															if arg1.interrupted then
																__FUNC_11FB4_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FB4_)
														end

														if arg1.interrupted then
															__FUNC_11E5F_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E5F_)
													end

													if arg1.interrupted then
														__FUNC_11CE7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
													arg0:setAlpha(0.900000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CE7_)
												end

												if arg1.interrupted then
													__FUNC_11B6F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B6F_)
											end

											if arg1.interrupted then
												__FUNC_119F7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
											arg0:setAlpha(0.800000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119F7_)
										end

										if arg1.interrupted then
											__FUNC_1187F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1187F_)
									end

									if arg1.interrupted then
										__FUNC_11707_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 99.000000, false, true, CoD.TweenType.Linear)
									arg0:setAlpha(0.940000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11707_)
								end

								if arg1.interrupted then
									__FUNC_1158F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.660000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1158F_)
							end

							if arg1.interrupted then
								__FUNC_11414_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11414_)
						end

						if arg1.interrupted then
							__FUNC_112BC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -64.000000, 64.000000)
						arg0:setTopBottom(true, false, 0.000000, 128.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_112BC_)
					end

					if arg1.interrupted then
						__FUNC_110F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -120.000000, 119.000000)
					arg0:setTopBottom(true, false, 49.500000, 78.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110F4_)
				end

				if arg1.interrupted then
					__FUNC_10F2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -17.000000, 17.000000)
				arg0:setTopBottom(true, false, -58.000000, 186.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F2F_)
			end

			if arg1.interrupted then
				__FUNC_10D44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -17.450000, 17.450000)
			arg0:setTopBottom(true, false, -57.440000, 185.440000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D44_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.Image:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.Image:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Image:setShaderVector(1.000000, 0.090000, 0.000000, 0.000000, 0.000000)
		registerVal2.Image:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_10B7F_(registerVal7, {})
		local function __FUNC_128AA_(arg0, arg1)
			local function __FUNC_12A00_(arg0, arg1)
				local function __FUNC_12BC0_(arg0, arg1)
					local function __FUNC_12D3A_(arg0, arg1)
						local function __FUNC_12EB3_(arg0, arg1)
							local function __FUNC_1302B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 180.000000, true, true, CoD.TweenType.Bounce)
								end
								arg0:setAlpha(0.200000)
								arg0:setZRot(360.000000)
								arg0:setScale(2.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1302B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1302B_)
						end

						if arg1.interrupted then
							__FUNC_12EB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.140000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EB3_)
					end

					if arg1.interrupted then
						__FUNC_12D3A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(360.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D3A_)
				end

				if arg1.interrupted then
					__FUNC_12BC0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(180.000000)
				arg0:setScale(2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BC0_)
			end

			if arg1.interrupted then
				__FUNC_12A00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A00_)
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setAlpha(0.000000)
		registerVal2.Flash:setZRot(0.000000)
		registerVal2.Flash:setScale(1.000000)
		registerVal2.Flash:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_128AA_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.appearSound:playSound("medal_earned", arg1)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_132AC_(arg0, arg1)
			local function __FUNC_13404_(arg0, arg1)
				local function __FUNC_1357F_(arg0, arg1)
					local function __FUNC_136F7_(arg0, arg1)
						local function __FUNC_1386F_(arg0, arg1)
							local function __FUNC_139E7_(arg0, arg1)
								local function __FUNC_13B5F_(arg0, arg1)
									local function __FUNC_13CD7_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.100000)
										arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_digital_noise"))
										arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
										arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_13CD7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 640.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CD7_)
								end

								if arg1.interrupted then
									__FUNC_13B5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.100000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B5F_)
							end

							if arg1.interrupted then
								__FUNC_139E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139E7_)
						end

						if arg1.interrupted then
							__FUNC_1386F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.100000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1386F_)
					end

					if arg1.interrupted then
						__FUNC_136F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136F7_)
				end

				if arg1.interrupted then
					__FUNC_1357F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1357F_)
			end

			if arg1.interrupted then
				__FUNC_13404_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13404_)
		end

		registerVal11:completeAnimation()
		registerVal2.ImageNoise:setAlpha(0.000000)
		registerVal2.ImageNoise:setMaterial(LUI.UIImage.GetCachedMaterial("uie_digital_noise"))
		registerVal2.ImageNoise:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageNoise:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_132AC_(registerVal11, {})
		local function __FUNC_13F79_(arg0, arg1)
			local function __FUNC_14108_(arg0, arg1)
				local function __FUNC_142BB_(arg0, arg1)
					local function __FUNC_1446B_(arg0, arg1)
						local function __FUNC_145E3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -80.750000, 80.750000)
							arg0:setTopBottom(true, false, -1.750000, 129.750000)
							arg0:setAlpha(0.100000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
							arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(1.000000, 0.800000, 0.000000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_145E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1560.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.150000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145E3_)
					end

					if arg1.interrupted then
						__FUNC_1446B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -1.750000, 129.750000)
					arg0:setAlpha(0.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1446B_)
				end

				if arg1.interrupted then
					__FUNC_142BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -3.780000, 131.780000)
				arg0:setAlpha(0.120000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142BB_)
			end

			if arg1.interrupted then
				__FUNC_14108_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -4.050000, 132.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14108_)
		end

		registerVal12:completeAnimation()
		registerVal2.ImageScanline:setLeftRight(false, false, -80.750000, 80.750000)
		registerVal2.ImageScanline:setTopBottom(true, false, -5.750000, 133.750000)
		registerVal2.ImageScanline:setAlpha(0.000000)
		registerVal2.ImageScanline:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline:setShaderVector(1.000000, 0.800000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		__FUNC_13F79_(registerVal12, {})
		local function __FUNC_14920_(arg0, arg1)
			local function __FUNC_14A78_(arg0, arg1)
				local function __FUNC_14C11_(arg0, arg1)
					local function __FUNC_14D8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_14D8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D8B_)
				end

				if arg1.interrupted then
					__FUNC_14C11_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C11_)
			end

			if arg1.interrupted then
				__FUNC_14A78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A78_)
		end

		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.Title:setScale(0.100000)
		__FUNC_14920_(registerVal13, {})
		local function __FUNC_14F5B_(arg0, arg1)
			local function __FUNC_150B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_150B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150B0_)
		end

		registerVal14:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		__FUNC_14F5B_(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_D65F_
	local function __FUNC_15265_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_15A99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(1.000000)
		__FUNC_15A99_(registerVal3, {})
		local function __FUNC_15C4D_(arg0, arg1)
			local function __FUNC_15DE8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -64.000000, 64.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:setRGB(0.500000, 0.000000, 0.090000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15DE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DE8_)
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.RedBacking:setRGB(0.500000, 0.000000, 0.090000)
		registerVal2.RedBacking:setAlpha(1.000000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_15C4D_(registerVal4, {})
		local function __FUNC_16147_(arg0, arg1)
			local function __FUNC_16313_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -79.000000, 79.000000)
				arg0:setTopBottom(true, false, -15.000000, 143.000000)
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_16313_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16313_)
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.GreenBacking:setAlpha(1.000000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_16147_(registerVal5, {})
		local function __FUNC_16646_(arg0, arg1)
			local function __FUNC_16813_(arg0, arg1)
				local function __FUNC_16A3F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -94.000000, 94.000000)
					arg0:setTopBottom(true, false, -30.000000, 158.000000)
					arg0:setRGB(0.040000, 0.000000, 0.500000)
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
					arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.100000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_16A3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -116.000000, 116.000000)
				arg0:setTopBottom(true, false, 45.000000, 83.000000)
				arg0:setAlpha(0.500000)
				arg0:setShaderVector(2.000000, 0.078400, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A3F_)
			end

			if arg1.interrupted then
				__FUNC_16813_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setShaderVector(2.000000, 0.056800, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16813_)
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.BlueBacking:setRGB(0.040000, 0.000000, 0.500000)
		registerVal2.BlueBacking:setAlpha(1.000000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_16646_(registerVal6, {})
		local function __FUNC_16DA0_(arg0, arg1)
			local function __FUNC_16F68_(arg0, arg1)
				local function __FUNC_17130_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -138.000000, 138.000000)
					arg0:setTopBottom(true, false, 58.000000, 70.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_17130_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -138.000000, 138.000000)
				arg0:setTopBottom(true, false, 58.000000, 70.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17130_)
			end

			if arg1.interrupted then
				__FUNC_16F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -12.000000, 12.000000)
			arg0:setTopBottom(true, false, -50.000000, 178.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F68_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Image:setAlpha(1.000000)
		__FUNC_16DA0_(registerVal7, {})
		local function __FUNC_17355_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.SubText:setAlpha(1.000000)
		__FUNC_17355_(registerVal8, {})
		local function __FUNC_17509_(arg0, arg1)
			local function __FUNC_17683_(arg0, arg1)
				local function __FUNC_177FB_(arg0, arg1)
					local function __FUNC_17973_(arg0, arg1)
						local function __FUNC_17AEB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 128.000000)
							arg0:setTopBottom(true, false, 0.000000, 128.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_17AEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17AEB_)
					end

					if arg1.interrupted then
						__FUNC_17973_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17973_)
				end

				if arg1.interrupted then
					__FUNC_177FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177FB_)
			end

			if arg1.interrupted then
				__FUNC_17683_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17683_)
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setLeftRight(true, false, 0.000000, 128.000000)
		registerVal2.Flash:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Flash:setAlpha(1.000000)
		__FUNC_17509_(registerVal9, {})
		local function __FUNC_17CFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		__FUNC_17CFE_(registerVal14, {})
	end

	registerVal16.TimeUp = __FUNC_15265_
	local function __FUNC_17EB1_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_186B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RedBacking:setLeftRight(false, false, -55.000000, 73.000000)
		registerVal2.RedBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.RedBacking:setAlpha(0.500000)
		registerVal2.RedBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.RedBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.RedBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_186B5_(registerVal4, {})
		local function __FUNC_189E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GreenBacking:setLeftRight(false, false, -73.000000, 55.000000)
		registerVal2.GreenBacking:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.GreenBacking:setAlpha(0.500000)
		registerVal2.GreenBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.GreenBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GreenBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_189E5_(registerVal5, {})
		local function __FUNC_18D15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
			arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BlueBacking:setLeftRight(false, false, -73.000000, 73.000000)
		registerVal2.BlueBacking:setTopBottom(true, false, -9.000000, 137.000000)
		registerVal2.BlueBacking:setAlpha(0.500000)
		registerVal2.BlueBacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal2.BlueBacking:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BlueBacking:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_18D15_(registerVal6, {})
		local function __FUNC_19045_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -64.000000, 64.000000)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Image:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		__FUNC_19045_(registerVal7, {})
		local function __FUNC_19246_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -640.000000, 640.000000)
			arg0:setTopBottom(true, false, 147.000000, 177.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.SubText:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.SubText:setTopBottom(true, false, 146.000000, 187.000000)
		__FUNC_19246_(registerVal8, {})
		local function __FUNC_19446_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Flash:setAlpha(0.750000)
		registerVal2.Flash:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_19446_(registerVal9, {})
		local function __FUNC_19683_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.Notification2xpReward:setScale(1.050000)
		__FUNC_19683_(registerVal14, {})
	end

	registerVal16.Combined = __FUNC_17EB1_
	registerVal15.DoubleXP = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "DoubleXP"
	local function __FUNC_19853_(arg0, arg2, arg3)
		return IsDoubleXP(arg1)
	end

	registerVal18.condition = __FUNC_19853_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_198A0_(arg0)
		arg0.Title:close()
		arg0.Notification2xpReward:close()
		arg0.Backing:close()
		arg0.RedBacking:close()
		arg0.GreenBacking:close()
		arg0.BlueBacking:close()
		arg0.Image:close()
		arg0.SubText:close()
		arg0.ImageNoise:close()
		arg0.ImageScanline:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_198A0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

