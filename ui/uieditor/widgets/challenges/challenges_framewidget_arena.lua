-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_Category_Button")
require("ui.uieditor.menus.Challenges.Challenges_Arena")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_2B8_(arg0, arg1)
	local function __FUNC_333_(arg0, arg2)
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModel(registerVal3, "challengeCategory")
		if registerVal2 == nil then
			return 
		end
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 == nil then
			return 
		end
		local registerVal6 = {}
		registerVal6.name = "lose_focus"
		registerVal6.controller = arg1
		arg0:dispatchEventToChildren(registerVal6)
		if registerVal3 == "arenavet" then
		else
			if registerVal3 == "arenabest" then
			end
		end
		if arg0.ArenaBestButton then
			local registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.ArenaBestButton:processEvent(registerVal7)
		end
	end

	arg0:registerEventHandler("set_selected_button", __FUNC_333_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_FrameWidget_Arena = registerVal2
local function __FUNC_564_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_FrameWidget_Arena)
	registerVal2.id = "Challenges_FrameWidget_Arena"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 9.000000, -9.000000)
	registerVal3:setTopBottom(true, false, 38.000000, 72.000000)
	registerVal3:setText(Engine.Localize("MENU_ARENA_CAPS"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.arenaTitle = registerVal3
	local registerVal4 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 9.000000, 385.000000)
	registerVal4:setTopBottom(true, false, 117.000000, 509.750000)
	registerVal4.CategoryIcon:setScale(1.300000)
	registerVal4.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_arena_seasonvet"))
	registerVal4.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.PercentCompleteWidget.percentText:setText(Engine.Localize(""))
	registerVal4.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal4.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ARENAVET"))
	local function __FUNC_16E9_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_16E9_)
	local function __FUNC_187B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_187B_)
	local function __FUNC_194A_(arg0, arg1, arg2, arg3)
		SetGlobalModelValue("challengeCategory", "arenavet")
		OpenPopup(registerVal2, "Challenges_Arena", arg2, "", "")
		return true
	end

	local function __FUNC_1A29_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_194A_, __FUNC_1A29_, false)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_1B26_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1B26_
	local registerVal9 = {}
	registerVal9.stateName = "HideCompletionWidget"
	local function __FUNC_1B71_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_1B71_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.ArenaVetButton = registerVal4
	local registerVal5 = CoD.Challenges_Category_Button.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -188.000000, 188.000000)
	registerVal5:setTopBottom(true, false, 117.000000, 509.750000)
	registerVal5.CategoryIcon:setScale(1.300000)
	registerVal5.CategoryIcon:setImage(RegisterImage("uie_t7_icons_challenges_mp_arena_bestranked"))
	registerVal5.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.PercentCompleteWidget.percentText:setText(Engine.Localize(""))
	registerVal5.UnlockInstructions:setText(Engine.Localize("MENU_CHALLENGES_WEAPON_HINTTEXT_LOCK"))
	registerVal5.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ARENABEST"))
	local function __FUNC_1BBC_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1BBC_)
	local function __FUNC_1D4F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1D4F_)
	local function __FUNC_1E1E_(arg0, arg1, arg2, arg3)
		SetGlobalModelValue("challengeCategory", "arenabest")
		OpenPopup(registerVal2, "Challenges_Arena", arg2, "", "")
		return true
	end

	local function __FUNC_1EFE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E1E_, __FUNC_1EFE_, false)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_1FFA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_1FFA_
	local registerVal10 = {}
	registerVal10.stateName = "HideCompletionWidget"
	local function __FUNC_2045_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_2045_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.ArenaBestButton = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -384.000000, -9.000000)
	registerVal6:setTopBottom(true, false, 117.000000, 509.750000)
	registerVal6:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG02 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal7:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal7:setYRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel2001 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -29.130000, 6.870000)
	registerVal8:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel2001000 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal9:setTopBottom(true, false, 116.750000, 120.750000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Pixel20011 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1154.870000, 1190.870000)
	registerVal10:setTopBottom(true, false, 509.750000, 513.750000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Pixel20010000 = registerVal10
	local registerVal11 = {}
	registerVal11.right = registerVal5
	registerVal4.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal4
	registerVal5.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "ArenaVetButton"
	registerVal5.id = "ArenaBestButton"
	local function __FUNC_2090_(arg0, arg1)
		local registerVal2 = arg0.ArenaVetButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2090_)
	local function __FUNC_219A_(arg0)
		arg0.ArenaVetButton:close()
		arg0.ArenaBestButton:close()
		arg0.StartMenuframenoBG02:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_219A_)
	if __FUNC_2B8_ then
		__FUNC_2B8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_FrameWidget_Arena.new = __FUNC_564_
