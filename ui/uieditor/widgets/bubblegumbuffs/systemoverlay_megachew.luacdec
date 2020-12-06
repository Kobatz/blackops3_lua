-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.BubbleGumBuffs.BGB_PurchaseLiquidDiviniumWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewVialPackDesc")
require("ui.uieditor.widgets.ZMDiviniumLoopAnim.ZM_DiviniumAnimFill")
require("ui.uieditor.widgets.ZMPromotional.ZM_Promo_50percentoff")
require("ui.uieditor.widgets.BubbleGumBuffs.BGB_PurchaseLiquidDiviniumWidget")
local function __FUNC_42C_(arg0, arg1)
	CoD.NotEnoughLD = false
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "autoevents")
	registerVal3 = Engine.CreateModel(registerVal2, "cycled")
end

local function __FUNC_52D_(arg0, arg1, arg2)
	local function __FUNC_5CB_(arg2, arg3)
		if arg3 == "HorizontalList" then
			CoD.SwapFocusableElements(arg1, arg0.optionsVertical, arg0.optionsHorizontal)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_5CB_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_MegaChew = registerVal3
local function __FUNC_6AC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_42C_ then
		__FUNC_42C_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_MegaChew)
	registerVal2.id = "SystemOverlay_MegaChew"
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
	local function __FUNC_1F09_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_1F09_)
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_1FBC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "categoryType", true, __FUNC_1FBC_)
	registerVal2:addElement(registerVal5)
	registerVal2.categoryTypeImage = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_209F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_209F_)
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	local registerVal7 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal7:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal7:setAlpha(0.850000)
	local function __FUNC_2156_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_2156_)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal8:setTopBottom(true, false, 120.000000, 257.000000)
	registerVal8:setWidgetType(CoD.CACGenericButton)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(3.000000)
	local function __FUNC_2228_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_2228_)
	local function __FUNC_22C2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_22C2_)
	local function __FUNC_247D_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_247D_)
	local function __FUNC_2675_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_2675_)
	local function __FUNC_2746_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_27D3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2746_, __FUNC_27D3_, true)
	local function __FUNC_2902_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal4 then
			MegaChewOpenCodPointsStore(registerVal2, arg0, arg2, "menuName", arg1)
			return true
		end
	end

	local function __FUNC_29DB_(arg0, arg1, arg2)
		local registerVal3 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_2902_, __FUNC_29DB_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.optionsVertical = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 15.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 422.000000, 1107.000000)
	registerVal9:setTopBottom(true, false, 85.000000, 275.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setWidgetType(CoD.BGB_PurchaseLiquidDiviniumWidget)
	registerVal9:setHorizontalCount(4.000000)
	registerVal9:setSpacing(15.000000)
	local function __FUNC_2B40_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_2B40_)
	local function __FUNC_2BDA_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:linkToElementModel(registerVal9, "disabled", true, __FUNC_2BDA_)
	local function __FUNC_2D95_(arg0, arg2)
		UpdateMenuVialModel(registerVal2, arg0, arg1)
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_2D95_)
	local function __FUNC_2DF9_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_2DF9_)
	local function __FUNC_2FF1_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_2FF1_)
	local function __FUNC_30C2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_314F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30C2_, __FUNC_314F_, true)
	local function __FUNC_327E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal4 then
			MegaChewOpenCodPointsStore(registerVal2, arg0, arg2, "menuName", arg1)
			return true
		end
	end

	local function __FUNC_3357_(arg0, arg1, arg2)
		local registerVal3 = IsElementPropertyValue(arg0, "showStoreButton", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MPUI_PURCHASE_CODPOINTS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_327E_, __FUNC_3357_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.optionsHorizontal = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 76.000000, 276.000000)
	registerVal10:setTopBottom(true, false, 266.000000, 294.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MPUI_BM_SUPPLY_DROP"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.SupplyDropText = registerVal10
	local registerVal11 = CoD.StartMenu_CurrencyCounts.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -226.000000, -22.000000)
	registerVal11:setTopBottom(true, false, 15.000000, 45.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "ShowKeysAndVials"
	local function __FUNC_34BC_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = AreCodPointsEnabled(arg1)
			if not registerVal3 then
				registerVal3 = IsKeysForVialsOfferActive(arg1)
			else
			end
		end
		return true
	end

	registerVal15.condition = __FUNC_34BC_
	local registerVal16 = {}
	registerVal16.stateName = "Shown"
	local function __FUNC_3581_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = IsKeysForVialsOfferActive(arg1)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_3581_
	local registerVal17 = {}
	registerVal17.stateName = "ShownOnlyCODPoints"
	local function __FUNC_3608_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_3608_
	local registerVal18 = {}
	registerVal18.stateName = "ShownOnlyKeys"
	local function __FUNC_3655_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_3655_
	local registerVal19 = {}
	registerVal19.stateName = "ShownAllExceptVials"
	local function __FUNC_36A1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_36A1_
	local registerVal20 = {}
	registerVal20.stateName = "ShownOnlyVials"
	local function __FUNC_36ED_(arg0, arg2, arg3)
		return ShouldOnlyShowVials(arg0, arg1)
	end

	registerVal20.condition = __FUNC_36ED_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "CryptoKeyProgress.keyCount")
	local function __FUNC_3749_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_3749_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_3878_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_3878_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "autoevents.cycled")
	local function __FUNC_39A8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_39A8_)
	registerVal2:addElement(registerVal11)
	registerVal2.StartMenuCurrencyCounts = registerVal11
	local registerVal12 = CoD.MegaChewVialPackDesc.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -661.500000, -213.500000)
	registerVal12:setTopBottom(true, false, 219.400000, 273.000000)
	local function __FUNC_3ACF_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_3ACF_)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "VisibleUltraRareMegaTimer"
	local function __FUNC_3B1E_(arg0, arg2, arg3)
		local registerVal3 = IsIntDvarNonZero("loot_ld_urm_gobblegum_enabled")
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "vials", 0.000000)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_3B1E_
	registerVal17 = {}
	registerVal17.stateName = "VisibleUltraRareMega"
	local function __FUNC_3BEE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_3BEE_
	registerVal18 = {}
	registerVal18.stateName = "VisibleSaleActive"
	local function __FUNC_3C39_(arg0, arg2, arg3)
		local registerVal3 = IsLiquidDiviniumSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "vials", 0.000000)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_3C39_
	registerVal19 = {}
	registerVal19.stateName = "VisibleMegaBundle"
	local function __FUNC_3CF1_(arg0, arg2, arg3)
		local registerVal3 = IsLiquidDiviniumMegaBundleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "vials", 100.000000)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_3CF1_
	registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_3DAB_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "vials", 0.000000)
	end

	registerVal20.condition = __FUNC_3DAB_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_3E29_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vials"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "vials", true, __FUNC_3E29_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "autoevents.cycled")
	local function __FUNC_3F43_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:subscribeToModel(registerVal15, __FUNC_3F43_)
	registerVal2:addElement(registerVal12)
	registerVal2.MegaChewVialPackDesc0 = registerVal12
	local registerVal13 = CoD.ZM_DiviniumAnimFill.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 432.000000, 932.000000)
	registerVal13:setTopBottom(true, false, 146.200000, 246.200000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.ZMDiviniumAnimFill = registerVal13
	registerVal14 = CoD.ZM_Promo_50percentoff.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 26.500000, 384.000000)
	registerVal14:setTopBottom(true, false, 182.200000, 219.400000)
	local function __FUNC_4067_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_4067_)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_40B6_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "vials", 0.000000)
		if registerVal3 then
			registerVal3 = IsLiquidDiviniumSaleActive(arg1)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_40B6_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_416D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vials"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "vials", true, __FUNC_416D_)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "autoevents.cycled")
	local function __FUNC_4287_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_4287_)
	registerVal2:addElement(registerVal14)
	registerVal2.ZMPromo50percentoff = registerVal14
	registerVal15 = {}
	registerVal15.up = registerVal9
	registerVal8.navigation = registerVal15
	registerVal15 = {}
	registerVal15.down = registerVal8
	registerVal9.navigation = registerVal15
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_43AB_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_43AB_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_440A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.optionsVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.optionsHorizontal:setLeftRight(true, false, 422.000000, 947.000000)
		registerVal2.optionsHorizontal:setTopBottom(true, false, 85.000000, 275.000000)
		registerVal2.optionsHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_440A_
	registerVal15.HorizontalList = registerVal16
	registerVal16 = {}
	local function __FUNC_4603_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal13:completeAnimation()
		registerVal2.ZMDiviniumAnimFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_4603_
	registerVal15.Purchasing = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "HorizontalList"
	local function __FUNC_4705_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "PurchaseVials")
	end

	registerVal18.condition = __FUNC_4705_
	registerVal19 = {}
	registerVal19.stateName = "Purchasing"
	local function __FUNC_4772_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_4772_
	registerVal17 = {registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal17)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal8.id = "optionsVertical"
	registerVal9.id = "optionsHorizontal"
	local function __FUNC_47BD_(arg0, arg1)
		local registerVal2 = arg0.optionsVertical:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_47BD_)
	local function __FUNC_48C7_(arg0)
		arg0.text:close()
		arg0.optionsVertical:close()
		arg0.optionsHorizontal:close()
		arg0.StartMenuCurrencyCounts:close()
		arg0.MegaChewVialPackDesc0:close()
		arg0.ZMDiviniumAnimFill:close()
		arg0.ZMPromo50percentoff:close()
		arg0.largeImage:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_48C7_)
	if __FUNC_52D_ then
		__FUNC_52D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SystemOverlay_MegaChew.new = __FUNC_6AC_
