-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.IconRewardWidget")
require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.NotificationRewardBorder")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NotificationRewardWidget = registerVal1
function CoD.NotificationRewardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationRewardWidget)
	registerVal2.id = "NotificationRewardWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -48.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal3:setRGB(0.340000, 0.340000, 0.340000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notficationbkgd"))
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.IconRewardWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 208.000000, 256.000000)
	registerVal4:setTopBottom(true, false, 8.000000, 56.000000)
	registerVal4.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.ImageScanline:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.ImageScanline:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_D03_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_D03_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CallingCard"
	local function __FUNC_D52_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "size", "CallingCard")
	end

	registerVal8.condition = __FUNC_D52_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_DDC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "size"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "size", true, __FUNC_DDC_)
	local function __FUNC_EF6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "icon"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "icon", true, __FUNC_EF6_)
	registerVal2:addElement(registerVal4)
	registerVal2.ImageScanline = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, true, -256.000000, -55.000000)
	registerVal5:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Text = registerVal5
	local registerVal6 = CoD.NotificationRewardBorder.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 206.000000, 258.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 58.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.NotificationRewardBorder = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 168.000000, 296.000000)
	registerVal7:setTopBottom(true, false, -32.000000, 96.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.highlight = registerVal7
	local function __FUNC_100E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ImageScanline:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.ImageScanline:linkToElementModel(registerVal2, "icon", true, __FUNC_100E_)
	local function __FUNC_10E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "title", true, __FUNC_10E3_)
	local function __FUNC_1174_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal2.NotificationRewardBorder:linkToElementModel(registerVal2, "color", true, __FUNC_1174_)
	local function __FUNC_1207_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_1207_)
	registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1297_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_16BE_(arg0, arg1)
			local function __FUNC_185A_(arg0, arg1)
				local function __FUNC_19D3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.800000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_19D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D3_)
			end

			if arg1.interrupted then
				__FUNC_185A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185A_)
		end

		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.Background:setScale(3.000000)
		__FUNC_16BE_(registerVal3, {})
		local function __FUNC_1BA8_(arg0, arg1)
			local function __FUNC_1D00_(arg0, arg1)
				local function __FUNC_1F55_(arg0, arg1)
					local function __FUNC_20F2_(arg0, arg1)
						local function __FUNC_228E_(arg0, arg1)
							local function __FUNC_2425_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0.ImageScanline:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								arg0:setScale(1.000000)
								arg0.ImageScanline:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								arg0.ImageScanline:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
								arg0.ImageScanline:setShaderVector(2.000000, 0.010000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2425_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:setScale(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2425_)
						end

						if arg1.interrupted then
							__FUNC_228E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.810000)
						arg0:setScale(0.950000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_228E_)
					end

					if arg1.interrupted then
						__FUNC_20F2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.440000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F2_)
				end

				if arg1.interrupted then
					__FUNC_1F55_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0.ImageScanline:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:setScale(1.860000)
				arg0.ImageScanline:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F55_)
			end

			if arg1.interrupted then
				__FUNC_1D00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D00_)
		end

		registerVal4:completeAnimation()
		registerVal4.ImageScanline:completeAnimation()
		registerVal2.ImageScanline:setAlpha(0.000000)
		registerVal2.ImageScanline:setScale(3.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_1BA8_(registerVal4, {})
		local function __FUNC_2708_(arg0, arg1)
			local function __FUNC_28A1_(arg0, arg1)
				local function __FUNC_2A1B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_2A1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1B_)
			end

			if arg1.interrupted then
				__FUNC_28A1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A1_)
		end

		registerVal6:completeAnimation()
		registerVal2.NotificationRewardBorder:setAlpha(0.000000)
		registerVal2.NotificationRewardBorder:setScale(3.000000)
		__FUNC_2708_(registerVal6, {})
		local function __FUNC_2BEB_(arg0, arg1)
			local function __FUNC_2D63_(arg0, arg1)
				local function __FUNC_2F20_(arg0, arg1)
					local function __FUNC_30BD_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setZRot(360.000000)
						arg0:setScale(1.500000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_30BD_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setZRot(292.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30BD_)
				end

				if arg1.interrupted then
					__FUNC_2F20_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:setZRot(157.500000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F20_)
			end

			if arg1.interrupted then
				__FUNC_2D63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D63_)
		end

		registerVal7:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(0.000000)
		registerVal2.highlight:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_2BEB_(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1297_
	local function __FUNC_3340_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3693_(arg0, arg1)
			local function __FUNC_380B_(arg0, arg1)
				local function __FUNC_3983_(arg0, arg1)
					local function __FUNC_3AFB_(arg0, arg1)
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
						__FUNC_3AFB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFB_)
				end

				if arg1.interrupted then
					__FUNC_3983_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3983_)
			end

			if arg1.interrupted then
				__FUNC_380B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_380B_)
		end

		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.900000)
		__FUNC_3693_(registerVal3, {})
		local function __FUNC_3CAD_(arg0, arg1)
			local function __FUNC_3E04_(arg0, arg1)
				local function __FUNC_4040_(arg0, arg1)
					local function __FUNC_41BB_(arg0, arg1)
						local function __FUNC_4333_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
								arg0.ImageScanline:beginAnimation("subkeyframe", 39.000000, false, true, CoD.TweenType.Bounce)
							end
							arg0:setAlpha(0.000000)
							arg0.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
							arg0.ImageScanline:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
							arg0.ImageScanline:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
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
						arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4333_)
					end

					if arg1.interrupted then
						__FUNC_41BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41BB_)
				end

				if arg1.interrupted then
					__FUNC_4040_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0.ImageScanline:beginAnimation("subkeyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0.ImageScanline:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0.ImageScanline:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4040_)
			end

			if arg1.interrupted then
				__FUNC_3E04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E04_)
		end

		registerVal4:completeAnimation()
		registerVal4.ImageScanline:completeAnimation()
		registerVal2.ImageScanline:setAlpha(1.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		registerVal2.ImageScanline.ImageScanline:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_3CAD_(registerVal4, {})
		local function __FUNC_45F1_(arg0, arg1)
			local function __FUNC_4748_(arg0, arg1)
				local function __FUNC_48C3_(arg0, arg1)
					local function __FUNC_4A3B_(arg0, arg1)
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
						__FUNC_4A3B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A3B_)
				end

				if arg1.interrupted then
					__FUNC_48C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48C3_)
			end

			if arg1.interrupted then
				__FUNC_4748_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4748_)
		end

		registerVal5:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		__FUNC_45F1_(registerVal5, {})
		local function __FUNC_4BED_(arg0, arg1)
			local function __FUNC_4D44_(arg0, arg1)
				local function __FUNC_4EBF_(arg0, arg1)
					local function __FUNC_5037_(arg0, arg1)
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
						__FUNC_5037_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5037_)
				end

				if arg1.interrupted then
					__FUNC_4EBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EBF_)
			end

			if arg1.interrupted then
				__FUNC_4D44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D44_)
		end

		registerVal6:completeAnimation()
		registerVal2.NotificationRewardBorder:setAlpha(1.000000)
		__FUNC_4BED_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.TimeUp = __FUNC_3340_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_51E9_(arg0)
		arg0.ImageScanline:close()
		arg0.NotificationRewardBorder:close()
		arg0.Text:close()
		arg0.highlight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_51E9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

