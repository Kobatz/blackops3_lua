-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Paintshop.PaintshopLine")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
function LUI.createMenu.Groups(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Groups")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Groups.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.PaintshopLine.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 65.520000, 1213.520000)
	registerVal4:setTopBottom(true, false, 173.360000, 177.360000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.PaintshopLine0 = registerVal4
	local registerVal5 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal5:setTopBottom(true, false, 181.000000, 642.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Frame = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("GROUPS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -274.000000, -235.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListPanel = registerVal7
	local registerVal8 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 0.000000, 4999.000000)
	registerVal8:setTopBottom(true, false, 85.000000, 126.000000)
	registerVal8.Tabs.grid:setDataSource("GroupsMainTabList")
	registerVal1:addElement(registerVal8)
	registerVal1.Tab = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal9:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1133_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1133_)
	local function __FUNC_1182_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1182_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local function __FUNC_1220_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:changeFrameWidget(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal8.Tabs.grid, "tabWidget", true, __FUNC_1220_)
	local function __FUNC_12BE_(arg1, arg2)
		HandleGroupsKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_12BE_)
	local function __FUNC_1367_(arg0, arg1, arg2, arg3)
		GroupsHandleGoBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_13C8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1367_, __FUNC_13C8_, false)
	local function __FUNC_14C5_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_151D_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_14C5_, __FUNC_151D_, false)
	registerVal5.id = "Frame"
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	local registerVal13 = {}
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
		registerVal1.Frame:processEvent(registerVal13)
	end
	local function __FUNC_163F_(arg1)
		arg1.PaintshopLine0:close()
		arg1.MenuFrame:close()
		arg1.Tab:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SelfIdentityBadge:close()
		arg1.Frame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Groups.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_163F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

