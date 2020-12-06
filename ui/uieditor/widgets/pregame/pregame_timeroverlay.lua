-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Effects.fxGlitch1_6")
require("ui.uieditor.widgets.Pregame.Pregame_Timer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_TimerOverlay = registerVal1
function CoD.Pregame_TimerOverlay.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_TimerOverlay)
	registerVal2.id = "Pregame_TimerOverlay"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fxGlitch1_6.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 65.140000, 547.860000)
	registerVal3:setTopBottom(true, false, 81.500000, 262.890000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fxGlitch1600 = registerVal3
	local registerVal4 = CoD.Pregame_Timer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 579.500000, 700.500000)
	registerVal4:setTopBottom(true, false, 623.000000, 703.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PregameTimer = registerVal4
	local registerVal5 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 211.500000, 243.500000)
	registerVal5:setTopBottom(true, false, 262.890000, 265.890000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(-90.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.LineBottom = registerVal5
	local registerVal6 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 211.500000, 243.500000)
	registerVal6:setTopBottom(true, false, 94.890000, 97.890000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(-90.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LineTop = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D02_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_D02_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_E04_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.fxGlitch1600:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E04_
	registerVal7.Hidden = registerVal8
	registerVal8 = {}
	local function __FUNC_100F_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_10F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(0.000000)
		__FUNC_10F6_(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_100F_
	registerVal7.ChooseClass = registerVal8
	registerVal8 = {}
	local function __FUNC_12A9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_12A9_
	registerVal7.CustomClass = registerVal8
	registerVal8 = {}
	local function __FUNC_13A7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_13A7_
	registerVal7.WeaponSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_14A3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_14A3_
	registerVal7.AttachmentSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_159F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_159F_
	registerVal7.EquipmentSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_169B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_169B_
	registerVal7.PerkSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_1797_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1797_
	registerVal7.WildcardSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_1893_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1893_
	registerVal7.OverCapacity = registerVal8
	registerVal8 = {}
	local function __FUNC_198F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_198F_
	registerVal7.CharacterSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_1A8B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1A8B_
	registerVal7.ScorestreakSelect = registerVal8
	registerVal8 = {}
	local function __FUNC_1B87_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1F42_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 55.140000, 347.860000)
			arg0:setTopBottom(true, false, 89.500000, 225.000000)
			arg0:setAlpha(0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, false, 55.140000, 347.860000)
		registerVal2.fxGlitch1600:setTopBottom(true, false, 89.500000, 225.000000)
		registerVal2.fxGlitch1600:setAlpha(0.000000)
		__FUNC_1F42_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setLeftRight(true, false, 144.000000, 310.000000)
		registerVal2.PregameTimer:setTopBottom(true, false, 120.000000, 230.000000)
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineBottom:setLeftRight(true, false, 186.500000, 218.500000)
		registerVal2.LineBottom:setTopBottom(true, false, 234.890000, 237.890000)
		registerVal2.LineBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineTop:setLeftRight(true, false, 186.500000, 218.500000)
		registerVal2.LineTop:setTopBottom(true, false, 81.890000, 84.890000)
		registerVal2.LineTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1B87_
	registerVal7.BannedContent = registerVal8
	registerVal8 = {}
	local function __FUNC_2165_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setLeftRight(true, false, 65.000000, 186.000000)
		registerVal2.PregameTimer:setTopBottom(true, false, 168.000000, 248.000000)
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_2165_
	registerVal7.PregameVote = registerVal8
	registerVal8 = {}
	local function __FUNC_22F3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.PregameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_22F3_
	registerVal7.ClassOptions = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_23EF_(arg0, arg1, arg2)
		local registerVal3 = PregameActive()
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_23EF_
	local registerVal11 = {}
	registerVal11.stateName = "ChooseClass"
	local function __FUNC_243F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_243F_
	local registerVal12 = {}
	registerVal12.stateName = "CustomClass"
	local function __FUNC_2489_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_2489_
	local registerVal13 = {}
	registerVal13.stateName = "WeaponSelect"
	local function __FUNC_24D5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_24D5_
	local registerVal14 = {}
	registerVal14.stateName = "AttachmentSelect"
	local function __FUNC_2521_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_2521_
	local registerVal15 = {}
	registerVal15.stateName = "EquipmentSelect"
	local function __FUNC_256D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_256D_
	local registerVal16 = {}
	registerVal16.stateName = "PerkSelect"
	local function __FUNC_25B9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_25B9_
	local registerVal17 = {}
	registerVal17.stateName = "WildcardSelect"
	local function __FUNC_2605_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_2605_
	local registerVal18 = {}
	registerVal18.stateName = "OverCapacity"
	local function __FUNC_2651_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_2651_
	local registerVal19 = {}
	registerVal19.stateName = "CharacterSelect"
	local function __FUNC_269D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_269D_
	local registerVal20 = {}
	registerVal20.stateName = "ScorestreakSelect"
	local function __FUNC_26E9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_26E9_
	local registerVal21 = {}
	registerVal21.stateName = "BannedContent"
	local function __FUNC_2735_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_2735_
	local registerVal22 = {}
	registerVal22.stateName = "PregameVote"
	local function __FUNC_2781_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_2781_
	local registerVal23 = {}
	registerVal23.stateName = "ClassOptions"
	local function __FUNC_27CD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_27CD_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.Pregame.state")
	local function __FUNC_2819_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_2819_)
	local function __FUNC_2945_(arg0)
		arg0.fxGlitch1600:close()
		arg0.PregameTimer:close()
		arg0.LineBottom:close()
		arg0.LineTop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2945_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

