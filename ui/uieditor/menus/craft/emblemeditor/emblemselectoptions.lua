-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SidePopup.FileshareSidePopupTemplate")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_224_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].selectedEmblemModel)
	arg0.animateInFromOffset = 355.000000
end

local function __FUNC_2F9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EmblemSelectOptions")
	if __FUNC_224_ then
		__FUNC_224_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EmblemSelectOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -914.000000, 73.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = CoD.FileshareSidePopupTemplate.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -355.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4.Title:setText(Engine.Localize("MENU_EMBLEM_OPTIONS"))
	registerVal4.layout.List0:setDataSource("EmblemOptionsButtonList")
	registerVal1:addElement(registerVal4)
	registerVal1.FileshareSidePopupTemplate0 = registerVal4
	local registerVal5 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -447.000000, -15.000000)
	registerVal5:setTopBottom(false, true, -32.000000, 0.000000)
	local function __FUNC_CB0_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_CB0_)
	registerVal1:addElement(registerVal5)
	registerVal1.fefooterRighSlideIn = registerVal5
	local function __FUNC_D45_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.layout.hintText.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal4.layout.List0, "description", true, __FUNC_D45_)
	local function __FUNC_E5A_(arg1, arg2)
		EmblemSelect_HandleRenameKeyboardComplete(registerVal1, arg1, arg0, arg2)
		EmblemSelect_RenameEmblem(registerVal1, arg1, arg0)
		GoBack(registerVal1, arg0)
		ClearMenuSavedState(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_E5A_)
	local function __FUNC_F90_(arg1, arg2)
		GoBack(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_success", __FUNC_F90_)
	local function __FUNC_101D_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1070_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_101D_, __FUNC_1070_, false)
	local function __FUNC_116D_(arg0)
		ClearMenuSavedState(registerVal1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_116D_)
	registerVal4.id = "FileshareSidePopupTemplate0"
	registerVal5.buttons:setModel(registerVal1.buttonModel, arg0)
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.FileshareSidePopupTemplate0:processEvent(registerVal8)
	end
	local function __FUNC_11C1_(arg1)
		arg1.FileshareSidePopupTemplate0:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EmblemSelectOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_11C1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EmblemSelectOptions = __FUNC_2F9_
