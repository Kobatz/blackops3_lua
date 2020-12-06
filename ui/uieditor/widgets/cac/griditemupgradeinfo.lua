-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemUpgradeInfo = registerVal1
function CoD.GridItemUpgradeInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemUpgradeInfo)
	registerVal2.id = "GridItemUpgradeInfo"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 241.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 73.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 41.150000, 241.150000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.UpgradeTitle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 34.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cac_cp_upgrade0_icon"))
	registerVal2:addElement(registerVal4)
	registerVal2.UpgradeIcon = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 241.000000)
	registerVal5:setTopBottom(true, false, 38.000000, 60.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_9C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(GetItemUpgradeInfoString(arg1, registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_9C7_)
	registerVal2:addElement(registerVal5)
	registerVal2.UpgradeText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 34.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cac_cp_upgrade_icon"))
	registerVal2:addElement(registerVal6)
	registerVal2.UpgradedIcon = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AAC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_AAC_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CBC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(1.000000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADED"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CBC_
	registerVal7.Upgraded = registerVal8
	registerVal8 = {}
	local function __FUNC_F4B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(1.000000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F4B_
	registerVal7.Upgradable = registerVal8
	registerVal8 = {}
	local function __FUNC_11DD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(0.250000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeText:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11DD_
	registerVal7.Purchasable = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Upgraded"
	local function __FUNC_1471_(arg0, arg2, arg3)
		return IsCACItemUpgraded(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_1471_
	local registerVal11 = {}
	registerVal11.stateName = "Upgradable"
	local function __FUNC_14CF_(arg0, arg2, arg3)
		return IsCACItemUpgradable(arg0, arg2, arg1)
	end

	registerVal11.condition = __FUNC_14CF_
	local registerVal12 = {}
	registerVal12.stateName = "Purchasable"
	local function __FUNC_152D_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACItemPurchased(arg2, arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_152D_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_15CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_15CD_)
	local function __FUNC_16EB_(arg0)
		arg0.UpgradeText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16EB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

