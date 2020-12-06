-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbook_BuyDistillsListItem")
require("ui.uieditor.widgets.BubbleGumBuffs.BGB_LiquefyAnimation")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookDistillsBalance")
local function __FUNC_3E0_(arg0, arg1, arg2)
	arg0:addElement(LUI.UITimer.new(100.000000, "gobble_gum_recipe_distill_tick", false, arg0))
	local registerVal6 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, "scheduleIndex")
	local function __FUNC_654_(arg0)
		DelayGoBack(arg2, arg1)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_654_, false)
	arg0.optionsVertical:makeNotFocusable()
	local function __FUNC_6A5_(arg2, arg3)
		if arg3 == "VerticalButtons" then
			CoD.SwapFocusableElements(arg1, arg0.optionsHorizontal, arg0.optionsVertical)
		end
		if arg3 == "DefaultState" then
			CoD.SwapFocusableElements(arg1, arg0.optionsVertical, arg0.optionsHorizontal)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_6A5_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_GobbleGumRecipe = registerVal2
local function __FUNC_7DF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_GobbleGumRecipe)
	registerVal2.id = "SystemOverlay_GobbleGumRecipe"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 331.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_backgroundbg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 62.500000, 342.500000)
	registerVal4:setTopBottom(true, false, 23.000000, 303.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_1B99_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_1B99_)
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 64.000000, 727.000000)
	registerVal5:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal5:setAlpha(0.850000)
	local function __FUNC_1C4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_1C4C_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 64.000000, 222.000000)
	registerVal6:setTopBottom(true, false, 15.000000, 45.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_1D20_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_1D20_)
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal7:setTopBottom(true, false, 120.000000, 257.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(4.000000)
	registerVal7:setSpacing(3.000000)
	local function __FUNC_1DDA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setDataSource(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_1DDA_)
	local function __FUNC_1E72_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_1E72_)
	local function __FUNC_202D_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_202D_)
	local function __FUNC_2225_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2225_)
	local function __FUNC_22F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2383_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_22F6_, __FUNC_2383_, true)
	local function __FUNC_24B2_(arg0, arg1, arg2, arg3)
		OpenCodPointsStore(registerVal2, arg0, arg2, "menuName", arg1)
		return true
	end

	local function __FUNC_252E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_24B2_, __FUNC_252E_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.optionsVertical = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 15.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 237.500000, 1042.500000)
	registerVal8:setTopBottom(true, false, 81.000000, 271.000000)
	registerVal8:setWidgetType(CoD.GobbleGumCookbook_BuyDistillsListItem)
	registerVal8:setHorizontalCount(4.000000)
	registerVal8:setSpacing(15.000000)
	local function __FUNC_2637_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_2637_)
	local function __FUNC_26CE_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_26CE_)
	local function __FUNC_2889_(arg0, arg2)
		UpdateOverlayImageWithElementImage(registerVal2, arg0, arg1)
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_2889_)
	local function __FUNC_28FC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_28FC_)
	local function __FUNC_2AF5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_2AF5_)
	local function __FUNC_2BC6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2C53_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2BC6_, __FUNC_2C53_, true)
	local function __FUNC_2D82_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal4 then
			OpenCodPointsStore(registerVal2, arg0, arg2, "menuName", arg1)
			return true
		end
	end

	local function __FUNC_2E53_(arg0, arg1, arg2)
		local registerVal3 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_2D82_, __FUNC_2E53_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.optionsHorizontal = registerVal8
	local registerVal9 = CoD.BGB_LiquefyAnimation.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal9:setTopBottom(true, false, 136.000000, 236.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.CookingAnimation = registerVal9
	local registerVal10 = CoD.BGB_LiquefyAnimation.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal10:setTopBottom(true, false, 136.000000, 236.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.BuyingDistillAnimation = registerVal10
	local registerVal11 = CoD.StartMenu_CurrencyCounts.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1059.760000, 1263.760000)
	registerVal11:setTopBottom(true, false, 7.780000, 37.780000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "ShowKeysAndVials"
	local function __FUNC_2FB8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_2FB8_
	local registerVal16 = {}
	registerVal16.stateName = "Shown"
	local function __FUNC_3005_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_3005_
	local registerVal17 = {}
	registerVal17.stateName = "ShownOnlyCODPoints"
	local function __FUNC_3051_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_3051_
	local registerVal18 = {}
	registerVal18.stateName = "ShownOnlyKeys"
	local function __FUNC_309D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_309D_
	local registerVal19 = {}
	registerVal19.stateName = "ShownAllExceptVials"
	local function __FUNC_30E9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_30E9_
	local registerVal20 = {}
	registerVal20.stateName = "ShownOnlyVials"
	local function __FUNC_3135_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_3135_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "CryptoKeyProgress.keyCount")
	local function __FUNC_3181_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_3181_)
	registerVal2:addElement(registerVal11)
	registerVal2.StartMenuCurrencyCounts = registerVal11
	local registerVal12 = CoD.GobbleGumCookbookDistillsBalance.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 959.760000, 1034.760000)
	registerVal12:setTopBottom(true, false, 10.500000, 35.500000)
	registerVal12.balance:setRGB(1.000000, 1.000000, 1.000000)
	registerVal12.balance:setScale(0.850000)
	registerVal2:addElement(registerVal12)
	registerVal2.GobbleGumCookbookDistillsBalance = registerVal12
	local registerVal13 = {}
	registerVal13.left = registerVal8
	registerVal13.up = registerVal8
	registerVal7.navigation = registerVal13
	registerVal13 = {}
	registerVal13.right = registerVal7
	registerVal13.down = registerVal7
	registerVal8.navigation = registerVal13
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_32B0_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.optionsHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CookingAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BuyingDistillAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_32B0_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_35D2_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.optionsVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.optionsHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CookingAnimation:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BuyingDistillAnimation:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_35D2_
	registerVal13.BuyingDistill = registerVal14
	registerVal14 = {}
	local function __FUNC_38FA_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.largeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setLeftRight(true, false, 421.000000, 1128.000000)
		registerVal2.text:setTopBottom(true, false, 45.000000, 65.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.title:setLeftRight(true, false, 421.000000, 621.000000)
		registerVal2.title:setTopBottom(true, false, 11.000000, 41.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.optionsVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.optionsHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_38FA_
	registerVal13.VerticalButtons = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "BuyingDistill"
	local function __FUNC_3C17_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "buyingDistill")
	end

	registerVal16.condition = __FUNC_3C17_
	registerVal17 = {}
	registerVal17.stateName = "VerticalButtons"
	local function __FUNC_3CA3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "verticalButtons")
	end

	registerVal17.condition = __FUNC_3CA3_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_3D31_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "state", true, __FUNC_3D31_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal7.id = "optionsVertical"
	registerVal8.id = "optionsHorizontal"
	local function __FUNC_3E4B_(arg0, arg1)
		local registerVal2 = arg0.optionsHorizontal:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3E4B_)
	local function __FUNC_3F55_(arg0)
		arg0.text:close()
		arg0.optionsVertical:close()
		arg0.optionsHorizontal:close()
		arg0.CookingAnimation:close()
		arg0.BuyingDistillAnimation:close()
		arg0.StartMenuCurrencyCounts:close()
		arg0.GobbleGumCookbookDistillsBalance:close()
		arg0.largeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3F55_)
	if __FUNC_3E0_ then
		__FUNC_3E0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SystemOverlay_GobbleGumRecipe.new = __FUNC_7DF_
