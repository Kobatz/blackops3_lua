-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SidePopup.FileshareSidePopupTemplate")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
function LUI.createMenu.LocalScreenshotsOptions(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LocalScreenshotsOptions")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LocalScreenshotsOptions.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -262.000000, 11.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = CoD.FileshareSidePopupTemplate.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 903.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4.Title:setText(Engine.Localize("MENU_OPTIONS"))
	registerVal4.layout.List0:setDataSource("ScreenshotsOptionsButtonList")
	registerVal1:addElement(registerVal4)
	registerVal1.FileshareSidePopupTemplate0 = registerVal4
	local registerVal5 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal5:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.fefooterRighSlideIn = registerVal5
	local function __FUNC_CBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.layout.hintText.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal4.layout.List0, "hintText", true, __FUNC_CBD_)
	local function __FUNC_DD2_(arg1, arg2)
		FileshareShowPublishSuccessToast(registerVal1, arg1, arg0)
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_success", __FUNC_DD2_)
	local function __FUNC_E9A_(arg1, arg2)
		FileshareShowDeleteSuccessToast(registerVal1, arg1, arg0)
		FileshareDeleteDone(registerVal1, arg1, arg0, "", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_success", __FUNC_E9A_)
	local function __FUNC_F85_(arg1, arg2)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_failure", __FUNC_F85_)
	local function __FUNC_1045_(arg1, arg2)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_failure", __FUNC_1045_)
	local function __FUNC_1105_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_1157_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1105_, __FUNC_1157_, false)
	local function __FUNC_1252_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_12A3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_CLOSE1")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1252_, __FUNC_12A3_, false)
	local function __FUNC_1398_(arg1)
		ClearSavedState(registerVal1, arg0)
		PreserveThumbnails(arg0, false)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1398_)
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
	local function __FUNC_1419_(arg1)
		arg1.FileshareSidePopupTemplate0:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LocalScreenshotsOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1419_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

