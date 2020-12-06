-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_StatusPanelLeftWidget = registerVal1
function CoD.AmmoWidget_StatusPanelLeftWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_StatusPanelLeftWidget)
	registerVal2.id = "AmmoWidget_StatusPanelLeftWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 47.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 47.500000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_statuspanel"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 30.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StatusPanel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_79D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_79D_
	local function __FUNC_7FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HudStart = __FUNC_7FE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_85E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_85E_
	registerVal4.Hidden = registerVal5
	registerVal5 = {}
	local function __FUNC_8BE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_8BE_
	registerVal4.Activated = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_91E_(arg0, arg2, arg3)
		return HideCyberCoreWidget(arg1)
	end

	registerVal7.condition = __FUNC_91E_
	local registerVal8 = {}
	registerVal8.stateName = "Activated"
	local function __FUNC_975_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.tacticalModeActivated", 1.000000)
	end

	registerVal8.condition = __FUNC_975_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "hudItems.tacticalModeActivated")
	local function __FUNC_A02_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.tacticalModeActivated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A02_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

