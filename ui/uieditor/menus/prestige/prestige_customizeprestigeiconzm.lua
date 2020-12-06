-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Prestige.Prestige_PrestigeIconButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Prestige.Prestige_PrestigeIconProfiler")
local function __FUNC_3EE_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_441_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Prestige_CustomizePrestigeIconZM")
	if __FUNC_3EE_ then
		__FUNC_3EE_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Prestige_CustomizePrestigeIconZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1820_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1820_
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
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal7:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal7:setRGB(0.120000, 0.130000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonBarBackground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal8:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListPanel = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_PRESTIGE_CUSTOMIZE_ICON_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PRESTIGE_CUSTOMIZE_ICON_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_186A_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_186A_)
	local function __FUNC_18BA_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_18BA_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal11:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, true)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 104.000000, 438.000000)
	registerVal12:setTopBottom(true, false, 145.130000, 592.130000)
	registerVal12:setWidgetType(CoD.Prestige_PrestigeIconButton)
	registerVal12:setHorizontalCount(3.000000)
	registerVal12:setVerticalCount(4.000000)
	registerVal12:setSpacing(5.000000)
	registerVal12:setVerticalCounter(CoD.verticalCounter)
	registerVal12:setDataSource("PrestigeIconButtonList")
	local function __FUNC_1958_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isLocked"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "isLocked", true, __FUNC_1958_)
	local function __FUNC_1B15_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_1B15_)
	local function __FUNC_1CA7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_1CA7_)
	local function __FUNC_1D76_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		if not registerVal4 then
			SetParagonIcon(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_1E40_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D76_, __FUNC_1E40_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.PrestigeIconList = registerVal12
	local registerVal13 = CoD.Prestige_PrestigeIconProfiler.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 735.500000, 1035.500000)
	registerVal13:setTopBottom(true, false, 145.130000, 445.130000)
	local function __FUNC_1F92_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.RankText:setRGB(SetToParagonColorIfPrestigeMasterFromStorage(arg0, "zm", 148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_1F92_)
	local function __FUNC_20AE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.RankText:setText(LevelStringFromStorage(arg0, "zm", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_20AE_)
	local function __FUNC_219A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromStorage(arg0, "zm", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_zm", __FUNC_219A_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_22D2_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "isLocked")
	end

	registerVal17.condition = __FUNC_22D2_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_2344_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "isLocked", true, __FUNC_2344_)
	registerVal1:addElement(registerVal13)
	registerVal1.PrestigeIconProfiler = registerVal13
	local function __FUNC_2462_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal12, nil, false, __FUNC_2462_)
	local function __FUNC_24B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.IconTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "iconTitle", true, __FUNC_24B2_)
	local function __FUNC_2589_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.GameTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "gameTitle", true, __FUNC_2589_)
	local function __FUNC_2661_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "description", true, __FUNC_2661_)
	local function __FUNC_273B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.PrestigeIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "icon", true, __FUNC_273B_)
	local function __FUNC_2830_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_28AD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESCAPE", __FUNC_2830_, __FUNC_28AD_, false)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal12.id = "PrestigeIconList"
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
		registerVal1.PrestigeIconList:processEvent(registerVal16)
	end
	local function __FUNC_29A9_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.PrestigeIconList:close()
		arg1.PrestigeIconProfiler:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Prestige_CustomizePrestigeIconZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_29A9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Prestige_CustomizePrestigeIconZM = __FUNC_441_
