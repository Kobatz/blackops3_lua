-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.FileShare.MyShowcase_CategorySelector")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_2F9_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_3EB_(arg0, arg1)
		if not arg1.occluded then
			local registerVal2 = CoD.FileshareUtility.GetPreviousCategory()
			if registerVal2 then
				CoD.FileshareUtility.SetCurrentCategory(registerVal2)
			end
			CoD.FileshareUtility.SetCurrentFilter("", "")
			CoD.FileshareUtility.SetShowCreateButton(false)
			local registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
			if registerVal3 ~= "screenshot" then
				CoD.FileshareUtility.SetDirty()
			end
		end
		arg0.originalOcclusionChange(arg0, arg1)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_3EB_)
end

local function __FUNC_636_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Theater_SelectFilm")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Theater_SelectFilm.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1736_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1736_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal5:setTopBottom(true, false, 78.000000, 684.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackTint = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal6:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleBacking0 = registerVal6
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
	registerVal9.titleLabel:setText(Engine.Localize("MENU_THEATER_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_THEATER_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_177E_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_177E_)
	local function __FUNC_17CE_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_17CE_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = CoD.MyShowcase_CategorySelector.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 63.000000, 1213.000000)
	registerVal11:setTopBottom(true, false, 123.000000, 672.000000)
	registerVal11.FileshareCategorySelectoryListWidget.itemList:setDataSource("FileshareMyTheaterCategoriesList")
	registerVal1:addElement(registerVal11)
	registerVal1.MyShowcaseCategorySelector = registerVal11
	local registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, false, 77.000000, 694.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_186C_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal1.MyShowcaseCategorySelector:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_186C_
	registerVal13.DefaultState = registerVal14
	registerVal1.clipsPerState = registerVal13
	local function __FUNC_1979_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		ResetThumbnailViewer(arg2)
		return true
	end

	local function __FUNC_1A1F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1979_, __FUNC_1A1F_, false)
	local function __FUNC_1B19_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_1B71_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1B19_, __FUNC_1B71_, false)
	local function __FUNC_1C96_(arg1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1C96_)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal11.id = "MyShowcaseCategorySelector"
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.MyShowcaseCategorySelector:processEvent(registerVal15)
	end
	local function __FUNC_1CE9_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.MyShowcaseCategorySelector:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Theater_SelectFilm.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1CE9_)
	if __FUNC_2F9_ then
		__FUNC_2F9_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Theater_SelectFilm = __FUNC_636_
