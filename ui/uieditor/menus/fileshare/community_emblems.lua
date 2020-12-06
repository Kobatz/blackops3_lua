-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelector")
require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
function LUI.createMenu.Community_Emblems(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Community_Emblems")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Community_Emblems.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FileshareSelector.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 984.000000)
	registerVal3:setTopBottom(true, false, 140.500000, 668.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.FileshareSelector0 = registerVal3
	local registerVal4 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal4:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleDotsWidget0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -276.000000, -239.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.CategoryListPanel = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine = registerVal6
	local registerVal7 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 11.000000, 78.870000)
	registerVal7:setTopBottom(true, false, 48.000000, 718.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.ElemsSideList = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEMS_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	local function __FUNC_100C_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_100C_)
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 64.000000, 181.000000)
	registerVal9:setTopBottom(true, false, 11.000000, 32.500000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.MyShowcaseBG = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 68.000000, 160.000000)
	registerVal10:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal10)
	registerVal1.MyShowcase = registerVal10
	local function __FUNC_10A6_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_10F8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_10A6_, __FUNC_10F8_, false)
	registerVal3.id = "FileshareSelector0"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.FileshareSelector0:processEvent(registerVal13)
	end
	local function __FUNC_11F3_(arg1)
		arg1.FileshareSelector0:close()
		arg1.TitleDotsWidget0:close()
		arg1.ElemsSideList:close()
		arg1.MenuFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Community_Emblems.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_11F3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

