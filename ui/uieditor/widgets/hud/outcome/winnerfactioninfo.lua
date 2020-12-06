-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetTitleStatus")
require("ui.uieditor.widgets.EndGameFlow.OutcomeFactionIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WinnerFactionInfo = registerVal1
function CoD.WinnerFactionInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WinnerFactionInfo)
	registerVal2.id = "WinnerFactionInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 390.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 172.000000, 390.000000)
	registerVal3:setTopBottom(true, false, 63.290000, 97.290000)
	registerVal3.weaponNameLabel:setText(Engine.Localize("MPUI_AXIS_SHORT_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponNameWidget0 = registerVal3
	local registerVal4 = CoD.KillcamWidgetTitleStatus.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 172.000000, 260.000000)
	registerVal4:setTopBottom(true, false, 36.850000, 61.850000)
	registerVal4:setRGB(0.950000, 0.740000, 0.000000)
	registerVal4.SubTitle:setText(Engine.Localize("MENU_WINNERS_CAPS"))
	registerVal2:addElement(registerVal4)
	registerVal2.KillcamWidgetTitleStatus0 = registerVal4
	local registerVal5 = CoD.OutcomeFactionIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 36.540000, 426.540000)
	registerVal5:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.OutcomeFactionIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A01_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_BCD_(arg0, arg1)
			local function __FUNC_D24_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D24_)
		end

		registerVal3:completeAnimation()
		registerVal2.WeaponNameWidget0:setAlpha(0.000000)
		__FUNC_BCD_(registerVal3, {})
		local function __FUNC_ED9_(arg0, arg1)
			local function __FUNC_1030_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1030_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1030_)
		end

		registerVal4:completeAnimation()
		registerVal2.KillcamWidgetTitleStatus0:setAlpha(0.000000)
		__FUNC_ED9_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcomeFactionIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A01_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_11E5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.WeaponNameWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.KillcamWidgetTitleStatus0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcomeFactionIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_11E5_
	registerVal6.Invisible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Invisible"
	local function __FUNC_13B4_(arg0, arg2, arg3)
		return HideWinnersLabelsAndInfo(arg1)
	end

	registerVal9.condition = __FUNC_13B4_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "gameScore.draw")
	local function __FUNC_1412_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.draw"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1412_)
	local function __FUNC_1534_(arg0)
		arg0.WeaponNameWidget0:close()
		arg0.KillcamWidgetTitleStatus0:close()
		arg0.OutcomeFactionIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1534_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

