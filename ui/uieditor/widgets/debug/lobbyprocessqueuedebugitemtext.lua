-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyProcessQueueDebugItemText = registerVal1
function CoD.LobbyProcessQueueDebugItemText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyProcessQueueDebugItemText)
	registerVal2.id = "LobbyProcessQueueDebugItemText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal3:setText(Engine.Localize("NAME"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Name = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_81F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_81F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_87E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_87E_
	registerVal4.Pending = registerVal5
	registerVal5 = {}
	local function __FUNC_979_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(0.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_979_
	registerVal4.Running = registerVal5
	registerVal5 = {}
	local function __FUNC_A7F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A7F_
	registerVal4.Success = registerVal5
	registerVal5 = {}
	local function __FUNC_B79_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 0.960000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B79_
	registerVal4.Failure = registerVal5
	registerVal5 = {}
	local function __FUNC_C7F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C7F_
	registerVal4.Error = registerVal5
	registerVal5 = {}
	local function __FUNC_D83_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(0.000000, 0.820000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D83_
	registerVal4.Throttled = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Pending"
	local function __FUNC_E87_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 0.000000)
	end

	registerVal7.condition = __FUNC_E87_
	local registerVal8 = {}
	registerVal8.stateName = "Running"
	local function __FUNC_F08_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 1.000000)
	end

	registerVal8.condition = __FUNC_F08_
	local registerVal9 = {}
	registerVal9.stateName = "Success"
	local function __FUNC_F8C_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 2.000000)
	end

	registerVal9.condition = __FUNC_F8C_
	local registerVal10 = {}
	registerVal10.stateName = "Failure"
	local function __FUNC_1010_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 3.000000)
	end

	registerVal10.condition = __FUNC_1010_
	local registerVal11 = {}
	registerVal11.stateName = "Error"
	local function __FUNC_1094_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 4.000000)
	end

	registerVal11.condition = __FUNC_1094_
	local registerVal12 = {}
	registerVal12.stateName = "Throttled"
	local function __FUNC_1118_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "processState", 5.000000)
	end

	registerVal12.condition = __FUNC_1118_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_119C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "processState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "processState", true, __FUNC_119C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

