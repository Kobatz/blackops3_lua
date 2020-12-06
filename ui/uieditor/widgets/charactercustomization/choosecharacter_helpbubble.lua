-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacter_HelpBubbleWidget")
local function __FUNC_24D_(arg0, arg1, arg2)
	local function __FUNC_2F6_(arg1, arg2)
		if arg2.source == 0.000000 then
			if arg0.currentState == "Overview_KeyboardAndMouse" then
				arg0:setState("Overview_Gamepad")
			else
				if arg0.currentState == "ChangedCharacter_KeyboardAndMouse" then
					arg0:setState("ChangedCharacter_Gamepad")
				else
					if arg0.currentState == "ChooseItem_KeyboardAndMouse" then
						arg0:setState("ChooseItem_Gamepad")
					else
						if arg0.currentState == "Overview_Gamepad" then
							arg0:setState("Overview_KeyboardAndMouse")
						else
							if arg0.currentState == "ChangedCharacter_Gamepad" then
								arg0:setState("ChangedCharacter_KeyboardAndMouse")
							else
								if arg0.currentState == "ChooseItem_Gamepad" then
									arg0:setState("ChooseItem_KeyboardAndMouse")
								end
							end
						end
					end
				end
			end
		end
	end

	arg0:registerEventHandler("input_source_changed", __FUNC_2F6_)
	local function __FUNC_540_(arg1, arg2)
		if arg0.currentState == "ChangedCharacter_KeyboardAndMouse" then
			SetState(arg0, "ChooseItem_KeyboardAndMouse")
			SetGlobalModelValueFalse("heroSelectionTutorial")
		end
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	arg0:registerEventHandler("mouse_left_click", __FUNC_540_)
end

local function __FUNC_69A_(arg0, arg1)
	local registerVal2 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "firstTimeFlowState")
	registerVal4 = CharacterDraftActive()
	if registerVal2 and not registerVal4 then
		FirstTimeSetup_SetOverview(arg1)
	else
		FirstTimeSetup_SetNone(arg1)
	end
end

local function __FUNC_864_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_24D_(arg0, arg1, arg2)
	end
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble = registerVal4
local function __FUNC_8D7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_69A_ then
		__FUNC_69A_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble)
	registerVal2.id = "ChooseCharacter_HelpBubble"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -318.000000, 1772.000000)
	registerVal3:setTopBottom(true, false, -202.000000, 934.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Darken = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, false, -65.500000, -17.500000)
	registerVal4:setTopBottom(true, false, 221.500000, 269.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.UnlockSound = registerVal4
	local registerVal5 = CoD.ChooseCharacter_HelpBubbleWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 161.890000)
	registerVal5.ChooseCharacterHelpBubbleContainer.Description:setText(Engine.Localize("MENU_HERO_TUTORIAL_OVERVIEW"))
	registerVal2:addElement(registerVal5)
	registerVal2.ChooseCharacterHelpBubbleWidget = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1094_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.ChooseCharacterHelpBubbleWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1094_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_11FF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_11FF_
	local function __FUNC_12FA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_14EF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 509.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 0.000000, 150.000000)
			arg0:setTopBottom(true, false, 238.000000, 399.890000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ChooseCharacterHelpBubbleWidget:setLeftRight(true, false, 0.000000, 150.000000)
		registerVal2.ChooseCharacterHelpBubbleWidget:setTopBottom(true, false, 238.000000, 399.890000)
		registerVal2.ChooseCharacterHelpBubbleWidget:setAlpha(1.000000)
		__FUNC_14EF_(registerVal5, {})
	end

	registerVal7.Complete = __FUNC_12FA_
	registerVal6.ChangedCharacter = registerVal7
	registerVal7 = {}
	local function __FUNC_170C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.ChooseCharacterHelpBubbleWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_170C_
	registerVal6.Complete = registerVal7
	registerVal7 = {}
	local function __FUNC_1877_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal5.ChooseCharacterHelpBubbleContainer.Description:completeAnimation()
		registerVal2.ChooseCharacterHelpBubbleWidget:setLeftRight(true, false, 0.000000, 150.000000)
		registerVal2.ChooseCharacterHelpBubbleWidget:setTopBottom(true, false, 0.000000, 161.890000)
		registerVal2.ChooseCharacterHelpBubbleWidget.ChooseCharacterHelpBubbleContainer.Description:setText(Engine.Localize("MENU_HERO_TUTORIAL_OVERVIEW"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1877_
	local function __FUNC_1B53_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1E32_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Darken:setAlpha(0.500000)
		__FUNC_1E32_(registerVal3, {})
		local function __FUNC_1FE5_(arg0, arg1)
			local function __FUNC_215F_(arg0, arg1)
				local function __FUNC_22D7_(arg0, arg1)
					local function __FUNC_244F_(arg0, arg1)
						local function __FUNC_25C7_(arg0, arg1)
							local function __FUNC_273F_(arg0, arg1)
								local function __FUNC_29F9_(arg0, arg1)
									local function __FUNC_2B88_(arg0, arg1)
										local function __FUNC_2D18_(arg0, arg1)
											local function __FUNC_2E70_(arg0, arg1)
												local function __FUNC_2FEB_(arg0, arg1)
													local function __FUNC_3163_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
															arg0.ChooseCharacterHelpBubbleContainer.Description:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 0.000000, 150.000000)
														arg0:setTopBottom(true, false, 238.000000, 399.890000)
														arg0:setAlpha(1.000000)
														arg0.ChooseCharacterHelpBubbleContainer.Description:setText(Engine.Localize("MENU_HERO_LOADOUT_DESC"))
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_3163_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.310000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3163_)
												end

												if arg1.interrupted then
													__FUNC_2FEB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FEB_)
											end

											if arg1.interrupted then
												__FUNC_2E70_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E70_)
										end

										if arg1.interrupted then
											__FUNC_2D18_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 238.000000, 399.890000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D18_)
									end

									if arg1.interrupted then
										__FUNC_2B88_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 228.480000, 390.370000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B88_)
								end

								if arg1.interrupted then
									__FUNC_29F9_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
								arg0.ChooseCharacterHelpBubbleContainer.Description:beginAnimation("subkeyframe", 79.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 76.160000, 238.050000)
								arg0.ChooseCharacterHelpBubbleContainer.Description:setText(Engine.Localize("MENU_HERO_LOADOUT_DESC"))
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29F9_)
							end

							if arg1.interrupted then
								__FUNC_273F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273F_)
						end

						if arg1.interrupted then
							__FUNC_25C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C7_)
					end

					if arg1.interrupted then
						__FUNC_244F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.260000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244F_)
				end

				if arg1.interrupted then
					__FUNC_22D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D7_)
			end

			if arg1.interrupted then
				__FUNC_215F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.220000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215F_)
		end

		registerVal5:completeAnimation()
		registerVal5.ChooseCharacterHelpBubbleContainer.Description:completeAnimation()
		registerVal2.ChooseCharacterHelpBubbleWidget:setLeftRight(true, false, 0.000000, 150.000000)
		registerVal2.ChooseCharacterHelpBubbleWidget:setTopBottom(true, false, 0.000000, 161.890000)
		registerVal2.ChooseCharacterHelpBubbleWidget:setAlpha(1.000000)
		registerVal2.ChooseCharacterHelpBubbleWidget.ChooseCharacterHelpBubbleContainer.Description:setText(Engine.Localize("MENU_HERO_TUTORIAL_OVERVIEW"))
		__FUNC_1FE5_(registerVal5, {})
	end

	registerVal7.ChangedCharacter = __FUNC_1B53_
	registerVal6.Overview = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Overview"
	local function __FUNC_34B2_(arg0, arg2, arg3)
		return FirstTimeSetup_Overview(arg1)
	end

	registerVal9.condition = __FUNC_34B2_
	local registerVal10 = {}
	registerVal10.stateName = "ChangedCharacter"
	local function __FUNC_350D_(arg0, arg2, arg3)
		return FirstTimeSetup_ChangedCharacter(arg1)
	end

	registerVal10.condition = __FUNC_350D_
	local registerVal11 = {}
	registerVal11.stateName = "Complete"
	local function __FUNC_3571_(arg0, arg2, arg3)
		return FirstTimeSetup_Complete(arg1)
	end

	registerVal11.condition = __FUNC_3571_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "firstTimeFlowState")
	local function __FUNC_35CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_35CD_)
	local function __FUNC_36F4_(arg0)
		arg0.ChooseCharacterHelpBubbleWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_36F4_)
	if __FUNC_864_ then
		__FUNC_864_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacter_HelpBubble.new = __FUNC_8D7_
