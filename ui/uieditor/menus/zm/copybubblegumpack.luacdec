-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumPackListItem")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
local function __FUNC_2C5_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].bubbleGumPackModel)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		for index3=1.000000, #arg0.bubblegumPacksList.layoutItems, 1.000000 do
			local registerVal8 = arg0.bubblegumPacksList.layoutItems[index3][1.000000]:getModel()
			if arg0.bubblegumPacksList.layoutItems[index3][1.000000] and registerVal2 == registerVal8 then
				arg0.bubblegumPacksList.layoutItems[index3][1.000000]:setState("Disabled")
			else
			end
		end
	end
	local registerVal5 = {}
	registerVal5.name = "gain_focus"
	registerVal5.controller = arg1
	arg0.bubblegumPacksList:processEvent(registerVal5)
end

local function __FUNC_4DE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CopyBubblegumPack")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CopyBubblegumPack.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_cac_version5_backdrop720p"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setRGB(0.310000, 0.310000, 0.310000)
	registerVal4:setAlpha(0.480000)
	registerVal1:addElement(registerVal4)
	registerVal1.Image0 = registerVal4
	local registerVal5 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.scorestreakVignetteContainer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 118.000000, 556.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.750000)
	registerVal1:addElement(registerVal6)
	registerVal1.topBorder = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 86.070000, 720.070000)
	registerVal7:setTopBottom(true, false, 139.850000, 164.850000)
	registerVal7:setText(Engine.Localize("MPUI_COPY_BUBBLEGUM_PACK_TITLE"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.copyTitle = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 86.070000, 366.070000)
	registerVal8:setTopBottom(true, false, 188.250000, 526.250000)
	registerVal8:setDataSource("BubbleGumPacks")
	registerVal8:setWidgetType(CoD.BubbleGumPackListItem)
	registerVal8:setVerticalCount(10.000000)
	local function __FUNC_13B0_(arg1, arg2)
		local registerVal3 = IsBubbleGumPackClassSelectedBubbleGumPack(registerVal1, arg1)
		if registerVal3 then
			SetElementState(registerVal1, arg1, arg0, "Disabled")
			PlayClipOnListItemElement(registerVal1, arg1, arg0, "Focus")
		end
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_13B0_)
	local function __FUNC_14BC_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_14BC_)
	local function __FUNC_164F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_164F_)
	local function __FUNC_171E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsBubbleGumPackClassSelectedBubbleGumPack(arg1, arg0)
		if not registerVal4 then
			BubblegumPackOptionsCopy(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_17D1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsBubbleGumPackClassSelectedBubbleGumPack(arg1, arg0)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_171E_, __FUNC_17D1_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.bubblegumPacksList = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 114.000000, 122.000000)
	registerVal9:setRGB(0.900000, 0.900000, 0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListLine = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -1.000000, 1280.000000)
	registerVal10:setTopBottom(true, false, 552.000000, 560.000000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal10)
	registerVal1.CategoryListLine0 = registerVal10
	local registerVal11 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 0.000000, 67.870000)
	registerVal11:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.ElemsSideList = registerVal11
	local registerVal12 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_1921_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_1921_)
	registerVal1:addElement(registerVal12)
	registerVal1.feFooterContainer = registerVal12
	local function __FUNC_19B5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1A08_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_19B5_, __FUNC_1A08_, false)
	registerVal8.id = "bubblegumPacksList"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.bubblegumPacksList:processEvent(registerVal15)
	end
	local function __FUNC_1B05_(arg1)
		arg1.scorestreakVignetteContainer:close()
		arg1.bubblegumPacksList:close()
		arg1.ElemsSideList:close()
		arg1.feFooterContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CopyBubblegumPack.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1B05_)
	if __FUNC_2C5_ then
		__FUNC_2C5_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CopyBubblegumPack = __FUNC_4DE_
