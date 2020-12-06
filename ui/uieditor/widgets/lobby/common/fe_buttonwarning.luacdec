-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ButtonWarning = registerVal1
function CoD.FE_ButtonWarning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ButtonWarning)
	registerVal2.id = "FE_ButtonWarning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal3:setRGB(1.000000, 0.450000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_621_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_621_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_71E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.Image0:setYRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_71E_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_847_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "warning")
	end

	registerVal7.condition = __FUNC_847_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_8B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "warning"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "warning", true, __FUNC_8B7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

