-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SafeHouse_ButtonPanel = registerVal1
function CoD.SafeHouse_ButtonPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SafeHouse_ButtonPanel)
	registerVal2.id = "SafeHouse_ButtonPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.SafeHousePanel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_683_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_683_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6E2_
	local function __FUNC_742_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_742_
	registerVal4.Transparent = registerVal5
	registerVal5 = {}
	local function __FUNC_7A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7A2_
	registerVal4.Safehouse = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Transparent"
	local function __FUNC_802_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "hideWorldForStreamer", 1.000000)
	end

	registerVal7.condition = __FUNC_802_
	local registerVal8 = {}
	registerVal8.stateName = "Safehouse"
	local function __FUNC_88E_(arg0, arg1, arg2)
		return IsCPAndInSafehouse()
	end

	registerVal8.condition = __FUNC_88E_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "hideWorldForStreamer")
	local function __FUNC_8E0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_8E0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

