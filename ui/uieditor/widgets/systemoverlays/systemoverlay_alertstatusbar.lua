-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_alertStatusBar = registerVal1
function CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_alertStatusBar)
	registerVal2.id = "systemOverlay_alertStatusBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.970000, 0.580000, 0.150000)
	registerVal2:addElement(registerVal3)
	registerVal2.alertStatus = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_61B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.alertStatus:setRGB(0.970000, 0.580000, 0.150000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_61B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_72B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.alertStatus:setRGB(0.930000, 0.110000, 0.150000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_72B_
	registerVal4.Alert = registerVal5
	registerVal5 = {}
	local function __FUNC_83B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.alertStatus:setRGB(0.250000, 0.380000, 0.350000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_83B_
	registerVal4.Blackmarket = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Alert"
	local function __FUNC_94B_(arg0, arg2, arg3)
		return IsAlertOverlay(registerVal2, arg1)
	end

	registerVal7.condition = __FUNC_94B_
	local registerVal8 = {}
	registerVal8.stateName = "Blackmarket"
	local function __FUNC_9A0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_9A0_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_9ED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "categoryType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "categoryType", true, __FUNC_9ED_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

