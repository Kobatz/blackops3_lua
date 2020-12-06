-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
local function __FUNC_1E8_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
end

local function __FUNC_298_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithClearConfirmation")
	if __FUNC_1E8_ then
		__FUNC_1E8_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithClearConfirmation.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3.Title:setText(Engine.Localize("MENU_GUNSMITH_DELETE_CONFIRMATION"))
	registerVal3.ButtonList:setDataSource("GunsmithOptionsClearButtonList")
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CANNOT_UNDO"))
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_NEW"))
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	registerVal3.id = "FullscreenPopupTemplate0"
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.FullscreenPopupTemplate0:processEvent(registerVal6)
	end
	local function __FUNC_A03_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithClearConfirmation.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A03_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithClearConfirmation = __FUNC_298_
