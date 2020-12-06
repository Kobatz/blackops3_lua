-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SidePopup.FileshareSidePopupTemplate")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
function LUI.createMenu.CustomGamesOptions(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomGamesOptions")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesOptions.buttonPrompts")
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
	registerVal4.layout.List0:setDataSource("CustomGamesOptionsButtonList")
	registerVal1:addElement(registerVal4)
	registerVal1.FileshareSidePopupTemplate0 = registerVal4
	local registerVal5 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -464.000000, -32.000000)
	registerVal5:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.fefooterRighSlideIn = registerVal5
	local function __FUNC_C55_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.layout.hintText.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal4.layout.List0, "hintText", true, __FUNC_C55_)
	local function __FUNC_D6A_(arg1, arg2)
		CustomGamesShowSaveSuccessToast(registerVal1, arg0, "")
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_save_success", __FUNC_D6A_)
	local function __FUNC_E3B_(arg1, arg2)
		CustomGamesShowSaveFailureToast(registerVal1, arg0, "")
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_save_failure", __FUNC_E3B_)
	local function __FUNC_F0B_(arg1, arg2)
		CustomGamesProcessDeleteSuccess(registerVal1, arg0, "")
		Close(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_delete_success", __FUNC_F0B_)
	local function __FUNC_FDB_(arg1, arg2)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		GoBack(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_delete_failure", __FUNC_FDB_)
	local function __FUNC_109A_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_10EB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_109A_, __FUNC_10EB_, false)
	local function __FUNC_11E6_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_1237_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_11E6_, __FUNC_1237_, false)
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
	local function __FUNC_1321_(arg1)
		arg1.FileshareSidePopupTemplate0:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomGamesOptions.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1321_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

