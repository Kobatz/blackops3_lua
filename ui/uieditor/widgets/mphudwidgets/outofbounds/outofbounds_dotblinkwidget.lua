-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Pixel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_dotblinkwidget = registerVal1
function CoD.outofbounds_dotblinkwidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_dotblinkwidget)
	registerVal2.id = "outofbounds_dotblinkwidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setScale(1.600000)
	registerVal3.Image20:setAlpha(0.700000)
	registerVal3.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AbilityWheelPixel00 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_654_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_76F_(arg0, arg1)
			local function __FUNC_8C4_(arg0, arg1)
				local function __FUNC_A3F_(arg0, arg1)
					local function __FUNC_B94_(arg0, arg1)
						local function __FUNC_D0F_(arg0, arg1)
							local function __FUNC_E87_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_E87_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E87_)
						end

						if arg1.interrupted then
							__FUNC_D0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0F_)
					end

					if arg1.interrupted then
						__FUNC_B94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B94_)
				end

				if arg1.interrupted then
					__FUNC_A3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3F_)
			end

			if arg1.interrupted then
				__FUNC_8C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C4_)
		end

		registerVal3:completeAnimation()
		registerVal2.AbilityWheelPixel00:setAlpha(1.000000)
		__FUNC_76F_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_654_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1039_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_1039_
	registerVal4.IsOutOfBounds = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_109A_(arg0)
		arg0.AbilityWheelPixel00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_109A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

