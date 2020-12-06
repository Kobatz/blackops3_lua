-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.Common.GroupsBackground")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.Craft.Paintshop.PaintshopLine")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
function LUI.createMenu.GroupEmblemSelect(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GroupEmblemSelect")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open")
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GroupEmblemSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GroupsBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.titleLabel:setText(Engine.Localize("GROUPS_EMBLEM_TITLE_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.GroupsBackground0 = registerVal3
	local registerVal4 = CoD.basicTabList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 65.000000, 1155.000000)
	registerVal4:setTopBottom(true, false, 125.000000, 165.000000)
	registerVal4.grid:setDataSource("GroupsEmblemTabList")
	registerVal4.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal4.grid:setHorizontalCount(4.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Tab = registerVal4
	local registerVal5 = CoD.PaintshopLine.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 65.520000, 1213.520000)
	registerVal5:setTopBottom(true, false, 173.360000, 177.360000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.PaintshopLine0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal6:setTopBottom(true, false, 181.000000, 642.000000)
	registerVal6:setRGB(0.150000, 0.150000, 0.150000)
	registerVal6:setAlpha(0.800000)
	registerVal1:addElement(registerVal6)
	registerVal1.Panel = registerVal6
	local registerVal7 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal7:setTopBottom(true, false, 181.000000, 642.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Frame = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("GROUPS_EMBLEM_TITLE_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_EMBLEM_TITLE_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local function __FUNC_F77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal4.grid, "tabWidget", true, __FUNC_F77_)
	local function __FUNC_1012_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1064_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1012_, __FUNC_1064_, false)
	registerVal7.id = "Frame"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.Frame:processEvent(registerVal11)
	end
	local function __FUNC_1161_(arg1)
		arg1.GroupsBackground0:close()
		arg1.Tab:close()
		arg1.PaintshopLine0:close()
		arg1.MenuFrame:close()
		arg1.Frame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GroupEmblemSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1161_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

