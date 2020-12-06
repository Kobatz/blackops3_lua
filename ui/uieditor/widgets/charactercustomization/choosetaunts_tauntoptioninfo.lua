-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.BlackMarketItemDescription")
require("ui.uieditor.widgets.buttonprompt")
require("ui.uieditor.widgets.PC.ChooseCharacter.ChooseCharacter_CardClickButton")
local function __FUNC_31A_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	arg0.clickButton.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	arg0.clickButton.keyshortcut:setText(Engine.Localize("[^3P^7]"))
end

local function __FUNC_499_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_31A_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_TauntOptionInfo = registerVal3
local function __FUNC_50B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_TauntOptionInfo)
	registerVal2.id = "ChooseTaunts_TauntOptionInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 381.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 381.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local function __FUNC_1274_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemName", true, __FUNC_1274_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_1383_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_1383_
	local registerVal8 = {}
	registerVal8.stateName = "Available"
	local function __FUNC_13CC_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_13CC_
	local registerVal9 = {}
	registerVal9.stateName = "NotEquippable"
	local function __FUNC_1400_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_1400_
	local registerVal10 = {}
	registerVal10.stateName = "NotAvailable"
	local function __FUNC_1434_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_1434_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.itemName = registerVal3
	local registerVal4 = CoD.BlackMarketItemDescription.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal4:setTopBottom(true, false, 42.000000, 64.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.weaponDescTextBox:setText(LocalizeIntoString("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "HEROES_TAUNT"))
	local function __FUNC_1468_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1468_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "NotVisible"
	local function __FUNC_14BA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_14BA_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_1536_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isBMClassified", true, __FUNC_1536_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemDescription = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal5:setTopBottom(true, false, 39.000000, 70.000000)
	registerVal5.label:setText(Engine.Localize("HEROES_PREVIEW_TAUNT"))
	local function __FUNC_1658_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_1658_)
	registerVal2:addElement(registerVal5)
	registerVal2.buttonprompt0 = registerVal5
	registerVal7 = IsPC()
	if registerVal7 then
		registerVal7 = CoD.ChooseCharacter_CardClickButton.new(arg0, arg1)
	else
		registerVal7 = LUI.UIElement.createFake()
	end
	registerVal7:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal7:setTopBottom(true, false, 42.000000, 67.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7.label:setText(Engine.Localize("HEROES_PREVIEW_TAUNT"))
	registerVal7.keyshortcut:setText(Engine.Localize(""))
	registerVal7 = IsPC()
	if registerVal7 then
		registerVal2:addElement(registerVal7)
	end
	registerVal2.clickButton = registerVal7
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1733_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonprompt0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal8.DefaultClip = __FUNC_1733_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1924_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal8.DefaultClip = __FUNC_1924_
	registerVal7.BMClassified = registerVal8
	registerVal8 = {}
	local function __FUNC_1AE4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.buttonprompt0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.clickButton:setRGB(0.590000, 0.590000, 0.590000)
		registerVal2.clickButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal8.DefaultClip = __FUNC_1AE4_
	registerVal7.NoPreviewPC = registerVal8
	registerVal8 = {}
	local function __FUNC_1D8E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.buttonprompt0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.clickButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal8.DefaultClip = __FUNC_1D8E_
	registerVal7.NoPreview = registerVal8
	registerVal8 = {}
	local function __FUNC_200D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.itemDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.buttonprompt0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttonprompt0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.clickButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clickButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal8.DefaultClip = __FUNC_200D_
	registerVal7.KBMouse = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "BMClassified"
	local function __FUNC_2224_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal10.condition = __FUNC_2224_
	local registerVal11 = {}
	registerVal11.stateName = "NoPreviewPC"
	local function __FUNC_229E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "canPreview")
		if not registerVal3 then
			registerVal3 = IsGamepad(arg1)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_229E_
	local registerVal12 = {}
	registerVal12.stateName = "NoPreview"
	local function __FUNC_2349_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "canPreview")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2349_
	local registerVal13 = {}
	registerVal13.stateName = "KBMouse"
	local function __FUNC_23C2_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_23C2_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_2413_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_2413_)
	local function __FUNC_2534_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "canPreview"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "canPreview", true, __FUNC_2534_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2654_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2654_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "LastInput")
	local function __FUNC_26DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_26DF_)
	local function __FUNC_27FB_(arg0)
		arg0.itemName:close()
		arg0.itemDescription:close()
		arg0.buttonprompt0:close()
		arg0.clickButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27FB_)
	if __FUNC_499_ then
		__FUNC_499_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseTaunts_TauntOptionInfo.new = __FUNC_50B_
