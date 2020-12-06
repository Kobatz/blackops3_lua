-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CodCaster.CodCasterTeamLogoButton")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsTitle")
local function __FUNC_348_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "TeamIdentity")
	if registerVal2 then
		registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "team"))
		local registerVal4 = Engine.ToUpper(Engine.Localize(("CODCASTER_" .. registerVal3 .. "_LOGO")))
		arg0.GenericMenuFrame.titleLabel:setText(registerVal4)
		arg0.GenericMenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(registerVal4)
	end
end

local function __FUNC_600_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EditTeamLogo")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EditTeamLogo.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_1816_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_1816_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_18A2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_18A2_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_NEW"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 595.500000, 1104.500000)
	registerVal6:setTopBottom(true, false, 144.000000, 462.500000)
	registerVal6:setAlpha(0.450000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.090301, 0.090301, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.BoxButtonLrgIdle = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 601.500000, 1098.120000)
	registerVal7:setTopBottom(true, false, 147.000000, 459.500000)
	registerVal7:setAlpha(0.430000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.008054, 0.012800, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Border = registerVal7
	registerVal8 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 68.500000, 502.500000)
	registerVal8:setTopBottom(true, false, 148.000000, 529.000000)
	registerVal8:setDataSource("TeamIdentityLogoList")
	registerVal8:setWidgetType(CoD.CodCasterTeamLogoButton)
	registerVal8:setHorizontalCount(3.000000)
	registerVal8:setVerticalCount(4.000000)
	registerVal8:setSpacing(7.000000)
	local function __FUNC_19CA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_19CA_)
	local function __FUNC_1B85_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1B85_)
	local function __FUNC_1D17_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1D17_)
	local function __FUNC_1DE6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			SetTeamIdentityTeamLogo(registerVal1, arg0, arg2)
			SetTeamIdentityProfileValue(registerVal1, arg0, arg2, "icon")
			SaveShoutcasterSettings(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_1F19_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1DE6_, __FUNC_1F19_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.LogoList = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 595.500000, 1092.120000)
	registerVal9:setTopBottom(true, false, 146.000000, 458.500000)
	registerVal1:addElement(registerVal9)
	registerVal1.LogoImageHintImage = registerVal9
	local registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	local registerVal11 = CoD.matchSettingsTitle.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 598.500000, 1052.500000)
	registerVal11:setTopBottom(true, false, 478.500000, 513.500000)
	registerVal1:addElement(registerVal11)
	registerVal1.TitleBox = registerVal11
	local function __FUNC_204A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal8, "ref", true, __FUNC_204A_)
	local function __FUNC_20FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.TitleBox.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "name", true, __FUNC_20FC_)
	local function __FUNC_21FB_(arg1, arg2)
		HandleTeamIdentityKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_21FB_)
	local function __FUNC_22A9_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2331_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_22A9_, __FUNC_2331_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "LogoList"
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.LogoList:processEvent(registerVal14)
	end
	local function __FUNC_242D_(arg1)
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.FadeForStreamer:close()
		arg1.GenericMenuFrame:close()
		arg1.LogoList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TitleBox:close()
		arg1.LogoImageHintImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EditTeamLogo.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_242D_)
	if __FUNC_348_ then
		__FUNC_348_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EditTeamLogo = __FUNC_600_
