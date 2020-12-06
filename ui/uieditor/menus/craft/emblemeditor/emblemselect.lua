-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.menus.Craft.EmblemEditor.EmblemSelectOptions")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemItem")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemSlotsFull")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local function __FUNC_4B6_(arg0)
	local registerVal1 = CoD.CraftUtility.GetDDLRoot(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal2 = registerVal1.default_emblem_index:get()
	return registerVal2
end

local function __FUNC_5E2_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "Emblem.UpdateDataSource")
	local function __FUNC_783_()
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].selectedEmblemModel, "emblemIndex"))
		if CoD.perController[arg1].selectedEmblemModel and arg0.emblemList ~= nil then
			arg0.emblemList:updateDataSource(true)
			local registerVal4 = {}
			registerVal4.emblemIndex = registerVal1
			arg0.emblemList:findItem(registerVal4, nil, true, nil)
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_783_)
	local registerVal2 = IsLive()
	if not registerVal2 then
		local function __FUNC_940_(arg0)
			local registerVal1 = __FUNC_4B6_(arg1)
			if registerVal1 ~= CoD.CraftUtility.Emblems.INVALID_DEFAULT_EMBLEMINDEX then
				local registerVal4 = {}
				registerVal4.emblemIndex = registerVal1
				local registerVal2 = arg0.emblemList:findItem(registerVal4)
				if arg0.emblemList ~= nil and registerVal2 then
					local registerVal5 = {}
					registerVal5.name = "gain_focus"
					registerVal5.controller = arg1
					registerVal5.selectIndex = registerVal2.gridInfoTable.zeroBasedIndex
					arg0.emblemList:processEvent(registerVal5)
				end
				return true
			end
			return false
		end

		arg0.restoreState = __FUNC_940_
	end
	CoD.emblem.ColorList = nil
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_B55_(arg0, arg1)
	local function __FUNC_BF0_(arg1, arg2)
		if not arg0.occludedBy then
			arg1:updateDataSource()
		end
	end

	arg0.emblemList:registerEventHandler("input_source_changed", __FUNC_BF0_)
end

local function __FUNC_C6A_(arg0, arg1)
	arg0.emblemList.navigation.right = nil
	if CoD.isPC then
		__FUNC_B55_(arg0, arg1)
	end
end

local function __FUNC_D2B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemSelect")
	if __FUNC_5E2_ then
		__FUNC_5E2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -638.000000, 642.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal4)
	registerVal1.emblemSelectBg = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	local registerVal6 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal6:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleDotsWidget0 = registerVal6
	local registerVal7 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, -71.250000, 506.750000)
	registerVal7:setTopBottom(true, false, -5.500000, 140.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.cac3dTitleIntermediary0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 64.000000, 658.000000)
	registerVal9:setTopBottom(true, false, 76.000000, 684.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.150000)
	registerVal1:addElement(registerVal9)
	registerVal1.GridPanel = registerVal9
	local registerVal10 = CoD.EmblemDrawWidgetNew.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 688.000000, 1188.000000)
	registerVal10:setTopBottom(true, false, 137.000000, 451.000000)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Unfocusable"
	local function __FUNC_2C24_(arg1, arg2, arg3)
		return Emblem_IsOccupied(arg2, arg0)
	end

	registerVal14.condition = __FUNC_2C24_
	local registerVal15 = {}
	registerVal15.stateName = "EmptySlot"
	local function __FUNC_2C7F_(arg1, arg2, arg3)
		local registerVal3 = Emblem_IsOccupied(arg2, arg0)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_2C7F_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_2CDB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBMClassified", true, __FUNC_2CDB_)
	registerVal1:addElement(registerVal10)
	registerVal1.emblemDrawWidget = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 78.000000, 626.000000)
	registerVal11:setTopBottom(true, false, 137.000000, 599.000000)
	registerVal11:setWidgetType(CoD.EmblemItem)
	registerVal11:setHorizontalCount(3.000000)
	registerVal11:setVerticalCount(4.000000)
	registerVal11:setSpacing(10.000000)
	registerVal11:setDataSource("EmblemsList")
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2DFC_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_2DFC_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNav")
	local function __FUNC_2FCB_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_2FCB_)
	local function __FUNC_318F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isNonClickableEmblem"
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal11:linkToElementModel(registerVal11, "isNonClickableEmblem", true, __FUNC_318F_)
	local function __FUNC_341C_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal11, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal11:linkToElementModel(registerVal11, "isBMClassified", true, __FUNC_341C_)
	local function __FUNC_35E2_(arg1, arg2)
		local registerVal3 = IsElementInState(arg1, "New")
		if registerVal3 then
			EmblemSelect_GainFocus(registerVal1, arg1, arg0)
			SetHintText(registerVal1, arg1, arg0)
			UpdateElementState(registerVal1, "emblemDrawWidget", arg0)
			Emblems_SetEmblemOld(registerVal1, arg1, arg0)
			UpdateSelfElementState(registerVal1, arg1, arg0)
		else
			EmblemSelect_GainFocus(registerVal1, arg1, arg0)
			SetHintText(registerVal1, arg1, arg0)
			UpdateElementState(registerVal1, "emblemDrawWidget", arg0)
		end
		return nil
	end

	registerVal11:registerEventHandler("list_item_gain_focus", __FUNC_35E2_)
	local function __FUNC_37A0_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal11:registerEventHandler("gain_focus", __FUNC_37A0_)
	local function __FUNC_39FA_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_39FA_)
	local function __FUNC_3ACA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLive()
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal4 = IsElementInState(arg0, "BMClassified")
		registerVal4 = Emblems_CanEnterEmblemEditor(arg0, arg2)
		registerVal4 = CraftItemIsReadOnly(arg0, arg2)
		registerVal4 = SelectingGroupEmblem(arg2)
		if registerVal4 and registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			OpenEmblemEditor(arg0, arg1, arg2, arg3, "EmblemSelect")
			return true
		else
			registerVal4 = CraftItemIsReadOnly(arg0, arg2)
			registerVal4 = SelectingGroupEmblem(arg2)
			if registerVal4 and not registerVal4 then
				FileshareShowReadonlyToast(registerVal1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_3D29_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsLive()
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal3 = IsElementInState(arg0, "BMClassified")
		registerVal3 = Emblems_CanEnterEmblemEditor(arg0, arg2)
		registerVal3 = CraftItemIsReadOnly(arg0, arg2)
		registerVal3 = SelectingGroupEmblem(arg2)
		if registerVal3 and registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			return true
		else
			registerVal3 = CraftItemIsReadOnly(arg0, arg2)
			registerVal3 = SelectingGroupEmblem(arg2)
			if registerVal3 and not registerVal3 then
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3ACA_, __FUNC_3D29_, true)
	local function __FUNC_3FD7_(arg0, arg1, arg2, arg3)
		local registerVal4 = Emblem_IsOccupied(arg0, arg2)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal4 = IsPreBuiltEmblemTab(arg2)
		registerVal4 = SelectingGroupEmblem(arg2)
		if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			OpenPopup(registerVal1, "EmblemSelectOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_4158_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		local registerVal3 = Emblem_IsOccupied(arg0, arg2)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal3 = IsPreBuiltEmblemTab(arg2)
		registerVal3 = SelectingGroupEmblem(arg2)
		if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_3FD7_, __FUNC_4158_, true)
	local function __FUNC_4353_(arg0, arg1, arg2, arg3)
		local registerVal4 = Emblem_IsOccupied(arg0, arg2)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if registerVal4 and registerVal4 and not registerVal4 then
			EmblemSelect_SetAsEmblem(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "toggle")
			UpdateSelfState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_4507_(arg0, arg1, arg2)
		local registerVal3 = Emblem_IsOccupied(arg0, arg2)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isNonClickableEmblem", 0.000000)
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_4353_, __FUNC_4507_, false)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "EmptySlot"
	local function __FUNC_46EB_(arg1, arg2, arg3)
		local registerVal3 = Emblem_IsOccupied(arg2, arg0)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_46EB_
	local registerVal16 = {}
	registerVal16.stateName = "Equipped"
	local function __FUNC_4747_(arg1, arg2, arg3)
		local registerVal3 = Emblems_IsDefaultEmblemEquipped(arg1, arg2, arg0)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_4747_
	local registerVal17 = {}
	registerVal17.stateName = "NonClickableEmptySlot"
	local function __FUNC_47D5_(arg1, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg0, "isNonClickableEmblem", 1.000000)
	end

	registerVal17.condition = __FUNC_47D5_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_4860_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "isBMClassified", true, __FUNC_4860_)
	local function __FUNC_4984_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "emblemIndex"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "emblemIndex", true, __FUNC_4984_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_4AA5_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_4AA5_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNav")
	local function __FUNC_4BD4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_4BD4_)
	local function __FUNC_4CFC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isNonClickableEmblem"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "isNonClickableEmblem", true, __FUNC_4CFC_)
	registerVal1:addElement(registerVal11)
	registerVal1.emblemList = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame = registerVal12
	registerVal13 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal13:setTopBottom(true, false, 86.000000, 127.000000)
	registerVal13.Tabs.grid:setHorizontalCount(5.000000)
	registerVal13.Tabs.grid:setDataSource("EmblemCategoryTabs")
	local function __FUNC_4E26_(arg1, arg2)
		EmblemSelect_TabChanged(registerVal1, arg1, arg0)
		PlaySoundSetSound(registerVal1, "tab_changed")
		return nil
	end

	registerVal13:registerEventHandler("list_active_changed", __FUNC_4E26_)
	registerVal1:addElement(registerVal13)
	registerVal1.tabList = registerVal13
	registerVal14 = CoD.EmblemSlotsFull.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 688.000000, 810.000000)
	registerVal14:setTopBottom(true, false, 586.000000, 633.000000)
	local function __FUNC_4ECD_(arg1)
		UpdateSelfElementState(registerVal1, registerVal14, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "PerController", "Emblem.UpdateDataSource", __FUNC_4ECD_)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "SlotsFull"
	local function __FUNC_4F30_(arg1, arg2, arg3)
		local registerVal3 = CraftSlotsFullByStorageType(arg0, Enum.StorageFileType.STORAGE_EMBLEMS)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_4F30_
	local registerVal19 = {}
	registerVal19.stateName = "Hidden"
	local function __FUNC_500D_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_500D_
	registerVal17 = {registerVal18, registerVal19}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_5058_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_5058_)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "lobbyRoot.lobbyNav")
	local function __FUNC_5188_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_5188_)
	registerVal1:addElement(registerVal14)
	registerVal1.usedSlotsTracker = registerVal14
	registerVal15 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal15:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_52B0_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_52B0_)
	local function __FUNC_5302_(arg1)
		registerVal15.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_5302_)
	registerVal1:addElement(registerVal15)
	registerVal1.SelfIdentityBadge = registerVal15
	registerVal16 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 690.000000, 1186.000000)
	registerVal16:setTopBottom(true, false, 458.070000, 492.070000)
	registerVal1:addElement(registerVal16)
	registerVal1.EmblemName = registerVal16
	registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 690.000000, 1184.000000)
	registerVal17:setTopBottom(true, false, 500.160000, 520.160000)
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.EmblemSubtitle = registerVal17
	local function __FUNC_53A0_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal11, nil, false, __FUNC_53A0_)
	local function __FUNC_53F2_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:linkToElementModel(registerVal11, nil, false, __FUNC_53F2_)
	local function __FUNC_5442_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal11, "emblemTitle", true, __FUNC_5442_)
	local function __FUNC_54F9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal11, "subTitle", true, __FUNC_54F9_)
	registerVal18 = {}
	registerVal18.left = registerVal11
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	registerVal18.right = registerVal10
	registerVal11.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_55B2_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal1.tabList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.usedSlotsTracker:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal19.DefaultClip = __FUNC_55B2_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_570D_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal1.tabList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.usedSlotsTracker:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal19.DefaultClip = __FUNC_570D_
	registerVal18.HideTabWidget = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "HideTabWidget"
	local function __FUNC_586E_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_586E_
	registerVal20 = {registerVal21}
	registerVal1:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_58B8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_58B8_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.lobbyNav")
	local function __FUNC_59E8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_59E8_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_5B10_(arg1, arg2)
		ShowHeaderIconOnly(registerVal1)
		SetElementStateByElementName(registerVal1, "MenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "MenuFrame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_5B10_)
	local function __FUNC_5C99_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UploadStats(registerVal1, arg2)
		return true
	end

	local function __FUNC_5D11_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5C99_, __FUNC_5D11_, false)
	local function __FUNC_5E0D_(arg1)
		EmblemSelect_Back(registerVal1, arg1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_5E0D_)
	registerVal10.id = "emblemDrawWidget"
	registerVal11.id = "emblemList"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.emblemList:processEvent(registerVal20)
	end
	local function __FUNC_5E67_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.TitleDotsWidget0:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.emblemDrawWidget:close()
		arg1.emblemList:close()
		arg1.MenuFrame:close()
		arg1.tabList:close()
		arg1.usedSlotsTracker:close()
		arg1.SelfIdentityBadge:close()
		arg1.EmblemName:close()
		arg1.EmblemSubtitle:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5E67_)
	if __FUNC_C6A_ then
		__FUNC_C6A_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemSelect = __FUNC_D2B_
