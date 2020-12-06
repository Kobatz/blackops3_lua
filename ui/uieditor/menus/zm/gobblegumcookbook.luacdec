-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.GenericMenuFrame_Cookbook")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookListItem")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookDistillsBalance")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookRemainingTime")
local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.title = "MENU_NEWTONS_COOKBOOK_WELCOME"
registerVal2.description = "MENU_NEWTONS_COOKBOOK_WELCOME_DESC"
registerVal2.image = "t7_menu_zm_cookbook_overlay"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_77C_(arg0, arg1)
	local function __FUNC_844_(arg0)
		local function __FUNC_8E0_(arg0, arg1, arg2)
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = arg0
			registerVal4.disabled = false
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = arg1
			registerVal4.selectIndex = arg2
			registerVal3.properties = registerVal4
			return registerVal3
		end

		local function __FUNC_9A6_(arg0, arg1, arg2, arg3, arg4)
			SetSeenNewtonsCookbookFirstTimePopup(arg2)
			local registerVal5 = CanGetFreeGobblegumCookbookUses(arg2)
			if registerVal5 then
				GoBackAndOpenSystemOverlayOnParent(arg0, arg2, "PurchaseDistills")
			else
				GoBack(arg4, arg2)
			end
		end

		table.insert({}, __FUNC_8E0_("MENU_GOT_IT", __FUNC_9A6_, true))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("NewtonsCookbookWelcomePopupList", __FUNC_844_, true)
	DataSources.NewtonsCookbookWelcomePopupList = registerVal3
	return "NewtonsCookbookWelcomePopupList"
end

registerVal2.listDatasource = __FUNC_77C_
local function __FUNC_AC5_()
	local function __FUNC_AF8_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
	end

	return __FUNC_AF8_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_AC5_
CoD.OverlayUtility.AddSystemOverlay("NewtonsCookbookWelcomePopup", registerVal2)
local function __FUNC_B44_(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg5.buyingDistill then
		return 
	end
	local registerVal6 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if not registerVal6 then
		registerVal6 = Engine.PurchaseDWSKU(arg2, arg3.sku, false)
		if arg3.sku and arg3.sku == 0.000000 or not registerVal6 then
			GoBack(arg4, arg2)
			LuaUtils.UI_ShowErrorMessageDialog(arg2, "ZMUI_COOKBOOK_DISTILL_PURCHASE_FAILED", "")
			return 
		end
	end
	arg5.buyingDistill = true
	arg4[CoD.OverlayUtility.GoBackPropertyName] = nil
	arg0:setState("BuyingDistill")
	arg0.BuyingDistillAnimation:playClip("StartLiquefying")
	arg0.optionsHorizontal.disabled = true
	arg0.optionsVertical.disabled = true
	arg5:updateDataSource(true)
	CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
	local function __FUNC_F87_(arg1, arg6)
		local registerVal2 = Engine.IsInventoryBusy(arg2)
		registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
		if not arg6 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
			LUI.UIElement.clipOver(arg1, arg6)
		else
			registerVal2 = Engine.GetPurchaseDWSKUResult(arg2)
			if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_FAILURE then
				GoBack(arg4, arg2)
				LuaUtils.UI_ShowErrorMessageDialog(arg2, "ZMUI_COOKBOOK_DISTILL_PURCHASE_FAILED", "")
				return 
			end
			registerVal2 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
			if registerVal2 then
				CoD.BubbleGumBuffUtility.Debug.RefillDistill(arg2, arg3.distillID)
			end
			registerVal2 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
			if registerVal2 then
				DataSources.GobbleGumDistills.getModel(arg2)
			end
			if arg3.distillID == CoD.BubbleGumBuffUtility.FREE_DISTILL then
				arg0:setState("DefaultState")
				arg5.disabled = false
				local registerVal4 = CoD.OverlayUtility.DefaultGoBack()
				arg4[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
				arg5.buyingDistill = nil
				arg0.optionsHorizontal.disabled = nil
				arg0.optionsVertical.disabled = nil
				CoD.Menu.UpdateAllButtonPrompts(arg4, arg2)
				arg5:updateDataSource()
			else
				GoBackAndOpenSystemOverlayOnParent(arg0, arg2, "PurchaseDistills")
			end
		end
	end

	arg0.BuyingDistillAnimation:registerEventHandler("clip_over", __FUNC_F87_)
end

local registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.frameWidget = "CoD.SystemOverlay_GobbleGumRecipe"
registerVal3.title = "ZMUI_COOKBOOK_DISTILLS_CAPS"
registerVal3.description = "ZMUI_COOKBOOK_DISTILLS_DESC"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1622_(arg0, arg1)
	local function __FUNC_16E5_(arg0, arg1)
		local function __FUNC_1ACD_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
		end

		local function __FUNC_1B18_(arg0, arg1)
			if arg1 == CoD.BubbleGumBuffUtility.FREE_DISTILL then
				local registerVal2 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, arg1)
				registerVal2 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg0, arg1)
				if 0.000000 >= registerVal2 and 0.000000 >= registerVal2 then
				end
				return true
			end
			return false
		end

		local function __FUNC_1C62_(arg0, arg2, arg3, arg4, arg5)
			__FUNC_B44_(arg0, arg2, arg3, arg4, arg5, arg1)
		end

		local function __FUNC_1CAC_(arg0, arg1, arg2, arg3, arg4)
			GoBackAndOpenSystemOverlayOnParent(arg0, arg2, "PurchaseDistillsConfirmation", arg3)
		end

		local function __FUNC_1D42_(arg0)
			local registerVal1 = {}
			local registerVal3 = {}
			registerVal3.dvar = Dvar.loot_distill_free_quantity
			registerVal3.defaultValue = 30.000000
			registerVal1[CoD.BubbleGumBuffUtility.FREE_DISTILL] = registerVal3
			registerVal3 = {}
			registerVal3.dvar = Dvar.loot_distill_paid_x3_quantity
			registerVal3.defaultValue = 30.000000
			registerVal1[CoD.BubbleGumBuffUtility.X3_DISTILL] = registerVal3
			registerVal3 = {}
			registerVal3.dvar = Dvar.loot_distill_paid_x6_quantity
			registerVal3.defaultValue = 60.000000
			registerVal1[CoD.BubbleGumBuffUtility.X6_DISTILL] = registerVal3
			registerVal3 = {}
			registerVal3.dvar = Dvar.loot_distill_paid_x9_quantity
			registerVal3.defaultValue = 90.000000
			registerVal1[CoD.BubbleGumBuffUtility.X9_DISTILL] = registerVal3
			if registerVal1[arg0] then
				registerVal3 = registerVal1[arg0].dvar:exists()
				registerVal3 = registerVal1[arg0].dvar:get()
				if registerVal1 or not registerVal3 then
				end
				return registerVal1[arg0].defaultValue
			end
			return 0.000000
		end

		local function __FUNC_203D_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
			local registerVal7 = Engine.DvarInt(nil, ("loot_distill_paid_" .. arg3 .. "_cpCost"))
			local registerVal8 = Engine.DvarInt(nil, ("loot_distill_paid_" .. arg3 .. "_vialCost"))
			arg2.vialCost = registerVal8
			arg2.codPointCost = registerVal7
			local registerVal9 = __FUNC_1D42_(arg3)
			arg2.numDistills = registerVal9
			arg2.distillID = arg3
			arg2.image = arg5
			arg2.description = "ZMUI_COOKBOOK_SPEND_COD_POINTS_OR_VIALS_FOR_DISTILLS"
			registerVal9 = Engine.GetZMVials(arg0)
			registerVal9 = Engine.GetCoDPoints(arg0)
			if registerVal9 < registerVal8 and registerVal9 < registerVal7 then
				arg2.description = "ZMUI_TRADE_CODPOINTS_FOR_VIALS_DESC"
			end
			if arg3 == CoD.BubbleGumBuffUtility.FREE_DISTILL then
			end
			local registerVal11 = Engine.Localize("ZMUI_COOKBOOK_FREE_HINT_TIMER", SecondsAsHourMinutesSeconds(CoD.BubbleGumBuffUtility.GetDistillCooldown(arg0, arg3)))
			local registerVal12 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, CoD.BubbleGumBuffUtility.FREE_DISTILL)
			local registerVal13 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
			if registerVal13 <= registerVal12 then
				local registerVal15 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, CoD.BubbleGumBuffUtility.FREE_DISTILL)
				local registerVal16 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
				registerVal12 = Engine.Localize("ZMUI_COOKBOOK_FREE_HINT_HAVE_DISTILLS", math.floor((registerVal15 / registerVal16)))
			end
			registerVal12 = {}
			registerVal13 = {}
			registerVal13.displayText = displayText
			local registerVal14 = __FUNC_1B18_(arg0, arg3)
			registerVal13.disabled = registerVal14
			registerVal13.text = arg6
			registerVal13.image = arg5
			registerVal14 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, arg3)
			if arg3 ~= CoD.BubbleGumBuffUtility.FREE_DISTILL or not registerVal14 then
			end
			registerVal13.remainingDistills = 0.000000
			registerVal14 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg0, arg3)
			registerVal13.timeRemaining = registerVal14
			registerVal13.distillID = arg3
			registerVal13.itemCODPointCost = registerVal7
			registerVal13.itemVialCost = registerVal8
			registerVal13.hintTextAlign = Enum.LUIAlignment.LUI_ALIGNMENT_LEFT
			registerVal13.hintText = registerVal12
			registerVal12.models = registerVal13
			registerVal13 = {}
			registerVal13.action = arg1
			registerVal13.actionParam = arg2
			registerVal13.selectIndex = arg4
			registerVal13.customWidgetOverride = CoD.GobbleGumCookbook_FreeDistillsListItem
			registerVal13.disabledAllowNav = true
			registerVal12.properties = registerVal13
			return registerVal12
		end

		if arg1.buyingDistill then
			return {}
		end
		local registerVal14 = {}
		local registerVal15 = Engine.DvarInt(nil, "loot_distill_free_sku")
		registerVal14.sku = registerVal15
		table.insert({}, __FUNC_203D_(arg0, __FUNC_1C62_, registerVal14, CoD.BubbleGumBuffUtility.FREE_DISTILL, true, "uie_t7_zm_cookbook_distill_icon", __FUNC_1D42_(CoD.BubbleGumBuffUtility.FREE_DISTILL)))
		table.insert({}, __FUNC_203D_(arg0, __FUNC_1CAC_, {}, CoD.BubbleGumBuffUtility.X3_DISTILL, false, "uie_t7_zm_cookbook_distill_icon", __FUNC_1D42_(CoD.BubbleGumBuffUtility.X3_DISTILL)))
		table.insert({}, __FUNC_203D_(arg0, __FUNC_1CAC_, {}, CoD.BubbleGumBuffUtility.X6_DISTILL, false, "uie_t7_zm_cookbook_distill_icon_2x", __FUNC_1D42_(CoD.BubbleGumBuffUtility.X6_DISTILL)))
		table.insert({}, __FUNC_203D_(arg0, __FUNC_1CAC_, {}, CoD.BubbleGumBuffUtility.X9_DISTILL, false, "uie_t7_zm_cookbook_distill_icon_3x", __FUNC_1D42_(CoD.BubbleGumBuffUtility.X9_DISTILL)))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseDistillsItemList", __FUNC_16E5_, true)
	DataSources.PurchaseDistillsItemList = registerVal3
	return "PurchaseDistillsItemList"
end

registerVal3.listDatasource = __FUNC_1622_
registerVal3[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("PurchaseDistills", registerVal3)
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.frameWidget = "CoD.SystemOverlay_GobbleGumRecipe"
local function __FUNC_2826_(arg0, arg1)
	local registerVal3 = Engine.GetZMVials(arg0)
	registerVal3 = Engine.GetCoDPoints(arg0)
	if registerVal3 < arg1.vialCost and registerVal3 < arg1.codPointCost then
		return Engine.Localize("MPUI_BM_NO_CURRENCY")
	else
		return Engine.Localize("ZMUI_CONFIRM_TRADE_CAPS", arg1.numDistills)
	end
end

registerVal3.title = __FUNC_2826_
local function __FUNC_29B7_(arg0, arg1)
	return arg1.image
end

registerVal3.image = __FUNC_29B7_
local function __FUNC_29FF_(arg0, arg1)
	local registerVal3 = Engine.GetZMVials(arg0)
	registerVal3 = Engine.GetCoDPoints(arg0)
	if registerVal3 < arg1.vialCost and registerVal3 < arg1.codPointCost then
		return Engine.Localize("ZMUI_COOKBOOK_NOT_ENOUGH_COD_POINTS_TO_TRADE_DISTILLS")
	else
		return Engine.Localize("ZMUI_COOKBOOK_SPEND_COD_POINTS_OR_VIALS_FOR_DISTILLS", arg1.numDistills)
	end
end

registerVal3.description = __FUNC_29FF_
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.state = "verticalButtons"
local function __FUNC_2BCE_(arg0, arg1)
	local function __FUNC_2CA9_(arg0, arg2)
		local function __FUNC_314A_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
			if arg5 then
			else
			end
			local registerVal10 = {}
			local registerVal11 = {}
			local registerVal12 = Engine.Localize(arg0, arg6)
			if arg1 or not registerVal12 then
			end
			registerVal11.displayText = arg0
			registerVal11.disabled = arg3
			registerVal10.models = registerVal11
			registerVal11 = {}
			registerVal11.action = arg1
			registerVal12 = {}
			registerVal12.vials = arg5
			registerVal12.codPoints = arg6
			registerVal12.sku = arg7
			registerVal12.distillID = arg8
			registerVal11.actionParam = registerVal12
			registerVal11.selectIndex = arg2
			registerVal11.showStoreButton = arg4
			registerVal10.properties = registerVal11
			return registerVal10
		end

		local function __FUNC_32FE_(arg0, arg1, arg3, arg4, arg5)
			__FUNC_B44_(arg0, arg1, arg3, arg4, arg5, arg2)
		end

		local function __FUNC_3348_(arg0, arg1, arg2, arg3, arg4)
			OpenCodPointsStore(arg0, arg1, arg2, arg4.menuName, arg4)
		end

		local function __FUNC_33C6_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg0, arg2)
		end

		if arg2.buyingDistill then
			return {}
		end
		local registerVal8 = Engine.GetZMVials(arg0)
		registerVal8 = Engine.GetCoDPoints(arg0)
		if registerVal8 < arg1.vialCost and registerVal8 < arg1.codPointCost then
			table.insert({}, __FUNC_314A_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_3348_, true, false, false))
		else
			local registerVal10 = Engine.Localize("ZMUI_COOKBOOK_SPEND_VIALS", arg1.vialCost)
			local registerVal14 = Engine.GetZMVials(arg0)
			if registerVal14 >= arg1.vialCost then
			end
			local registerVal17 = Engine.DvarInt(nil, ("loot_distill_paid_" .. arg1.distillID .. "_vial_sku"))
			table.insert({}, __FUNC_314A_(registerVal10, __FUNC_32FE_, true, true, true, arg1.vialCost, arg1.codPointCost, registerVal17, arg1.distillID))
			registerVal10 = Engine.Localize("ZMUI_PURCHASE_VIALS", arg1.codPointCost)
			registerVal14 = Engine.GetCoDPoints(arg0)
			if registerVal14 >= arg1.codPointCost then
			end
			registerVal17 = Engine.DvarInt(nil, ("loot_distill_paid_" .. arg1.distillID .. "_cp_sku"))
			table.insert({}, __FUNC_314A_(registerVal10, __FUNC_32FE_, false, true, true, arg1.vialCost, arg1.codPointCost, registerVal17, arg1.distillID))
		end
		table.insert({}, __FUNC_314A_("MENU_CANCEL_CAPS", __FUNC_33C6_, false, false, true))
		return {}
	end

	local function __FUNC_3410_(arg0, arg1, arg2)
		if not arg1.codPointsSubscription then
			local registerVal6 = Engine.GetModelForController(arg0)
			local registerVal5 = Engine.GetModel(registerVal6, "CryptoKeyProgress.codPoints")
			local function __FUNC_35DA_(arg0)
				arg1:updateDataSource()
			end

			local registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_35DA_, false)
			arg1.codPointsSubscription = registerVal3
		end
		if not arg1.vialCountSubscription then
			registerVal6 = Engine.GetModelForController(arg0)
			registerVal5 = Engine.GetModel(registerVal6, "MegaChewTokens.remainingTokens")
			local function __FUNC_362A_(arg0)
				arg1:updateDataSource()
			end

			registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_362A_, false)
			arg1.vialCountSubscription = registerVal3
		end
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseDistillsConfirmationItemList", __FUNC_2CA9_, true, nil, __FUNC_3410_)
	DataSources.PurchaseDistillsConfirmationItemList = registerVal3
	return "PurchaseDistillsConfirmationItemList"
end

registerVal3.listDatasource = __FUNC_2BCE_
local function __FUNC_367A_()
	local function __FUNC_36AC_(arg0, arg1, arg2, arg3)
		GoBackAndOpenSystemOverlayOnParent(arg0, arg2, "PurchaseDistills")
	end

	return __FUNC_36AC_
end

registerVal3[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_367A_
CoD.OverlayUtility.AddSystemOverlay("PurchaseDistillsConfirmation", registerVal3)
local function __FUNC_3732_(arg0, arg1, arg2)
	local function __FUNC_37E4_()
		CoD.BubbleGumBuffUtility.ScheduleTimerTick(arg1)
	end

	arg0:addElement(LUI.UITimer.newElementTimer(100.000000, false, __FUNC_37E4_))
end

local function __FUNC_387A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GobbleGumCookbook")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GobbleGumCookbook.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_bg"))
	registerVal1:addElement(registerVal3)
	registerVal1.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_bg_cookbook"))
	registerVal1:addElement(registerVal4)
	registerVal1.bg2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 355.000000, 578.000000)
	registerVal5:setTopBottom(false, false, -290.340000, -160.380000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_cookbook_timeframe"))
	registerVal1:addElement(registerVal5)
	registerVal1.Backing = registerVal5
	local registerVal6 = CoD.GenericMenuFrame_Cookbook.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_NEW"))
	registerVal1:addElement(registerVal6)
	registerVal1.GenericMenuFrameCookbook = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 59.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 144.000000, 1162.000000)
	registerVal7:setTopBottom(true, false, 228.000000, 568.000000)
	registerVal7:setWidgetType(CoD.GobbleGumCookbookListItem)
	registerVal7:setHorizontalCount(3.000000)
	registerVal7:setSpacing(59.000000)
	registerVal7:setDataSource("GobbleGumRecipeResultList")
	local function __FUNC_4967_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_4967_)
	local function __FUNC_4AF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_4AF7_)
	local function __FUNC_4BC6_(arg0, arg1, arg2, arg3)
		OpenGobbleGumRecipe(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4C29_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4BC6_, __FUNC_4C29_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.RecipeList = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 335.000000, 994.000000)
	registerVal8:setTopBottom(true, false, 107.660000, 127.660000)
	registerVal8:setRGB(0.300000, 0.200000, 0.140000)
	registerVal8:setAlpha(0.900000)
	registerVal8:setText(Engine.Localize("ZMUI_COOKBOOK_CHOOSE_RECIPE"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.PickYourRecipe = registerVal8
	local registerVal9 = CoD.GobbleGumCookbookDistillsBalance.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 1065.000000, 1170.000000)
	registerVal9:setTopBottom(true, false, 96.660000, 121.660000)
	registerVal1:addElement(registerVal9)
	registerVal1.GobbleGumCookbookDistillsBalance = registerVal9
	local registerVal10 = CoD.GobbleGumCookbookRemainingTime.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 1016.000000, 1170.000000)
	registerVal10:setTopBottom(true, false, 125.830000, 150.830000)
	registerVal10:setRGB(0.300000, 0.200000, 0.140000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setScale(0.800000)
	registerVal1:addElement(registerVal10)
	registerVal1.GobbleGumCookbookRemainingTime = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 129.000000, 466.000000)
	registerVal11:setTopBottom(true, false, 52.660000, 77.660000)
	registerVal11:setRGB(0.300000, 0.200000, 0.140000)
	registerVal11:setZRot(-1.500000)
	registerVal11:setText(Engine.Localize("MENU_NEWTONS_COOKBOOK_CAPS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setLetterSpacing(2.799999)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.Title = registerVal11
	local function __FUNC_4D26_(arg1, arg2)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame", arg0, "Update")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4D26_)
	local function __FUNC_4E21_(arg1, arg2)
		local registerVal3 = HasSeenNewtonsCookbookFirstTimePopup(arg0)
		if not registerVal3 then
			OpenSystemOverlay(registerVal1, registerVal1, arg0, "NewtonsCookbookWelcomePopup", "")
		else
			registerVal3 = CanGetFreeGobblegumCookbookUses(arg0)
			registerVal3 = HasSeenNewtonsCookbookFirstTimePopup(arg0)
			if registerVal3 and registerVal3 then
				OpenSystemOverlay(registerVal1, registerVal1, arg0, "PurchaseDistills", nil)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_4E21_)
	local function __FUNC_4FC0_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		HandleGoBackFromCookbook(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_505C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4FC0_, __FUNC_505C_, false)
	local function __FUNC_5159_(arg0, arg1, arg2, arg3)
		OpenSystemOverlay(registerVal1, arg1, arg2, "PurchaseDistills", nil)
		return true
	end

	local function __FUNC_51DD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "ZMUI_COOKBOOK_BUY_DISTILLS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_5159_, __FUNC_51DD_, true)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "RecipeList"
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.RecipeList:processEvent(registerVal14)
	end
	local function __FUNC_52EA_(arg1)
		arg1.GenericMenuFrameCookbook:close()
		arg1.RecipeList:close()
		arg1.GobbleGumCookbookDistillsBalance:close()
		arg1.GobbleGumCookbookRemainingTime:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GobbleGumCookbook.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_52EA_)
	if __FUNC_3732_ then
		__FUNC_3732_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GobbleGumCookbook = __FUNC_387A_
