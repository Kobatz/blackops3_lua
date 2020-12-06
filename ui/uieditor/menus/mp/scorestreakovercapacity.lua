-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.overCapacityScorestreakButtonNew")
local function __FUNC_247_(arg0, arg1)
	local function __FUNC_295_(arg0, arg1)
		local registerVal5 = GetItemImageFromIndex(arg1)
		arg0.selectedScorestreak:setImage(RegisterImage((registerVal5 .. "_menu_large")))
	end

	arg0.updateSelectedImage = __FUNC_295_
end

local function __FUNC_36A_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ScorestreakOverCapacity")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ScorestreakOverCapacity.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("MPUI_TOO_MANY_STREAKS_CAPS"))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 450.000000, 798.000000)
	registerVal4:setTopBottom(true, false, 223.250000, 248.250000)
	registerVal4:setRGB(0.500000, 0.510000, 0.520000)
	registerVal4:setText(Engine.Localize("MPUI_TOO_MANY_STREAKS_DESC"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.desc = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 92.000000, 330.000000)
	registerVal5:setTopBottom(true, false, 226.190000, 464.190000)
	registerVal1:addElement(registerVal5)
	registerVal1.selectedScorestreak = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 450.000000, 830.000000)
	registerVal6:setTopBottom(true, false, 261.000000, 381.000000)
	registerVal6:setDataSource("EquippedScorestreaksList")
	registerVal6:setWidgetType(CoD.overCapacityScorestreakButtonNew)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setSpacing(10.000000)
	local function __FUNC_1910_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1910_)
	local function __FUNC_1AA3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1AA3_)
	local function __FUNC_1B72_(arg0, arg1, arg2, arg3)
		RemoveScorestreak(arg1, arg0, arg2)
		ClearMenuSavedState(arg1)
		GoBackAndUpdateStateOnPreviousMenu(registerVal1, arg2)
		return true
	end

	local function __FUNC_1C38_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1B72_, __FUNC_1C38_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.selectionList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 828.000000, 864.000000)
	registerVal7:setTopBottom(false, false, -99.750000, -96.250000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.Image5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 828.000000, 864.000000)
	registerVal8:setTopBottom(false, false, 19.500000, 23.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 416.000000, 452.000000)
	registerVal9:setTopBottom(false, false, -99.750000, -96.250000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 416.000000, 452.000000)
	registerVal10:setTopBottom(false, false, 19.500000, 21.250000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal11:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image3 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal12:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image4 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 25.500000, 30.500000)
	registerVal13:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal13:setAlpha(0.800000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.LineSide0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 7.000000, 23.000000)
	registerVal14:setTopBottom(true, false, 295.000000, 347.000000)
	registerVal14:setZoom(-5.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image40 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal15:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Image30 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal16:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal16:setZRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Image41 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 1246.500000, 1251.500000)
	registerVal17:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal17:setAlpha(0.800000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.LineSide00 = registerVal17
	local function __FUNC_1D36_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_1D68_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1D36_, __FUNC_1D68_, false)
	local function __FUNC_1E66_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1EE1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1E66_, __FUNC_1EE1_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "selectionList"
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	local registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.selectionList:processEvent(registerVal20)
	end
	local function __FUNC_1FDD_(arg1)
		arg1.background:close()
		arg1.selectionList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ScorestreakOverCapacity.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1FDD_)
	if __FUNC_247_ then
		__FUNC_247_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ScorestreakOverCapacity = __FUNC_36A_
