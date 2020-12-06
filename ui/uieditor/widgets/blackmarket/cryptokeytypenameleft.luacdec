-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeftInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CryptokeyTypeNameLeft = registerVal1
function CoD.CryptokeyTypeNameLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CryptokeyTypeNameLeft)
	registerVal2.id = "CryptokeyTypeNameLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CryptokeyTypeNameLeftInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal3:setTopBottom(false, false, -11.000000, 11.000000)
	local function __FUNC_6A6_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6A6_)
	local function __FUNC_6F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.nameText:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rarity", true, __FUNC_6F6_)
	registerVal2:addElement(registerVal3)
	registerVal2.CryptokeyTypeNameLeftInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7CD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyTypeNameLeftInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7CD_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8E1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyTypeNameLeftInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8E1_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_9F0_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_9F0_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_A3C_(arg0)
		arg0.CryptokeyTypeNameLeftInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A3C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

