-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_DNI")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_DNIContainer = registerVal1
function CoD.AbilityWheel_DNIContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_DNIContainer)
	registerVal2.id = "AbilityWheel_DNIContainer"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 184.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -92.000000, 92.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal3:setAlpha(0.990000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_topelement"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.UpperElements = registerVal3
	local registerVal4 = CoD.AbilityWheel_DNI.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -26.000000, 26.000000)
	registerVal4:setTopBottom(false, false, -27.000000, 30.000000)
	registerVal4:setAlpha(0.890000)
	registerVal2:addElement(registerVal4)
	registerVal2.DNI = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_75E_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.990000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.UpperElements:setAlpha(1.000000)
		__FUNC_8C8_(registerVal3, {})
		local function __FUNC_A7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.890000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.DNI:setAlpha(0.900000)
		__FUNC_A7D_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_75E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_C31_(arg0)
		arg0.DNI:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C31_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

