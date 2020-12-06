-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ClipContainerValue")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_ClipContainerHero = registerVal1
function CoD.AmmoWidgetMP_ClipContainerHero.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_ClipContainerHero)
	registerVal2.id = "AmmoWidgetMP_ClipContainerHero"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = CoD.AmmoWidget_ClipContainerValue.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -57.000000, 51.000000)
	registerVal3:setTopBottom(false, false, -22.000000, 20.000000)
	registerVal3:setRGB(0.740000, 0.740000, 0.740000)
	local function __FUNC_691_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Clip:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_691_)
	registerVal2:addElement(registerVal3)
	registerVal2.Clip = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_73E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_73E_
	local function __FUNC_838_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_91A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setAlpha(0.000000)
		__FUNC_91A_(registerVal3, {})
	end

	registerVal5.Hero = __FUNC_838_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_ACD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_ACD_
	local function __FUNC_BC3_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_C9D_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_BC3_
	registerVal4.Hero = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_E51_(arg0)
		arg0.Clip:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E51_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

