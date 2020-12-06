-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SidePopup.FileshareSidePopupTemplate")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_227_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
	arg0.animateInFromOffset = 355.000000
end

local function __FUNC_2FA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithVariantOptions")
	if __FUNC_227_ then
		__FUNC_227_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithVariantOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -1182.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = CoD.FileshareSidePopupTemplate.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -368.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4.Title:setText(Engine.Localize("MENU_GUNSMITH_VARIANT_OPTIONS"))
	registerVal4.layout.List0:setDataSource("GunsmithOptionsButtonList")
	registerVal1:addElement(registerVal4)
	registerVal1.FileshareSidePopupTemplate0 = registerVal4
	local registerVal5 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal5:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.fefooterRighSlideIn = registerVal5
	local function __FUNC_CAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.layout.hintText.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal4.layout.List0, "description", true, __FUNC_CAE_)
	local function __FUNC_DC2_(arg1, arg2)
		Gunsmith_HandleRenameKeyboardComplete(registerVal1, arg1, arg0, arg2)
		Gunsmith_RenameVariant(registerVal1, arg1, arg0)
		GoBack(registerVal1, arg0)
		ClearMenuSavedState(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_DC2_)
	local function __FUNC_EF1_(arg1, arg2)
		GoBack(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_success", __FUNC_EF1_)
	local function __FUNC_F7D_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_FD0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_F7D_, __FUNC_FD0_, false)
	local function __FUNC_10CD_(arg0)
		ClearMenuSavedState(registerVal1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_10CD_)
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
	local function __FUNC_1121_(arg1)
		arg1.FileshareSidePopupTemplate0:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithVariantOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1121_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithVariantOptions = __FUNC_2FA_
