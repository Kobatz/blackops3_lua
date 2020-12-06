-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D3_(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = arg0.centerText:getLocalTopBottom()
	if registerVal1 == 0.500000 and registerVal2 == 0.500000 then
		local registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getLocalTopBottom()
		arg0.centerText:setTopBottom((0.500000 - (((registerVal4 - registerVal3) / (registerVal8 - registerVal7)) * 0.400000)), (0.500000 + (((registerVal4 - registerVal3) / (registerVal8 - registerVal7)) * 0.600000)), (((registerVal4 + registerVal3) / 2.000000) - (0.200000 * (registerVal4 - registerVal3))), (((registerVal4 + registerVal3) / 2.000000) - (0.200000 * (registerVal4 - registerVal3))))
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_AccoladesDefend = registerVal2
local function __FUNC_2CE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_AccoladesDefend)
	registerVal2.id = "MissionRecordVault_AccoladesDefend"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.980000, 0.540000)
	registerVal3:setImage(RegisterImage("uie_protect"))
	registerVal2:addElement(registerVal3)
	registerVal2.image = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 44.000000, -30.000000)
	registerVal4:setTopBottom(false, false, -21.000000, 9.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "centerText", true, __FUNC_9A6_)
	registerVal2:addElement(registerVal4)
	registerVal2.centerText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A5E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setRGB(1.000000, 0.960000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_A5E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B64_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_B64_
	local function __FUNC_C62_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.GainFocus = __FUNC_C62_
	local function __FUNC_CC2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_CC2_
	local function __FUNC_D22_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.LoseFocus = __FUNC_D22_
	registerVal5.Incomplete = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Incomplete"
	local function __FUNC_D82_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D82_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_DF9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "completed", true, __FUNC_DF9_)
	local function __FUNC_F17_(arg0)
		arg0.centerText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F17_)
	if __FUNC_1D3_ then
		__FUNC_1D3_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionRecordVault_AccoladesDefend.new = __FUNC_2CE_
