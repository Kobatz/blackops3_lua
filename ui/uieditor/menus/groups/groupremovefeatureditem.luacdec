-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.FileShare.FileshareSelectorItemLarge_NeverNormalSize")
require("ui.uieditor.widgets.FileShare.FileshareSpinner")
local function __FUNC_286_(arg0, arg1)
	local registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
	CoD.perController[arg1].previousCategory = registerVal3
	FileshareCategorySelectorSetToCategory(arg1, "featured", true)
end

local function __FUNC_3BA_(arg0, arg1)
	local function __FUNC_450_(arg0)
		if CoD.perController[arg1].previousCategory then
			local registerVal1 = CoD.FileshareUtility.GetCurrentCommunityDataType()
			CoD.perController[arg1].previousCategory = nil
			FileshareCategorySelectorCategoryChanged(arg1, CoD.perController[arg1].previousCategory, registerVal1, true)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_450_)
end

local function __FUNC_5E8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupRemoveFeaturedItem")
	if __FUNC_286_ then
		__FUNC_286_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupRemoveFeaturedItem.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MENU_TOO_MANY_FEATURED_ITEMS_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 16.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 20.500000, 1259.500000)
	registerVal4:setTopBottom(true, false, 284.500000, 435.500000)
	registerVal4:setScale(0.930000)
	registerVal4:setWidgetType(CoD.FileshareSelectorItemLarge_NeverNormalSize)
	registerVal4:setHorizontalCount(5.000000)
	registerVal4:setSpacing(16.000000)
	registerVal4:setDataSource("FilesharePublishedList")
	local function __FUNC_18FA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "featureIsProcessing"
		CoD.Menu.UpdateButtonShownState(registerVal4, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "featureIsProcessing", true, __FUNC_18FA_)
	local function __FUNC_1AC0_(arg1, arg2)
		FileshareSetSelectedItem(registerVal1, arg1, arg0, "")
		MediaManagerClearDisplay(registerVal1, arg1, arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_1AC0_)
	local function __FUNC_1B6E_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_lose_focus", __FUNC_1B6E_)
	local function __FUNC_1BCC_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1BCC_)
	local function __FUNC_1D5F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1D5F_)
	local function __FUNC_1E2E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "featureIsProcessing")
		if not registerVal4 then
			SwitchGroupShowcaseContentFeatured(registerVal1, arg0, arg2, arg1)
			Close(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_1F1A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "featureIsProcessing")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E2E_, __FUNC_1F1A_, true)
	local function __FUNC_2075_(arg1)
		UpdateDataSource(registerVal1, registerVal4, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareRoot", "dirty", __FUNC_2075_)
	local function __FUNC_20D2_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			UpdateDataSource(registerVal1, registerVal4, arg0)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_20D2_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Processing"
	local function __FUNC_215C_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "featureIsProcessing")
	end

	registerVal8.condition = __FUNC_215C_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_21DB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "featureIsProcessing"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "featureIsProcessing", true, __FUNC_21DB_)
	local function __FUNC_2301_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isValid", true, __FUNC_2301_)
	registerVal1:addElement(registerVal4)
	registerVal1.itemList = registerVal4
	local registerVal5 = CoD.FileshareSpinner.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 466.000000, 530.000000)
	registerVal5:setTopBottom(true, false, 328.000000, 392.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FileshareSpinner = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 530.000000, 785.000000)
	registerVal6:setTopBottom(true, false, 343.000000, 377.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MENU_LOADING_FEATURED_CONTENT"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.LoadingText = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 73.260000, 235.260000)
	registerVal7:setTopBottom(true, false, 230.790000, 270.790000)
	registerVal7:setText(Engine.Localize("MENU_TOO_MANY_FEATURED_ITEMS_DESC"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.Description = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 140.000000, 1140.000000)
	registerVal8:setTopBottom(true, false, 335.000000, 369.000000)
	registerVal8:setRGB(1.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("GROUPS_FEATURED_ITEM_LIST_EMPTY"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.EmptyListText = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_241D_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.itemList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.FileshareSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.LoadingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Description:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.EmptyListText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_241D_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_268C_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.itemList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.FileshareSpinner:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.LoadingText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Description:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.EmptyListText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_268C_
	registerVal9.Loading = registerVal10
	registerVal10 = {}
	local function __FUNC_28FC_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.itemList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.FileshareSpinner:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.LoadingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.Description:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.EmptyListText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_28FC_
	registerVal9.EmptyList = registerVal10
	registerVal1.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Loading"
	local function __FUNC_2B6C_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2B6C_
	local registerVal13 = {}
	registerVal13.stateName = "EmptyList"
	local function __FUNC_2BC6_(arg1, arg2, arg3)
		local registerVal3 = FileshareHasAtLeastThisManyItems(arg2, arg0, 5.000000)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_2BC6_
	registerVal11 = {registerVal12, registerVal13}
	registerVal1:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "fileshareRoot.ready")
	local function __FUNC_2C3B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal11, __FUNC_2C3B_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "fileshareRoot.itemsCount")
	local function __FUNC_2D61_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal11, __FUNC_2D61_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "FileshareRoot.PublishMode")
	local function __FUNC_2E8E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal11, __FUNC_2E8E_)
	local function __FUNC_2FBB_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_300C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2FBB_, __FUNC_300C_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal3.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "itemList"
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.itemList:processEvent(registerVal11)
	end
	local function __FUNC_3109_(arg1)
		arg1.background:close()
		arg1.itemList:close()
		arg1.FileshareSpinner:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupRemoveFeaturedItem.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3109_)
	if __FUNC_3BA_ then
		__FUNC_3BA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupRemoveFeaturedItem = __FUNC_5E8_
