-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.codcaster_options_slider_small")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_ResetFilter")
local function __FUNC_26B_(arg0, arg1)
	arg0.animateInFromOffset = 420.000000
end

local function __FUNC_2BA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Leaderboard_Filters")
	if __FUNC_26B_ then
		__FUNC_26B_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Leaderboard_Filters.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -530.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.040000, 0.040000, 0.040000)
	registerVal3:setAlpha(0.970000)
	registerVal1:addElement(registerVal3)
	registerVal1.leftBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -530.000000, -529.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.420000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftLineStripe = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -486.000000, -263.500000)
	registerVal5:setTopBottom(true, false, 160.000000, 194.000000)
	registerVal5:setRGB(1.000000, 0.390000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_FILTER_SERVERS_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.FilterTitle = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -501.000000, -51.000000)
	registerVal6:setTopBottom(true, false, 206.000000, 312.000000)
	registerVal6:setWidgetType(CoD.codcaster_options_slider_small)
	registerVal6:setVerticalCount(3.000000)
	registerVal6:setDataSource("LeaderboardFilterOptions")
	registerVal1:addElement(registerVal6)
	registerVal1.FilterList = registerVal6
	local registerVal7 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -708.000000, -276.000000)
	registerVal7:setTopBottom(false, true, -32.000000, 0.000000)
	local function __FUNC_107E_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_107E_)
	registerVal1:addElement(registerVal7)
	registerVal1.fefooterRighSlideIn = registerVal7
	local registerVal8 = CoD.Leaderboard_ResetFilter.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 779.000000, 1229.000000)
	registerVal8:setTopBottom(true, false, 326.000000, 478.450000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_1111_(arg1, arg2, arg3)
		local registerVal3 = IsCustomLeaderboard(arg0)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1111_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.ResetFilter = registerVal8
	local registerVal9 = {}
	registerVal9.down = registerVal8
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal6
	registerVal8.navigation = registerVal9
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_116D_(arg0, arg1, arg2, arg3)
		Leaderboard_ApplyFilters(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_11F2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_LB_APPLY_FILTER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_116D_, __FUNC_11F2_, false)
	local function __FUNC_12F7_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_1389_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_12F7_, __FUNC_1389_, false)
	local function __FUNC_1485_(arg1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1485_)
	registerVal6.id = "FilterList"
	registerVal7.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "ResetFilter"
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.FilterList:processEvent(registerVal11)
	end
	local function __FUNC_14D9_(arg1)
		arg1.FilterList:close()
		arg1.fefooterRighSlideIn:close()
		arg1.ResetFilter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Leaderboard_Filters.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_14D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Leaderboard_Filters = __FUNC_2BA_
