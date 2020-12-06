-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.buttonprompt = registerVal1
function CoD.buttonprompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.buttonprompt)
	registerVal2.id = "buttonprompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 25.030000)
	registerVal3:setTopBottom(true, false, 3.380000, 27.630000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 29.000000, 75.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 26.000000)
	registerVal4:setText(Engine.Localize("Select"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, -0.480000, 27.520000)
	registerVal5:setTopBottom(true, false, 3.380000, 28.380000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize(""))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.keyshortcut = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_978_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyshortcut:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_978_
	local function __FUNC_B32_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyshortcut:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Hide = __FUNC_B32_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D6B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyshortcut:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D6B_
	registerVal6.Hidden = registerVal7
	registerVal7 = {}
	local function __FUNC_F1D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.keyshortcut:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F1D_
	registerVal6.DefaultStatePC = registerVal7
	registerVal7 = {}
	local function __FUNC_10D6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_10D6_
	registerVal6.CodCaster = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_1230_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_1230_
	local registerVal10 = {}
	registerVal10.stateName = "CodCaster"
	local function __FUNC_127D_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal10.condition = __FUNC_127D_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "factions.isCoDCaster")
	local function __FUNC_12CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_12CD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

