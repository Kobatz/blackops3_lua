-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_TopHeader = registerVal1
function CoD.AbilityWheel_TopHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_TopHeader)
	registerVal2.id = "AbilityWheel_TopHeader"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 270.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -95.500000, 96.500000)
	registerVal3:setTopBottom(false, false, -9.000000, 23.000000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 0.000000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_tabc"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TabImg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 270.460000)
	registerVal4:setTopBottom(true, false, 0.000000, 39.000000)
	registerVal4:setRGB(0.960000, 0.440000, 0.020000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.PanelGlow = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8F0_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_ADE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TabImg:setAlpha(RandomAddPercent(-10.000000, 0.000000))
		__FUNC_ADE_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelGlow:setRGB(1.000000, 0.440000, 0.040000)
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_8F0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CBC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TabImg:setRGB(0.140000, 0.440000, 0.790000)
		registerVal2.TabImg:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.140000, 0.440000, 0.790000)
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CBC_
	registerVal5.Control = registerVal6
	registerVal6 = {}
	local function __FUNC_EA8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TabImg:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.TabImg:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EA8_
	registerVal5.Chaos = registerVal6
	registerVal6 = {}
	local function __FUNC_1094_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TabImg:setLeftRight(false, false, -95.500000, 96.500000)
		registerVal2.TabImg:setTopBottom(false, false, -9.000000, 23.000000)
		registerVal2.TabImg:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.TabImg:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PanelGlow:setRGB(0.230000, 0.750000, 0.160000)
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1094_
	registerVal5.Martial = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Control"
	local function __FUNC_1315_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 0.000000)
	end

	registerVal8.condition = __FUNC_1315_
	local registerVal9 = {}
	registerVal9.stateName = "Chaos"
	local function __FUNC_13A2_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 2.000000)
	end

	registerVal9.condition = __FUNC_13A2_
	local registerVal10 = {}
	registerVal10.stateName = "Martial"
	local function __FUNC_142E_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 1.000000)
	end

	registerVal10.condition = __FUNC_142E_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.cybercomRequestedType")
	local function __FUNC_14BA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomRequestedType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_14BA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

