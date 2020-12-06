-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.tauntBindsWidget = registerVal1
function CoD.tauntBindsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.tauntBindsWidget)
	registerVal2.id = "tauntBindsWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 533.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 167.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -81.000000, 266.500000)
	registerVal3:setTopBottom(false, false, -25.000000, 0.000000)
	registerVal3:setText(Engine.Localize("HEROES_GESTURES_BOAST_BIND"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.right = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -81.000000, 266.500000)
	registerVal4:setTopBottom(false, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("HEROES_GESTURES_THREATEN_BIND"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.left = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -81.000000, 266.500000)
	registerVal5:setTopBottom(false, false, -50.000000, -25.000000)
	registerVal5:setText(Engine.Localize("HEROES_GESTURES_GOOD_GAME_BIND"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.up = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_979_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_979_
	local function __FUNC_B17_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_C91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		__FUNC_C91_(registerVal3, {})
		local function __FUNC_E45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		__FUNC_E45_(registerVal4, {})
		local function __FUNC_FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		__FUNC_FF9_(registerVal5, {})
	end

	registerVal7.GesturesOn = __FUNC_B17_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_11AD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_11AD_
	registerVal6.NoGestures = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoGestures"
	local function __FUNC_134B_(arg0, arg2, arg3)
		local registerVal3 = CurrentPlayerHasAnyGesture(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_134B_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_13AC_(arg0)
		local registerVal2 = IsParamModelEqualTo(arg0, true)
		if registerVal2 then
			PlayClip(registerVal2, "GesturesOn", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "TopScorerMenuData", "showGestures", __FUNC_13AC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

