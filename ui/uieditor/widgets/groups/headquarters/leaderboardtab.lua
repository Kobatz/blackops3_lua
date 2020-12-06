-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Groups.GroupLeaderboardOptions")
require("ui.uieditor.widgets.FileshareNoContentGraphic")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_wHeader")
require("ui.uieditor.widgets.Leaderboard.Leaderboard")
require("ui.uieditor.widgets.Groups.GroupLeaderboardTitle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_PlayerProfileInfoWidget")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_RankAndStatsWidget")
CoD.Leaderboard_MP = {}
CoD.Leaderboard_MP.BaseDefName = 1.000000
CoD.Leaderboard_MP.CoreName = 2.000000
CoD.Leaderboard_MP.SortColumn = 3.000000
CoD.Leaderboard_MP.TimeFrame = 4.000000
CoD.Leaderboard_MP.Hardcore = 5.000000
local registerVal1 = {}
local registerVal2 = {}
registerVal2.name = "ALLTIME"
registerVal2.stringRef = "MENU_LB_DFILTER_ALL_TIME"
registerVal2.value = Enum.LbTrackType.LB_TRK_ALLTIME
registerVal2.lbMakerHint = "GROUPS_LBMAKER_TIMEFRAME_ALLTIME_HINT_TEXT"
local registerVal3 = {}
registerVal3.name = "MONTHLY"
registerVal3.stringRef = "MENU_LB_DFILTER_MONTHLY"
registerVal3.value = Enum.LbTrackType.LB_TRK_MONTHLY
registerVal3.lbMakerHint = "GROUPS_LBMAKER_TIMEFRAME_MONTHLY_HINT_TEXT"
local registerVal4 = {}
registerVal4.name = "WEEKLY"
registerVal4.stringRef = "MENU_LB_DFILTER_WEEKLY"
registerVal4.value = Enum.LbTrackType.LB_TRK_WEEKLY
registerVal4.lbMakerHint = "GROUPS_LBMAKER_TIMEFRAME_WEEKLY_HINT_TEXT"
registerVal1 = {registerVal2, registerVal3, registerVal4}
CoD.Leaderboard_MP.LeaderboardTimeFrames = registerVal1
function CoD.Leaderboard_MP.GetLeaderboardIndex(arg0)
	for index1=1.000000, #CoD.Leaderboard_MP.Leaderboards, 1.000000 do
		if CoD.Leaderboard_MP.Leaderboards[index1][CoD.Leaderboard_MP.CoreName] == arg0 then
			return index1
		end
	end
	return 0.000000
end

function CoD.Leaderboard_MP.GetTimeFrameIndex(arg0, arg1)
	for index5=1.000000, #, 1.000000 do
		if CoD.Leaderboard_MP.Leaderboards[arg0][CoD.Leaderboard_MP.TimeFrame][index5] == arg1 then
			return index5
		end
	end
	return 0.000000
end

function CoD.Leaderboard_MP.GetTimeFrameDataFromEnumValue(arg0)
	for index1=1.000000, #CoD.Leaderboard_MP.LeaderboardTimeFrames, 1.000000 do
		if CoD.Leaderboard_MP.LeaderboardTimeFrames[index1].value == arg0 then
			return CoD.Leaderboard_MP.LeaderboardTimeFrames[index1]
		end
	end
	return -1.000000
end

function CoD.Leaderboard_MP.GetLeaderboardDefName(arg0, arg1, arg2)
	if arg2 then
	end
	return (("LB_MP" .. "_" .. CoD.Leaderboard_MP.Leaderboards[arg0][CoD.Leaderboard_MP.BaseDefName] .. "_" .. CoD.Leaderboard_MP.Leaderboards[arg0][CoD.Leaderboard_MP.CoreName] .. "_" .. CoD.Leaderboard_MP.Leaderboards[arg0][CoD.Leaderboard_MP.SortColumn][arg1]) .. "_HC")
end

local function __FUNC_D89_(arg0, arg1)
	local registerVal2 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
	registerVal2 = IsGroupLeaderboardAvailable()
	if registerVal2 and not registerVal2 then
		local registerVal3 = {}
		registerVal3.down = arg0.UseDefaultButton
		arg0.CreateLeaderboardButton.navigation = registerVal3
		registerVal3 = {}
		registerVal3.up = arg0.CreateLeaderboardButton
		arg0.UseDefaultButton.navigation = registerVal3
		arg0.Leaderboard.navigation = {}
	else
		registerVal2 = IsGroupLeaderboardAvailable()
		if not registerVal2 then
			arg0.CreateLeaderboardButton.navigation = {}
			arg0.UseDefaultButton.navigation = {}
			arg0.Leaderboard.navigation = {}
		else
			arg0.CreateLeaderboardButton.navigation = {}
			arg0.UseDefaultButton.navigation = {}
			arg0.Leaderboard.navigation = {}
		end
	end
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal4.controller = arg1
	arg0:processEvent(registerVal4)
end

local function __FUNC_105F_(arg0, arg1)
	if arg1.error == true then
		return 
	end
	DataSources.LeaderboardHeader.getModel(arg1.controller)
	arg0:UpdateNavigation(arg1.controller)
end

local function __FUNC_115D_(arg0, arg1)
	arg0:registerEventHandler("leaderboardlist_update", __FUNC_105F_)
	local function __FUNC_1373_(arg0, arg2)
		local registerVal2 = HasAdminPrivilege(arg2.controller, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		registerVal2 = IsGroupLeaderboardAvailable()
		if registerVal2 and not registerVal2 then
			local registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0.UseDefaultButton:processEvent(registerVal4)
			registerVal2 = arg0.CreateLeaderboardButton:processEvent(arg2)
			return true
			registerVal2 = arg0.Leaderboard:processEvent(arg2)
			if registerVal2 and registerVal2 then
				return true
			end
		end
		return LUI.UIElement.gainFocus(arg0, arg2)
	end

	arg0:registerEventHandler("gain_focus", __FUNC_1373_)
	arg0.UpdateNavigation = __FUNC_D89_
	arg0:UpdateNavigation(arg1)
	arg0:setModel(CoD.perController[arg1].selectedGroup)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "groups.updateLeaderboardTabNav")
	local function __FUNC_15F8_(arg2)
		arg0:UpdateNavigation(arg1)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_15F8_)
end

registerVal4 = InheritFrom(LUI.UIElement)
CoD.LeaderboardTab = registerVal4
local function __FUNC_164E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeaderboardTab)
	registerVal2.id = "LeaderboardTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 402.000000)
	registerVal3:setTopBottom(true, false, -29.000000, 581.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint00 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 20.500000, 402.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal4:setRGB(1.000000, 0.410000, 0.000000)
	registerVal4:setText(Engine.Localize("GROUPS_CREATE_YOUR_LEADERBOARD"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.CreateLeaderboardTitle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 20.500000, 402.000000)
	registerVal5:setTopBottom(true, false, 34.000000, 53.000000)
	registerVal5:setText(Engine.Localize("GROUPS_CREATE_YOUR_LEADERBOARD_DESC"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.CreateLeaderboardDesc = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 21.000000, 1139.500000)
	registerVal6:setTopBottom(true, false, 224.000000, 244.000000)
	registerVal6:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("GROUPS_LEADERBOARD_UNAVAILABLE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.NoLeaderboardDesc = registerVal6
	local registerVal7 = CoD.FileshareNoContentGraphic.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 21.000000, 1144.500000)
	registerVal7:setTopBottom(true, false, 16.500000, 496.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FileshareNoContentGraphic = registerVal7
	local registerVal8 = CoD.List1ButtonLarge_Left_wHeader.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 18.500000, 384.000000)
	registerVal8:setTopBottom(true, false, 111.500000, 168.500000)
	registerVal8.commonButtonLabel.itemName:setText(Engine.Localize("MENU_EMBLEM_CREATE_NEW"))
	local function __FUNC_397A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_397A_)
	local function __FUNC_3B0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_3B0B_)
	local function __FUNC_3BDA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		if registerVal4 then
			OpenLeaderboardMaker(registerVal2, arg0, arg2, "ChooseBaseLeaderboard")
			return true
		end
	end

	local function __FUNC_3D0D_(arg0, arg1, arg2)
		local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3BDA_, __FUNC_3D0D_, false)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "WithSelectedIcon"
	local function __FUNC_3EB0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_3EB0_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.CreateLeaderboardButton = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Left_wHeader.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 18.500000, 384.000000)
	registerVal9:setTopBottom(true, false, 178.500000, 235.500000)
	registerVal9.commonButtonLabel.itemName:setText(Engine.Localize("GROUPS_USE_DEFAULT_CAREER"))
	local function __FUNC_3EFD_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_3EFD_)
	local function __FUNC_408F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_408F_)
	local function __FUNC_415E_(arg0, arg1, arg2, arg3)
		SetDefaultCareerLeaderboard(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_41C9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_415E_, __FUNC_41C9_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.UseDefaultButton = registerVal9
	local registerVal10 = CoD.Leaderboard.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 20.500000, 800.500000)
	registerVal10:setTopBottom(true, false, 15.500000, 520.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10.LeaderboardRows:setVerticalCount(16.000000)
	registerVal10.LeaderboardRows:setDataSource("LeaderboardRows")
	registerVal10.LeaderboardEmptyText:setText(Engine.Localize("MENU_LB_EMPTY"))
	local function __FUNC_42C6_(arg0)
		registerVal10.LeaderboardHeader:setModel(arg0, arg1)
	end

	registerVal10:subscribeToGlobalModel(arg1, "LeaderboardHeader", nil, __FUNC_42C6_)
	registerVal2:addElement(registerVal10)
	registerVal2.Leaderboard = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -156.500000, 1349.500000)
	registerVal11:setTopBottom(true, false, -35.000000, 8.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Backing = registerVal11
	registerVal12 = CoD.GroupLeaderboardTitle.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 28.500000, 1139.500000)
	registerVal12:setTopBottom(true, false, -23.000000, 12.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.GroupLeaderboardTitle = registerVal12
	local registerVal13 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 236.500000, 561.500000)
	registerVal13:setTopBottom(false, false, -246.500000, 236.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.StartMenuframenoBG0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 979.000000, 983.000000)
	registerVal14:setTopBottom(true, false, 132.000000, 465.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZRot(-90.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.featlineleft0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 979.000000, 983.000000)
	registerVal15:setTopBottom(true, false, 234.000000, 567.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZRot(-90.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.featlineleft00 = registerVal15
	local registerVal16 = CoD.Leaderboard_PlayerProfileInfoWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 819.500000, 1139.500000)
	registerVal16:setTopBottom(true, false, 15.500000, 297.500000)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_433D_(arg0, arg1, arg2)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsGroupLeaderboardAvailable()
		else
		end
		return true
	end

	registerVal20.condition = __FUNC_433D_
	local registerVal21 = {}
	registerVal21.stateName = "PCacheBuffer"
	local function __FUNC_4400_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_4400_
	registerVal19 = {registerVal20, registerVal21}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "leaderboard.isUpdating")
	local function __FUNC_444D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_444D_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "leaderboard.totalResults")
	local function __FUNC_4578_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_4578_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "groups.selectedGroup.lbDef")
	local function __FUNC_46A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbDef"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_46A6_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "groups.selectedGroup.lbTimeFrame")
	local function __FUNC_47D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbTimeFrame"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_47D4_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "groups.selectedGroup.lbHardcore")
	local function __FUNC_490A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbHardcore"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_490A_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "groups.selectedGroup.lbInitialized")
	local function __FUNC_4A3D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbInitialized"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_4A3D_)
	registerVal2:addElement(registerVal16)
	registerVal2.LeaderboardPlayerProfileInfoWidget = registerVal16
	local registerVal17 = CoD.Leaderboard_RankAndStatsWidget.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 819.500000, 1139.500000)
	registerVal17:setTopBottom(true, false, 296.000000, 496.000000)
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "Visible"
	local function __FUNC_4B74_(arg0, arg1, arg2)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsGroupLeaderboardAvailable()
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_4B74_
	local registerVal22 = {}
	registerVal22.stateName = "Freerun"
	local function __FUNC_4C38_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_4C38_
	local registerVal23 = {}
	registerVal23.stateName = "DOA"
	local function __FUNC_4C85_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_4C85_
	registerVal20 = {registerVal21, registerVal22, registerVal23}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "leaderboard.isUpdating")
	local function __FUNC_4CD1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_4CD1_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "leaderboard.totalResults")
	local function __FUNC_4DFC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_4DFC_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbDef")
	local function __FUNC_4F2A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbDef"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_4F2A_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbTimeFrame")
	local function __FUNC_5058_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbTimeFrame"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_5058_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbHardcore")
	local function __FUNC_518E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbHardcore"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_518E_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbInitialized")
	local function __FUNC_52C1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbInitialized"
		arg0:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_52C1_)
	registerVal2:addElement(registerVal17)
	registerVal2.LeaderboardRankAndStatsWidget = registerVal17
	local function __FUNC_53F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal10.LeaderboardRows, "xuid", true, __FUNC_53F8_)
	local function __FUNC_54B8_(arg0)
		registerVal16.GamerCard:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal10.LeaderboardRows, nil, false, __FUNC_54B8_)
	local function __FUNC_5529_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.GamerTag.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal10.LeaderboardRows, "name", true, __FUNC_5529_)
	local function __FUNC_561C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.rankIcon.imgSolid:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "rankIcon", true, __FUNC_561C_)
	local function __FUNC_572E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.rankIcon.imgAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "rankIcon", true, __FUNC_572E_)
	local function __FUNC_583C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.rankText:setRGB(SetToParagonColorIfPrestigeMasterForLeaderboard(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "plevel", true, __FUNC_583C_)
	local function __FUNC_593F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.rankText.FELabelSubHeadingD0.Label0:setText(Engine.Localize(PrependLocalizedStringWithSeparator("MENU_LEVEL_CAPS", " ", registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "rank", true, __FUNC_593F_)
	local function __FUNC_5ABA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.ListHeader0.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "rankString", true, __FUNC_5ABA_)
	local function __FUNC_5BBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget1.StatText:setRGB(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat0color", true, __FUNC_5BBD_)
	local function __FUNC_5C8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget1.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat0", true, __FUNC_5C8E_)
	local function __FUNC_5D85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget1.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat0label", true, __FUNC_5D85_)
	local function __FUNC_5E89_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget2.StatText:setRGB(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat1color", true, __FUNC_5E89_)
	local function __FUNC_5F5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget2.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat1", true, __FUNC_5F5A_)
	local function __FUNC_6051_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget2.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat1label", true, __FUNC_6051_)
	local function __FUNC_6155_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget3.StatText:setRGB(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat2color", true, __FUNC_6155_)
	local function __FUNC_6226_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget3.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat2", true, __FUNC_6226_)
	local function __FUNC_631D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatWidget3.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal10.LeaderboardRows, "stat2label", true, __FUNC_631D_)
	local registerVal18 = {}
	registerVal18.right = registerVal10
	registerVal18.down = registerVal10
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal8
	registerVal18.right = registerVal10
	registerVal18.down = registerVal10
	registerVal9.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	registerVal19 = {registerVal8, registerVal9}
	registerVal18.left = registerVal19
	registerVal18.up = registerVal9
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_6421_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackTint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CreateLeaderboardTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CreateLeaderboardDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NoLeaderboardDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CreateLeaderboardButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.UseDefaultButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Leaderboard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupLeaderboardTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_6421_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_6945_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackTint00:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CreateLeaderboardTitle:setLeftRight(true, false, 20.500000, 303.040000)
		registerVal2.CreateLeaderboardTitle:setTopBottom(true, false, 2.000000, 32.000000)
		registerVal2.CreateLeaderboardTitle:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.CreateLeaderboardTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CreateLeaderboardDesc:setLeftRight(true, false, 20.500000, 384.000000)
		registerVal2.CreateLeaderboardDesc:setTopBottom(true, false, 34.000000, 53.000000)
		registerVal2.CreateLeaderboardDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NoLeaderboardDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CreateLeaderboardButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.UseDefaultButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Leaderboard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupLeaderboardTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_6945_
	registerVal18.LeaderboardOptions = registerVal19
	registerVal19 = {}
	local function __FUNC_7017_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackTint00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CreateLeaderboardTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CreateLeaderboardDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NoLeaderboardDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setLeftRight(true, false, 21.000000, 1144.500000)
		registerVal2.FileshareNoContentGraphic:setTopBottom(true, false, 3.250000, 482.750000)
		registerVal2.FileshareNoContentGraphic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CreateLeaderboardButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.UseDefaultButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Leaderboard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupLeaderboardTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_7017_
	registerVal18.NoLeaderboard = registerVal19
	registerVal2.clipsPerState = registerVal18
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "LeaderboardOptions"
	local function __FUNC_7625_(arg0, arg2, arg3)
		local registerVal3 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		if registerVal3 then
			registerVal3 = IsGroupLeaderboardAvailable()
		end
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_7625_
	registerVal22 = {}
	registerVal22.stateName = "NoLeaderboard"
	local function __FUNC_7731_(arg0, arg1, arg2)
		local registerVal3 = IsGroupLeaderboardAvailable()
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_7731_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbDef")
	local function __FUNC_7791_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbDef"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_7791_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbTimeFrame")
	local function __FUNC_78C0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbTimeFrame"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_78C0_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbHardcore")
	local function __FUNC_79F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbHardcore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_79F6_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbInitialized")
	local function __FUNC_7B29_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbInitialized"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_7B29_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbDef")
	local function __FUNC_7C60_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.selectedGroup.lbDef"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_7C60_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbTimeFrame")
	local function __FUNC_7E29_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.selectedGroup.lbTimeFrame"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_7E29_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbHardcore")
	local function __FUNC_7FF7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.selectedGroup.lbHardcore"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_7FF7_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "groups.selectedGroup.lbInitialized")
	local function __FUNC_81C2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.selectedGroup.lbInitialized"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_81C2_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_8391_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		registerVal4 = IsGroupLeaderboardAvailable()
		if registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "GroupLeaderboardOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_84FF_(arg0, arg1, arg2)
		local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		registerVal3 = IsGroupLeaderboardAvailable()
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS_CAPS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_8391_, __FUNC_84FF_, false)
	registerVal8.id = "CreateLeaderboardButton"
	registerVal9.id = "UseDefaultButton"
	registerVal10.id = "Leaderboard"
	local function __FUNC_86D5_(arg0, arg1)
		local registerVal2 = arg0.CreateLeaderboardButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_86D5_)
	local function __FUNC_87E7_(arg0)
		arg0.FileshareNoContentGraphic:close()
		arg0.CreateLeaderboardButton:close()
		arg0.UseDefaultButton:close()
		arg0.Leaderboard:close()
		arg0.GroupLeaderboardTitle:close()
		arg0.StartMenuframenoBG0:close()
		arg0.LeaderboardPlayerProfileInfoWidget:close()
		arg0.LeaderboardRankAndStatsWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_87E7_)
	if __FUNC_115D_ then
		__FUNC_115D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LeaderboardTab.new = __FUNC_164E_
