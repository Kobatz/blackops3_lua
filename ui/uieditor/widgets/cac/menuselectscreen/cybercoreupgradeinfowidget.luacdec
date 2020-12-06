-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreUpgradeInfoWidget = registerVal1
function CoD.CybercoreUpgradeInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreUpgradeInfoWidget)
	registerVal2.id = "CybercoreUpgradeInfoWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 441.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 73.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	local function __FUNC_C98_(arg0, arg1)
		ScaleWidgetToLabelWrappedLeftAlign(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_C98_)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 45.000000, 441.000000)
	registerVal4:setTopBottom(true, false, 4.500000, 38.500000)
	registerVal4:setScale(LanguageOverrideNumber("japanese", 0.850000, 1.000000))
	registerVal4:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.UpgradeTitle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 4.000000, 38.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 38.500000)
	registerVal5:setImage(RegisterImage("uie_t7_cac_cp_upgrade0_icon"))
	registerVal2:addElement(registerVal5)
	registerVal2.UpgradeIcon = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 4.000000, 441.000000)
	registerVal6:setTopBottom(true, false, 42.500000, 64.500000)
	registerVal6:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D0D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "upgdesc", true, __FUNC_D0D_)
	registerVal2:addElement(registerVal6)
	registerVal2.UpgradeText = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 4.000000, 38.000000)
	registerVal7:setTopBottom(true, false, 4.500000, 38.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cac_cp_upgrade_icon"))
	registerVal2:addElement(registerVal7)
	registerVal2.UpgradedIcon = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_DC6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradeText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_DC6_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_FD4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(1.000000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADED"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FD4_
	registerVal8.Upgraded = registerVal9
	registerVal9 = {}
	local function __FUNC_1263_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(1.000000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1263_
	registerVal8.Upgradable = registerVal9
	registerVal9 = {}
	local function __FUNC_14F5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.UpgradeTitle:setAlpha(0.250000)
		registerVal2.UpgradeTitle:setText(Engine.Localize("MENU_UPGRADE_MODULE"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.UpgradeIcon:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.UpgradeText:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.UpgradedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_14F5_
	registerVal8.Purchasable = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Upgraded"
	local function __FUNC_1789_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgraded(arg2, arg1)
	end

	registerVal11.condition = __FUNC_1789_
	local registerVal12 = {}
	registerVal12.stateName = "Upgradable"
	local function __FUNC_17EC_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgradable(arg2, arg1)
	end

	registerVal12.condition = __FUNC_17EC_
	local registerVal13 = {}
	registerVal13.stateName = "Purchasable"
	local function __FUNC_1852_(arg0, arg2, arg3)
		return IsCybercoreAbilityPurchasable(arg2, arg1)
	end

	registerVal13.condition = __FUNC_1852_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_18B7_(arg0)
		arg0.CACvarientTitlePanel0:close()
		arg0.UpgradeText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18B7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

