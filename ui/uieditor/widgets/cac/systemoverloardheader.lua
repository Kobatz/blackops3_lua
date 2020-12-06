-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverloardHeader = registerVal1
function CoD.SystemOverloardHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverloardHeader)
	registerVal2.id = "SystemOverloardHeader"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 134.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 3.250000)
	registerVal3:setTopBottom(true, true, -3.500000, 3.500000)
	registerVal3:setAlpha(0.230000)
	registerVal2:addElement(registerVal3)
	registerVal2.WhiteBox = registerVal3
	local registerVal4 = CoD.FE_ListSubHeaderGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -3.500000, 3.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEListSubHeaderGlow0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_821_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_821_
	local function __FUNC_882_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focustemp = __FUNC_882_
	registerVal5.Unavailable = registerVal6
	registerVal6 = {}
	local function __FUNC_8E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8E2_
	local function __FUNC_942_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_942_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9A2_
	registerVal5.Purchasable = registerVal6
	registerVal6 = {}
	local function __FUNC_A02_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A02_
	local function __FUNC_A62_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_A62_
	registerVal5.Upgradable = registerVal6
	registerVal6 = {}
	local function __FUNC_AC2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_AC2_
	local function __FUNC_B22_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_B22_
	registerVal5.Upgraded = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Unavailable"
	local function __FUNC_B82_(arg0, arg2, arg3)
		local registerVal3 = IsCybercoreAbilityAvailable(arg2, arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_B82_
	local registerVal9 = {}
	registerVal9.stateName = "Purchasable"
	local function __FUNC_BE9_(arg0, arg2, arg3)
		return IsCybercoreAbilityPurchasable(arg2, arg1)
	end

	registerVal9.condition = __FUNC_BE9_
	local registerVal10 = {}
	registerVal10.stateName = "Upgradable"
	local function __FUNC_C4F_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgradable(arg2, arg1)
	end

	registerVal10.condition = __FUNC_C4F_
	local registerVal11 = {}
	registerVal11.stateName = "Upgraded"
	local function __FUNC_CB2_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgraded(arg2, arg1)
	end

	registerVal11.condition = __FUNC_CB2_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_D14_(arg0)
		arg0.FEListSubHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D14_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

