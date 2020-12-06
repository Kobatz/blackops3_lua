-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_ActiveArrow = registerVal1
function CoD.BM_Contracts_ActiveArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_ActiveArrow)
	registerVal2.id = "BM_Contracts_ActiveArrow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 71.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 29.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.140000, 16.140000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon2_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 16.140000, -17.200000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon2_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.center = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -17.200000, -1.200000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon2_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.right = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 6.140000, 61.800000)
	registerVal6:setTopBottom(true, false, 5.500000, 23.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("MPUI_ACTIVE_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(1.000000)
	local function __FUNC_9FC_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_9FC_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A68_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_A68_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_ACA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_ACA_
	registerVal7.Complete = registerVal8
	registerVal8 = {}
	local function __FUNC_B2A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B2A_
	registerVal7.Active = registerVal8
	registerVal8 = {}
	local function __FUNC_B8A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B8A_
	registerVal7.Cost = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Complete"
	local function __FUNC_BEA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal10.condition = __FUNC_BEA_
	local registerVal11 = {}
	registerVal11.stateName = "Active"
	local function __FUNC_C5E_(arg0, arg2, arg3)
		return IsSpecialContractActive(registerVal2, arg2, arg1)
	end

	registerVal11.condition = __FUNC_C5E_
	local registerVal12 = {}
	registerVal12.stateName = "Cost"
	local function __FUNC_CC1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNilOrZero(arg2, arg1, "cost")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_CC1_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_D39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isComplete", true, __FUNC_D39_)
	local function __FUNC_E58_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "cost", true, __FUNC_E58_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

