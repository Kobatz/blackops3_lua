-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_LockBig")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsLockIcon = registerVal1
function CoD.WeaponBuildKitsLockIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsLockIcon)
	registerVal2.id = "WeaponBuildKitsLockIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal3:setAlpha(0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Locked"
	local function __FUNC_683_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_683_
	local registerVal8 = {}
	registerVal8.stateName = "NotAvailable"
	local function __FUNC_6CC_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_6CC_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.LockIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_700_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_700_
	local function __FUNC_800_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.ShowVariants = __FUNC_800_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_862_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_862_
	registerVal4.Locked = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_95B_(arg0)
		arg0.LockIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_95B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

