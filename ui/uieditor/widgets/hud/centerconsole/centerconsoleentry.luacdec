-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderPanel")
require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsoleText")
require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsoleIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CenterConsoleEntry = registerVal1
function CoD.CenterConsoleEntry.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterConsoleEntry)
	registerVal2.id = "CenterConsoleEntry"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.FE_ListSubHeaderPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = CoD.CenterConsoleText.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 35.000000, 370.000000)
	registerVal4:setTopBottom(false, false, -13.000000, 13.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.900000)
	local function __FUNC_A1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setRGB(ConsoleColorFromIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "text1color", true, __FUNC_A1E_)
	local function __FUNC_AF4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "text1", true, __FUNC_AF4_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text1 = registerVal4
	local registerVal5 = CoD.CenterConsoleIcon.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 9.000000, 35.000000)
	registerVal5:setTopBottom(false, false, -13.000000, 13.000000)
	local function __FUNC_BC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Icon:setImage(RegisterImage(BlackTransparentIfNilOrEmpty(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "icon1", true, __FUNC_BC8_)
	registerVal2:addElement(registerVal5)
	registerVal2.Icon1 = registerVal5
	local registerVal6 = CoD.CenterConsoleText.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -344.000000, 9.000000)
	registerVal6:setTopBottom(false, false, -13.000000, 13.000000)
	local function __FUNC_CC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setRGB(ConsoleColorFromIndex(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text0color", true, __FUNC_CC4_)
	local function __FUNC_D9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text0", true, __FUNC_D9C_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text0 = registerVal6
	local registerVal7 = CoD.CenterConsoleIcon.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -370.000000, -344.000000)
	registerVal7:setTopBottom(false, false, -13.000000, 13.000000)
	local function __FUNC_E70_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Icon:setImage(RegisterImage(BlackTransparentIfNilOrEmpty(registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "icon0", true, __FUNC_E70_)
	registerVal2:addElement(registerVal7)
	registerVal2.Icon0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_F6C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_F6C_
	local function __FUNC_FCE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_10E8_(arg0, arg1)
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
		__FUNC_10E8_(registerVal3, {})
	end

	registerVal9.FadeOut = __FUNC_FCE_
	local function __FUNC_12C1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_13D7_(arg0, arg1)
			local function __FUNC_154F_(arg0, arg1)
				local function __FUNC_16A4_(arg0, arg1)
					local function __FUNC_181F_(arg0, arg1)
						local function __FUNC_199D_(arg0, arg1)
							local function __FUNC_1B40_(arg0, arg1)
								local function __FUNC_1C98_(arg0, arg1)
									local function __FUNC_1E13_(arg0, arg1)
										local function __FUNC_1F68_(arg0, arg1)
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
											__FUNC_1F68_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F68_)
									end

									if arg1.interrupted then
										__FUNC_1E13_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E13_)
								end

								if arg1.interrupted then
									__FUNC_1C98_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C98_)
							end

							if arg1.interrupted then
								__FUNC_1B40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(0.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B40_)
						end

						if arg1.interrupted then
							__FUNC_199D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.330000, 0.330000, 0.330000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199D_)
					end

					if arg1.interrupted then
						__FUNC_181F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_181F_)
				end

				if arg1.interrupted then
					__FUNC_16A4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A4_)
			end

			if arg1.interrupted then
				__FUNC_154F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Panel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Panel:setAlpha(0.000000)
		__FUNC_13D7_(registerVal3, {})
	end

	registerVal9.FadeIn = __FUNC_12C1_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_2146_(arg0)
		arg0.Panel:close()
		arg0.Text1:close()
		arg0.Icon1:close()
		arg0.Text0:close()
		arg0.Icon0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2146_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

