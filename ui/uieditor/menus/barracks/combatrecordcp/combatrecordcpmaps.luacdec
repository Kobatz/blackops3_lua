-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
require("ui.uieditor.widgets.CPLevels.CP_FrameBox")
local function __FUNC_391_(arg0, arg1)
	SetGlobalModelValueTrue("inBarracks")
end

local function __FUNC_3FD_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordCPMaps")
	if __FUNC_391_ then
		__FUNC_391_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordCPMaps.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -576.000000, -265.000000)
	registerVal4:setTopBottom(true, true, 84.000000, -58.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	local registerVal6 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_MISSIONS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_MISSIONS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_arena"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 79.000000, 359.000000)
	registerVal7:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal7:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal7:setVerticalCount(10.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setDataSource("CPMapsList")
	registerVal1:addElement(registerVal7)
	registerVal1.ItemList = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, -559.000000, -486.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 150.500000)
	registerVal8:setText(Engine.Localize("CPUI_MISSION_CAPS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.WeaponLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -420.500000, -281.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 150.500000)
	registerVal9:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.StatLabel = registerVal9
	local registerVal10 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -228.200000, -104.200000)
	registerVal10:setTopBottom(true, false, 179.500000, 235.500000)
	registerVal10.StatLabel:setText(Engine.Localize("MENU_SCORE_CAPS"))
	registerVal10.ComparedStatValue:setText(Engine.Localize("42,000"))
	registerVal1:addElement(registerVal10)
	registerVal1.HighestRound = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -104.200000, 19.800000)
	registerVal11:setTopBottom(true, false, 179.500000, 235.500000)
	registerVal11.StatLabel:setText(Engine.Localize("CPUI_ACCOLADES"))
	registerVal11.ComparedStatValue:setText(Engine.Localize("42,000"))
	registerVal1:addElement(registerVal11)
	registerVal1.AverageRounds = registerVal11
	local registerVal12 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, 19.800000, 143.800000)
	registerVal12:setTopBottom(true, false, 179.500000, 235.500000)
	registerVal12.StatLabel:setText(Engine.Localize("CPUI_COLLECTIBLES_CAPS"))
	registerVal12.ComparedStatValue:setText(Engine.Localize("42,000"))
	registerVal1:addElement(registerVal12)
	registerVal1.AverageDowns = registerVal12
	local registerVal13 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, -228.000000, -82.000000)
	registerVal13:setTopBottom(true, false, 147.500000, 177.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.MapNameTitle = registerVal13
	local registerVal14 = CoD.CP_FrameBox.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -229.200000, 389.350000)
	registerVal14:setTopBottom(true, false, 242.000000, 594.150000)
	registerVal1:addElement(registerVal14)
	registerVal1.CPFrameBox = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -228.200000, 388.350000)
	registerVal15:setTopBottom(true, false, 243.650000, 593.150000)
	registerVal1:addElement(registerVal15)
	registerVal1.MapPreview = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, false, 394.750000, 568.250000)
	registerVal16:setTopBottom(true, false, 259.630000, 281.630000)
	registerVal16:setText(Engine.Localize("MENU_DIFFICULTY_COMPLETED"))
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal16)
	registerVal1.CompletedDifficultyLabel = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(false, false, 444.750000, 527.250000)
	registerVal17:setTopBottom(true, false, 379.630000, 399.630000)
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.difficulty = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(false, false, -216.500000, 376.500000)
	registerVal18:setTopBottom(true, false, 539.650000, 561.650000)
	registerVal18:setTTF("fonts/default.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal18)
	registerVal1.MapName = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(false, false, -216.500000, 376.500000)
	registerVal19:setTopBottom(true, false, 561.650000, 579.650000)
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal19)
	registerVal1.MapLocation = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, 444.750000, 527.250000)
	registerVal20:setTopBottom(true, false, 295.630000, 379.630000)
	registerVal1:addElement(registerVal20)
	registerVal1.CompletedDifficultyImage = registerVal20
	local function __FUNC_1EED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "bestScore", true, __FUNC_1EED_)
	local function __FUNC_1FC5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "accoladesFound", true, __FUNC_1FC5_)
	local function __FUNC_209D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "collectiblesFound", true, __FUNC_209D_)
	local function __FUNC_2175_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal7, "name", true, __FUNC_2175_)
	local function __FUNC_2249_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal7, "Image", true, __FUNC_2249_)
	local function __FUNC_22FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal7, "completedDifficultyAlpha", true, __FUNC_22FC_)
	local function __FUNC_2391_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setAlpha(registerVal1)
		end
	end

	registerVal17:linkToElementModel(registerVal7, "completedDifficultyAlpha", true, __FUNC_2391_)
	local function __FUNC_2425_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal7, "completedDifficultyText", true, __FUNC_2425_)
	local function __FUNC_24DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal7, "mapName", true, __FUNC_24DE_)
	local function __FUNC_2596_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal7, "mapLocation", true, __FUNC_2596_)
	local function __FUNC_264E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setAlpha(registerVal1)
		end
	end

	registerVal20:linkToElementModel(registerVal7, "completedDifficultyAlpha", true, __FUNC_264E_)
	local function __FUNC_26E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal7, "completedDifficulty", true, __FUNC_26E1_)
	local function __FUNC_2794_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2794_)
	local function __FUNC_28C2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_293D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_28C2_, __FUNC_293D_, false)
	local function __FUNC_2A39_(arg0)
		SetGlobalModelValueFalse("inBarracks")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_2A39_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "ItemList"
	local registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	local registerVal21 = registerVal1:restoreState()
	if not registerVal21 then
		registerVal23 = {}
		registerVal23.name = "gain_focus"
		registerVal23.controller = arg0
		registerVal1.ItemList:processEvent(registerVal23)
	end
	local function __FUNC_2AA6_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.ItemList:close()
		arg1.HighestRound:close()
		arg1.AverageRounds:close()
		arg1.AverageDowns:close()
		arg1.MapNameTitle:close()
		arg1.CPFrameBox:close()
		arg1.MapPreview:close()
		arg1.CompletedDifficultyLabel:close()
		arg1.difficulty:close()
		arg1.MapName:close()
		arg1.MapLocation:close()
		arg1.CompletedDifficultyImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordCPMaps.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2AA6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordCPMaps = __FUNC_3FD_
