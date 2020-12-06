-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget_SM")
require("ui.uieditor.widgets.Barracks.CombatRecordMedalButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local function __FUNC_41E_(arg0, arg1)
	local function __FUNC_4D2_(arg2)
		local registerVal3 = {}
		registerVal3.name = "update_state"
		registerVal3.controller = arg1
		arg0:processEvent(registerVal3)
	end

	arg0:linkToElementModel(arg0.FETabBar.Tabs.grid, nil, false, __FUNC_4D2_)
end

local function __FUNC_566_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordMedals")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordMedals.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1DE0_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1DE0_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -400.000000, 400.000000)
	registerVal5:setTopBottom(false, false, -12.500000, 38.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_NO_MEDALS_EARNED"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.NoMedalsText = registerVal5
	registerVal6 = CoD.StartMenu_frame_noBG.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 67.500000, 436.500000)
	registerVal6:setTopBottom(true, false, 149.000000, 618.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.StartMenuframenoBG0 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 252.000000, 256.000000)
	registerVal7:setTopBottom(true, false, 268.500000, 648.500000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.featlineleft000 = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics0 = registerVal8
	local registerVal9 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_BARRACKS_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BARRACKS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal10:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal10.Tabs.grid:setWidgetType(CoD.paintshopTabWidget_SM)
	registerVal10.Tabs.grid:setHorizontalCount(8.000000)
	registerVal10.Tabs.grid:setDataSource("CombatRecordMPMedalTabs")
	local function __FUNC_1E2A_(arg1, arg2)
		CombatRecordMedalsTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal10:registerEventHandler("list_active_changed", __FUNC_1E2A_)
	registerVal1:addElement(registerVal10)
	registerVal1.FETabBar = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 122.500000, 378.500000)
	registerVal11:setTopBottom(true, false, 182.500000, 438.500000)
	registerVal11:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.MedalBacking = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 122.500000, 378.500000)
	registerVal12:setTopBottom(true, false, 182.500000, 438.500000)
	registerVal12:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.MedalImage = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 77.500000, 333.500000)
	registerVal13:setTopBottom(true, false, 558.630000, 580.630000)
	registerVal13:setText(Engine.Localize("MENU_TIMES_EARNED"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal13)
	registerVal1.TimesEarnedHeader = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 77.000000, 333.000000)
	registerVal14:setTopBottom(true, false, 576.630000, 616.630000)
	registerVal14:setRGB(1.000000, 0.800000, 0.400000)
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.TimesEarned = registerVal14
	local registerVal15 = LUI.UIList.new(registerVal1, arg0, 8.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 445.500000, 1209.500000)
	registerVal15:setTopBottom(true, false, 151.000000, 617.000000)
	registerVal15:setWidgetType(CoD.CombatRecordMedalButton)
	registerVal15:setHorizontalCount(4.000000)
	registerVal15:setVerticalCount(3.000000)
	registerVal15:setSpacing(8.000000)
	registerVal15:setVerticalCounter(CoD.verticalCounter)
	registerVal15:setDataSource("CombatRecordMPMedals")
	registerVal1:addElement(registerVal15)
	registerVal1.MedalsGrid = registerVal15
	local registerVal16 = CoD.WeaponNameWidget.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 77.500000, 396.000000)
	registerVal16:setTopBottom(true, false, 467.690000, 501.690000)
	registerVal1:addElement(registerVal16)
	registerVal1.EmblemName = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 78.500000, 396.500000)
	registerVal17:setTopBottom(true, false, 505.690000, 525.690000)
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setLetterSpacing(0.500000)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.EmblemSubtitle = registerVal17
	local function __FUNC_1E96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal15, "backingLarge", true, __FUNC_1E96_)
	local function __FUNC_1F48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal15, "iconLarge", true, __FUNC_1F48_)
	local function __FUNC_1FFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal15, "timesEarned", true, __FUNC_1FFC_)
	local function __FUNC_20B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal15, "name", true, __FUNC_20B6_)
	local function __FUNC_2193_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(AppendString("_DESC", registerVal1)))
		end
	end

	registerVal17:linkToElementModel(registerVal15, "name", true, __FUNC_2193_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_227B_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal1.NoMedalsText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.featlineleft000:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.MedalBacking:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.MedalImage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.TimesEarnedHeader:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.TimesEarned:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MedalsGrid:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.EmblemName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.EmblemSubtitle:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_227B_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_26B5_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal1.NoMedalsText:setLeftRight(false, false, -399.830000, 399.830000)
		registerVal1.NoMedalsText:setTopBottom(false, false, -15.610000, 15.610000)
		registerVal1.NoMedalsText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.featlineleft000:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal1.MedalBacking:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.MedalImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.TimesEarnedHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.TimesEarned:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.MedalsGrid:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.EmblemName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal1.EmblemSubtitle:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_26B5_
	registerVal18.NoMedals = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "NoMedals"
	local function __FUNC_2B81_(arg0, arg1, arg2)
		local registerVal3 = ListElementHasElements(registerVal1, "MedalsGrid")
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_2B81_
	registerVal20 = {registerVal21}
	registerVal1:mergeStateConditions(registerVal20)
	local function __FUNC_2BF8_(arg1, arg2)
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2BF8_)
	local function __FUNC_2CA3_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2CF4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2CA3_, __FUNC_2CF4_, false)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal15.id = "MedalsGrid"
	registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.MedalsGrid:processEvent(registerVal20)
	end
	local function __FUNC_2DF1_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.StartMenuframenoBG0:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.MenuFrame:close()
		arg1.FETabBar:close()
		arg1.MedalsGrid:close()
		arg1.EmblemName:close()
		arg1.MedalBacking:close()
		arg1.MedalImage:close()
		arg1.TimesEarned:close()
		arg1.EmblemSubtitle:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordMedals.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2DF1_)
	if __FUNC_41E_ then
		__FUNC_41E_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordMedals = __FUNC_566_
