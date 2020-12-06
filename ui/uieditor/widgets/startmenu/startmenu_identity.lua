-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Button_Hero")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_Emblem")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_CallingCards")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_LG")
local function __FUNC_300_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "CallingCardsIdentity.DataDownloaded")
	registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "CallingCardsIdentity.GetPublicProfileComplete")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Identity = registerVal2
local function __FUNC_434_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_300_ then
		__FUNC_300_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Identity)
	registerVal2.id = "StartMenu_Identity"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Button_Hero.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 10.000000, 741.000000)
	registerVal3:setTopBottom(true, true, 13.000000, -179.000000)
	registerVal3.imageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_gunsmith"))
	registerVal3.Title:setText(Engine.Localize("MENU_GUNSMITH_CAPS"))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_GUNSMITH_DESC"))
	local function __FUNC_1A45_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1A45_)
	local function __FUNC_1BD7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1BD7_)
	local function __FUNC_1CA6_(arg0, arg1, arg2, arg3)
		local registerVal4 = Gunsmith_IsEnabled(arg0, arg2)
		if registerVal4 then
			OpenGunsmith(registerVal2, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_1D48_(arg0, arg1, arg2)
		local registerVal3 = Gunsmith_IsEnabled(arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CA6_, __FUNC_1D48_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "OnlineOnly"
	local function __FUNC_1E82_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_IsEnabled(arg2, arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1E82_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.Gunsmith = registerVal3
	local registerVal4 = CoD.StartMenu_Button_Emblem.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -401.000000, -25.000000)
	registerVal4:setTopBottom(true, false, 13.000000, 239.000000)
	registerVal4.Title:setText(Engine.Localize(""))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal4.ImageText:setText(Engine.Localize(""))
	local function __FUNC_1EE0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.emblem0:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", "identityBadge.xuid", __FUNC_1EE0_)
	local registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1FA1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1FA1_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_216F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_216F_)
	local function __FUNC_2333_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_2333_)
	local function __FUNC_24C3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_24C3_)
	local function __FUNC_2592_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLive()
		registerVal4 = IsUserContentRestricted(arg2)
		if registerVal4 and not registerVal4 then
			OpenEmblemSelect(registerVal2, arg0, arg2, Enum.StorageFileType.STORAGE_EMBLEMS, arg1)
			return true
		else
			registerVal4 = IsLive()
			registerVal4 = IsUserContentRestricted(arg2)
			if not registerVal4 and not registerVal4 then
				OpenEmblemSelect(registerVal2, arg0, arg2, Enum.StorageFileType.STORAGE_DEFAULT_EMBLEMS, arg1)
				return true
			end
		end
	end

	local function __FUNC_272C_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		registerVal3 = IsUserContentRestricted(arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsLive()
			registerVal3 = IsUserContentRestricted(arg2)
			if not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2592_, __FUNC_272C_, false)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_28FB_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal8.condition = __FUNC_28FB_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.Emblems = registerVal4
	local registerVal5 = CoD.StartMenu_Button_CallingCards.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -401.000000, -25.000000)
	registerVal5:setTopBottom(true, true, 244.000000, -179.000000)
	registerVal5.Title:setText(Engine.Localize(""))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CALLING_CARDS_CAPS"))
	registerVal5.ImageText:setText(Engine.Localize(""))
	local function __FUNC_2955_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_2955_)
	local function __FUNC_2AE7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2AE7_)
	local function __FUNC_2BB6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenCallingCards(registerVal2, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_2C56_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2BB6_, __FUNC_2C56_, false)
	local function __FUNC_2D88_(arg2)
		CallingCards_EmblemGetProfile(arg0, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "CallingCardsIdentity.GetPublicProfileComplete", __FUNC_2D88_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_2DF3_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_2DF3_
	local registerVal10 = {}
	registerVal10.stateName = "Spinning"
	local function __FUNC_2E3D_(arg0, arg2, arg3)
		local registerVal3 = CallingCards_IsGetPublicProfileComplete(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsLive()
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_2E3D_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CallingCardsIdentity.GetPublicProfileComplete")
	local function __FUNC_2ED9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CallingCardsIdentity.GetPublicProfileComplete"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2ED9_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_301B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_301B_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_3148_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_3148_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCards = registerVal5
	registerVal6 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -401.000000, -25.000000)
	registerVal6:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal6.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_clan"))
	registerVal6.Title:setText(Engine.Localize(""))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("FEATURE_CLAN_TAG_CAPS"))
	local function __FUNC_3270_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ImageText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "PerController", "identityBadge.clanTag", __FUNC_3270_)
	local function __FUNC_3349_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_3349_)
	local function __FUNC_34DB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_34DB_)
	local function __FUNC_35AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			EditClanTag(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3633_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_35AA_, __FUNC_3633_, false)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_3764_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal10.condition = __FUNC_3764_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.ClanTag = registerVal6
	registerVal7 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 379.000000, 741.000000)
	registerVal7:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal7.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_screenshots"))
	registerVal7.Title:setText(Engine.Localize(""))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_SCREENSHOTS"))
	registerVal7.ImageText:setText(Engine.Localize(""))
	local function __FUNC_37C1_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_37C1_)
	local function __FUNC_3953_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3953_)
	local function __FUNC_3A22_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenLocalScreenshots(arg1, arg2)
			return true
		end
	end

	local function __FUNC_3AB0_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3A22_, __FUNC_3AB0_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_3BE4_(arg0, arg1, arg2)
		local registerVal3 = IsLuaCodeVersionAtLeast(15.000000)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_3BE4_
	local registerVal12 = {}
	registerVal12.stateName = "OnlineOnly"
	local function __FUNC_3C4A_(arg0, arg1, arg2)
		local registerVal3 = IsLive()
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_3C4A_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_3C94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3C94_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_3DC4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3DC4_)
	registerVal2:addElement(registerVal7)
	registerVal2.Screenshots = registerVal7
	registerVal8 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 10.000000, 373.000000)
	registerVal8:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal8.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_paintshop"))
	registerVal8.Title:setText(Engine.Localize(""))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_PAINTSHOP_CAPS"))
	registerVal8.ImageText:setText(Engine.Localize(""))
	local function __FUNC_3EEC_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_3EEC_)
	local function __FUNC_407F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_407F_)
	local function __FUNC_414E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPaintshop(registerVal2, arg0, arg2, "", arg1)
			PlaySoundAlias("cac_grid_equip_item")
			return true
		end
	end

	local function __FUNC_422C_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_414E_, __FUNC_422C_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_4360_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal12.condition = __FUNC_4360_
	local registerVal13 = {}
	registerVal13.stateName = "OnlineOnly"
	local function __FUNC_43BD_(arg0, arg2, arg3)
		local registerVal3 = Paintjobs_IsEnabled(arg2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_43BD_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.Paintshop = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	registerVal10 = {registerVal4, registerVal5}
	registerVal9.right = registerVal10
	registerVal10 = {}
	registerVal10 = {registerVal8, registerVal7}
	registerVal9.down = registerVal10
	registerVal3.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal3
	registerVal9.down = registerVal5
	registerVal4.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal3
	registerVal9.up = registerVal4
	registerVal9.down = registerVal6
	registerVal5.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal7
	registerVal9.up = registerVal5
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal8
	registerVal9.up = registerVal3
	registerVal9.right = registerVal6
	registerVal7.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal3
	registerVal9.right = registerVal7
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Gunsmith"
	registerVal4.id = "Emblems"
	registerVal5.id = "CallingCards"
	registerVal6.id = "ClanTag"
	registerVal7.id = "Screenshots"
	registerVal8.id = "Paintshop"
	local function __FUNC_441D_(arg0, arg1)
		local registerVal2 = arg0.Gunsmith:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_441D_)
	local function __FUNC_4520_(arg0)
		arg0.Gunsmith:close()
		arg0.Emblems:close()
		arg0.CallingCards:close()
		arg0.ClanTag:close()
		arg0.Screenshots:close()
		arg0.Paintshop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4520_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Identity.new = __FUNC_434_
