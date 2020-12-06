-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.FileshareSlotsFull(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FileshareSlotsFull")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareSlotsFull.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3.ButtonList:setDataSource("FileshareSlotsFullButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize(""))
	registerVal3.Title:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_TITLE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize(""))
	registerVal3.ErrorSubtitle:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal4:setTopBottom(true, false, 568.210000, 600.210000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftButtonBar = registerVal4
	local function __FUNC_BDA_(arg1, arg2)
		GoBackMultiple(registerVal1, arg0, "2")
		FileshareDeleteDone(registerVal1, arg1, arg0, "", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_success", __FUNC_BDA_)
	local function __FUNC_CBF_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_D10_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_CBF_, __FUNC_D10_, false)
	local function __FUNC_E0D_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_E40_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E0D_, __FUNC_E40_, false)
	registerVal3.id = "FullscreenPopupTemplate0"
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.FullscreenPopupTemplate0:processEvent(registerVal7)
	end
	local function __FUNC_F3E_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FileshareSlotsFull.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F3E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

