-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameWithVariantName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InfoPaneItemName = registerVal1
function CoD.InfoPaneItemName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InfoPaneItemName)
	registerVal2.id = "InfoPaneItemName"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -52.930000, 252.070000)
	registerVal3:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal3:setAlpha(0.100000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow2 = registerVal3
	local registerVal4 = CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 275.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal4:setAlpha(0.740000)
	registerVal4.itemName:setText(Engine.Localize("MENU_NOT_AVAILABLE_CAPS"))
	registerVal2:addElement(registerVal4)
	registerVal2.emptyOrUnavailableLabels = registerVal4
	local registerVal5 = CoD.InfoPaneItemNameWithVariantName.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 595.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.itemName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal5.variantName.itemName:setText(Engine.Localize(""))
	local function __FUNC_CCB_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_CCB_)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponNameWithVariant = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 3.000000)
	registerVal6:setTopBottom(true, false, 0.710000, 34.000000)
	registerVal6:setRGB(1.000000, 0.610000, 0.150000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Guide = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D1A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Guide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D1A_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_F31_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_F31_
	registerVal7.Equipped = registerVal8
	registerVal8 = {}
	local function __FUNC_10FB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.itemName:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(1.000000)
		registerVal2.emptyOrUnavailableLabels.itemName:setText(Engine.Localize("MENU_EMPTY_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_10FB_
	registerVal7.Available = registerVal8
	registerVal8 = {}
	local function __FUNC_137A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.itemName:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.500000)
		registerVal2.emptyOrUnavailableLabels.itemName:setText(Engine.Localize("MENU_EMPTY_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_137A_
	registerVal7.NeedsWildcard = registerVal8
	registerVal8 = {}
	local function __FUNC_15FA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.itemName:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.500000)
		registerVal2.emptyOrUnavailableLabels.itemName:setText(Engine.Localize("MENU_NOT_AVAILABLE_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_15FA_
	registerVal7.NotEquippable = registerVal8
	registerVal8 = {}
	local function __FUNC_1882_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setLeftRight(true, false, -52.930000, 252.070000)
		registerVal2.Glow2:setTopBottom(false, false, -30.000000, 43.000000)
		registerVal2.Glow2:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.itemName:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.500000)
		registerVal2.emptyOrUnavailableLabels.itemName:setText(Engine.Localize("MENU_NOT_AVAILABLE_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_1882_
	registerVal7.NotAvailable = registerVal8
	registerVal8 = {}
	local function __FUNC_1B9A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emptyOrUnavailableLabels:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameWithVariant:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Guide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1B9A_
	registerVal7.Hidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_1DB1_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_1DB1_
	local registerVal11 = {}
	registerVal11.stateName = "Available"
	local function __FUNC_1E0F_(arg0, arg2, arg3)
		return IsCACSlotAvailable(arg0, arg2, arg1)
	end

	registerVal11.condition = __FUNC_1E0F_
	local registerVal12 = {}
	registerVal12.stateName = "NeedsWildcard"
	local function __FUNC_1E6C_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotCanEquipWildcard(arg0, arg2, arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_1E6C_
	local registerVal13 = {}
	registerVal13.stateName = "NotEquippable"
	local function __FUNC_1F16_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotNeedWildcard(arg0, arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_1F16_
	local registerVal14 = {}
	registerVal14.stateName = "NotAvailable"
	local function __FUNC_1FBA_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1FBA_
	local registerVal15 = {}
	registerVal15.stateName = "Hidden"
	local function __FUNC_201C_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_201C_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_2050_(arg0)
		arg0.emptyOrUnavailableLabels:close()
		arg0.weaponNameWithVariant:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2050_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

