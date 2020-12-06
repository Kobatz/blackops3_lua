-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterTimer = registerVal1
function CoD.CodCasterTimer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterTimer)
	registerVal2.id = "CodCasterTimer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 72.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -30.500000, 30.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setupGameTimer()
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal3)
	registerVal2.GameTimer = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, -2.500000, 74.500000)
	registerVal4:setTopBottom(true, false, 4.000000, 26.000000)
	registerVal4:setText(Engine.Localize("MPUI_UNLIMITED_TIME_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setLetterSpacing(-0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.NoTimeLimit0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9C4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoTimeLimit0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9C4_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B1F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoTimeLimit0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B1F_
	registerVal5.Active = registerVal6
	registerVal6 = {}
	local function __FUNC_CB0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoTimeLimit0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CB0_
	registerVal5.TimeLow = registerVal6
	registerVal6 = {}
	local function __FUNC_E44_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoTimeLimit0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E44_
	registerVal5.NoTimeLimit = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Active"
	local function __FUNC_FA4_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "gameScore.gameTimeLow", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_FA4_
	local registerVal9 = {}
	registerVal9.stateName = "TimeLow"
	local function __FUNC_108E_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "gameScore.gameTimeEnd", 0.000000)
	end

	registerVal9.condition = __FUNC_108E_
	local registerVal10 = {}
	registerVal10.stateName = "NoTimeLimit"
	local function __FUNC_1115_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "gameScore.gameTimeLimit", 0.000000)
	end

	registerVal10.condition = __FUNC_1115_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "gameScore.gameTimeEnd")
	local function __FUNC_119B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeEnd"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_119B_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "gameScore.gameTimeLow")
	local function __FUNC_12C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeLow"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_12C3_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "gameScore.gameTimeLimit")
	local function __FUNC_13EB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.gameTimeLimit"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_13EB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

