-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_GestureOptionInfo = registerVal1
function CoD.ChooseTaunts_GestureOptionInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_GestureOptionInfo)
	registerVal2.id = "ChooseTaunts_GestureOptionInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 381.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 381.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local function __FUNC_CCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemName", true, __FUNC_CCA_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_DD7_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_DD7_
	local registerVal8 = {}
	registerVal8.stateName = "Available"
	local function __FUNC_E20_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_E20_
	local registerVal9 = {}
	registerVal9.stateName = "NotEquippable"
	local function __FUNC_E54_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_E54_
	local registerVal10 = {}
	registerVal10.stateName = "NotAvailable"
	local function __FUNC_E88_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_E88_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.itemName = registerVal3
	local registerVal4 = CoD.BlackMarketItemDescription.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal4:setTopBottom(true, false, 42.000000, 64.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.weaponDescTextBox:setText(Engine.Localize(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MENU_GESTURE")))
	local function __FUNC_EBC_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_EBC_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "NotVisible"
	local function __FUNC_F0E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_F0E_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_F8A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isBMClassified", true, __FUNC_F8A_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemDescription = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal5:setTopBottom(true, false, 40.000000, 71.000000)
	registerVal5:setAlpha(NotPCShowAlpha(arg1, 1.000000))
	registerVal5.label:setText(Engine.Localize("HEROES_PREVIEW_GESTURE"))
	local function __FUNC_10AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_10AC_)
	registerVal2:addElement(registerVal5)
	registerVal2.buttonprompt0 = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_1187_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonprompt0:setAlpha(NotPCShowAlpha(arg1, 1.000000))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1187_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1343_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.buttonprompt0:setAlpha(NotPCShowAlpha(arg1, 0.000000))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1343_
	registerVal6.BMClassified = registerVal7
	registerVal7 = {}
	local function __FUNC_158C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(0.590000, 0.590000, 0.590000)
		registerVal2.buttonprompt0:setAlpha(NotPCShowAlpha(arg1, 1.000000))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_158C_
	registerVal6.NoPreview = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "BMClassified"
	local function __FUNC_1750_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal9.condition = __FUNC_1750_
	registerVal10 = {}
	registerVal10.stateName = "NoPreview"
	local function __FUNC_17CA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "canPreview")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_17CA_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1842_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_1842_)
	local function __FUNC_1964_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "canPreview"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "canPreview", true, __FUNC_1964_)
	local function __FUNC_1A84_(arg0)
		arg0.itemName:close()
		arg0.itemDescription:close()
		arg0.buttonprompt0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A84_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

