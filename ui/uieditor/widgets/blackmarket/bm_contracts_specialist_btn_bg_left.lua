-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_Specialist_btn_bg_left = registerVal1
function CoD.BM_Contracts_Specialist_btn_bg_left.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_Specialist_btn_bg_left)
	registerVal2.id = "BM_Contracts_Specialist_btn_bg_left"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 64.000000, 0.360000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_btn_center"))
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_btn_bg_left"))
	registerVal2:addElement(registerVal4)
	registerVal2.left0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6F1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6F1_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_752_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_752_
	registerVal5.NoPersonalization = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoPersonalization"
	local function __FUNC_7B2_(arg0, arg2, arg3)
		local registerVal3 = CharacterHasAnyWeaponUnlocked(arg1, arg2)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_7B2_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_81B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "heroIndex", true, __FUNC_81B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

