-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Layout_ArenaNewSeasonText = registerVal1
function CoD.systemOverlay_Layout_ArenaNewSeasonText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Layout_ArenaNewSeasonText)
	registerVal2.id = "systemOverlay_Layout_ArenaNewSeasonText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 795.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 795.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_A7B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.text:setText(LocalizeIntoString("MENU_ARENA_SEASON_START_DESC", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ArenaSeasonMonths", "currentSeasonMonth", __FUNC_A7B_)
	registerVal2:addElement(registerVal3)
	registerVal2.SeasonStartDesc = registerVal3
	local registerVal4 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 795.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_B74_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.text:setText(LocalizeIntoString("MENU_ARENA_BONUS_STARS_DESC", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ArenaSeasonMonths", "previousSeasonMonth", __FUNC_B74_)
	registerVal2:addElement(registerVal4)
	registerVal2.BonusStarsDesc = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 795.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 50.000000)
	local function __FUNC_C6F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.text:setText(LocalizeIntoString("MENU_ARENA_SEASON_FINALE_DESC", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "ArenaSeasonMonths", "previousSeasonMonth", __FUNC_C6F_)
	registerVal2:addElement(registerVal5)
	registerVal2.SeasonFinaleDesc = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 44.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_D69_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(LocalizeIntoString("MENU_ARENA_SEASON_CAPS", ConvertToUpperString(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "ArenaSeasonMonths", "currentSeasonMonth", __FUNC_D69_)
	registerVal2:addElement(registerVal6)
	registerVal2.CurrentSeasonTitle = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 103.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	local function __FUNC_E6A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(LocalizeIntoString("MENU_ARENA_SEASON_FINALE_CAPS", ConvertToUpperString(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ArenaSeasonMonths", "previousSeasonMonth", __FUNC_E6A_)
	registerVal2:addElement(registerVal7)
	registerVal2.PreviousSeasonTitle = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_F71_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal4:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_F71_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_12AC_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.SeasonStartDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BonusStarsDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1526_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(0.000000)
		__FUNC_1526_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_16D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(0.000000)
		__FUNC_16D9_(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_12AC_
	local function __FUNC_188D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.SeasonStartDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BonusStarsDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1B0B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(1.000000)
		__FUNC_1B0B_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1CBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(1.000000)
		__FUNC_1CBD_(registerVal7, {})
	end

	registerVal9.BonusStars = __FUNC_188D_
	registerVal8.SeasonFinale = registerVal9
	registerVal9 = {}
	local function __FUNC_1E71_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.SeasonStartDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_20EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BonusStarsDesc:setAlpha(0.000000)
		__FUNC_20EA_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_229D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(0.000000)
		__FUNC_229D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1E71_
	local function __FUNC_2451_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.SeasonStartDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_26CF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BonusStarsDesc:setAlpha(1.000000)
		__FUNC_26CF_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2881_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(1.000000)
		__FUNC_2881_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.SeasonStart = __FUNC_2451_
	registerVal8.BonusStars = registerVal9
	registerVal9 = {}
	local function __FUNC_2A35_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2CAE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.SeasonStartDesc:setAlpha(0.000000)
		__FUNC_2CAE_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BonusStarsDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.SeasonFinaleDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2E61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.CurrentSeasonTitle:setAlpha(0.000000)
		__FUNC_2E61_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PreviousSeasonTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2A35_
	registerVal8.SeasonStart = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_3015_(arg0)
		arg0.SeasonStartDesc:close()
		arg0.BonusStarsDesc:close()
		arg0.SeasonFinaleDesc:close()
		arg0.CurrentSeasonTitle:close()
		arg0.PreviousSeasonTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3015_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

