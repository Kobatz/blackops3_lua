-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.MediaManager.MediaManager_EmblemListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.MediaManager.MediaManager_VariantListItem")
require("ui.uieditor.widgets.MediaManager.MediaManager_PaintshopListItem")
require("ui.uieditor.widgets.MediaManager.MediaManager_CustomGameListItem")
require("ui.uieditor.widgets.MediaManager.MediaManager_TheaterListItem")
require("ui.uieditor.widgets.MediaManager.MediaManager_EmblemItemLarge")
require("ui.uieditor.widgets.MediaManager.MediaManager_VariantItemLarge")
require("ui.uieditor.widgets.MediaManager.MediaManager_PaintshopItemLarge")
require("ui.uieditor.widgets.MediaManager.MediaManager_CustomGameItemLarge")
require("ui.uieditor.widgets.MediaManager.MediaManager_TheaterFileItemLarge")
require("ui.uieditor.widgets.MediaManager.MediaManager_SelectedItemInfo")
require("ui.uieditor.widgets.MediaManager.MediaManager_BuyExtraSlots")
require("ui.uieditor.widgets.FileShare.FileshareCategoryQuotas")
require("ui.uieditor.widgets.MediaManager.MediaManager_NoContent")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
local function __FUNC_757_(arg0, arg1)
	if CoD.perController[arg1].gunsmithVariantModel ~= nil then
	end
	CoD.perController[arg1].wasGunsmithVariantModelNil = true
	if CoD.perController[arg1].selectedpaintjobModel ~= nil then
	end
	CoD.perController[arg1].wasSelectedPaintjobModelNil = true
	MediaManagerUpdateLocalData(arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManager", false)
	Engine.CreateModel(registerVal2, "isBuyMoreSlot", false)
	Engine.CreateModel(registerVal2, "createTime", false)
	Engine.CreateModel(registerVal2, "dirty", false)
	Engine.CreateModel(registerVal2, "slotsUsed", false)
end

local function __FUNC_A5C_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MediaManager")
	if __FUNC_757_ then
		__FUNC_757_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManager.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 82.210000, 384.210000)
	registerVal4:setTopBottom(true, false, 119.000000, 680.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal1:addElement(registerVal4)
	registerVal1.BG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -5.000000, 83.000000)
	registerVal5:setRGB(0.000000, 0.020000, 0.030000)
	registerVal1:addElement(registerVal5)
	registerVal1.TitleBacking0 = registerVal5
	local registerVal6 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal6:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleDotsWidget0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListPanel = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -68.000000, 0.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.HelpBacking0 = registerVal9
	local registerVal10 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 11.000000, 78.870000)
	registerVal10:setTopBottom(true, false, 7.000000, 677.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.ElemsSideList = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, -11.000000, -11.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_FILESHARE_MEDIA_MANAGER_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_FILESHARE_MEDIA_MANAGER_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal12:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal12:setWidgetType(CoD.MediaManager_EmblemListItem)
	registerVal12:setVerticalCount(7.000000)
	registerVal12:setSpacing(5.000000)
	registerVal12:setVerticalCounter(CoD.verticalCounter)
	registerVal12:setDataSource("MediaManagerEmblemList")
	local function __FUNC_3CB2_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "isBuyMore", true, __FUNC_3CB2_)
	local function __FUNC_3E6E_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			MediaManagerEmblemFocusChanged(registerVal1, arg1, arg0)
			MediaManagerClearDisplay(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal12:registerEventHandler("list_item_gain_focus", __FUNC_3E6E_)
	local function __FUNC_3FC6_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "emblem")
		if registerVal3 then
			SetFocusToElement(registerVal1, "EmblemsList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_3FC6_)
	local function __FUNC_40EF_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_40EF_)
	local function __FUNC_427F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_427F_)
	local function __FUNC_434E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = IsMenuInState(arg1, "Emblems")
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 and registerVal4 then
			MediaManagerClearEmblem(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_4503_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = IsMenuInState(arg1, "Emblems")
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_434E_, __FUNC_4503_, false)
	local function __FUNC_4765_(arg1)
		UpdateDataSource(registerVal1, registerVal12, arg0)
		UpdateButtonPromptState(registerVal1, registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_4765_)
	registerVal1:addElement(registerVal12)
	registerVal1.EmblemsList = registerVal12
	local registerVal13 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal13:makeFocusable()
	registerVal13:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal13:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal13:setWidgetType(CoD.MediaManager_VariantListItem)
	registerVal13:setVerticalCount(7.000000)
	registerVal13:setSpacing(5.000000)
	registerVal13:setVerticalCounter(CoD.verticalCounter)
	registerVal13:setDataSource("MediaManagerVariantList")
	local function __FUNC_4851_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal13, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal13:linkToElementModel(registerVal13, "isBuyMore", true, __FUNC_4851_)
	local function __FUNC_4A0E_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			Gunsmith_FocusOccupiedVariant(registerVal1, arg1, arg0)
			MediaManagerVariantFocusChanged(registerVal1, arg1, arg0)
			MediaManagerClearDisplay(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal13:registerEventHandler("list_item_gain_focus", __FUNC_4A0E_)
	local function __FUNC_4BA2_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "variant")
		if registerVal3 then
			SetFocusToElement(registerVal1, "VariantsList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_4BA2_)
	local function __FUNC_4CCD_(arg1, arg2)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_4CCD_)
	local function __FUNC_4E5F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_4E5F_)
	local function __FUNC_4F2E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = IsMenuInState(arg1, "Variants")
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 and registerVal4 then
			MediaManagerClearVariant(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_50E5_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = IsMenuInState(arg1, "Variants")
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4F2E_, __FUNC_50E5_, false)
	local function __FUNC_534A_(arg1)
		UpdateDataSource(registerVal1, registerVal13, arg0)
		UpdateButtonPromptState(registerVal1, registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal13:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_534A_)
	registerVal1:addElement(registerVal13)
	registerVal1.VariantsList = registerVal13
	local registerVal14 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal14:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal14:setWidgetType(CoD.MediaManager_PaintshopListItem)
	registerVal14:setVerticalCount(7.000000)
	registerVal14:setSpacing(5.000000)
	registerVal14:setVerticalCounter(CoD.verticalCounter)
	registerVal14:setDataSource("MediaManagerPaintjobList")
	local function __FUNC_5435_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal14, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal14:linkToElementModel(registerVal14, "isBuyMore", true, __FUNC_5435_)
	local function __FUNC_55F2_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			PaintjobSelector_GainFocus(registerVal1, arg1, arg0)
			MediaManagerPaintjobFocusChanged(registerVal1, arg1, arg0)
			MediaManagerClearDisplay(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal14:registerEventHandler("list_item_gain_focus", __FUNC_55F2_)
	local function __FUNC_5784_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "paintjob")
		if registerVal3 then
			SetFocusToElement(registerVal1, "PaintjobList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("menu_loaded", __FUNC_5784_)
	local function __FUNC_58B2_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_58B2_)
	local function __FUNC_5A43_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_5A43_)
	local function __FUNC_5B12_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = IsMenuInState(arg1, "Paintjobs")
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 and registerVal4 then
			MediaManagerClearPaintjob(registerVal1, arg0, arg2, "1", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_5CCC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = IsMenuInState(arg1, "Paintjobs")
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5B12_, __FUNC_5CCC_, false)
	local function __FUNC_5F33_(arg1)
		UpdateDataSource(registerVal1, registerVal14, arg0)
		UpdateButtonPromptState(registerVal1, registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal14:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_5F33_)
	registerVal1:addElement(registerVal14)
	registerVal1.PaintjobList = registerVal14
	local registerVal15 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal15:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal15:setWidgetType(CoD.MediaManager_CustomGameListItem)
	registerVal15:setVerticalCount(7.000000)
	registerVal15:setSpacing(5.000000)
	registerVal15:setVerticalCounter(CoD.verticalCounter)
	registerVal15:setDataSource("MediaManagerCustomGamesList")
	local function __FUNC_601D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal15, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal15:linkToElementModel(registerVal15, "isBuyMore", true, __FUNC_601D_)
	local function __FUNC_61DA_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			MediaManagerCustomGameFocusChanged(registerVal1, arg1, arg0)
			MediaManagerClearDisplay(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal15:registerEventHandler("list_item_gain_focus", __FUNC_61DA_)
	local function __FUNC_6336_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "customgame")
		if registerVal3 then
			SetFocusToElement(registerVal1, "CustomGamesList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("menu_loaded", __FUNC_6336_)
	local function __FUNC_6467_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_6467_)
	local function __FUNC_65F7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_65F7_)
	local function __FUNC_66C6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = IsMenuInState(arg1, "CustomGames")
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 and registerVal4 then
			MediaManagerClearCustomGame(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_6883_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = IsMenuInState(arg1, "CustomGames")
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_66C6_, __FUNC_6883_, false)
	local function __FUNC_6AE9_(arg1)
		UpdateDataSource(registerVal1, registerVal15, arg0)
		UpdateButtonPromptState(registerVal1, registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal15:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_6AE9_)
	registerVal1:addElement(registerVal15)
	registerVal1.CustomGamesList = registerVal15
	local registerVal16 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal16:makeFocusable()
	registerVal16:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal16:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal16:setWidgetType(CoD.MediaManager_TheaterListItem)
	registerVal16:setVerticalCount(7.000000)
	registerVal16:setSpacing(5.000000)
	registerVal16:setVerticalCounter(CoD.verticalCounter)
	registerVal16:setDataSource("MediaManagerTheaterFilesList")
	local function __FUNC_6BD5_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal16, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal16:linkToElementModel(registerVal16, "isBuyMore", true, __FUNC_6BD5_)
	local function __FUNC_6D92_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			MediaManagerTheaterFileFocusChanged(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal16:registerEventHandler("list_item_gain_focus", __FUNC_6D92_)
	local function __FUNC_6EB9_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "screenshot_private")
		if registerVal3 then
			SetFocusToElement(registerVal1, "ScreenshotsList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_loaded", __FUNC_6EB9_)
	local function __FUNC_6FF3_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_6FF3_)
	local function __FUNC_7183_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_7183_)
	local function __FUNC_7252_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = IsMenuInState(arg1, "Screenshots")
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 and registerVal4 then
			MediaManagerDeleteTheaterFile(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_7411_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = IsMenuInState(arg1, "Screenshots")
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_7252_, __FUNC_7411_, false)
	local function __FUNC_7679_(arg1)
		UpdateDataSource(registerVal1, registerVal16, arg0)
	end

	registerVal16:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_7679_)
	local function __FUNC_76D6_(arg1)
		UpdateDataSource(registerVal1, registerVal16, arg0)
		UpdateButtonPromptState(registerVal1, registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal16:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_76D6_)
	registerVal1:addElement(registerVal16)
	registerVal1.ScreenshotsList = registerVal16
	local registerVal17 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal17:makeFocusable()
	registerVal17:setLeftRight(true, false, 93.210000, 373.210000)
	registerVal17:setTopBottom(true, false, 145.000000, 630.000000)
	registerVal17:setWidgetType(CoD.MediaManager_TheaterListItem)
	registerVal17:setVerticalCount(7.000000)
	registerVal17:setSpacing(5.000000)
	registerVal17:setVerticalCounter(CoD.verticalCounter)
	registerVal17:setDataSource("MediaManagerTheaterFilesList")
	local function __FUNC_77C1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBuyMore"
		CoD.Menu.UpdateButtonShownState(registerVal17, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal17:linkToElementModel(registerVal17, "isBuyMore", true, __FUNC_77C1_)
	local function __FUNC_797E_(arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
		if not registerVal3 then
			MediaManagerTheaterFileFocusChanged(registerVal1, arg1, arg0)
		else
			registerVal3 = IsSelfModelValueEqualTo(arg1, arg0, "isBuyMore", true)
			if registerVal3 then
				MediaManagerBuyMoreSlotOnFocus(registerVal1, arg1, arg0)
			end
		end
		return nil
	end

	registerVal17:registerEventHandler("list_item_gain_focus", __FUNC_797E_)
	local function __FUNC_7AA5_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "clip_private")
		if registerVal3 then
			SetFocusToElement(registerVal1, "ClipsList", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("menu_loaded", __FUNC_7AA5_)
	local function __FUNC_7BD3_(arg1, arg2)
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

	registerVal17:registerEventHandler("gain_focus", __FUNC_7BD3_)
	local function __FUNC_7D63_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_7D63_)
	local function __FUNC_7E32_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal4 = ListHasElements(arg0)
		if not registerVal4 and registerVal4 then
			MediaManagerDeleteTheaterFile(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal4 = ListHasElements(arg0)
			if registerVal4 and registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_7FAD_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
		registerVal3 = ListHasElements(arg0)
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isBuyMore", true)
			registerVal3 = ListHasElements(arg0)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_INGAMESTORE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal17, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_7E32_, __FUNC_7FAD_, false)
	local function __FUNC_81D1_(arg1)
		UpdateDataSource(registerVal1, registerVal17, arg0)
	end

	registerVal17:subscribeToGlobalModel(arg0, "MediaManager", "dirty", __FUNC_81D1_)
	local function __FUNC_822E_(arg1)
		UpdateDataSource(registerVal1, registerVal17, arg0)
		UpdateButtonPromptState(registerVal1, registerVal17, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal17:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_822E_)
	registerVal1:addElement(registerVal17)
	registerVal1.ClipsList = registerVal17
	local registerVal18 = CoD.MediaManager_EmblemItemLarge.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 411.000000, 761.000000)
	registerVal18:setTopBottom(true, false, 145.000000, 359.000000)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Hidden"
	local function __FUNC_8319_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal22.condition = __FUNC_8319_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal22 = Engine.GetGlobalModel()
	registerVal21 = Engine.GetModel(registerVal22, "MediaManager.isBuyMoreSlot")
	local function __FUNC_837F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:subscribeToModel(registerVal21, __FUNC_837F_)
	registerVal22 = Engine.GetGlobalModel()
	registerVal21 = Engine.GetModel(registerVal22, "MediaManager.slotsUsed")
	local function __FUNC_84AC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:subscribeToModel(registerVal21, __FUNC_84AC_)
	registerVal1:addElement(registerVal18)
	registerVal1.MediaManagerEmblemItemLarge = registerVal18
	local registerVal19 = CoD.MediaManager_VariantItemLarge.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal19:setTopBottom(true, false, 145.000000, 495.000000)
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Hidden"
	local function __FUNC_85D8_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal23.condition = __FUNC_85D8_
	registerVal22 = {registerVal23}
	registerVal19:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "MediaManager.isBuyMoreSlot")
	local function __FUNC_863F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_863F_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "MediaManager.slotsUsed")
	local function __FUNC_876C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_876C_)
	registerVal1:addElement(registerVal19)
	registerVal1.MediaManagerVariantItemLarge0 = registerVal19
	local registerVal20 = CoD.MediaManager_PaintshopItemLarge.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal20:setTopBottom(true, false, 145.000000, 495.000000)
	registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Hidden"
	local function __FUNC_8898_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal24.condition = __FUNC_8898_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "MediaManager.isBuyMoreSlot")
	local function __FUNC_88FF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_88FF_)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "MediaManager.slotsUsed")
	local function __FUNC_8A2C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_8A2C_)
	registerVal1:addElement(registerVal20)
	registerVal1.MediaManagerPaintshopItemLarge0 = registerVal20
	registerVal21 = CoD.MediaManager_CustomGameItemLarge.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal21:setTopBottom(true, false, 149.000000, 409.000000)
	registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Hidden"
	local function __FUNC_8B58_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal25.condition = __FUNC_8B58_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "MediaManager.isBuyMoreSlot")
	local function __FUNC_8BBF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_8BBF_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "MediaManager.slotsUsed")
	local function __FUNC_8CEC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_8CEC_)
	registerVal1:addElement(registerVal21)
	registerVal1.MediaManagerCustomGameItemLarge0 = registerVal21
	registerVal22 = CoD.MediaManager_TheaterFileItemLarge.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal22:setTopBottom(true, false, 145.000000, 405.000000)
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Hidden"
	local function __FUNC_8E18_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal26.condition = __FUNC_8E18_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	registerVal26 = Engine.GetGlobalModel()
	registerVal25 = Engine.GetModel(registerVal26, "MediaManager.isBuyMoreSlot")
	local function __FUNC_8E7F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:subscribeToModel(registerVal25, __FUNC_8E7F_)
	registerVal26 = Engine.GetGlobalModel()
	registerVal25 = Engine.GetModel(registerVal26, "MediaManager.slotsUsed")
	local function __FUNC_8FAC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:subscribeToModel(registerVal25, __FUNC_8FAC_)
	registerVal1:addElement(registerVal22)
	registerVal1.MediaManagerTheaterFileItemScreenshot = registerVal22
	registerVal23 = CoD.MediaManager_TheaterFileItemLarge.new(registerVal1, arg0)
	registerVal23:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal23:setTopBottom(true, false, 145.000000, 405.000000)
	registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Hidden"
	local function __FUNC_90D8_(arg1, arg2, arg3)
		return MediaManagerShouldHideItemPreview(arg0)
	end

	registerVal27.condition = __FUNC_90D8_
	registerVal26 = {registerVal27}
	registerVal23:mergeStateConditions(registerVal26)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "MediaManager.isBuyMoreSlot")
	local function __FUNC_913F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_913F_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "MediaManager.slotsUsed")
	local function __FUNC_926C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_926C_)
	registerVal1:addElement(registerVal23)
	registerVal1.MediaManagerTheaterFileItemClip = registerVal23
	registerVal24 = CoD.MediaManager_SelectedItemInfo.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, false, 409.000000, 759.000000)
	registerVal24:setTopBottom(true, false, 543.030000, 593.030000)
	registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "Visible"
	local function __FUNC_9398_(arg1, arg2, arg3)
		local registerVal3 = MediaManagerIsBuyMoreSlot()
		if not registerVal3 then
			registerVal3 = MediaManagerSlotsUsed(arg0)
		else
		end
		return true
	end

	registerVal28.condition = __FUNC_9398_
	registerVal27 = {registerVal28}
	registerVal24:mergeStateConditions(registerVal27)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "MediaManager.isBuyMoreSlot")
	local function __FUNC_9432_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		registerVal1:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:subscribeToModel(registerVal27, __FUNC_9432_)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "MediaManager.slotsUsed")
	local function __FUNC_9560_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:subscribeToModel(registerVal27, __FUNC_9560_)
	registerVal1:addElement(registerVal24)
	registerVal1.MediaManagerSelectedItemInfo0 = registerVal24
	registerVal25 = CoD.MediaManager_BuyExtraSlots.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 410.000000, 760.000000)
	registerVal25:setTopBottom(true, false, 145.000000, 330.000000)
	registerVal1:addElement(registerVal25)
	registerVal1.MediaManagerBuyExtraSlots = registerVal25
	registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 795.000000, 1165.000000)
	registerVal26:setTopBottom(true, false, 148.130000, 167.130000)
	registerVal26:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal26)
	registerVal1.QuotaListHeader = registerVal26
	registerVal27 = CoD.FileshareCategoryQuotas.new(registerVal1, arg0)
	registerVal27:setLeftRight(true, false, 795.000000, 1165.000000)
	registerVal27:setTopBottom(true, false, 166.000000, 356.000000)
	registerVal27.List0:setDataSource("MediaManagerQuotaList")
	registerVal1:addElement(registerVal27)
	registerVal1.FileshareCategoryQuotas0 = registerVal27
	registerVal28 = LUI.UITightText.new()
	registerVal28:setLeftRight(true, false, 797.480000, 1165.000000)
	registerVal28:setTopBottom(true, false, 149.000000, 166.000000)
	registerVal28:setText(Engine.Localize("MENU_FILESHARE_QUOTA_HEADER_CAPS"))
	registerVal28:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal28)
	registerVal1.QuotaListHeaderLabel = registerVal28
	local registerVal29 = CoD.MediaManager_NoContent.new(registerVal1, arg0)
	registerVal29:setLeftRight(true, false, 108.210000, 358.210000)
	registerVal29:setTopBottom(true, false, 320.000000, 380.000000)
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "Visible"
	local function __FUNC_968C_(arg1, arg2, arg3)
		local registerVal3 = MediaManagerSlotsUsed(arg0)
		return (not registerVal3)
	end

	registerVal33.condition = __FUNC_968C_
	registerVal32 = {registerVal33}
	registerVal29:mergeStateConditions(registerVal32)
	registerVal33 = Engine.GetGlobalModel()
	registerVal32 = Engine.GetModel(registerVal33, "MediaManager.slotsUsed")
	local function __FUNC_96EB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		registerVal1:updateElementState(registerVal29, registerVal4)
	end

	registerVal29:subscribeToModel(registerVal32, __FUNC_96EB_)
	registerVal1:addElement(registerVal29)
	registerVal1.MediaManagerNoContent = registerVal29
	local registerVal30 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal30:setLeftRight(true, false, 0.000000, 5000.000000)
	registerVal30:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal30.Tabs.grid:setHorizontalCount(8.000000)
	registerVal30.Tabs.grid:setDataSource("MediaManagerTabs")
	local function __FUNC_9814_(arg1, arg2)
		MediaManagerTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal30:registerEventHandler("list_active_changed", __FUNC_9814_)
	registerVal1:addElement(registerVal30)
	registerVal1.tabList = registerVal30
	local function __FUNC_987C_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:linkToElementModel(registerVal13, nil, false, __FUNC_987C_)
	local function __FUNC_98CE_(arg1)
		registerVal20:setModel(arg1, arg0)
	end

	registerVal20:linkToElementModel(registerVal14, nil, false, __FUNC_98CE_)
	local function __FUNC_991E_(arg1)
		registerVal21:setModel(arg1, arg0)
	end

	registerVal21:linkToElementModel(registerVal15, nil, false, __FUNC_991E_)
	local function __FUNC_996E_(arg1)
		registerVal22:setModel(arg1, arg0)
	end

	registerVal22:linkToElementModel(registerVal16, nil, false, __FUNC_996E_)
	local function __FUNC_99BE_(arg1)
		registerVal23:setModel(arg1, arg0)
	end

	registerVal23:linkToElementModel(registerVal17, nil, false, __FUNC_99BE_)
	local registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal12.navigation = registerVal31
	registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal13.navigation = registerVal31
	registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal14.navigation = registerVal31
	registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal15.navigation = registerVal31
	registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal16.navigation = registerVal31
	registerVal31 = {}
	registerVal31.right = registerVal27
	registerVal17.navigation = registerVal31
	registerVal31 = {}
	registerVal32 = {}
	registerVal32 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal31.left = registerVal32
	registerVal27.navigation = registerVal31
	registerVal31 = {}
	registerVal32 = {}
	local function __FUNC_9A0E_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_9A0E_
	registerVal31.DefaultState = registerVal32
	registerVal32 = {}
	local function __FUNC_9FCE_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_9FCE_
	registerVal31.Paintjobs = registerVal32
	registerVal32 = {}
	local function __FUNC_A593_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_A593_
	registerVal31.Variants = registerVal32
	registerVal32 = {}
	local function __FUNC_AB57_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_AB57_
	registerVal31.Emblems = registerVal32
	registerVal32 = {}
	local function __FUNC_B11B_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_B11B_
	registerVal31.CustomGames = registerVal32
	registerVal32 = {}
	local function __FUNC_B6DF_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_B6DF_
	registerVal31.Screenshots = registerVal32
	registerVal32 = {}
	local function __FUNC_BCA3_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal12:completeAnimation()
		registerVal1.EmblemsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.VariantsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.PaintjobList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.CustomGamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.ScreenshotsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.ClipsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.MediaManagerEmblemItemLarge:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.MediaManagerVariantItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.MediaManagerPaintshopItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.MediaManagerCustomGameItemLarge0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemScreenshot:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.MediaManagerTheaterFileItemClip:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.MediaManagerSelectedItemInfo0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
	end

	registerVal32.DefaultClip = __FUNC_BCA3_
	registerVal31.Clips = registerVal32
	registerVal1.clipsPerState = registerVal31
	registerVal33 = {}
	local registerVal34 = {}
	registerVal34.stateName = "Paintjobs"
	local function __FUNC_C267_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "paintjob")
	end

	registerVal34.condition = __FUNC_C267_
	local registerVal35 = {}
	registerVal35.stateName = "Variants"
	local function __FUNC_C308_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "variant")
	end

	registerVal35.condition = __FUNC_C308_
	local registerVal36 = {}
	registerVal36.stateName = "Emblems"
	local function __FUNC_C3AB_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "emblem")
	end

	registerVal36.condition = __FUNC_C3AB_
	local registerVal37 = {}
	registerVal37.stateName = "CustomGames"
	local function __FUNC_C44A_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "customgame")
	end

	registerVal37.condition = __FUNC_C44A_
	local registerVal38 = {}
	registerVal38.stateName = "Screenshots"
	local function __FUNC_C4EE_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "screenshot_private")
	end

	registerVal38.condition = __FUNC_C4EE_
	local registerVal39 = {}
	registerVal39.stateName = "Clips"
	local function __FUNC_C59A_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "fileshareRoot.currentCategory", "clip_private")
	end

	registerVal39.condition = __FUNC_C59A_
	registerVal33 = {registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39}
	registerVal1:mergeStateConditions(registerVal33)
	registerVal34 = Engine.GetGlobalModel()
	registerVal33 = Engine.GetModel(registerVal34, "fileshareRoot.currentCategory")
	local function __FUNC_C640_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.currentCategory"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal33, __FUNC_C640_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_C773_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetIsMediaManager(registerVal1, arg1, arg0, "true", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_C773_)
	local function __FUNC_C860_(arg0, arg1, arg2, arg3)
		MediaManagerClose(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		MediaManagerClearDisplay(registerVal1, arg0, arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		SetIsMediaManager(registerVal1, arg0, arg2, "false", arg1)
		MediaManagerReloadWeaponModelIfNeeded(arg2)
		return true
	end

	local function __FUNC_CA01_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_C860_, __FUNC_CA01_, false)
	local function __FUNC_CAFD_(arg1, arg2)
		local registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "paintjob")
		if registerVal2 then
			SetLoseFocusToElement(registerVal1, "EmblemsList", arg0)
			SetLoseFocusToElement(registerVal1, "VariantsList", arg0)
			SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
			SetLoseFocusToElement(registerVal1, "ScreenshotsList", arg0)
			SetLoseFocusToElement(registerVal1, "ClipsList", arg0)
			MakeElementNotFocusable(registerVal1, "EmblemsList", arg0)
			MakeElementNotFocusable(registerVal1, "VariantsList", arg0)
			MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
			MakeElementNotFocusable(registerVal1, "ScreenshotsList", arg0)
			MakeElementNotFocusable(registerVal1, "ClipsList", arg0)
			MakeElementFocusable(registerVal1, "PaintjobList", arg0)
			SetFocusToElement(registerVal1, "PaintjobList", arg0)
		else
			registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "variant")
			if registerVal2 then
				SetLoseFocusToElement(registerVal1, "EmblemsList", arg0)
				SetLoseFocusToElement(registerVal1, "PaintjobList", arg0)
				SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
				SetLoseFocusToElement(registerVal1, "ScreenshotsList", arg0)
				SetLoseFocusToElement(registerVal1, "ClipsList", arg0)
				MakeElementNotFocusable(registerVal1, "EmblemsList", arg0)
				MakeElementNotFocusable(registerVal1, "PaintjobList", arg0)
				MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
				MakeElementNotFocusable(registerVal1, "ScreenshotsList", arg0)
				MakeElementNotFocusable(registerVal1, "ClipsList", arg0)
				MakeElementFocusable(registerVal1, "VariantsList", arg0)
				SetFocusToElement(registerVal1, "VariantsList", arg0)
			else
				registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "emblem")
				if registerVal2 then
					SetLoseFocusToElement(registerVal1, "VariantsList", arg0)
					SetLoseFocusToElement(registerVal1, "PaintjobList", arg0)
					SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
					SetLoseFocusToElement(registerVal1, "ScreenshotsList", arg0)
					SetLoseFocusToElement(registerVal1, "ClipsList", arg0)
					MakeElementNotFocusable(registerVal1, "VariantsList", arg0)
					MakeElementNotFocusable(registerVal1, "PaintjobList", arg0)
					MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
					MakeElementNotFocusable(registerVal1, "ScreenshotsList", arg0)
					MakeElementNotFocusable(registerVal1, "ClipsList", arg0)
					MakeElementFocusable(registerVal1, "EmblemsList", arg0)
					SetFocusToElement(registerVal1, "EmblemsList", arg0)
				else
					registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "customgame")
					if registerVal2 then
						SetLoseFocusToElement(registerVal1, "EmblemsList", arg0)
						SetLoseFocusToElement(registerVal1, "VariantsList", arg0)
						SetLoseFocusToElement(registerVal1, "PaintjobList", arg0)
						SetLoseFocusToElement(registerVal1, "ScreenshotsList", arg0)
						SetLoseFocusToElement(registerVal1, "ClipsList", arg0)
						MakeElementNotFocusable(registerVal1, "EmblemsList", arg0)
						MakeElementNotFocusable(registerVal1, "VariantsList", arg0)
						MakeElementNotFocusable(registerVal1, "PaintjobList", arg0)
						MakeElementNotFocusable(registerVal1, "ScreenshotsList", arg0)
						MakeElementNotFocusable(registerVal1, "ClipsList", arg0)
						MakeElementFocusable(registerVal1, "CustomGamesList", arg0)
						SetFocusToElement(registerVal1, "CustomGamesList", arg0)
					else
						registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "screenshot_private")
						if registerVal2 then
							SetLoseFocusToElement(registerVal1, "EmblemsList", arg0)
							SetLoseFocusToElement(registerVal1, "VariantsList", arg0)
							SetLoseFocusToElement(registerVal1, "PaintjobList", arg0)
							SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
							SetLoseFocusToElement(registerVal1, "ClipsList", arg0)
							MakeElementNotFocusable(registerVal1, "EmblemsList", arg0)
							MakeElementNotFocusable(registerVal1, "VariantsList", arg0)
							MakeElementNotFocusable(registerVal1, "PaintjobList", arg0)
							MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
							MakeElementNotFocusable(registerVal1, "ClipsList", arg0)
							MakeElementFocusable(registerVal1, "ScreenshotsList", arg0)
							SetFocusToElement(registerVal1, "ScreenshotsList", arg0)
						else
							registerVal2 = IsGlobalModelValueEqualTo(arg1, arg0, "fileshareRoot.currentCategory", "clip_private")
							if registerVal2 then
								SetLoseFocusToElement(registerVal1, "EmblemsList", arg0)
								SetLoseFocusToElement(registerVal1, "VariantsList", arg0)
								SetLoseFocusToElement(registerVal1, "PaintjobList", arg0)
								SetLoseFocusToElement(registerVal1, "CustomGamesList", arg0)
								SetLoseFocusToElement(registerVal1, "ScreenshotsList", arg0)
								MakeElementNotFocusable(registerVal1, "EmblemsList", arg0)
								MakeElementNotFocusable(registerVal1, "VariantsList", arg0)
								MakeElementNotFocusable(registerVal1, "PaintjobList", arg0)
								MakeElementNotFocusable(registerVal1, "CustomGamesList", arg0)
								MakeElementNotFocusable(registerVal1, "ScreenshotsList", arg0)
								MakeElementFocusable(registerVal1, "ClipsList", arg0)
								SetFocusToElement(registerVal1, "ClipsList", arg0)
							end
						end
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_CAFD_)
	local function __FUNC_D35E_(arg0)
		UpdateMenuState(registerVal1, event)
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_D35E_)
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal12.id = "EmblemsList"
	registerVal13.id = "VariantsList"
	registerVal14.id = "PaintjobList"
	registerVal15.id = "CustomGamesList"
	registerVal16.id = "ScreenshotsList"
	registerVal17.id = "ClipsList"
	registerVal27.id = "FileshareCategoryQuotas0"
	registerVal33 = {}
	registerVal33.name = "menu_loaded"
	registerVal33.controller = arg0
	registerVal1:processEvent(registerVal33)
	registerVal33 = {}
	registerVal33.name = "update_state"
	registerVal33.menu = registerVal1
	registerVal1:processEvent(registerVal33)
	local function __FUNC_D3C4_(arg1)
		arg1.TitleDotsWidget0:close()
		arg1.ElemsSideList:close()
		arg1.MenuFrame:close()
		arg1.EmblemsList:close()
		arg1.VariantsList:close()
		arg1.PaintjobList:close()
		arg1.CustomGamesList:close()
		arg1.ScreenshotsList:close()
		arg1.ClipsList:close()
		arg1.MediaManagerEmblemItemLarge:close()
		arg1.MediaManagerVariantItemLarge0:close()
		arg1.MediaManagerPaintshopItemLarge0:close()
		arg1.MediaManagerCustomGameItemLarge0:close()
		arg1.MediaManagerTheaterFileItemScreenshot:close()
		arg1.MediaManagerTheaterFileItemClip:close()
		arg1.MediaManagerSelectedItemInfo0:close()
		arg1.MediaManagerBuyExtraSlots:close()
		arg1.FileshareCategoryQuotas0:close()
		arg1.MediaManagerNoContent:close()
		arg1.tabList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MediaManager.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_D3C4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MediaManager = __FUNC_A5C_
