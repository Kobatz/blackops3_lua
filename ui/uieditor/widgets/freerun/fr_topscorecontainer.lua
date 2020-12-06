-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_TopScoreWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_TopScoreContainer = registerVal1
function CoD.FR_TopScoreContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_TopScoreContainer)
	registerVal2.id = "FR_TopScoreContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 556.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 292.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FR_TopScoreWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 556.250000)
	registerVal3:setTopBottom(true, false, 0.000000, 292.000000)
	local function __FUNC_662_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "FreeRun", "topScore", __FUNC_662_)
	registerVal2:addElement(registerVal3)
	registerVal2.FRTopScoreWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FRTopScoreWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6B2_
	local function __FUNC_7B3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Intro = __FUNC_7B3_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_812_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_8FE_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.FRTopScoreWidget:setAlpha(0.000000)
		__FUNC_8FE_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_812_
	local function __FUNC_AB1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_B9E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FRTopScoreWidget:setAlpha(0.000000)
		__FUNC_B9E_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_AB1_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D51_(arg0)
		arg0.FRTopScoreWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D51_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

