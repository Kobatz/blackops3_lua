-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.backgrounds.MP_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_TabIdle")
require("ui.uieditor.widgets.Mods.WidgetModsLoad")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_2D7_(arg0, arg1)
	Engine.Mods_Lists_UpdateMods()
end

local function __FUNC_343_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MenuModsLoad")
	if __FUNC_2D7_ then
		__FUNC_2D7_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MenuModsLoad.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.MP_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.MPBackground = registerVal3
	local registerVal4 = CoD.FE_TabIdle.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, -3.000000, 1277.000000)
	registerVal4:setTopBottom(true, false, 82.500000, 124.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.FETabIdle0 = registerVal4
	local registerVal5 = CoD.WidgetModsLoad.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 75.000000, 675.000000)
	registerVal5:setTopBottom(true, false, 124.500000, 604.500000)
	registerVal1:addElement(registerVal5)
	registerVal1.WidgetModsLoad0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 775.000000, -69.000000)
	registerVal6:setTopBottom(true, false, 93.500000, 117.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal6:setText(Engine.Localize("MENU_DETAILS_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.DetailsTextBox = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 599.000000, -550.000000)
	registerVal7:setTopBottom(true, false, 95.000000, 118.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal7:setText(Engine.Localize("MENU_VERSION_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.VersionText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 75.000000, -966.000000)
	registerVal8:setTopBottom(true, false, 94.500000, 118.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setScale(LanguageOverrideNumber("japanese", 0.750000, 1.000000))
	registerVal8:setText(Engine.Localize("PLATFORM_SELECT_MOD_TO_LOAD"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.ModNameText = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, -192.000000, 64.000000)
	registerVal9:setTopBottom(true, false, -183.000000, -129.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MPUI_LOCAL_GAMES_CAPS"))
	registerVal9:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.Title = registerVal9
	local registerVal10 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal10:setTopBottom(true, false, 95.000000, 712.250000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEMenuLeftGraphics = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_MODS_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MODS_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal15 = Engine.GetGlobalModel()
	local registerVal14 = Engine.GetModel(registerVal15, "ModsGlobal.update")
	local function __FUNC_1411_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "ModsGlobal.update"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_1411_)
	local function __FUNC_15D9_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_162C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_15D9_, __FUNC_162C_, false)
	local function __FUNC_1729_(arg0, arg1, arg2, arg3)
		Mods_RefreshListMods(arg2, arg0)
		return true
	end

	local function __FUNC_178A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REFRESH")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_1729_, __FUNC_178A_, false)
	local function __FUNC_1888_(arg0, arg1, arg2, arg3)
		local registerVal4 = Mods_IsUsingMods()
		if registerVal4 then
			Mods_Unload(arg2, arg0)
			return true
		end
	end

	local function __FUNC_190B_(arg0, arg1, arg2)
		local registerVal3 = Mods_IsUsingMods()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "PLATFORM_MODS_UNLOAD")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "U", __FUNC_1888_, __FUNC_190B_, false)
	registerVal5.id = "WidgetModsLoad0"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal14 = {}
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
		registerVal1.WidgetModsLoad0:processEvent(registerVal14)
	end
	local function __FUNC_1A44_(arg1)
		arg1.MPBackground:close()
		arg1.FETabIdle0:close()
		arg1.WidgetModsLoad0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MenuModsLoad.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1A44_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MenuModsLoad = __FUNC_343_
