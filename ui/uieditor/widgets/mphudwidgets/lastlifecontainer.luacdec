-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LastLifeContainer = registerVal1
function CoD.LastLifeContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LastLifeContainer)
	registerVal2.id = "LastLifeContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal3:setText(Engine.Localize("MPUI_LAST_LIFE"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.LastLife = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_74C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LastLife:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_74C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_84C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_932_(arg0, arg1)
			local function __FUNC_AAB_(arg0, arg1)
				local function __FUNC_C23_(arg0, arg1)
					local function __FUNC_D9B_(arg0, arg1)
						local function __FUNC_F13_(arg0, arg1)
							local function __FUNC_108B_(arg0, arg1)
								local function __FUNC_1203_(arg0, arg1)
									local function __FUNC_137B_(arg0, arg1)
										local function __FUNC_14F3_(arg0, arg1)
											local function __FUNC_166B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_166B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166B_)
										end

										if arg1.interrupted then
											__FUNC_14F3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F3_)
									end

									if arg1.interrupted then
										__FUNC_137B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137B_)
								end

								if arg1.interrupted then
									__FUNC_1203_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1203_)
							end

							if arg1.interrupted then
								__FUNC_108B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108B_)
						end

						if arg1.interrupted then
							__FUNC_F13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F13_)
					end

					if arg1.interrupted then
						__FUNC_D9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9B_)
				end

				if arg1.interrupted then
					__FUNC_C23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C23_)
			end

			if arg1.interrupted then
				__FUNC_AAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAB_)
		end

		registerVal3:completeAnimation()
		registerVal2.LastLife:setAlpha(0.000000)
		__FUNC_932_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_84C_
	registerVal4.Poup = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Poup"
	local function __FUNC_181D_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.livesLeft", 1.000000)
	end

	registerVal7.condition = __FUNC_181D_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "hudItems.livesLeft")
	local function __FUNC_189E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.livesLeft"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_189E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

