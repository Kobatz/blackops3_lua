-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ButtonGenericWithMouseFunc = registerVal1
function CoD.ButtonGenericWithMouseFunc.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ButtonGenericWithMouseFunc)
	registerVal2.id = "ButtonGenericWithMouseFunc"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setScale(0.600000)
	registerVal3:setImage(RegisterImage("uie_headicon_dead"))
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_69A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ButtonIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_69A_
	local function __FUNC_7C9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.ButtonIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_7C9_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_903_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ButtonIcon:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_903_
	registerVal4.Disabled = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Disabled"
	local function __FUNC_A36_(arg0, arg2, arg3)
		local registerVal3 = ChatClientIsAvailable(registerVal2, arg2, arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_A36_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "ChatClientGlobal.update")
	local function __FUNC_A9B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ChatClientGlobal.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A9B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

