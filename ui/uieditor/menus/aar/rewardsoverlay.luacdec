-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.AAR.MPAAR")
require("ui.uieditor.menus.AAR.ZM.ZMAAR")
require("ui.uieditor.widgets.AAR.RewardsScreen.RewardsCarouselItem")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Scrollbars.horizontalCounter")
local function __FUNC_2CF_(arg0, arg1)
	arg0.RewardsCarousel.m_keepFocusAsParent = true
end

local function __FUNC_340_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "closeAAR")
	local function __FUNC_493_(arg1)
		arg0:close()
	end

	arg0:subscribeToModel(registerVal3, __FUNC_493_, false)
	if CoD.isPC then
		__FUNC_2CF_(arg0, arg1)
	end
end

local function __FUNC_4D7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("RewardsOverlay")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "RewardsOverlay.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -651.000000, 651.000000)
	registerVal3:setTopBottom(false, false, -374.000000, 374.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.Fade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal4)
	registerVal1.Background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 88.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TopBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -651.000000, 651.000000)
	registerVal6:setTopBottom(false, false, -374.000000, 374.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.700000)
	registerVal1:addElement(registerVal6)
	registerVal1.Fade0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 632.000000, 720.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.BottomBg = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 30.000000, 200.000000, nil, false, true, 452.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 0.000000, 3176.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 580.000000)
	registerVal8:setDataSource("RewardsCarousel")
	registerVal8:setWidgetType(CoD.RewardsCarouselItem)
	registerVal8:setHorizontalCount(9.000000)
	registerVal8:setSpacing(30.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.RewardsCarousel = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MPUI_REWARDS_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_REWARDS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.horizontalCounter.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 485.000000, 685.000000)
	registerVal10:setTopBottom(true, false, 623.000000, 648.000000)
	local function __FUNC_12C5_(arg0, arg1)
		SetAsListHorizontalCounter(registerVal1, arg0, "RewardsCarousel")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_12C5_)
	registerVal1:addElement(registerVal10)
	registerVal1.horizontalCounter = registerVal10
	local registerVal14 = Engine.GetGlobalModel()
	local registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_1382_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal13, __FUNC_1382_)
	local function __FUNC_15AD_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMultiplayer()
		if registerVal4 then
			NavigateToMenu(registerVal1, "MPAAR", false, arg2)
			return true
		else
			registerVal4 = IsZombies()
			if registerVal4 then
				GoBackAndOpenOverlayOnParent(registerVal1, "ZMAAR", arg2)
				return true
			end
		end
	end

	local function __FUNC_16BE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			return true
		else
			registerVal3 = IsZombies()
			if registerVal3 then
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_15AD_, __FUNC_16BE_, false)
	local function __FUNC_181A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMultiplayer()
		if registerVal4 then
			NavigateToMenu(registerVal1, "MPAAR", false, arg2)
			return true
		else
			registerVal4 = IsZombies()
			if registerVal4 then
				NavigateToMenu(registerVal1, "ZMAAR", false, arg2)
				return true
			end
		end
	end

	local function __FUNC_1908_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			return false
		else
			registerVal3 = IsZombies()
			if registerVal3 then
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_181A_, __FUNC_1908_, false)
	registerVal8.id = "RewardsCarousel"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	local registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.RewardsCarousel:processEvent(registerVal13)
	end
	local function __FUNC_1A5A_(arg1)
		arg1.RewardsCarousel:close()
		arg1.MenuFrame:close()
		arg1.horizontalCounter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "RewardsOverlay.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1A5A_)
	if __FUNC_340_ then
		__FUNC_340_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.RewardsOverlay = __FUNC_4D7_
