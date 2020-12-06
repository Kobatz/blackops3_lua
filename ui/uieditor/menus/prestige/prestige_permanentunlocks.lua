-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.Prestige.Prestige_ButtonInfopane")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
local function __FUNC_49C_(arg0, arg1)
	CoD.UnlockablesTable = nil
end

local function __FUNC_4F8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Prestige_PermanentUnlocks")
	if __FUNC_49C_ then
		__FUNC_49C_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Prestige_PermanentUnlocks.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_22AE_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_22AE_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal5:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal6:setRGB(0.120000, 0.130000, 0.190000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.MenuTitleBackground = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("Menu"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.TitleText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal8:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal8:setRGB(0.120000, 0.130000, 0.190000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonBarBackground = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_PERMANENT_UNLOCKS_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PERMANENT_UNLOCKS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_22F6_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_22F6_)
	local function __FUNC_2346_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2346_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal11:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 120.000000, 400.000000)
	registerVal12:setTopBottom(true, false, 136.910000, 424.910000)
	registerVal12:setWidgetType(CoD.FE_List1ButtonLarge_PH)
	registerVal12:setVerticalCount(9.000000)
	registerVal12:setSpacing(0.000000)
	registerVal12:setDataSource("PermanentUnlockCategoryList")
	local function __FUNC_23E4_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_23E4_)
	local function __FUNC_2577_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_2577_)
	local function __FUNC_2646_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_26A7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2646_, __FUNC_26A7_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.ContentCategoryList = registerVal12
	local registerVal13 = CoD.cac_PrimaryWeaponDescription.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 118.000000, 483.000000)
	registerVal13:setTopBottom(true, false, 449.950000, 471.950000)
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryDescTextBox = registerVal13
	local registerVal14 = CoD.InfoPaneItemNameLabel.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 446.750000, 721.750000)
	registerVal14:setTopBottom(true, false, 467.500000, 501.500000)
	registerVal14:setAlpha(0.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryTitle = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 678.380000, 934.380000)
	registerVal15:setTopBottom(true, false, 152.500000, 408.500000)
	registerVal15:setAlpha(0.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryImage = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 568.500000, 1030.250000)
	registerVal16:setTopBottom(true, false, 132.000000, 424.910000)
	registerVal16:setAlpha(0.300000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal16:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.BoxButtonLrgIdle = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, 573.750000, -255.750000)
	registerVal17:setTopBottom(true, true, 135.000000, -299.090000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal17:setShaderVector(0.000000, 0.008879, 0.013990, 0.000000, 0.000000)
	registerVal17:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.Border = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 99.000000, 107.000000)
	registerVal18:setTopBottom(true, false, 456.000000, 464.000000)
	registerVal18:setZoom(10.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.Arrow = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 118.000000, 452.000000)
	registerVal19:setTopBottom(true, false, 447.020000, 448.020000)
	registerVal19:setAlpha(0.250000)
	registerVal1:addElement(registerVal19)
	registerVal1.Image = registerVal19
	local registerVal20 = CoD.Prestige_ButtonInfopane.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 574.750000, 917.750000)
	registerVal20:setTopBottom(true, false, 443.500000, 627.500000)
	registerVal20.Body:setText(Engine.Localize("MENU_PRESTIGE_INFOPANE_PERMANENT_UNLOCKS"))
	registerVal20.Title:setText(Engine.Localize("MENU_PERMANENT_UNLOCKS_CAPS"))
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Visible"
	local function __FUNC_27A2_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal24.condition = __FUNC_27A2_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal1:addElement(registerVal20)
	registerVal1.InfopaneBottom = registerVal20
	local registerVal21 = CoD.Prestige_PermanentUnlockTokensWidget.new(registerVal1, arg0)
	registerVal21:setLeftRight(false, true, -1160.000000, -879.000000)
	registerVal21:setTopBottom(true, false, 524.500000, 569.500000)
	registerVal21.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal21)
	registerVal1.PermanentUnlockTokensWidget = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 672.000000, 928.000000)
	registerVal22:setTopBottom(true, false, 143.630000, 399.630000)
	registerVal22:setScale(0.900000)
	registerVal22:setImage(RegisterImage("uie_t7_icons_prestige_mp_permanentunlock"))
	registerVal1:addElement(registerVal22)
	registerVal1.Image1 = registerVal22
	local function __FUNC_27EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "description", true, __FUNC_27EC_)
	local function __FUNC_28CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal12, "displayText", true, __FUNC_28CD_)
	local function __FUNC_29A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal12, "image", true, __FUNC_29A4_)
	registerVal23 = {}
	registerVal24 = {}
	local function __FUNC_2A58_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal24.DefaultClip = __FUNC_2A58_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_2ABA_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal12:completeAnimation()
		registerVal1.ContentCategoryList:setLeftRight(true, false, 120.000000, 400.000000)
		registerVal1.ContentCategoryList:setTopBottom(true, false, 136.910000, 198.910000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.CategoryDescTextBox:setLeftRight(true, false, 120.000000, 485.000000)
		registerVal1.CategoryDescTextBox:setTopBottom(true, false, 227.950000, 249.950000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal1.Arrow:setLeftRight(true, false, 100.000000, 108.000000)
		registerVal1.Arrow:setTopBottom(true, false, 234.000000, 242.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.Image:setLeftRight(true, false, 119.000000, 453.000000)
		registerVal1.Image:setTopBottom(true, false, 225.020000, 226.020000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal20.Body:completeAnimation()
		registerVal1.InfopaneBottom.Body:setText(Engine.Localize("MENU_ZM_PRESTIGE_INFOPANE_PERMANENT_UNLOCKS"))
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.PermanentUnlockTokensWidget:setLeftRight(false, true, -1158.000000, -877.000000)
		registerVal1.PermanentUnlockTokensWidget:setTopBottom(true, false, 302.500000, 347.500000)
		registerVal1.clipFinished(registerVal21, {})
	end

	registerVal24.DefaultClip = __FUNC_2ABA_
	registerVal23.DefaultStateZM = registerVal24
	registerVal1.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "DefaultStateZM"
	local function __FUNC_2FB5_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg0, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
	end

	registerVal26.condition = __FUNC_2FB5_
	registerVal25 = {registerVal26}
	registerVal1:mergeStateConditions(registerVal25)
	registerVal26 = Engine.GetGlobalModel()
	registerVal25 = Engine.GetModel(registerVal26, "prestigeGameMode")
	local function __FUNC_3089_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "prestigeGameMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_3089_)
	local function __FUNC_31AE_(arg1, arg2)
		local registerVal3 = IsZombiesCombatRecordMode()
		if registerVal3 then
			SendCustomClientScriptMenuChangeNotify(arg0, "WeaponBuildKits", true)
		else
			SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_31AE_)
	local function __FUNC_32EB_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsZombiesCombatRecordMode()
		if registerVal4 then
			SendCustomClientScriptMenuChangeNotify(arg2, "WeaponBuildKits", false)
			ClosePermanentUnlockMenu(registerVal1, arg2, arg1)
			return true
		else
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			ClosePermanentUnlockMenu(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_3440_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_32EB_, __FUNC_3440_, false)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal12.id = "ContentCategoryList"
	registerVal25 = {}
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
		registerVal1.ContentCategoryList:processEvent(registerVal25)
	end
	local function __FUNC_353D_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.ContentCategoryList:close()
		arg1.CategoryDescTextBox:close()
		arg1.CategoryTitle:close()
		arg1.InfopaneBottom:close()
		arg1.PermanentUnlockTokensWidget:close()
		arg1.CategoryImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Prestige_PermanentUnlocks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_353D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Prestige_PermanentUnlocks = __FUNC_4F8_
