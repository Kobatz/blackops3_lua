-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Button_SM")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_LG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Media = registerVal1
function CoD.StartMenu_Media.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Media)
	registerVal2.id = "StartMenu_Media"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 385.000000, 1124.770000)
	registerVal3:setTopBottom(false, true, -170.000000, -15.000000)
	registerVal3.ImageText:setText(Engine.Localize(""))
	registerVal3.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_media_store"))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_STORE_CAPS"))
	registerVal3.ClanTag:setAlpha(0.000000)
	registerVal3.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_136C_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_136C_)
	local function __FUNC_14FF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_14FF_)
	local function __FUNC_15CE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		if registerVal4 then
			OpenStore(registerVal2, arg0, arg2, "MediaTab", arg1)
			return true
		end
	end

	local function __FUNC_1689_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_15CE_, __FUNC_1689_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.Store = registerVal3
	local registerVal4 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 385.000000, 1124.770000)
	registerVal4:setTopBottom(true, false, 12.650000, 340.000000)
	registerVal4.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_media_showcase"))
	registerVal4.Title:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE_HINT"))
	registerVal4.ImageText:setText(Engine.Localize(""))
	local function __FUNC_17D6_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_17D6_)
	local function __FUNC_1967_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1967_)
	local function __FUNC_1A36_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		if registerVal4 then
			OpenMyShowcase(registerVal2, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_1AEE_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1A36_, __FUNC_1AEE_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_1C2F_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal8.condition = __FUNC_1C2F_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.MyShowcase = registerVal4
	local registerVal5 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 10.000000, 373.000000)
	registerVal5:setTopBottom(true, false, 12.650000, 171.000000)
	registerVal5.ImageText:setText(Engine.Localize(""))
	registerVal5.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_media_popular"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_POPULAR"))
	registerVal5.ClanTag:setAlpha(0.000000)
	registerVal5.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_1C89_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1C89_)
	local function __FUNC_1E1B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1E1B_)
	local function __FUNC_1EEA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		if registerVal4 then
			OpenMediaCommunity(registerVal2, arg0, arg2, "", arg1, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_POPULAR)
			return true
		end
	end

	local function __FUNC_201E_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1EEA_, __FUNC_201E_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_216A_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal9.condition = __FUNC_216A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.Popular = registerVal5
	local registerVal6 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 10.000000, 373.000000)
	registerVal6:setTopBottom(true, false, 180.000000, 340.000000)
	registerVal6.ImageText:setText(Engine.Localize(""))
	registerVal6.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_media_trending"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_TRENDING"))
	registerVal6.ClanTag:setAlpha(0.000000)
	registerVal6.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_21C5_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_21C5_)
	local function __FUNC_2357_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2357_)
	local function __FUNC_2426_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		if registerVal4 then
			OpenMediaCommunity(registerVal2, arg0, arg2, "", arg1, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_TRENDING)
			return true
		end
	end

	local function __FUNC_255B_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2426_, __FUNC_255B_, false)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_26A6_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal10.condition = __FUNC_26A6_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Trending = registerVal6
	registerVal7 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 10.000000, 373.000000)
	registerVal7:setTopBottom(false, true, -170.000000, -15.000000)
	registerVal7.ImageText:setText(Engine.Localize(""))
	registerVal7.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_media_recent"))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_RECENT"))
	registerVal7.ClanTag:setAlpha(0.000000)
	registerVal7.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_2701_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_2701_)
	local function __FUNC_2893_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2893_)
	local function __FUNC_2962_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "DefaultState")
		if registerVal4 then
			OpenMediaCommunity(registerVal2, arg0, arg2, "", arg1, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_RECENT)
			return true
		end
	end

	local function __FUNC_2A95_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2962_, __FUNC_2A95_, false)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_2BE2_(arg0, arg2, arg3)
		return IsUserContentRestricted(arg1)
	end

	registerVal11.condition = __FUNC_2BE2_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.Recent = registerVal7
	registerVal8 = {}
	registerVal8.left = registerVal7
	registerVal8.up = registerVal4
	registerVal3.navigation = registerVal8
	registerVal8 = {}
	registerVal9 = {}
	registerVal9 = {registerVal5, registerVal6}
	registerVal8.left = registerVal9
	registerVal8.down = registerVal3
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.right = registerVal4
	registerVal8.down = registerVal6
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.up = registerVal5
	registerVal8.right = registerVal4
	registerVal8.down = registerVal7
	registerVal6.navigation = registerVal8
	registerVal8 = {}
	registerVal8.up = registerVal6
	registerVal8.right = registerVal3
	registerVal7.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Store"
	registerVal4.id = "MyShowcase"
	registerVal5.id = "Popular"
	registerVal6.id = "Trending"
	registerVal7.id = "Recent"
	local function __FUNC_2C3D_(arg0, arg1)
		local registerVal2 = arg0.Popular:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2C3D_)
	local function __FUNC_2D3F_(arg0)
		arg0.Store:close()
		arg0.MyShowcase:close()
		arg0.Popular:close()
		arg0.Trending:close()
		arg0.Recent:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D3F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

