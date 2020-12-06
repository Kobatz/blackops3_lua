-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Button_Hero")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_LG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Button_SM")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MyShowcase_Categories = registerVal1
function CoD.MyShowcase_Categories.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MyShowcase_Categories)
	registerVal2.id = "MyShowcase_Categories"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Button_Hero.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 9.000000, 570.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -181.000000)
	registerVal3.imageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_paintshop"))
	registerVal3.Title:setText(Engine.Localize("GROUPS_PAINTJOBS_CAPS"))
	registerVal3.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_FILESHARE_PAINTJOBS_DESCRIPTION"))
	local function __FUNC_1692_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1692_)
	local function __FUNC_1823_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1823_)
	local function __FUNC_18F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = Paintjobs_IsEnabled(arg0, arg2)
		if registerVal4 then
			OpenShowcasePaintjobs(registerVal2, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_199E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = Paintjobs_IsEnabled(arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_18F2_, __FUNC_199E_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.Gunsmith = registerVal3
	local registerVal4 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 580.000000, -9.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 163.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal4.bg:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_campaignbg"))
	registerVal4.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_campaign"))
	registerVal4.Title:setText(Engine.Localize("MENU_SCREENSHOTS"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CP_OUTFITS_DESC"))
	registerVal4.ImageText:setText(Engine.Localize(""))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_1AD7_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1AD7_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.OutfitsCP = registerVal4
	local registerVal5 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 580.000000, -9.000000)
	registerVal5:setTopBottom(false, true, -170.000000, -5.000000)
	registerVal5.bg:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_zombie_bg"))
	registerVal5.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_zombie"))
	registerVal5.Title:setText(Engine.Localize("MENU_CUSTOMGAMES_CAPS"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_ZM_OUTFITS_DESC"))
	registerVal5.ImageText:setText(Engine.Localize(""))
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_1B45_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1B45_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.OutfitsZM = registerVal5
	local registerVal6 = CoD.StartMenu_Button_LG.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 580.000000, -9.000000)
	registerVal6:setTopBottom(true, true, 176.000000, -181.000000)
	registerVal6.bg:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_multybg"))
	registerVal6.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_multy"))
	registerVal6.Title:setText(Engine.Localize("CLIPS"))
	registerVal6.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MP_OUTFITS_DESC"))
	registerVal6.ImageText:setText(Engine.Localize(""))
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_1BB5_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			registerVal3 = AlwaysTrue()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1BB5_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.OutfitsMP = registerVal6
	registerVal7 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 338.000000, 570.000000)
	registerVal7:setTopBottom(false, true, -170.000000, -5.000000)
	registerVal7.ImageText:setText(Engine.Localize(""))
	registerVal7.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_emblems"))
	registerVal7.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal7.ClanTag:setAlpha(0.000000)
	registerVal7.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_1C25_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1C25_)
	local function __FUNC_1DB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1DB7_)
	local function __FUNC_1E86_(arg0, arg1, arg2, arg3)
		OpenShowcaseEmblems(registerVal2, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_1EFB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E86_, __FUNC_1EFB_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.Emblems = registerVal7
	registerVal8 = CoD.StartMenu_Button_SM.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 9.000000, 329.000000)
	registerVal8:setTopBottom(false, true, -170.000000, -5.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal8.ImageText:setText(Engine.Localize(""))
	registerVal8.ImageContainer.ImageContainer:setImage(RegisterImage("uie_img_t7_menu_startmenu_identity_gunsmith"))
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_VARIANTS_CAPS"))
	registerVal8.ClanTag:setAlpha(0.000000)
	registerVal8.ClanTag:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_1FF6_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1FF6_)
	local function __FUNC_2187_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_2187_)
	local function __FUNC_2256_(arg0, arg1, arg2, arg3)
		OpenShowcaseVariants(registerVal2, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_22CC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2256_, __FUNC_22CC_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.Paintshop = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	registerVal10 = {registerVal4, registerVal6}
	registerVal9.right = registerVal10
	registerVal10 = {}
	registerVal10 = {registerVal8, registerVal7}
	registerVal9.down = registerVal10
	registerVal3.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal3
	registerVal9.down = registerVal6
	registerVal4.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal7
	registerVal9.up = registerVal6
	registerVal5.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal3
	registerVal9.up = registerVal4
	registerVal9.down = registerVal5
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	registerVal9.left = registerVal8
	registerVal9.up = registerVal3
	registerVal9.right = registerVal5
	registerVal7.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal3
	registerVal9.right = registerVal7
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Gunsmith"
	registerVal4.id = "OutfitsCP"
	registerVal5.id = "OutfitsZM"
	registerVal6.id = "OutfitsMP"
	registerVal7.id = "Emblems"
	registerVal8.id = "Paintshop"
	local function __FUNC_23CA_(arg0, arg1)
		local registerVal2 = arg0.Gunsmith:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_23CA_)
	local function __FUNC_24CC_(arg0)
		arg0.Gunsmith:close()
		arg0.OutfitsCP:close()
		arg0.OutfitsZM:close()
		arg0.OutfitsMP:close()
		arg0.Emblems:close()
		arg0.Paintshop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_24CC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

