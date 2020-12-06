-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IconController = registerVal1
function CoD.IconController.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IconController)
	registerVal2.id = "IconController"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icons_controller_orbis_4"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.four = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icons_controller_orbis_3"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.three = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icons_controller_orbis_2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal5)
	registerVal2.two = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icons_controller_orbis_1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal6)
	registerVal2.one = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_9D0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.four:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.three:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.two:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.one:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_9D0_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_BC1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.four:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.three:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.two:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.one:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BC1_
	registerVal7.state1 = registerVal8
	registerVal8 = {}
	local function __FUNC_DB6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.four:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.three:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.two:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.one:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_DB6_
	registerVal7.state2 = registerVal8
	registerVal8 = {}
	local function __FUNC_FAA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.four:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.three:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.two:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.one:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FAA_
	registerVal7.state3 = registerVal8
	registerVal8 = {}
	local function __FUNC_119E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.four:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.three:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.two:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.one:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_119E_
	registerVal7.state4 = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "state1"
	local function __FUNC_1392_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "controllerNum", 0.000000)
	end

	registerVal10.condition = __FUNC_1392_
	local registerVal11 = {}
	registerVal11.stateName = "state2"
	local function __FUNC_1415_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "controllerNum", 1.000000)
	end

	registerVal11.condition = __FUNC_1415_
	local registerVal12 = {}
	registerVal12.stateName = "state3"
	local function __FUNC_1499_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "controllerNum", 2.000000)
	end

	registerVal12.condition = __FUNC_1499_
	local registerVal13 = {}
	registerVal13.stateName = "state4"
	local function __FUNC_151D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "controllerNum", 3.000000)
	end

	registerVal13.condition = __FUNC_151D_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_15A1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "controllerNum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "controllerNum", true, __FUNC_15A1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

