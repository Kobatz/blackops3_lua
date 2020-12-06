-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.Common.GroupsBackground")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.BorderBaked")
require("ui.uieditor.widgets.Groups.GroupsInputButton")
require("ui.uieditor.widgets.Groups.GroupSlider")
require("ui.uieditor.widgets.Groups.CreateGroupEmblem")
require("ui.uieditor.widgets.Groups.GroupsTooltip")
require("ui.uieditor.widgets.Groups.GroupsCreateButtonLG")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.Groups.GroupsInputButtonScroll")
local function __FUNC_45E_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "groups.selectedGroup.groupId")
	Engine.SetModelValue(registerVal3, Engine.StringToXUIDDecimal("0"))
	registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal4, "groups.selectedGroup")
	CoD.perController[arg1].selectedGroup = registerVal3
end

local function __FUNC_648_(arg0, arg1)
	SetSelectingGroupEmblem(arg1, true, true)
	local function __FUNC_715_(arg0)
		SetSelectingGroupEmblem(arg1, false, false)
		CoD.perController[arg1].selectedGroup = nil
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_715_)
end

local function __FUNC_7D5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CreateGroup")
	if __FUNC_45E_ then
		__FUNC_45E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CreateGroup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.GroupsBackground.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 734.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.titleLabel:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	registerVal1:addElement(registerVal4)
	registerVal1.GroupsBackground0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal5:setTopBottom(true, false, 181.000000, 642.000000)
	registerVal5:setRGB(0.150000, 0.150000, 0.150000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Panel = registerVal5
	local registerVal6 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 76.500000, 266.500000)
	registerVal6:setTopBottom(true, false, 315.500000, 349.500000)
	registerVal6:setAlpha(0.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.BorderBakedSolid3 = registerVal6
	local registerVal7 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 76.500000, 266.500000)
	registerVal7:setTopBottom(true, false, 207.500000, 241.500000)
	registerVal7:setAlpha(0.500000)
	registerVal1:addElement(registerVal7)
	registerVal1.BorderBakedSolid2 = registerVal7
	local registerVal8 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 76.500000, 266.500000)
	registerVal8:setTopBottom(true, false, 155.500000, 189.500000)
	registerVal8:setAlpha(0.500000)
	registerVal1:addElement(registerVal8)
	registerVal1.BorderBakedSolid1 = registerVal8
	local registerVal9 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 76.500000, 266.500000)
	registerVal9:setTopBottom(true, false, 103.500000, 137.500000)
	registerVal9:setAlpha(0.500000)
	registerVal1:addElement(registerVal9)
	registerVal1.BorderBakedSolid0 = registerVal9
	local registerVal10 = CoD.BorderBaked.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 284.500000, 669.500000)
	registerVal10:setTopBottom(true, false, 259.500000, 475.500000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.BorderBaked3 = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 83.500000, 125.500000)
	registerVal11:setTopBottom(true, false, 109.500000, 131.500000)
	registerVal11:setText(Engine.Localize("GROUPS_NAME"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal1:addElement(registerVal11)
	registerVal1.Name = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 83.500000, 163.500000)
	registerVal12:setTopBottom(true, false, 161.500000, 183.500000)
	registerVal12:setText(Engine.Localize("GROUPS_PRIVACY"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal1:addElement(registerVal12)
	registerVal1.Privacy = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 83.500000, 167.500000)
	registerVal13:setTopBottom(true, false, 213.500000, 235.500000)
	registerVal13:setText(Engine.Localize("GROUPS_DESCRIPTION"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal1:addElement(registerVal13)
	registerVal1.Description = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 83.500000, 142.500000)
	registerVal14:setTopBottom(true, false, 321.500000, 343.500000)
	registerVal14:setText(Engine.Localize("GROUPS_EMBLEM"))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.Emblem = registerVal14
	local registerVal15 = CoD.GroupsInputButton.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 284.500000, 669.500000)
	registerVal15:setTopBottom(true, false, 103.500000, 137.500000)
	local function __FUNC_23C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Text:setText(registerVal1)
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "CreateGroup", "name", __FUNC_23C7_)
	local function __FUNC_2472_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		GroupChangeSetTooltip(registerVal1, arg0, "NAME")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal15:registerEventHandler("gain_focus", __FUNC_2472_)
	local function __FUNC_2644_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_2644_)
	local function __FUNC_2716_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_GROUP_NAME")
		return true
	end

	local function __FUNC_2798_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2716_, __FUNC_2798_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.NameInput = registerVal15
	local registerVal16 = CoD.GroupSlider.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 284.500000, 669.500000)
	registerVal16:setTopBottom(true, false, 155.500000, 189.500000)
	registerVal16.Slider:setDataSource("GroupPrivacyModes")
	local function __FUNC_2896_(arg1, arg2)
		GroupCreationChangePrivacy(registerVal1, arg1, arg0)
		return nil
	end

	registerVal16:registerEventHandler("list_item_gain_focus", __FUNC_2896_)
	registerVal1:addElement(registerVal16)
	registerVal1.GroupPrivacySlider = registerVal16
	local registerVal17 = CoD.CreateGroupEmblem.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 287.000000, -737.400000)
	registerVal17:setTopBottom(true, false, 316.500000, 478.500000)
	registerVal17:setScale(1.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.CreateGroupEmblem = registerVal17
	local registerVal18 = CoD.GroupsTooltip.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 690.500000, 1028.500000)
	registerVal18:setTopBottom(true, false, 103.500000, 293.500000)
	local function __FUNC_2900_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.TooltipTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "CreateGroup", "tooltip_title", __FUNC_2900_)
	local function __FUNC_29DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.TooltipDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "CreateGroup", "tooltip_description", __FUNC_29DC_)
	registerVal1:addElement(registerVal18)
	registerVal1.GroupsTooltip = registerVal18
	local registerVal19 = CoD.GroupsCreateButtonLG.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 284.500000, 545.600000)
	registerVal19:setTopBottom(true, false, 314.500000, 482.500000)
	registerVal19.ImageText:setText(Engine.Localize(""))
	local registerVal23 = Engine.GetGlobalModel()
	local registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2ABE_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_2ABE_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNav")
	local function __FUNC_2C8B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal19, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_2C8B_)
	local function __FUNC_2E4F_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		GroupChangeSetTooltip(registerVal1, arg0, "EMBLEM")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal19:registerEventHandler("gain_focus", __FUNC_2E4F_)
	local function __FUNC_3022_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal19:registerEventHandler("lose_focus", __FUNC_3022_)
	local function __FUNC_30F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLive()
		registerVal4 = IsUserContentRestricted(arg2)
		if registerVal4 and not registerVal4 then
			OpenEmblemSelect(registerVal1, arg0, arg2, Enum.StorageFileType.STORAGE_EMBLEMS, arg1)
			return true
		end
	end

	local function __FUNC_3207_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		registerVal3 = IsUserContentRestricted(arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal19, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30F2_, __FUNC_3207_, false)
	registerVal1:addElement(registerVal19)
	registerVal1.EmblemButton = registerVal19
	local registerVal20 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal20.titleLabel:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	registerVal20.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	registerVal20.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal20)
	registerVal1.MenuFrame0 = registerVal20
	local registerVal21 = CoD.List1ButtonLarge_PH.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 284.500000, 564.500000)
	registerVal21:setTopBottom(true, false, 493.820000, 525.820000)
	registerVal21.btnDisplayText:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	registerVal21.btnDisplayTextStroke:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	local function __FUNC_335F_(arg1, arg2)
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

	registerVal21:registerEventHandler("gain_focus", __FUNC_335F_)
	local function __FUNC_34EF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal21:registerEventHandler("lose_focus", __FUNC_34EF_)
	local function __FUNC_35BE_(arg0, arg1, arg2, arg3)
		ProcessCreateGroup(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3620_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal21, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_35BE_, __FUNC_3620_, false)
	registerVal1:addElement(registerVal21)
	registerVal1.CreateGroupButton = registerVal21
	registerVal22 = CoD.GroupsInputButtonScroll.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 284.750000, 669.500000)
	registerVal22:setTopBottom(true, false, 208.500000, 294.500000)
	registerVal22.verticalScrollingTextBox.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_371E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.verticalScrollingTextBox.textBox:setText(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "CreateGroup", "description", __FUNC_371E_)
	local function __FUNC_37FB_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		GroupChangeSetTooltip(registerVal1, arg0, "DESCRIPTION")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal22:registerEventHandler("gain_focus", __FUNC_37FB_)
	local function __FUNC_39D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("lose_focus", __FUNC_39D3_)
	local function __FUNC_3AA2_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_GROUP_DESCRIPTION")
		return true
	end

	local function __FUNC_3B2B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal22, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3AA2_, __FUNC_3B2B_, false)
	registerVal1:addElement(registerVal22)
	registerVal1.DescriptionInput = registerVal22
	registerVal23 = {}
	registerVal23.down = registerVal16
	registerVal15.navigation = registerVal23
	registerVal23 = {}
	registerVal23.up = registerVal15
	registerVal23.down = registerVal22
	registerVal16.navigation = registerVal23
	registerVal23 = {}
	registerVal23.up = registerVal22
	registerVal23.down = registerVal21
	registerVal19.navigation = registerVal23
	registerVal23 = {}
	registerVal23.up = registerVal19
	registerVal21.navigation = registerVal23
	registerVal23 = {}
	registerVal23.up = registerVal16
	registerVal23.down = registerVal19
	registerVal22.navigation = registerVal23
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3C26_(arg0, arg1, arg2, arg3)
		CancelCreateGroup(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_3C8B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3C26_, __FUNC_3C8B_, false)
	registerVal15.id = "NameInput"
	registerVal16.id = "GroupPrivacySlider"
	registerVal19.id = "EmblemButton"
	registerVal20:setModel(registerVal1.buttonModel, arg0)
	registerVal21.id = "CreateGroupButton"
	registerVal22.id = "DescriptionInput"
	local registerVal25 = {}
	registerVal25.name = "menu_loaded"
	registerVal25.controller = arg0
	registerVal1:processEvent(registerVal25)
	registerVal25 = {}
	registerVal25.name = "update_state"
	registerVal25.menu = registerVal1
	registerVal1:processEvent(registerVal25)
	registerVal23 = registerVal1:restoreState()
	if not registerVal23 then
		registerVal25 = {}
		registerVal25.name = "gain_focus"
		registerVal25.controller = arg0
		registerVal1.NameInput:processEvent(registerVal25)
	end
	local function __FUNC_3D83_(arg1)
		arg1.GroupsBackground0:close()
		arg1.BorderBakedSolid3:close()
		arg1.BorderBakedSolid2:close()
		arg1.BorderBakedSolid1:close()
		arg1.BorderBakedSolid0:close()
		arg1.BorderBaked3:close()
		arg1.NameInput:close()
		arg1.GroupPrivacySlider:close()
		arg1.CreateGroupEmblem:close()
		arg1.GroupsTooltip:close()
		arg1.EmblemButton:close()
		arg1.MenuFrame0:close()
		arg1.CreateGroupButton:close()
		arg1.DescriptionInput:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CreateGroup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3D83_)
	if __FUNC_648_ then
		__FUNC_648_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CreateGroup = __FUNC_7D5_
