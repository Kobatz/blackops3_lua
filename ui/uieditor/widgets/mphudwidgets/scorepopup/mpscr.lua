-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ScorePopup.MPScrFeedItem")
require("ui.uieditor.widgets.MPHudWidgets.ScorePopup.MPScr_PlusPointsContainer")
local function __FUNC_271_(arg0, arg1, arg2)
	arg0.ScoreFeedItem0.TextBox:setText("")
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.ScoreFeedItem0:getLocalTopBottom()
	arg0.ScoreFeedItem0.top = registerVal5
	arg0.MPScrPlusPointsContainer:setAlpha(0.000000)
	arg0.lastAnim = 0.000000
	local function __FUNC_47C_(arg3, arg4, arg5)
		for index3=10.000000, 1.000000, -1.000000 do
			if arg0[("ScoreFeedItem" .. (index3 - 1.000000))] and arg0[("ScoreFeedItem" .. (index3 - 1.000000))].text then
				if not arg0[("ScoreFeedItem" .. index3)] then
					local registerVal11 = CoD.MPScrFeedItem.new(arg2, arg1)
					arg0[("ScoreFeedItem" .. index3)] = registerVal11
					arg0:addElement(arg0[("ScoreFeedItem" .. index3)])
				end
				arg0[("ScoreFeedItem" .. index3)]:setLeftRight(arg0[("ScoreFeedItem" .. (index3 - 1.000000))]:getLocalLeftRight())
				arg0[("ScoreFeedItem" .. index3)]:setTopBottom(registerVal3, registerVal4, arg0[("ScoreFeedItem" .. (index3 - 1.000000))].top, (arg0[("ScoreFeedItem" .. (index3 - 1.000000))].top + (registerVal6 - registerVal5)))
				arg0[("ScoreFeedItem" .. index3)].textColor = arg0[("ScoreFeedItem" .. (index3 - 1.000000))].textColor
				arg0[("ScoreFeedItem" .. index3)]:setRGB(arg0[("ScoreFeedItem" .. index3)].textColor.r, arg0[("ScoreFeedItem" .. index3)].textColor.g, arg0[("ScoreFeedItem" .. index3)].textColor.b)
				arg0[("ScoreFeedItem" .. index3)].text = arg0[("ScoreFeedItem" .. (index3 - 1.000000))].text
				arg0[("ScoreFeedItem" .. index3)].TextBox:setText(arg0[("ScoreFeedItem" .. index3)].text)
				arg0[("ScoreFeedItem" .. index3)]:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				local registerVal9, registerVal10, registerVal11, registerVal12 = arg0[("ScoreFeedItem" .. index3)]:getLocalTopBottom()
				arg0[("ScoreFeedItem" .. index3)]:setTopBottom(registerVal9, registerVal10, (registerVal11 + (registerVal6 - registerVal5)), (registerVal12 + (registerVal6 - registerVal5)))
				arg0[("ScoreFeedItem" .. index3)].top = (registerVal11 + (registerVal6 - registerVal5))
			end
		end
		if arg5 then
			arg0.ScoreFeedItem0.textColor = ColorSet.ThiefScoreFeedColor
		else
			local registerVal4 = {}
			registerVal4.r = 1.000000
			registerVal4.g = 1.000000
			registerVal4.b = 1.000000
			arg0.ScoreFeedItem0.textColor = registerVal4
		end
		arg0.ScoreFeedItem0:setRGB(arg0.ScoreFeedItem0.textColor.r, arg0.ScoreFeedItem0.textColor.g, arg0.ScoreFeedItem0.textColor.b)
		arg0.ScoreFeedItem0.text = arg4
		arg0.ScoreFeedItem0.TextBox:setText(arg0.ScoreFeedItem0.text)
		arg0.ScoreFeedItem0:playClip("DefaultClip")
	end

	arg0.AddScoreFeed = __FUNC_47C_
	local function __FUNC_A1A_(arg0, arg1, arg2)
		if arg1 ~= nil then
			if arg2 >= 0.000000 and 0.000000 >= arg2 then
				return 
			end
			if arg0.currentScore == nil then
				arg0.currentScore = 0.000000
			end
			arg0.currentScore = (arg0.currentScore + arg2)
			local registerVal3 = Engine.Localize("MP_PLUS")
			if 0.000000 >= arg0.currentScore or not registerVal3 then
			end
			arg0.Score:setText(("" .. arg0.currentScore))
			local registerVal4 = Engine.Localize(arg1)
			arg0:AddScoreFeed(registerVal4)
			if arg1 ~= "SCORE_KILL" and arg0.streakLabel ~= nil then
				arg0.streakLabel:out()
				arg0.streakLabel = nil
			end
		end
	end

	arg0.AddCenterScore = __FUNC_A1A_
	local function __FUNC_C0D_(arg0, arg1, arg2, arg3)
		if arg2 == 0.000000 or 10000.000000 < arg2 then
			return 
		end
		local registerVal4 = CoD.MPScr_PlusPointsContainer.new(arg1, arg3)
		registerVal4:setScale(0.400000)
		registerVal4.MPScr_PlusPoints.Label1:setText(("+" .. arg2))
		registerVal4.MPScr_PlusPoints.Label2:setText(("+" .. arg2))
		registerVal4.MPScr_PlusPoints:playClip("DefaultClip")
		registerVal4:setLeftRight(arg0:getLocalLeftRight())
		registerVal4:setTopBottom(arg0:getLocalTopBottom())
		arg0.lastAnim = (arg0.lastAnim + 1.000000)
		Engine.PlaySound("gdt_ce_score")
		registerVal4:setState("DefaultState")
		local registerVal5 = registerVal4:hasClip(("Anim" .. arg0.lastAnim))
		if not registerVal5 then
			arg0.lastAnim = 1.000000
		end
		local function __FUNC_FDC_(arg0, arg1)
			arg0:close()
		end

		registerVal4:registerEventHandler("clip_over", __FUNC_FDC_)
		registerVal5 = arg0:getParent()
		registerVal5:addElement(registerVal4)
		registerVal4:playClip(("Anim" .. arg0.lastAnim))
	end

	arg0.AddCombatEfficiencyScore = __FUNC_C0D_
	local function __FUNC_101F_(arg0, arg1)
		arg0.currentScore = 0.000000
		for index2=0.000000, 10.000000, 1.000000 do
			if not arg0[("ScoreFeedItem" .. index2)] then
			else
				if index2 == 0.000000 then
					arg0[("ScoreFeedItem" .. index2)].TextBox:setText("")
					arg0[("ScoreFeedItem" .. index2)].text = nil
				else
					arg0[("ScoreFeedItem" .. index2)]:close()
					arg0[("ScoreFeedItem" .. index2)] = nil
				end
			end
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_101F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MPScr = registerVal2
local function __FUNC_1192_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPScr)
	registerVal2.id = "MPScr"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -62.000000, 62.000000)
	registerVal3:setTopBottom(false, false, -55.000000, 50.000000)
	registerVal3:setRGB(0.090000, 0.160000, 0.190000)
	registerVal3:setImage(RegisterImage("uie_lui_score_feed_glow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreFeedGlow = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 27.000000)
	registerVal4:setText(Engine.Localize("+100"))
	registerVal4:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DEB_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_1DEB_)
	registerVal2:addElement(registerVal4)
	registerVal2.Score = registerVal4
	local registerVal5 = CoD.MPScrFeedItem.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -13.000000, 227.000000)
	registerVal5:setTopBottom(true, false, 32.000000, 50.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreFeedItem0 = registerVal5
	local registerVal6 = CoD.MPScr_PlusPointsContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 77.230000, 162.230000)
	registerVal6:setTopBottom(true, false, -14.000000, 52.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(0.400000)
	registerVal2:addElement(registerVal6)
	registerVal2.MPScrPlusPointsContainer = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1E51_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreFeedGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Score:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MPScrPlusPointsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1E51_
	local function __FUNC_200E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_22D7_(arg0, arg1)
			local function __FUNC_2482_(arg0, arg1)
				local function __FUNC_260B_(arg0, arg1)
					local function __FUNC_2789_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -50.000000, 50.000000)
						arg0:setTopBottom(false, false, 0.000000, 0.000000)
						arg0:setRGB(0.000000, 0.000000, 0.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2789_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2789_)
				end

				if arg1.interrupted then
					__FUNC_260B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.180000, 0.330000, 0.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260B_)
			end

			if arg1.interrupted then
				__FUNC_2482_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.070000, 0.270000, 0.310000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2482_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreFeedGlow:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.ScoreFeedGlow:setTopBottom(false, false, -55.000000, 50.000000)
		registerVal2.ScoreFeedGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreFeedGlow:setAlpha(0.500000)
		__FUNC_22D7_(registerVal3, {})
		local function __FUNC_29CC_(arg0, arg1)
			local function __FUNC_2B47_(arg0, arg1)
				local function __FUNC_2CBD_(arg0, arg1)
					local function __FUNC_2E14_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(0.600000, 0.830000, 0.960000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2E14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E14_)
				end

				if arg1.interrupted then
					__FUNC_2CBD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Back)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBD_)
			end

			if arg1.interrupted then
				__FUNC_2B47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B47_)
		end

		registerVal4:completeAnimation()
		registerVal2.Score:setRGB(0.600000, 0.830000, 0.960000)
		registerVal2.Score:setAlpha(1.000000)
		registerVal2.Score:setScale(0.000000)
		__FUNC_29CC_(registerVal4, {})
		local function __FUNC_301F_(arg0, arg1)
			local function __FUNC_3174_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3174_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3174_)
		end

		registerVal6:completeAnimation()
		registerVal2.MPScrPlusPointsContainer:setAlpha(1.000000)
		__FUNC_301F_(registerVal6, {})
	end

	registerVal8.CombatEfficiencyScore = __FUNC_200E_
	local function __FUNC_3329_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_35FE_(arg0, arg1)
			local function __FUNC_3787_(arg0, arg1)
				local function __FUNC_390F_(arg0, arg1)
					local function __FUNC_3A8D_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -50.000000, 50.000000)
						arg0:setTopBottom(false, false, 0.000000, 0.000000)
						arg0:setRGB(0.000000, 0.000000, 0.000000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3A8D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A8D_)
				end

				if arg1.interrupted then
					__FUNC_390F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.060000, 0.000000, 0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_390F_)
			end

			if arg1.interrupted then
				__FUNC_3787_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.090000, 0.160000, 0.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3787_)
		end

		registerVal3:completeAnimation()
		registerVal2.ScoreFeedGlow:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.ScoreFeedGlow:setTopBottom(false, false, -55.000000, 50.000000)
		registerVal2.ScoreFeedGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreFeedGlow:setAlpha(0.500000)
		__FUNC_35FE_(registerVal3, {})
		local function __FUNC_3CD0_(arg0, arg1)
			local function __FUNC_3E4B_(arg0, arg1)
				local function __FUNC_3FC1_(arg0, arg1)
					local function __FUNC_4119_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4119_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Elastic)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4119_)
				end

				if arg1.interrupted then
					__FUNC_3FC1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Back)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FC1_)
			end

			if arg1.interrupted then
				__FUNC_3E4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E4B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Score:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Score:setAlpha(1.000000)
		registerVal2.Score:setScale(0.000000)
		__FUNC_3CD0_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MPScrPlusPointsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.NormalScore = __FUNC_3329_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_4314_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreFeedGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Score:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_4314_
	registerVal7.Hidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_446C_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_446C_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_46B1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_46B1_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_483C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_483C_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_49CC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_49CC_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_4B64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_4B64_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_4CFB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_4CFB_)
	local function __FUNC_4E80_(arg0)
		arg0.ScoreFeedItem0:close()
		arg0.MPScrPlusPointsContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4E80_)
	if __FUNC_271_ then
		__FUNC_271_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MPScr.new = __FUNC_1192_
