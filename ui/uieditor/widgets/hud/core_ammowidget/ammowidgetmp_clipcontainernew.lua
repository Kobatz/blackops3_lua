-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerValue")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerPress")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_ClipContainerNew = registerVal1
function CoD.AmmoWidgetMP_ClipContainerNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_ClipContainerNew)
	registerVal2.id = "AmmoWidgetMP_ClipContainerNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_ClipContainerValue.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal3:setTopBottom(false, false, -22.000000, 20.000000)
	registerVal3:setRGB(0.940000, 0.070000, 0.090000)
	registerVal3.Clip:setText(Engine.Localize("33"))
	registerVal2:addElement(registerVal3)
	registerVal2.Clip = registerVal3
	local registerVal4 = CoD.AmmoWidget_ClipContainerPress.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal4:setTopBottom(false, false, -24.000000, 18.000000)
	registerVal4.Clip:setText(Engine.Localize("33"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoAmmoPress"
	local function __FUNC_A31_(arg0, arg2, arg3)
		return PulseNoAmmo(arg1)
	end

	registerVal8.condition = __FUNC_A31_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.pulseNoAmmo")
	local function __FUNC_A81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.pulseNoAmmo"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_A81_)
	registerVal2:addElement(registerVal4)
	registerVal2.ClipContainerPress = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BAA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.740000, 0.740000, 0.740000)
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BAA_
	local function __FUNC_D42_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E56_(arg0, arg1)
			local function __FUNC_FDF_(arg0, arg1)
				local function __FUNC_1167_(arg0, arg1)
					local function __FUNC_12BC_(arg0, arg1)
						local function __FUNC_1447_(arg0, arg1)
							local function __FUNC_159C_(arg0, arg1)
								local function __FUNC_1727_(arg0, arg1)
									local function __FUNC_187C_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setRGB(0.940000, 0.070000, 0.090000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_187C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187C_)
								end

								if arg1.interrupted then
									__FUNC_1727_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(0.830000, 0.190000, 0.230000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1727_)
							end

							if arg1.interrupted then
								__FUNC_159C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_159C_)
						end

						if arg1.interrupted then
							__FUNC_1447_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.940000, 0.070000, 0.090000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1447_)
					end

					if arg1.interrupted then
						__FUNC_12BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BC_)
				end

				if arg1.interrupted then
					__FUNC_1167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.690000, 0.360000, 0.420000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1167_)
			end

			if arg1.interrupted then
				__FUNC_FDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.940000, 0.070000, 0.090000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDF_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.740000, 0.740000, 0.740000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_E56_(registerVal3, {})
	end

	registerVal6.LowAmmo = __FUNC_D42_
	local function __FUNC_1A64_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1BFA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.740000, 0.740000, 0.740000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.740000, 0.740000, 0.740000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_1BFA_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Hero = __FUNC_1A64_
	local function __FUNC_1DD6_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1F50_(arg0, arg1)
			local function __FUNC_20DB_(arg0, arg1)
				local function __FUNC_2263_(arg0, arg1)
					local function __FUNC_23B8_(arg0, arg1)
						local function __FUNC_2543_(arg0, arg1)
							local function __FUNC_2698_(arg0, arg1)
								local function __FUNC_2823_(arg0, arg1)
									local function __FUNC_2978_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setRGB(0.940000, 0.070000, 0.090000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_2978_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2978_)
								end

								if arg1.interrupted then
									__FUNC_2823_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(0.830000, 0.190000, 0.230000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2823_)
							end

							if arg1.interrupted then
								__FUNC_2698_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2698_)
						end

						if arg1.interrupted then
							__FUNC_2543_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.940000, 0.070000, 0.090000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2543_)
					end

					if arg1.interrupted then
						__FUNC_23B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B8_)
				end

				if arg1.interrupted then
					__FUNC_2263_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.690000, 0.360000, 0.420000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2263_)
			end

			if arg1.interrupted then
				__FUNC_20DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.940000, 0.070000, 0.090000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20DB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.740000, 0.740000, 0.740000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_1F50_(registerVal3, {})
		local function __FUNC_2B60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		__FUNC_2B60_(registerVal4, {})
	end

	registerVal6.NoAmmo = __FUNC_1DD6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_2D15_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.590000, 0.640000, 0.740000)
		registerVal2.Clip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_2D15_
	local function __FUNC_2EB3_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_304B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.940000, 0.070000, 0.090000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.590000, 0.640000, 0.740000)
		registerVal2.Clip:setAlpha(0.000000)
		__FUNC_304B_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.LowAmmo = __FUNC_2EB3_
	local function __FUNC_3230_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_33B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.940000, 0.070000, 0.090000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.590000, 0.640000, 0.740000)
		registerVal2.Clip:setAlpha(0.000000)
		__FUNC_33B1_(registerVal3, {})
		local function __FUNC_3598_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		__FUNC_3598_(registerVal4, {})
	end

	registerVal6.NoAmmo = __FUNC_3230_
	local function __FUNC_374D_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_38E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.590000, 0.640000, 0.740000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.590000, 0.640000, 0.740000)
		registerVal2.Clip:setAlpha(0.000000)
		__FUNC_38E7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_374D_
	registerVal5.Hero = registerVal6
	registerVal6 = {}
	local function __FUNC_3ACC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_3C9B_(arg0, arg1)
			local function __FUNC_3DF0_(arg0, arg1)
				local function __FUNC_3F7B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(0.590000, 0.640000, 0.740000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3F7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.590000, 0.640000, 0.740000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7B_)
			end

			if arg1.interrupted then
				__FUNC_3DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DF0_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_3C9B_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_3ACC_
	local function __FUNC_4160_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_4300_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.590000, 0.640000, 0.740000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_4300_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Hero = __FUNC_4160_
	local function __FUNC_44E8_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_4669_(arg0, arg1)
			local function __FUNC_47F3_(arg0, arg1)
				local function __FUNC_4948_(arg0, arg1)
					local function __FUNC_4AD3_(arg0, arg1)
						local function __FUNC_4C28_(arg0, arg1)
							local function __FUNC_4DB3_(arg0, arg1)
								local function __FUNC_4F08_(arg0, arg1)
									local function __FUNC_5093_(arg0, arg1)
										local function __FUNC_51E8_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.590000, 0.640000, 0.740000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_51E8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51E8_)
									end

									if arg1.interrupted then
										__FUNC_5093_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(0.630000, 0.570000, 0.660000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5093_)
								end

								if arg1.interrupted then
									__FUNC_4F08_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F08_)
							end

							if arg1.interrupted then
								__FUNC_4DB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.590000, 0.640000, 0.740000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB3_)
						end

						if arg1.interrupted then
							__FUNC_4C28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C28_)
					end

					if arg1.interrupted then
						__FUNC_4AD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.690000, 0.470000, 0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AD3_)
				end

				if arg1.interrupted then
					__FUNC_4948_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4948_)
			end

			if arg1.interrupted then
				__FUNC_47F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.590000, 0.640000, 0.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47F3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_4669_(registerVal3, {})
		local function __FUNC_53D0_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(1.000000)
		__FUNC_53D0_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_44E8_
	registerVal5.LowAmmo = registerVal6
	registerVal6 = {}
	local function __FUNC_5585_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_574E_(arg0, arg1)
			local function __FUNC_58C7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.940000, 0.070000, 0.090000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_58C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.710000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58C7_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_574E_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5585_
	local function __FUNC_5AAC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_5C2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.590000, 0.640000, 0.740000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_5C2D_(registerVal3, {})
		local function __FUNC_5E14_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(1.000000)
		__FUNC_5E14_(registerVal4, {})
	end

	registerVal6.Hero = __FUNC_5AAC_
	local function __FUNC_5FC9_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_6163_(arg0, arg1)
			local function __FUNC_62EB_(arg0, arg1)
				local function __FUNC_6440_(arg0, arg1)
					local function __FUNC_65CB_(arg0, arg1)
						local function __FUNC_6720_(arg0, arg1)
							local function __FUNC_68AB_(arg0, arg1)
								local function __FUNC_6A00_(arg0, arg1)
									local function __FUNC_6B8B_(arg0, arg1)
										local function __FUNC_6CE0_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.590000, 0.640000, 0.740000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_6CE0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CE0_)
									end

									if arg1.interrupted then
										__FUNC_6B8B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(0.630000, 0.570000, 0.660000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B8B_)
								end

								if arg1.interrupted then
									__FUNC_6A00_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A00_)
							end

							if arg1.interrupted then
								__FUNC_68AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.590000, 0.640000, 0.740000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68AB_)
						end

						if arg1.interrupted then
							__FUNC_6720_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6720_)
					end

					if arg1.interrupted then
						__FUNC_65CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.690000, 0.470000, 0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CB_)
				end

				if arg1.interrupted then
					__FUNC_6440_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6440_)
			end

			if arg1.interrupted then
				__FUNC_62EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.590000, 0.640000, 0.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62EB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setRGB(0.940000, 0.070000, 0.090000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_6163_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClipContainerPress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_5FC9_
	registerVal5.NoAmmo = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_6EC8_(arg0)
		arg0.Clip:close()
		arg0.ClipContainerPress:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6EC8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

