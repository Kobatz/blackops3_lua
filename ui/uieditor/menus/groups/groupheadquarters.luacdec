-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Paintshop.PaintshopLine")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Groups.GroupsBetaSafeAreaContainer")
require("ui.uieditor.widgets.Groups.Headquarters.OverviewTab")
require("ui.uieditor.widgets.Groups.Headquarters.RosterTab")
require("ui.uieditor.widgets.Groups.Headquarters.BadgesTab")
require("ui.uieditor.widgets.Groups.Headquarters.LeaderboardTab")
require("ui.uieditor.widgets.Groups.Headquarters.ShareTab")
require("ui.uieditor.widgets.Groups.Headquarters.AdminTab")
require("ui.uieditor.menus.Groups.LeaderboardMaker")
local function __FUNC_52A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "Social.selectedFriendXUID")
	CoD.FileshareUtility.InitModels()
end

local function __FUNC_646_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].selectedGroup)
	SetSelectingGroupEmblem(arg1, true, false)
	local function __FUNC_915_(arg0)
		SetSelectingGroupEmblem(arg1, false, false)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_915_)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "leaderboards.leaderboardPlayerFilter")
	Engine.SetModelValue(registerVal3, Enum.LbFilter.LB_FILTER_GROUP_MEMBERS)
	CoD.perController[arg1].leaderboardPlayerFilter = Enum.LbFilter.LB_FILTER_GROUP_MEMBERS
end

local function __FUNC_975_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupHeadquarters")
	if __FUNC_52A_ then
		__FUNC_52A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupHeadquarters.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 101.500000, 465.500000)
	registerVal4:setTopBottom(true, false, 51.500000, 99.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("GROUPS_HEADQUARTERS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.Title = registerVal4
	local registerVal5 = CoD.PaintshopLine.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 65.520000, 1213.520000)
	registerVal5:setTopBottom(true, false, 173.360000, 177.360000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.PaintshopLine0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal6:setTopBottom(true, false, 152.000000, 642.000000)
	registerVal6:setRGB(0.150000, 0.150000, 0.150000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.panel = registerVal6
	local registerVal7 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal7:setTopBottom(true, false, 152.000000, 642.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Frame = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListPanel = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	local function __FUNC_1C64_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.titleLabel:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal1, "name", true, __FUNC_1C64_)
	local function __FUNC_1D18_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal1, "name", true, __FUNC_1D18_)
	local function __FUNC_1E5B_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_1E5B_)
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, -1.000000, 4999.000000)
	registerVal10:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal10.Tabs.grid:setHorizontalCount(7.000000)
	registerVal10.Tabs.grid:setDataSource("GroupsHeadquartersTabList")
	registerVal1:addElement(registerVal10)
	registerVal1.FETabBar0 = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal12:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1EC5_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1EC5_)
	local function __FUNC_1F16_(arg1)
		registerVal12.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1F16_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelfIdentityBadge = registerVal12
	local registerVal13 = CoD.GroupsBetaSafeAreaContainer.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal13:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_1FB4_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_1FB4_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Visible"
	local function __FUNC_2049_(arg0, arg1, arg2)
		return IsGroupsBeta()
	end

	registerVal17.condition = __FUNC_2049_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal1:addElement(registerVal13)
	registerVal1.GroupsBetaSafeAreaContainer = registerVal13
	local function __FUNC_2096_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal10.Tabs.grid, "tabWidget", true, __FUNC_2096_)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "groups.grouphqtabname")
	local function __FUNC_2132_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.grouphqtabname"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal1:subscribeToModel(registerVal16, __FUNC_2132_)
	local function __FUNC_22F4_(arg1, arg2)
		HandleGroupHeadquartersKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_22F4_)
	local function __FUNC_23AA_(arg1, arg2)
		SetGroupHeadquarterTabName(registerVal1, arg1, arg0)
		return nil
	end

	registerVal1:registerEventHandler("list_active_changed", __FUNC_23AA_)
	local function __FUNC_2414_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		MediaManagerClearDisplay(registerVal1, arg1, arg0)
		ShowHeaderGroupHQ(registerVal1)
		SetHeadingKickerText("GROUPS_GROUP_HEADQUARTERS_CAPS")
		PreserveThumbnails(arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2414_)
	local function __FUNC_259A_(arg0, arg1, arg2, arg3)
		UpdateSelectedGroupInfo(registerVal1, arg0, arg2)
		ClearSelectedGroup(registerVal1, arg0, arg2)
		SetControllerModelValue(arg2, "groups.highlightGroupsTabInSocial", true)
		ClearCurrentlyOpenedGroup(arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_26E0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_259A_, __FUNC_26E0_, false)
	local function __FUNC_27DD_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2835_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_27DD_, __FUNC_2835_, true)
	local function __FUNC_295F_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldOpenGroupOptionsPopup(arg0, arg2)
		if registerVal4 then
			OpenGroupOptionsPopup(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2A00_(arg0, arg1, arg2)
		local registerVal3 = ShouldOpenGroupOptionsPopup(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_295F_, __FUNC_2A00_, false)
	local function __FUNC_2B3E_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2B95_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_2B3E_, __FUNC_2B95_, false)
	local function __FUNC_2CB5_(arg1)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, false)
		SetControllerModelValue(arg0, "groups.grouphqtabname", "")
		PreserveThumbnails(arg0, false)
		ResetThumbnailViewer(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_2CB5_)
	registerVal7.id = "Frame"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	local registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.Frame:processEvent(registerVal16)
	end
	local function __FUNC_2DD2_(arg1)
		arg1.PaintshopLine0:close()
		arg1.MenuFrame:close()
		arg1.FETabBar0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SelfIdentityBadge:close()
		arg1.GroupsBetaSafeAreaContainer:close()
		arg1.Frame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupHeadquarters.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2DD2_)
	if __FUNC_646_ then
		__FUNC_646_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GroupHeadquarters = __FUNC_975_
