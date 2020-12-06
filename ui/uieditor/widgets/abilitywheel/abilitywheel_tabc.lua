-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_TopHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_TabC = registerVal1
function CoD.AbilityWheel_TabC.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_TabC)
	registerVal2.id = "AbilityWheel_TabC"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 233.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 54.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -96.000000, 96.000000)
	registerVal3:setTopBottom(false, false, -5.000000, 27.000000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 0.000000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_tabc"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TabImg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -116.500000, 116.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setRGB(1.000000, 0.930000, 0.240000)
	registerVal4:setAlpha(RandomAddPercent(-10.000000, 1.000000))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(2.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_B16_)
	registerVal2:addElement(registerVal4)
	registerVal2.TextTab = registerVal4
	local registerVal5 = CoD.AbilityWheel_TopHeader.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -135.230000, 135.230000)
	registerVal5:setTopBottom(true, false, -1.500000, 55.500000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.AbilityWheelTopHeader = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BCF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_D38_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.000000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TabImg:setAlpha(RandomAddPercent(-10.000000, 0.000000))
		__FUNC_D38_(registerVal3, {})
		local function __FUNC_F18_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TextTab:setAlpha(RandomAddPercent(-10.000000, 0.000000))
		__FUNC_F18_(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_BCF_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_10F8_(arg0)
		arg0.AbilityWheelTopHeader:close()
		arg0.TextTab:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

