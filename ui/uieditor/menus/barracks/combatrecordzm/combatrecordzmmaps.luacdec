-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
function LUI.createMenu.CombatRecordZMMaps(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordZMMaps")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordZMMaps.buttonPrompts")
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
	registerVal4:setTopBottom(false, false, -276.000000, 302.000000)
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
	registerVal6.titleLabel:setText(Engine.Localize("MENU_MAPS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MAPS_CAPS"))
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
	registerVal7:setDataSource("CombatRecordZMMapsList")
	registerVal1:addElement(registerVal7)
	registerVal1.ItemList = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 81.000000, 154.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 150.500000)
	registerVal8:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal8:setText(Engine.Localize("ZMUI_MAP_CAPS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.WeaponLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 270.500000, 359.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 150.500000)
	registerVal9:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal9:setText(Engine.Localize("MENU_ROUND_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.StatLabel = registerVal9
	local registerVal10 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -213.140000, -55.140000)
	registerVal10:setTopBottom(false, false, -203.500000, -147.500000)
	registerVal10.StatLabel:setText(Engine.Localize("CPUI_HIGHEST_ROUND_CAPS"))
	registerVal10.ComparedStatValue:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal10)
	registerVal1.HighestRound = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -55.140000, 68.860000)
	registerVal11:setTopBottom(false, false, -203.500000, -147.500000)
	registerVal11.StatLabel:setText(Engine.Localize("MENU_AVERAGE_ROUNDS_CAPS"))
	registerVal11.ComparedStatValue:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal11)
	registerVal1.AverageRounds = registerVal11
	local registerVal12 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, 68.860000, 192.860000)
	registerVal12:setTopBottom(false, false, -203.500000, -147.500000)
	registerVal12.StatLabel:setText(Engine.Localize("MENU_AVERAGE_DOWNS_CAPS"))
	registerVal12.ComparedStatValue:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal12)
	registerVal1.AverageDowns = registerVal12
	local registerVal13 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, true, -853.140000, -707.140000)
	registerVal13:setTopBottom(true, false, 125.500000, 155.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.MapNameTitle = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 423.860000, 1189.480000)
	registerVal14:setTopBottom(true, false, 229.500000, 551.500000)
	registerVal1:addElement(registerVal14)
	registerVal1.MapPreview = registerVal14
	local function __FUNC_180D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "highestRound", true, __FUNC_180D_)
	local function __FUNC_18E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "avgRounds", true, __FUNC_18E5_)
	local function __FUNC_19BD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal7, "avgDowns", true, __FUNC_19BD_)
	local function __FUNC_1A95_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal7, "name", true, __FUNC_1A95_)
	local function __FUNC_1B69_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal7, "previewImage", true, __FUNC_1B69_)
	local function __FUNC_1C1C_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1C1C_)
	local function __FUNC_1D4A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_1DC5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1D4A_, __FUNC_1DC5_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "ItemList"
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.ItemList:processEvent(registerVal17)
	end
	local function __FUNC_1EC1_(arg1)
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.ItemList:close()
		arg1.HighestRound:close()
		arg1.AverageRounds:close()
		arg1.AverageDowns:close()
		arg1.MapNameTitle:close()
		arg1.MapPreview:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordZMMaps.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1EC1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

