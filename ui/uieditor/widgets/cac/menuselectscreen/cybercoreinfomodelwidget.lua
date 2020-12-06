-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.DescriptionBacking_CAC")
require("ui.uieditor.widgets.CAC.PurchaseInstructionWidget")
require("ui.uieditor.widgets.CAC.cac_CybercoreDescription")
require("ui.uieditor.widgets.CAC.cac_CybercoreMainTile")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreUpgradeInfoWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreInfoModelWidget = registerVal1
function CoD.CybercoreInfoModelWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreInfoModelWidget)
	registerVal2.id = "CybercoreInfoModelWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 641.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 586.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DescriptionBacking_CAC.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 397.860000, -27.140000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.DescriptionBackingCAC0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 284.000000, 346.000000)
	registerVal4:setRGB(0.200000, 0.200000, 0.200000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.nameBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -141.520000, 129.520000)
	registerVal5:setTopBottom(true, false, 136.480000, 406.330000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_cp_outline_upgrade"))
	registerVal2:addElement(registerVal5)
	registerVal2.Outline = registerVal5
	local registerVal6 = CoD.PurchaseInstructionWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 310.230000, 683.770000)
	registerVal6:setTopBottom(true, false, 458.860000, 558.860000)
	registerVal6:setAlpha(0.000000)
	registerVal6.PurchaseInstruction:setText(Engine.Localize("Upgrade for 1 Fabrication Token"))
	registerVal2:addElement(registerVal6)
	registerVal2.purchaseInstruction = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 6.000000, 450.020000)
	registerVal7:setTopBottom(true, false, 14.000000, 33.000000)
	registerVal7:setRGB(0.970000, 0.320000, 0.050000)
	registerVal7:setText(Engine.Localize("MENU_CYBERCORE_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLetterSpacing(1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.categoryName = registerVal7
	local registerVal8 = CoD.cac_CybercoreDescription.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 450.020000)
	registerVal8:setTopBottom(true, false, 79.080000, 105.080000)
	local function __FUNC_1299_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "desc", true, __FUNC_1299_)
	registerVal2:addElement(registerVal8)
	registerVal2.cacCybercoreDescription0 = registerVal8
	local registerVal9 = CoD.cac_CybercoreMainTile.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 450.020000)
	registerVal9:setTopBottom(true, false, 36.080000, 72.080000)
	local function __FUNC_1373_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_1373_)
	registerVal2:addElement(registerVal9)
	registerVal2.cacCybercoreMainTile0 = registerVal9
	local registerVal10 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -69.990000, 26.010000)
	registerVal10:setTopBottom(true, false, -74.000000, 596.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_1444_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1444_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_1496_(arg0, arg2, arg3)
		local registerVal3 = IsCybercoreAbilityAvailable(arg2, arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1496_
	local registerVal15 = {}
	registerVal15.stateName = "NotAvailable"
	local function __FUNC_14FD_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if not registerVal3 then
			registerVal3 = IsCybercoreAbilityPurchasable(arg2, arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_14FD_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.lockedIcon = registerVal10
	local registerVal11 = CoD.CybercoreUpgradeInfoWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 468.000000)
	registerVal11:setTopBottom(true, false, 442.360000, 539.360000)
	local function __FUNC_15A4_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_15A4_)
	registerVal2:addElement(registerVal11)
	registerVal2.CybercoreUpgradeInfoWidget0 = registerVal11
	local registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_15F6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.DescriptionBackingCAC0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Outline:setLeftRight(false, false, -141.520000, 129.520000)
		registerVal2.Outline:setTopBottom(true, false, 136.480000, 406.330000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.categoryName:setLeftRight(true, false, 6.000000, 262.000000)
		registerVal2.categoryName:setTopBottom(true, false, 14.000000, 33.000000)
		registerVal2.categoryName:setRGB(0.970000, 0.320000, 0.050000)
		registerVal2.categoryName:setAlpha(1.000000)
		registerVal2.categoryName:setText(Engine.Localize("MENU_CYBERCORE_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.DefaultClip = __FUNC_15F6_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_19AA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_19AA_
	registerVal12.Unavailable = registerVal13
	registerVal13 = {}
	local function __FUNC_1AA5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_1AA5_
	registerVal12.Purchasable = registerVal13
	registerVal13 = {}
	local function __FUNC_1BA1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_1BA1_
	registerVal12.Upgradable = registerVal13
	registerVal13 = {}
	local function __FUNC_1CA2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_1CA2_
	registerVal12.Upgraded = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Unavailable"
	local function __FUNC_1DA2_(arg0, arg2, arg3)
		local registerVal3 = IsCybercoreAbilityAvailable(arg2, arg1)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1DA2_
	local registerVal16 = {}
	registerVal16.stateName = "Purchasable"
	local function __FUNC_1E09_(arg0, arg2, arg3)
		return IsCybercoreAbilityPurchasable(arg2, arg1)
	end

	registerVal16.condition = __FUNC_1E09_
	local registerVal17 = {}
	registerVal17.stateName = "Upgradable"
	local function __FUNC_1E6F_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgradable(arg2, arg1)
	end

	registerVal17.condition = __FUNC_1E6F_
	local registerVal18 = {}
	registerVal18.stateName = "Upgraded"
	local function __FUNC_1ED2_(arg0, arg2, arg3)
		return IsCybercoreAbilityUpgraded(arg2, arg1)
	end

	registerVal18.condition = __FUNC_1ED2_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_1F34_(arg0)
		UpdateShownCybercoreXmodel(registerVal2, arg1)
	end

	registerVal2:linkToElementModel(registerVal2, "baseItemIndex", true, __FUNC_1F34_)
	registerVal3.id = "DescriptionBackingCAC0"
	local function __FUNC_1F98_(arg0, arg1)
		local registerVal2 = arg0.DescriptionBackingCAC0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1F98_)
	local function __FUNC_20AA_(arg0)
		arg0.DescriptionBackingCAC0:close()
		arg0.purchaseInstruction:close()
		arg0.cacCybercoreDescription0:close()
		arg0.cacCybercoreMainTile0:close()
		arg0.lockedIcon:close()
		arg0.CybercoreUpgradeInfoWidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

