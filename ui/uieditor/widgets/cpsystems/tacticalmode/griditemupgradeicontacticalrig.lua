-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemUpgradeIconTacticalRig = registerVal1
function CoD.GridItemUpgradeIconTacticalRig.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemUpgradeIconTacticalRig)
	registerVal2.id = "GridItemUpgradeIconTacticalRig"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_cac_cp_upgrade_icon"))
	registerVal2:addElement(registerVal3)
	registerVal2.UpgradedIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_cac_cp_upgrade0_icon"))
	registerVal2:addElement(registerVal4)
	registerVal2.UpgradableIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_691_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradableIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_691_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_7F0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradableIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7F0_
	registerVal5.Upgradable = registerVal6
	registerVal6 = {}
	local function __FUNC_955_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradableIcon:setAlpha(0.000000)
		registerVal2.UpgradableIcon:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_955_
	registerVal5.Upgraded = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

