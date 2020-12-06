-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
local function __FUNC_22F_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	arg0.m_preventFromBeingActive = true
	ScaleWidgetToLabelWrappedRightAlign(arg0.hintText, arg0.hintText.textCenterAlign, 10.000000, 0.000000)
end

local function __FUNC_33A_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_22F_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberMP45 = registerVal3
local function __FUNC_3AB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberMP45)
	registerVal2.id = "LobbyMemberMP45"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_pc_starter_pack_key_art_07_icon"))
	registerVal2:addElement(registerVal3)
	registerVal2.icon = registerVal3
	local registerVal4 = CoD.ItemHintText.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -237.000000, -29.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setRGB(0.970000, 0.470000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.textCenterAlign:setText(Engine.Localize("PLATFORM_STARTER_PACK_PLAYER"))
	registerVal4.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoHintText"
	local function __FUNC_AC7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_AC7_
	local registerVal9 = {}
	registerVal9.stateName = "LeftAlign"
	local function __FUNC_B11_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_B11_
	local registerVal10 = {}
	registerVal10.stateName = "RightAlign"
	local function __FUNC_B5D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_B5D_
	local registerVal11 = {}
	registerVal11.stateName = "CenterAlign"
	local function __FUNC_BA8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_BA8_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.hintText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BF5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setZRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.hintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BF5_
	local function __FUNC_D57_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.icon:setZRot(-90.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.hintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_D57_
	local function __FUNC_EDD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1042_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZRot(-90.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setZRot(0.000000)
		__FUNC_1042_(registerVal3, {})
		local function __FUNC_1217_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.hintText:setAlpha(0.000000)
		__FUNC_1217_(registerVal4, {})
	end

	registerVal6.GainOver = __FUNC_EDD_
	local function __FUNC_13C9_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1533_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.icon:setZRot(-90.000000)
		__FUNC_1533_(registerVal3, {})
		local function __FUNC_1707_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.hintText:setAlpha(1.000000)
		__FUNC_1707_(registerVal4, {})
	end

	registerVal6.LoseOver = __FUNC_13C9_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_18B9_(arg0)
		arg0.hintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18B9_)
	if __FUNC_33A_ then
		__FUNC_33A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMemberMP45.new = __FUNC_3AB_
