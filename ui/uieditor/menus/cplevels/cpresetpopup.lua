-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
require("ui.uieditor.widgets.GameSettings.GameSettings_OptionsButton")
local function __FUNC_216_(arg0, arg1)
	arg0.animateInFromOffset = 340.000000
end

local function __FUNC_266_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPResetPopup")
	if __FUNC_216_ then
		__FUNC_216_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPResetPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -231.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -355.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.040000, 0.040000, 0.040000)
	registerVal4:setAlpha(0.900000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -355.000000, -354.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.430000)
	registerVal1:addElement(registerVal5)
	registerVal1.leftLineStripe = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 962.500000, 1216.000000)
	registerVal6:setTopBottom(true, false, 250.500000, 270.500000)
	registerVal6:setText(Engine.Localize("MENU_NEW_GAME_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.description = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 962.500000, 1185.000000)
	registerVal7:setTopBottom(true, false, 128.000000, 162.000000)
	registerVal7:setRGB(1.000000, 0.410000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_MISSION_OPTIONS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.customClassNameTitile = registerVal7
	local registerVal8 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -447.000000, -15.000000)
	registerVal8:setTopBottom(false, true, -32.000000, 0.000000)
	local function __FUNC_10E6_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_10E6_)
	registerVal1:addElement(registerVal8)
	registerVal1.fefooterRighSlideIn = registerVal8
	local registerVal9 = CoD.GameSettings_OptionsButton.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 962.500000, 1205.500000)
	registerVal9:setTopBottom(true, false, 183.790000, 219.790000)
	registerVal9.icon:setImage(RegisterImage("uie_t7_icon_menu_revertsetting"))
	registerVal9.optionText:setText(Engine.Localize("MENU_NEW_GAME"))
	local function __FUNC_1179_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1179_)
	local function __FUNC_130B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_130B_)
	local function __FUNC_13DA_(arg0, arg1, arg2, arg3)
		ResetCampaign(registerVal1, arg2, arg1)
		return true
	end

	local function __FUNC_1437_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_13DA_, __FUNC_1437_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.ResetCPButton = registerVal9
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Campaign"
	local function __FUNC_1532_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal13.condition = __FUNC_1532_
	registerVal12 = {registerVal13}
	registerVal1:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_157C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal12, __FUNC_157C_)
	local function __FUNC_16A4_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_16F8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_16A4_, __FUNC_16F8_, false)
	registerVal8.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "ResetCPButton"
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.ResetCPButton:processEvent(registerVal12)
	end
	local function __FUNC_17F5_(arg1)
		arg1.fefooterRighSlideIn:close()
		arg1.ResetCPButton:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPResetPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_17F5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CPResetPopup = __FUNC_266_
