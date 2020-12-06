-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.FileShare.MyShowcase_CategorySelector")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_34C_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_443_(arg0, arg2)
		if not arg2.occluded then
			CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
			if CoD.perController[arg1].previousCommunityCategory then
				CoD.FileshareUtility.SetCurrentCategory(CoD.perController[arg1].previousCommunityCategory)
				CoD.FileshareUtility.SetPreviousCategory(CoD.perController[arg1].previousCommunityCategory)
			else
				local registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
				CoD.perController[arg1].previousCommunityCategory = registerVal3
			end
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_443_)
end

local function __FUNC_736_(arg0, arg1)
	CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
end

local function __FUNC_828_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Community")
	if __FUNC_736_ then
		__FUNC_736_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Community.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1B74_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1B74_
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
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal5:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 64.000000, 368.000000)
	registerVal6:setTopBottom(true, false, 78.000000, 684.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.300000)
	registerVal1:addElement(registerVal6)
	registerVal1.BlackTint = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal7:setTopBottom(false, false, 297.000000, 360.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FooterBacking = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal8:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleBacking0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal9:setRGB(0.120000, 0.130000, 0.190000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.MenuTitleBackground = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal10:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("Menu"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.TitleText = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal11:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal11:setRGB(0.120000, 0.130000, 0.190000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.ButtonBarBackground = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(FileshareGetCommunityMenuTitle("MENU_MEDIA_POPULAR_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(FileshareGetCommunityMenuTitle("MENU_MEDIA_POPULAR_CAPS"))
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame0 = registerVal12
	local registerVal13 = CoD.MyShowcase_CategorySelector.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 66.000000, 1216.000000)
	registerVal13:setTopBottom(true, false, 135.000000, 684.000000)
	registerVal13.FileshareCategorySelectoryListWidget.itemList:setDataSource("FileshareCommunityCategoriesList")
	registerVal1:addElement(registerVal13)
	registerVal1.MyShowcaseCategorySelector0 = registerVal13
	local registerVal14 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal14:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1BBE_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1BBE_)
	local function __FUNC_1C0E_(arg1)
		registerVal14.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1C0E_)
	registerVal1:addElement(registerVal14)
	registerVal1.SelfIdentityBadge = registerVal14
	local registerVal15 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal15:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEMenuLeftGraphics = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1CAC_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal13:completeAnimation()
		registerVal1.MyShowcaseCategorySelector0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal17.DefaultClip = __FUNC_1CAC_
	registerVal16.DefaultState = registerVal17
	registerVal1.clipsPerState = registerVal16
	local function __FUNC_1DBA_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		MediaManagerClearDisplay(registerVal1, arg1, arg0)
		SetIsInFileshare(arg0, "true")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1DBA_)
	local function __FUNC_1ED1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		ResetThumbnailViewer(arg2)
		return true
	end

	local function __FUNC_1FB5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1ED1_, __FUNC_1FB5_, false)
	local function __FUNC_20B1_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2109_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_20B1_, __FUNC_2109_, false)
	local function __FUNC_222E_(arg1)
		SetIsInFileshare(arg0, "false")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_222E_)
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal13.id = "MyShowcaseCategorySelector0"
	local registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.MyShowcaseCategorySelector0:processEvent(registerVal18)
	end
	local function __FUNC_2291_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame0:close()
		arg1.MyShowcaseCategorySelector0:close()
		arg1.SelfIdentityBadge:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Community.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2291_)
	if __FUNC_34C_ then
		__FUNC_34C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Community = __FUNC_828_
