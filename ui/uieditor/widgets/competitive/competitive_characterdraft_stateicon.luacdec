-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_CharacterDraft_StateIcon = registerVal1
function CoD.Competitive_CharacterDraft_StateIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_CharacterDraft_StateIcon)
	registerVal2.id = "Competitive_CharacterDraft_StateIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -4.220000, 30.320000)
	registerVal3:setTopBottom(true, false, -2.000000, 28.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Arrow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.220000, 30.320000)
	registerVal4:setTopBottom(true, false, -2.000000, 28.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Arrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -5.450000, 31.550000)
	registerVal5:setTopBottom(true, false, -2.000000, 28.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_pregame_checkmark"))
	registerVal2:addElement(registerVal5)
	registerVal2.checkmark = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8B2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkmark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_8B2_
	local function __FUNC_A58_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_CD8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -4.220000, 30.320000)
			arg0:setTopBottom(true, false, -2.000000, 28.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow0:setLeftRight(true, false, 27.000000, 61.540000)
		registerVal2.Arrow0:setTopBottom(true, false, -2.000000, 28.000000)
		registerVal2.Arrow0:setAlpha(0.000000)
		__FUNC_CD8_(registerVal3, {})
		local function __FUNC_EFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -4.220000, 30.320000)
			arg0:setTopBottom(true, false, -2.000000, 28.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 27.000000, 61.540000)
		registerVal2.Arrow:setTopBottom(true, false, -2.000000, 28.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_EFD_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkmark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Choosing = __FUNC_A58_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1121_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Arrow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkmark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1121_
	local function __FUNC_1309_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_14F3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Arrow0:setAlpha(0.000000)
		__FUNC_14F3_(registerVal3, {})
		local function __FUNC_16CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.660000, 0.850000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_16CE_(registerVal4, {})
		local function __FUNC_1891_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.660000, 0.850000, 0.160000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.checkmark:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkmark:setAlpha(0.000000)
		__FUNC_1891_(registerVal5, {})
	end

	registerVal7.Complete = __FUNC_1309_
	local function __FUNC_1A78_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1C63_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Arrow0:setAlpha(0.000000)
		__FUNC_1C63_(registerVal3, {})
		local function __FUNC_1E3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.170000, 0.230000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_1E3E_(registerVal4, {})
		local function __FUNC_2001_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.170000, 0.230000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.checkmark:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkmark:setAlpha(0.000000)
		__FUNC_2001_(registerVal5, {})
	end

	registerVal7.Forced = __FUNC_1A78_
	registerVal6.Choosing = registerVal7
	registerVal7 = {}
	local function __FUNC_21E3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Arrow:setRGB(0.660000, 0.850000, 0.160000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkmark:setRGB(0.660000, 0.850000, 0.160000)
		registerVal2.checkmark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_21E3_
	local function __FUNC_23D3_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2556_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow0:setAlpha(1.000000)
		__FUNC_2556_(registerVal3, {})
		local function __FUNC_2709_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_2709_(registerVal4, {})
		local function __FUNC_28BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.checkmark:setAlpha(1.000000)
		__FUNC_28BD_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_23D3_
	registerVal6.Complete = registerVal7
	registerVal7 = {}
	local function __FUNC_2A71_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Arrow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 0.170000, 0.230000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkmark:setRGB(1.000000, 0.170000, 0.230000)
		registerVal2.checkmark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2A71_
	local function __FUNC_2CA3_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2E26_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Arrow0:setAlpha(1.000000)
		__FUNC_2E26_(registerVal3, {})
		local function __FUNC_2FD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_2FD9_(registerVal4, {})
		local function __FUNC_318D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.checkmark:setAlpha(1.000000)
		__FUNC_318D_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_2CA3_
	registerVal6.Forced = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Choosing"
	local function __FUNC_3341_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
	end

	registerVal9.condition = __FUNC_3341_
	local registerVal10 = {}
	registerVal10.stateName = "Complete"
	local function __FUNC_3437_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
	end

	registerVal10.condition = __FUNC_3437_
	local registerVal11 = {}
	registerVal11.stateName = "Forced"
	local function __FUNC_352A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
	end

	registerVal11.condition = __FUNC_352A_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_3626_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientState", true, __FUNC_3626_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

