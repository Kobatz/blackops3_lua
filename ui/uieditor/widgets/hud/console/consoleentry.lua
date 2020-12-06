-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Console.ConsoleText")
require("ui.uieditor.widgets.HUD.Console.ConsoleIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ConsoleEntry = registerVal1
function CoD.ConsoleEntry.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ConsoleEntry)
	registerVal2.id = "ConsoleEntry"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 690.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -7.000000, 9.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_listsubheadpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.022663, 0.250000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = CoD.ConsoleText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 360.000000, 690.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 14.000000)
	local function __FUNC_AC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setRGB(ConsoleColorFromIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "text1color", true, __FUNC_AC0_)
	local function __FUNC_B98_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "text1", true, __FUNC_B98_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text1 = registerVal4
	local registerVal5 = CoD.ConsoleIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 345.000000, 360.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 14.000000)
	local function __FUNC_C46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Icon:setImage(RegisterImage(BlackTransparentIfNilOrEmpty(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "icon1", true, __FUNC_C46_)
	registerVal2:addElement(registerVal5)
	registerVal2.Icon1 = registerVal5
	local registerVal6 = CoD.ConsoleText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 15.000000, 345.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 14.000000)
	local function __FUNC_D40_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setRGB(ConsoleColorFromIndex(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text0color", true, __FUNC_D40_)
	local function __FUNC_E18_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text0", true, __FUNC_E18_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text0 = registerVal6
	local registerVal7 = CoD.ConsoleIcon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 15.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 14.000000)
	local function __FUNC_EC6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Icon:setImage(RegisterImage(BlackTransparentIfNilOrEmpty(registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "icon0", true, __FUNC_EC6_)
	registerVal2:addElement(registerVal7)
	registerVal2.Icon0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_FC0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_FC0_
	local function __FUNC_1022_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_113C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Panel:setAlpha(0.400000)
		__FUNC_113C_(registerVal3, {})
	end

	registerVal9.FadeOut = __FUNC_1022_
	local function __FUNC_1315_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_142B_(arg0, arg1)
			local function __FUNC_15A3_(arg0, arg1)
				local function __FUNC_16F8_(arg0, arg1)
					local function __FUNC_1873_(arg0, arg1)
						local function __FUNC_19F1_(arg0, arg1)
							local function __FUNC_1B94_(arg0, arg1)
								local function __FUNC_1CEC_(arg0, arg1)
									local function __FUNC_1E67_(arg0, arg1)
										local function __FUNC_1FBC_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.000000, 0.000000, 0.000000)
											arg0:setAlpha(0.400000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_1FBC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FBC_)
									end

									if arg1.interrupted then
										__FUNC_1E67_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E67_)
								end

								if arg1.interrupted then
									__FUNC_1CEC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CEC_)
							end

							if arg1.interrupted then
								__FUNC_1B94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(0.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B94_)
						end

						if arg1.interrupted then
							__FUNC_19F1_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.330000, 0.330000, 0.330000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F1_)
					end

					if arg1.interrupted then
						__FUNC_1873_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1873_)
				end

				if arg1.interrupted then
					__FUNC_16F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F8_)
			end

			if arg1.interrupted then
				__FUNC_15A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Panel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Panel:setAlpha(0.000000)
		__FUNC_142B_(registerVal3, {})
	end

	registerVal9.FadeIn = __FUNC_1315_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_219A_(arg0)
		arg0.Text1:close()
		arg0.Icon1:close()
		arg0.Text0:close()
		arg0.Icon0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_219A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

