-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.StartGameFlow.CP_ConfirmSelection_Box")
require("ui.uieditor.widgets.CPLevels.CPDifficultyImagePreview")
require("ui.uieditor.widgets.CPLevels.CPDifficultyInGameChangeWarning")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLineSingle")
local function __FUNC_434_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize((CoD.DIFFICULTY[0.000000] .. "_CAPS"))
	registerVal3.displayText = registerVal4
	registerVal4 = Engine.Localize(CoD.DIFFICULTY_DESC[0.000000])
	registerVal3.desc = registerVal4
	registerVal3.image = CoD.DIFFICULTY_ICON[0.000000]
	registerVal2.models = registerVal3
	registerVal3 = {}
	registerVal3.difficulty = 0.000000
	registerVal2.properties = registerVal3
	registerVal3 = {}
	registerVal4 = {}
	local registerVal5 = Engine.Localize((CoD.DIFFICULTY[1.000000] .. "_CAPS"))
	registerVal4.displayText = registerVal5
	registerVal5 = Engine.Localize(CoD.DIFFICULTY_DESC[1.000000])
	registerVal4.desc = registerVal5
	registerVal4.image = CoD.DIFFICULTY_ICON[1.000000]
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.difficulty = 1.000000
	registerVal3.properties = registerVal4
	registerVal4 = {}
	registerVal5 = {}
	local registerVal6 = Engine.Localize((CoD.DIFFICULTY[2.000000] .. "_CAPS"))
	registerVal5.displayText = registerVal6
	registerVal6 = Engine.Localize(CoD.DIFFICULTY_DESC[2.000000])
	registerVal5.desc = registerVal6
	registerVal5.image = CoD.DIFFICULTY_ICON[2.000000]
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.difficulty = 2.000000
	registerVal4.properties = registerVal5
	registerVal5 = {}
	registerVal6 = {}
	local registerVal7 = Engine.Localize((CoD.DIFFICULTY[3.000000] .. "_CAPS"))
	registerVal6.displayText = registerVal7
	registerVal7 = Engine.Localize(CoD.DIFFICULTY_DESC[3.000000])
	registerVal6.desc = registerVal7
	registerVal6.image = CoD.DIFFICULTY_ICON[3.000000]
	registerVal5.models = registerVal6
	registerVal6 = {}
	registerVal6.difficulty = 3.000000
	registerVal5.properties = registerVal6
	registerVal6 = {}
	registerVal7 = {}
	local registerVal8 = Engine.Localize((CoD.DIFFICULTY[4.000000] .. "_CAPS"))
	registerVal7.displayText = registerVal8
	registerVal8 = Engine.Localize(CoD.DIFFICULTY_DESC[4.000000])
	registerVal7.desc = registerVal8
	registerVal7.image = CoD.DIFFICULTY_ICON[4.000000]
	registerVal6.models = registerVal7
	registerVal7 = {}
	registerVal7.difficulty = 4.000000
	registerVal6.properties = registerVal7
	registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
	return registerVal1
end

local registerVal2 = DataSourceHelpers.ListSetup("DifficultySettingsList", __FUNC_434_, true)
DataSources.DifficultySettingsList = registerVal2
local function __FUNC_8BB_(arg0, arg1)
	local registerVal2 = Engine.GetProfileVarInt(arg1, "g_gameskill")
	local registerVal3 = arg0.DifficultyList:getItemAt((registerVal2 + 1.000000))
	if registerVal3 then
		arg0.DifficultyList:setActiveItem(registerVal3)
	end
end

local function __FUNC_9BE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPSelectDifficulty")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPSelectDifficulty.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.850000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -561.000000, -329.000000)
	registerVal5:setTopBottom(true, false, 144.000000, 312.000000)
	registerVal5:setDataSource("DifficultySettingsList")
	registerVal5:setWidgetType(CoD.list1ButtonNewStyle)
	registerVal5:setVerticalCount(5.000000)
	local function __FUNC_252E_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_252E_)
	local function __FUNC_26BF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_26BF_)
	local function __FUNC_278E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_CAMPAIGN)
		registerVal4 = IsCampaignZombies()
		if registerVal4 and not registerVal4 then
			SetDifficulty(registerVal1, arg0, arg2)
			NavigateToMenuNoDependency(registerVal1, "CPConfirmSelection", true, arg2)
			return true
		else
			SetDifficulty(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_292D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_278E_, __FUNC_292D_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.DifficultyList = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -218.290000, 583.000000)
	registerVal6:setTopBottom(true, false, 551.670000, 599.890000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cp_vault_sec_title_bg"))
	registerVal1:addElement(registerVal6)
	registerVal1.SecTitleBG0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -201.000000, 571.210000)
	registerVal7:setTopBottom(true, false, 604.780000, 623.780000)
	registerVal7:setAlpha(0.850000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.Description = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, -200.000000, -16.000000)
	registerVal8:setTopBottom(true, false, 566.000000, 586.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.BriefingHeading = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_SELECT_DIFFICULTY_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SELECT_DIFFICULTY_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_customgames"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -621.000000, -569.000000)
	registerVal10:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	local registerVal11 = CoD.CP_ConfirmSelection_Box.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -211.290000, 572.210000)
	registerVal11:setTopBottom(true, false, 130.000000, 540.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.CPConfirmSelectionBox = registerVal11
	local registerVal12 = CoD.CPDifficultyImagePreview.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -86.000000, 419.000000)
	registerVal12:setTopBottom(true, false, 135.500000, 534.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.CPDifficultyImagePreview = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 565.870000, 601.870000)
	registerVal13:setTopBottom(true, false, 652.750000, 656.750000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Pixel200 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 576.000000, 579.000000)
	registerVal14:setTopBottom(true, true, 85.000000, -38.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.LineSide = registerVal14
	local registerVal15 = CoD.CPDifficultyInGameChangeWarning.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, -576.000000, -272.000000)
	registerVal15:setTopBottom(true, false, 352.500000, 468.500000)
	registerVal1:addElement(registerVal15)
	registerVal1.CPDifficultyInGameChangeWarning = registerVal15
	local registerVal16 = CoD.FE_TitleLineSingle.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, true, 1164.000000, 3.990000)
	registerVal16:setTopBottom(false, true, -1.750000, 2.250000)
	registerVal1:addElement(registerVal16)
	registerVal1.FETitleLineSingle = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, 565.000000, 601.000000)
	registerVal17:setTopBottom(true, false, 552.250000, 555.750000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.pixelU = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -240.000000, -204.000000)
	registerVal18:setTopBottom(true, false, 551.250000, 554.750000)
	registerVal18:setZRot(180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.pixelU0 = registerVal18
	local registerVal19 = CoD.FE_TitleLineSingle.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, -211.290000, 575.990000)
	registerVal19:setTopBottom(true, false, 551.000000, 555.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.FETitleLineSingle00 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, 565.000000, 601.000000)
	registerVal20:setTopBottom(true, false, 596.250000, 599.750000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal20)
	registerVal1.pixelU1 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -240.000000, -204.000000)
	registerVal21:setTopBottom(true, false, 595.250000, 598.750000)
	registerVal21:setZRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal21)
	registerVal1.pixelU00 = registerVal21
	local registerVal22 = CoD.FE_TitleLineSingle.new(registerVal1, arg0)
	registerVal22:setLeftRight(false, false, -211.290000, 575.990000)
	registerVal22:setTopBottom(true, false, 595.000000, 599.000000)
	registerVal1:addElement(registerVal22)
	registerVal1.FETitleLineSingle000 = registerVal22
	local function __FUNC_2A2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal5, "desc", true, __FUNC_2A2A_)
	local function __FUNC_2AE2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal5, "displayText", true, __FUNC_2AE2_)
	local function __FUNC_2B9A_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal5, nil, false, __FUNC_2B9A_)
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_2BEA_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal24.DefaultClip = __FUNC_2BEA_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_2C4A_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal1.Description:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal24.DefaultClip = __FUNC_2C4A_
	registerVal23.cpzm = registerVal24
	registerVal1.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "cpzm"
	local function __FUNC_2D4B_(arg0, arg1, arg2)
		return IsCampaignZombies()
	end

	registerVal26.condition = __FUNC_2D4B_
	registerVal25 = {registerVal26}
	registerVal1:mergeStateConditions(registerVal25)
	local function __FUNC_2D9B_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "MenuFrame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "MenuFrame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2D9B_)
	local function __FUNC_2F21_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2F74_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2F21_, __FUNC_2F74_, false)
	local function __FUNC_3071_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_30A4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3071_, __FUNC_30A4_, false)
	registerVal5.id = "DifficultyList"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.DifficultyList:processEvent(registerVal25)
	end
	local function __FUNC_31A2_(arg1)
		arg1.DifficultyList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.CPConfirmSelectionBox:close()
		arg1.CPDifficultyImagePreview:close()
		arg1.CPDifficultyInGameChangeWarning:close()
		arg1.FETitleLineSingle:close()
		arg1.FETitleLineSingle00:close()
		arg1.FETitleLineSingle000:close()
		arg1.Description:close()
		arg1.BriefingHeading:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPSelectDifficulty.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_31A2_)
	if __FUNC_8BB_ then
		__FUNC_8BB_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CPSelectDifficulty = __FUNC_9BE_
