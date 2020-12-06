-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_AccoladesTrickShot = registerVal1
function CoD.MissionRecordVault_AccoladesTrickShot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_AccoladesTrickShot)
	registerVal2.id = "MissionRecordVault_AccoladesTrickShot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.980000, 0.620000)
	registerVal3:setImage(RegisterImage("uie_trickshot"))
	registerVal2:addElement(registerVal3)
	registerVal2.image = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -7.000000, 12.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8B7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "centerText", true, __FUNC_8B7_)
	registerVal2:addElement(registerVal4)
	registerVal2.centerText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_96E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setRGB(1.000000, 0.960000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_96E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A74_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_A74_
	local function __FUNC_B72_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.GainFocus = __FUNC_B72_
	local function __FUNC_BD2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_BD2_
	local function __FUNC_C32_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.LoseFocus = __FUNC_C32_
	registerVal5.Incomplete = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Incomplete"
	local function __FUNC_C92_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_C92_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_D09_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "completed", true, __FUNC_D09_)
	local function __FUNC_E27_(arg0)
		arg0.centerText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E27_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

