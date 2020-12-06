-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.chooseClassCPClientPip_Ingame = registerVal1
function CoD.chooseClassCPClientPip_Ingame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseClassCPClientPip_Ingame)
	registerVal2.id = "chooseClassCPClientPip_Ingame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 7.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 5.000000)
	registerVal3:setRGB(0.530000, 0.530000, 0.530000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.pip = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.000000, 6.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 9.000000)
	registerVal4:setRGB(0.250000, 0.250000, 0.250000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.pipGlow = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8B6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.pip:setRGB(0.530000, 0.530000, 0.530000)
		registerVal2.pip:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pipGlow:setLeftRight(true, false, 2.000000, 6.000000)
		registerVal2.pipGlow:setTopBottom(true, false, -1.000000, 9.000000)
		registerVal2.pipGlow:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.pipGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AF6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.pip:setRGB(1.000000, 0.720000, 0.360000)
		registerVal2.pip:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pipGlow:setLeftRight(true, false, 2.000000, 6.000000)
		registerVal2.pipGlow:setTopBottom(true, false, -1.000000, 9.000000)
		registerVal2.pipGlow:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.pipGlow:setAlpha(1.000000)
		registerVal2.pipGlow:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AF6_
	registerVal5.Selected = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Selected"
	local function __FUNC_D73_(arg0, arg2, arg3)
		return IsControllerModelValueEqualToSelfModelValue(arg2, arg1, "ChooseClassCPClientMenu.selectedClientIndex", "clientIndex")
	end

	registerVal8.condition = __FUNC_D73_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "ChooseClassCPClientMenu.selectedClientIndex")
	local function __FUNC_E37_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChooseClassCPClientMenu.selectedClientIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_E37_)
	local function __FUNC_F75_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientIndex", true, __FUNC_F75_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

