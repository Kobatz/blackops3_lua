-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Button_LG")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Voice_PC")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Voice")
require("ui.uieditor.menus.hud.Credit_Fullscreen")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_Credits_SM")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_SM")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_PrivacySettings")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Network")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Graphics")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Sound_PC")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Sound")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_Hero")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Controls_PC")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Controls")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_GraphicContent_PC")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_GraphicContent")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_MusicTracks")
local function __FUNC_6DB_(arg0, arg1, arg2)
	if arg0.Credits then
		arg0.Credits.navigation.right = nil
	end
	local registerVal3 = ShowPrivacySettingsButton(arg1)
	if registerVal3 then
		if arg0.Network then
			arg0.Network.navigation.right = arg0.CreditsSmall
		end
		if arg0.Audio then
			arg0.Audio.navigation.down = arg0.CreditsSmall
		end
		if arg0.Privacy then
			arg0.Privacy.navigation.left = arg0.CreditsSmall
		end
		if arg0.MusicTracks then
			arg0.MusicTracks.navigation.down = arg0.Privacy
		end
	end
	if not CoD.isZombie then
		arg0.cheatstate = 0.000000
		local function __FUNC_AD6_(arg1, arg2, arg3, arg4)
			if arg0.cheatstate == 0.000000 then
				arg0.cheatstate = 1.000000
				return true
			else
				arg0.cheatstate = 0.000000
			end
			return false
		end

		local function __FUNC_B5A_(arg0, arg1, arg2)
			return false
		end

		arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "B", __FUNC_AD6_, __FUNC_B5A_, false)
		local function __FUNC_B8C_(arg1, arg2, arg3, arg4)
			if arg0.cheatstate == 1.000000 then
				arg0.cheatstate = 2.000000
				return true
			else
				arg0.cheatstate = 0.000000
			end
			return false
		end

		local function __FUNC_C17_(arg0, arg1, arg2)
			return false
		end

		arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "O", __FUNC_B8C_, __FUNC_C17_, false)
		local function __FUNC_C48_(arg1, arg2, arg3, arg4)
			if arg0.cheatstate == 2.000000 then
				arg0.cheatstate = 0.000000
				if not CoD.MenuNavigation then
					CoD.MenuNavigation = {}
				end
				if not CoD.MenuNavigation[arg3] then
					CoD.MenuNavigation[arg3] = {}
				end
				local registerVal6 = {}
				registerVal6 = {"NumericKeypad"}
				table.insert(CoD.MenuNavigation[arg3], registerVal6)
				local registerVal5 = arg0:getParent()
				registerVal5 = registerVal5:openPopup("NumericKeypad", arg3)
				return true
			end
		end

		local function __FUNC_E29_(arg0, arg1, arg2)
			return false
		end

		arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG, "3", __FUNC_C48_, __FUNC_E29_, false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options = registerVal2
local function __FUNC_E5C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options)
	registerVal2.id = "StartMenu_Options"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 10.000000, 373.000000)
	registerVal3:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal3.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_muting"))
	registerVal3.Title:setText(Engine.Localize(""))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("PLATFORM_MUTING_OPTION_TITLE"))
	registerVal3.ImageText:setText(Engine.Localize(""))
	local function __FUNC_2AA2_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_2AA2_)
	local function __FUNC_2C33_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_2C33_)
	local function __FUNC_2D02_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		registerVal4 = IsInDefaultState(arg0)
		if registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_Voice_PC", arg2, "", "")
			return true
		else
			registerVal4 = IsInDefaultState(arg0)
			if registerVal4 then
				OpenPopup(registerVal2, "StartMenu_Options_Voice", arg2, "", "")
				return true
			end
		end
	end

	local function __FUNC_2E3A_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		registerVal3 = IsInDefaultState(arg0)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsInDefaultState(arg0)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2D02_, __FUNC_2E3A_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "OnlineOnly"
	local function __FUNC_2FEE_(arg0, arg1, arg2)
		return IsLobbyNetworkModeLAN()
	end

	registerVal7.condition = __FUNC_2FEE_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.Muting = registerVal3
	local registerVal4 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -401.000000, -25.000000)
	registerVal4:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal4.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_credits"))
	registerVal4.Title:setText(Engine.Localize(""))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CREDITS_CAPS"))
	registerVal4.ImageText:setText(Engine.Localize(""))
	local function __FUNC_3043_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_3043_)
	local function __FUNC_31D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_31D3_)
	local function __FUNC_32A2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPopup(registerVal2, "Credit_Fullscreen", arg2, "", "")
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_3397_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_32A2_, __FUNC_3397_, false)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_34C8_(arg0, arg1, arg2)
		local registerVal3 = InSafehouseOrFrontend()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_34C8_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.Credits = registerVal4
	local registerVal5 = CoD.StartMenu_Button_Credits_SM.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -401.000000, -216.000000)
	registerVal5:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal5.ImageText:setText(Engine.Localize(""))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CREDITS_CAPS"))
	registerVal5.ClanTag:setText(Engine.Localize(""))
	local function __FUNC_3523_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_3523_)
	local function __FUNC_36B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_36B3_)
	local function __FUNC_3782_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPopup(registerVal2, "Credit_Fullscreen", arg2, "", "")
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_3877_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3782_, __FUNC_3877_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_39A8_(arg0, arg1, arg2)
		local registerVal3 = InSafehouseOrFrontend()
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_39A8_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.CreditsSmall = registerVal5
	registerVal6 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -210.000000, -25.000000)
	registerVal6:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal6.ImageText:setText(Engine.Localize(""))
	registerVal6.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_logowhite"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_PRIVACY_SETTINGS"))
	registerVal6.ClanTag:setAlpha(0.000000)
	registerVal6.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_3A03_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_3A03_)
	local function __FUNC_3B93_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_3B93_)
	local function __FUNC_3C62_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_PrivacySettings", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3D26_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3C62_, __FUNC_3D26_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.Privacy = registerVal6
	registerVal7 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 379.000000, 741.000000)
	registerVal7:setTopBottom(false, true, -172.000000, -15.000000)
	registerVal7.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_network"))
	registerVal7.Title:setText(Engine.Localize(""))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_NETWORK"))
	registerVal7.ImageText:setText(Engine.Localize(""))
	local function __FUNC_3E58_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_3E58_)
	local function __FUNC_3FEB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3FEB_)
	local function __FUNC_40BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_Network", arg2, "", "")
			return true
		end
	end

	local function __FUNC_4176_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_40BA_, __FUNC_4176_, false)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_42A8_(arg0, arg1, arg2)
		local registerVal3 = ShouldOpenNetworkOptions()
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_42A8_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.Network = registerVal7
	registerVal8 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 940.000000, -25.000000)
	registerVal8:setTopBottom(true, false, 12.780000, 173.650000)
	registerVal8.ImageText:setText(Engine.Localize(""))
	registerVal8.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_graphics"))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_GRAPHICS"))
	registerVal8.ClanTag:setText(Engine.Localize(""))
	local function __FUNC_4306_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_4306_)
	local function __FUNC_4497_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_4497_)
	local function __FUNC_4566_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		registerVal4 = ShouldOpenGraphicsAndSoundOptions()
		if registerVal4 and registerVal4 then
			OpenPopup_NoDependency(arg1, "StartMenu_Options_Graphics_PC", arg2)
			return true
		else
			registerVal4 = ShouldOpenGraphicsAndSoundOptions()
			if registerVal4 then
				OpenPopup(registerVal2, "StartMenu_Options_Graphics", arg2, "", "")
				return true
			end
		end
	end

	local function __FUNC_46C5_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		registerVal3 = ShouldOpenGraphicsAndSoundOptions()
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = ShouldOpenGraphicsAndSoundOptions()
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4566_, __FUNC_46C5_, false)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_4883_(arg0, arg1, arg2)
		local registerVal3 = ShouldOpenGraphicsAndSoundOptions()
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_4883_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.Graphics = registerVal8
	registerVal9 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 749.000000, 934.000000)
	registerVal9:setTopBottom(true, false, 180.090000, 340.960000)
	registerVal9.ImageText:setText(Engine.Localize(""))
	registerVal9.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_audio"))
	registerVal9.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_AUDIO"))
	registerVal9.ClanTag:setText(Engine.Localize(""))
	local function __FUNC_48E7_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_48E7_)
	local function __FUNC_4A77_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_4A77_)
	local function __FUNC_4B46_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		registerVal4 = ShouldOpenGraphicsAndSoundOptions()
		if registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_Sound_PC", arg2, "", "")
			return true
		else
			registerVal4 = ShouldOpenGraphicsAndSoundOptions()
			if registerVal4 then
				OpenPopup(registerVal2, "StartMenu_Options_Sound", arg2, "", "")
				return true
			end
		end
	end

	local function __FUNC_4C87_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		registerVal3 = ShouldOpenGraphicsAndSoundOptions()
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = ShouldOpenGraphicsAndSoundOptions()
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4B46_, __FUNC_4C87_, false)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_4E43_(arg0, arg1, arg2)
		local registerVal3 = ShouldOpenGraphicsAndSoundOptions()
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_4E43_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.Audio = registerVal9
	registerVal10 = CoD.StartMenu_Button_Hero.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 10.000000, 741.000000)
	registerVal10:setTopBottom(true, true, 13.000000, -179.000000)
	registerVal10.Title:setText(Engine.Localize("MENU_CONTROLS_CAPS"))
	registerVal10.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CONTROLS_DESC"))
	local function __FUNC_4EA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.imageContainer.ImageContainer:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "PlatformControllerImage", "image", __FUNC_4EA7_)
	local function __FUNC_4FA0_(arg2, arg3)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_4FA0_)
	local function __FUNC_5133_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_5133_)
	local function __FUNC_5202_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		if registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_Controls_PC", arg2, "", "")
			return true
		else
			OpenPopup(registerVal2, "StartMenu_Options_Controls", arg2, "", "")
			return true
		end
	end

	local function __FUNC_52FE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5202_, __FUNC_52FE_, false)
	registerVal2:addElement(registerVal10)
	registerVal2.Controls = registerVal10
	registerVal11 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -401.000000, -216.000000)
	registerVal11:setTopBottom(true, false, 12.780000, 173.650000)
	registerVal11.ImageText:setText(Engine.Localize(""))
	registerVal11.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_graphiccontent"))
	registerVal11.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_CONTENT_FILTER"))
	registerVal11.ClanTag:setText(Engine.Localize(""))
	local function __FUNC_53FA_(arg2, arg3)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_53FA_)
	local function __FUNC_558B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_558B_)
	local function __FUNC_565A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPC()
		if registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_GraphicContent_PC", arg2, "", "")
			return true
		else
			OpenPopup(registerVal2, "StartMenu_Options_GraphicContent", arg2, "", "")
			return true
		end
	end

	local function __FUNC_5762_(arg0, arg1, arg2)
		local registerVal3 = IsPC()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_565A_, __FUNC_5762_, false)
	registerVal2:addElement(registerVal11)
	registerVal2.GraphicContent = registerVal11
	registerVal12 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -210.000000, -25.000000)
	registerVal12:setTopBottom(true, false, 180.090000, 340.960000)
	registerVal12.ImageText:setText(Engine.Localize(""))
	registerVal12.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_music"))
	registerVal12.StartMenuIdentitySubTitle0.SubTitle:setText(LocalizeToUpperString("MENU_MUSIC_TRACKS"))
	registerVal12.ClanTag:setAlpha(0.000000)
	registerVal12.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_58DE_(arg2, arg3)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_58DE_)
	local function __FUNC_5A6F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_5A6F_)
	local function __FUNC_5B3E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsInDefaultState(arg0)
		if registerVal4 then
			OpenPopup(registerVal2, "StartMenu_Options_MusicTracks", arg2, "", "")
			return true
		end
	end

	local function __FUNC_5BFE_(arg0, arg1, arg2)
		local registerVal3 = IsInDefaultState(arg0)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5B3E_, __FUNC_5BFE_, false)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_5D30_(arg0, arg2, arg3)
		local registerVal3 = IsPrimaryControllerIndex(arg1)
		if not registerVal3 then
			registerVal3 = IsInGame()
		else
		end
		return true
	end

	registerVal16.condition = __FUNC_5D30_
	local registerVal17 = {}
	registerVal17.stateName = "NotAvailableInGame"
	local function __FUNC_5DC0_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal17.condition = __FUNC_5DC0_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.MusicTracks = registerVal12
	registerVal13 = {}
	registerVal13.up = registerVal10
	registerVal13.right = registerVal7
	registerVal3.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal7
	local registerVal14 = {}
	registerVal14 = {registerVal9, registerVal12}
	registerVal13.up = registerVal14
	registerVal13.right = registerVal6
	registerVal4.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal7
	registerVal13.up = registerVal9
	registerVal13.right = registerVal6
	registerVal5.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal4
	registerVal13.up = registerVal12
	registerVal6.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal3
	registerVal13.up = registerVal10
	registerVal14 = {}
	registerVal14 = {registerVal4, registerVal5}
	registerVal13.right = registerVal14
	registerVal7.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal11
	registerVal13.down = registerVal12
	registerVal8.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal10
	registerVal13.up = registerVal11
	registerVal13.right = registerVal12
	registerVal14 = {}
	registerVal14 = {registerVal4, registerVal5}
	registerVal13.down = registerVal14
	registerVal9.navigation = registerVal13
	registerVal13 = {}
	registerVal14 = {}
	registerVal14 = {registerVal11, registerVal9}
	registerVal13.right = registerVal14
	registerVal14 = {}
	registerVal14 = {registerVal3, registerVal7}
	registerVal13.down = registerVal14
	registerVal10.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal10
	registerVal13.right = registerVal8
	registerVal13.down = registerVal9
	registerVal11.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal9
	registerVal13.up = registerVal8
	registerVal14 = {}
	registerVal14 = {registerVal4, registerVal6}
	registerVal13.down = registerVal14
	registerVal12.navigation = registerVal13
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_5E0A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.CreditsSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Privacy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal14.DefaultClip = __FUNC_5E0A_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_5F61_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Credits:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal14.DefaultClip = __FUNC_5F61_
	registerVal13.PrivacySettings = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "PrivacySettings"
	local function __FUNC_605F_(arg0, arg2, arg3)
		return ShowPrivacySettingsButton(arg1)
	end

	registerVal16.condition = __FUNC_605F_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Muting"
	registerVal4.id = "Credits"
	registerVal5.id = "CreditsSmall"
	registerVal6.id = "Privacy"
	registerVal7.id = "Network"
	registerVal8.id = "Graphics"
	registerVal9.id = "Audio"
	registerVal10.id = "Controls"
	registerVal11.id = "GraphicContent"
	registerVal12.id = "MusicTracks"
	local function __FUNC_60BB_(arg0, arg1)
		local registerVal2 = arg0.GraphicContent:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_60BB_)
	local function __FUNC_61C2_(arg0)
		arg0.Muting:close()
		arg0.Credits:close()
		arg0.CreditsSmall:close()
		arg0.Privacy:close()
		arg0.Network:close()
		arg0.Graphics:close()
		arg0.Audio:close()
		arg0.Controls:close()
		arg0.GraphicContent:close()
		arg0.MusicTracks:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_61C2_)
	if __FUNC_6DB_ then
		__FUNC_6DB_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options.new = __FUNC_E5C_
