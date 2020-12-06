-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_204_(arg0, arg1)
	CoD.AARUtilityZM.SetupUIModels(arg1)
end

local function __FUNC_28E_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ZMAAR")
	if __FUNC_204_ then
		__FUNC_204_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ZMAAR.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.CategoryListPanel = registerVal4
	local registerVal5 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 127.000000, 653.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TabFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal6:setTopBottom(false, false, -361.000000, -238.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleBacking = registerVal6
	local registerVal7 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal7:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal7.Tabs.grid:setDataSource("AARTabs")
	registerVal1:addElement(registerVal7)
	registerVal1.tabBar = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MPUI_AAR_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_AAR_CAPS"))
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local function __FUNC_EB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:changeFrameWidget(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal7.Tabs.grid, "tabWidget", true, __FUNC_EB1_)
	local function __FUNC_F4E_(arg1, arg2)
		local registerVal3 = IsOwedVials(arg0)
		if registerVal3 then
			OpenGenericSmallPopup(registerVal1, arg0, "MENU_ERROR", "ZMUI_VIAL_ERR_DW_DOWN", "", "", "", "")
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_F4E_)
	local function __FUNC_1066_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_10B8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1066_, __FUNC_10B8_, false)
	local function __FUNC_11B8_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_120C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_11B8_, __FUNC_120C_, false)
	local function __FUNC_1309_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRecentGameBookmarked(arg2)
		if not registerVal4 then
			FileshareBookmarkRecentGame(arg2)
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		end
	end

	local function __FUNC_13D5_(arg0, arg1, arg2)
		local registerVal3 = IsRecentGameBookmarked(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_BOOKMARK_GAME")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "B", __FUNC_1309_, __FUNC_13D5_, false)
	local function __FUNC_1516_(arg1)
		ForceLobbyButtonUpdate(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1516_)
	registerVal5.id = "TabFrame"
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
		registerVal1.TabFrame:processEvent(registerVal11)
	end
	local function __FUNC_156C_(arg1)
		arg1.tabBar:close()
		arg1.MenuFrame:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ZMAAR.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_156C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ZMAAR = __FUNC_28E_
