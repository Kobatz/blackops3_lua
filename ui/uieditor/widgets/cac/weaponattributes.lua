-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.WeaponAttributes_Internal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponAttributes = registerVal1
function CoD.WeaponAttributes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponAttributes)
	registerVal2.id = "WeaponAttributes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 336.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 74.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponAttributes_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 267.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 74.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponAttributesInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5E1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5E1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6EB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6EB_
	registerVal4.NotVisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_7F8_(arg0)
		arg0.weaponAttributesInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

