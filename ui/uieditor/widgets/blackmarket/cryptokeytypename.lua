-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyTypeName = registerVal1
function CoD.CryptokeyTypeName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyTypeName)
	registerVal2.id = "CryptokeyTypeName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CryptokeyTypeNameInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -18.000000, 102.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	local function __FUNC_6BA_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6BA_)
	local function __FUNC_70A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.nameText:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rarity", true, __FUNC_70A_)
	registerVal2:addElement(registerVal3)
	registerVal2.CryptokeyTypeNameInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7E1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyTypeNameInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7E1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8F1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyTypeNameInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8F1_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_9FC_(arg0, arg2, arg3)
		return IsSelfModelValueNonEmptyString(arg2, arg1, "rarity")
	end

	registerVal7.condition = __FUNC_9FC_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_A78_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarity", true, __FUNC_A78_)
	local function __FUNC_B94_(arg0)
		arg0.CryptokeyTypeNameInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B94_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

