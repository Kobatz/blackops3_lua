-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_FooterLabel01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChallengesNotification = registerVal1
function CoD.ChallengesNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChallengesNotification)
	registerVal2.id = "ChallengesNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 38.000000, 166.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.image = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -204.000000, 204.000000)
	registerVal4:setTopBottom(true, false, 178.000000, 208.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9A6_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 40.000000, 40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9A6_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = CoD.WeaponLevelUpNotification_FooterLabel01.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 208.000000, 240.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.WeaponLevelUpNotificationFooterLabel01 = registerVal5
	local function __FUNC_A18_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.image:linkToElementModel(registerVal2, "icon", true, __FUNC_A18_)
	local function __FUNC_ACC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "title", true, __FUNC_ACC_)
	local function __FUNC_B86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.WeaponLevelUpNotificationFooterBacking:setRGB(registerVal1)
		end
	end

	registerVal2.WeaponLevelUpNotificationFooterLabel01:linkToElementModel(registerVal2, "color", true, __FUNC_B86_)
	local function __FUNC_C53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponLevelUpNotificationFooterLabel01:linkToElementModel(registerVal2, "subtitle", true, __FUNC_C53_)
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D27_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_E55_(arg0, arg1)
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
		registerVal2.image:setAlpha(0.000000)
		__FUNC_E55_(registerVal3, {})
		local function __FUNC_1009_(arg0, arg1)
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
		registerVal2.Text:setAlpha(0.000000)
		__FUNC_1009_(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_D27_
	local function __FUNC_11BD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_12ED_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		__FUNC_12ED_(registerVal3, {})
		local function __FUNC_14A1_(arg0, arg1)
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
		registerVal2.Text:setAlpha(1.000000)
		__FUNC_14A1_(registerVal4, {})
	end

	registerVal7.TimeUp = __FUNC_11BD_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1655_(arg0)
		arg0.WeaponLevelUpNotificationFooterLabel01:close()
		arg0.image:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1655_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

