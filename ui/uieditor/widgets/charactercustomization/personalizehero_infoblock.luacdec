-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_CustomClassDecscription")
require("ui.uieditor.widgets.Specialist.PersonalizeSpecTitle")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.BlackMarket.CryptokeyTypeNameLeft")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeHero_InfoBlock = registerVal1
function CoD.PersonalizeHero_InfoBlock.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeHero_InfoBlock)
	registerVal2.id = "PersonalizeHero_InfoBlock"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 471.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_CustomClassDecscription.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 336.000000)
	registerVal3:setTopBottom(true, false, 67.000000, 89.000000)
	registerVal3.weaponDescTextBox:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_DESC"))
	registerVal2:addElement(registerVal3)
	registerVal2.CategoryDesc = registerVal3
	local registerVal4 = CoD.PersonalizeSpecTitle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4.weaponNameLabel:setText(LocalizeToUpperString("MENU_NEW"))
	registerVal2:addElement(registerVal4)
	registerVal2.PersonalizeSpecTitle = registerVal4
	local registerVal5 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal5:setTopBottom(true, false, 28.000000, 62.000000)
	registerVal5.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal5.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_C88_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_C88_
	local registerVal10 = {}
	registerVal10.stateName = "Available"
	local function __FUNC_CD4_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_CD4_
	local registerVal11 = {}
	registerVal11.stateName = "NeedsWildcard"
	local function __FUNC_D21_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_D21_
	local registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_D6D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_D6D_
	local registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_DB9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_DB9_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.CurrentlyEquippedInfo = registerVal5
	local registerVal6 = CoD.CryptokeyTypeNameLeft.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 111.000000)
	registerVal6:setTopBottom(false, true, 15.000000, 37.000000)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_E05_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rarity")
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_E05_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_EDE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isBMClassified", true, __FUNC_EDE_)
	local function __FUNC_1000_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarity"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "rarity", true, __FUNC_1000_)
	registerVal2:addElement(registerVal6)
	registerVal2.CryptokeyTypeNameLeft = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_111C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CategoryDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_111C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1220_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CategoryDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_1220_
	registerVal7.ShowCurrentlyEquippedInfo = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_131F_(arg0)
		arg0.CategoryDesc:close()
		arg0.PersonalizeSpecTitle:close()
		arg0.CurrentlyEquippedInfo:close()
		arg0.CryptokeyTypeNameLeft:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_131F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

