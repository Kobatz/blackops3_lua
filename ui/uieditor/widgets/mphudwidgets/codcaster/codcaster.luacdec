-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CodCaster.CodCasterSettingsSideBar")
require("ui.uieditor.menus.CodCaster.CodCasterQuickSettingsSideBar")
require("ui.uieditor.menus.CodCaster.CodCasterKeyboardShortcuts")
require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterSpectate")
require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterButtonBar")
require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterHeaderWidget")
require("ui.uieditor.widgets.CodCaster.CodCasterPlayerList")
require("ui.uieditor.widgets.MPHudWidgets.CodCaster.CodCasterMap")
require("ui.uieditor.widgets.CodCaster.CodCasterMiniMap")
local function __FUNC_49F_(arg0, arg1)
	arg0.m_focusable = true
	arg0.m_disableNavigation = true
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "consoleKeyboardConnected")
end

local function __FUNC_58F_(arg0, arg1)
	local registerVal2 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_qs_listen_in")
	if not registerVal2 then
		return 
	end
	if arg1 < 0.000000 then
		return 
	end
	local registerVal3 = Engine.GetTeamID(arg0, arg1)
	if registerVal3 ~= -1.000000 then
		Engine.Exec(arg0, ("shoutcastSetListenInTeam " .. registerVal3))
	end
end

local function __FUNC_6E4_(arg0)
	local registerVal1 = CoD.ShoutcasterProfileVarBool(arg0, "shoutcaster_qs_listen_in")
	if not registerVal1 then
		Engine.Exec(arg0, ("shoutcastSetListenInTeam " .. Enum.team_t.TEAM_NEUTRAL))
		return 
	end
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "deadSpectator.playerIndex")
	if registerVal2 then
		registerVal3 = Engine.GetModelValue(registerVal2)
		__FUNC_58F_(arg0, registerVal3)
	end
end

local function __FUNC_906_(arg0, arg1, arg2)
	if CoD.isPC then
		local registerVal5 = {}
		registerVal5.name = "input_source_changed"
		arg0:processEvent(registerVal5)
	end
	local registerVal6 = Engine.GetModelForController(arg1)
	registerVal5 = Engine.GetModel(registerVal6, "deadSpectator.playerIndex")
	local function __FUNC_BA1_(arg0)
		__FUNC_58F_(arg1, Engine.GetModelValue(arg0))
	end

	arg0:subscribeToModel(registerVal5, __FUNC_BA1_)
	registerVal6 = Engine.GetModelForController(arg1)
	registerVal5 = Engine.GetModel(registerVal6, "CodCaster.profileSettingsUpdated")
	local function __FUNC_C17_(arg0)
		__FUNC_6E4_(arg1)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_C17_)
	registerVal6 = Engine.GetModelForController(arg1)
	registerVal5 = Engine.GetModel(registerVal6, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_C4C_(arg2)
		local registerVal3 = {}
		registerVal3.name = "gain_focus"
		registerVal3.controller = arg1
		arg0:processEvent(registerVal3)
		registerVal3 = {}
		registerVal3.controller = arg1
		arg0:gainFocus(registerVal3)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_C4C_)
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.CodCaster = registerVal5
local function __FUNC_D0B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_49F_ then
		__FUNC_49F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCaster)
	registerVal2.id = "CodCaster"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterSpectate.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -1.000000, 283.000000)
	registerVal3:setTopBottom(false, true, -106.000000, -32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CodCasterSpectate = registerVal3
	local registerVal4 = CoD.CodCasterButtonBar.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CodCasterButtonBar = registerVal4
	local registerVal5 = CoD.CodCasterHeaderWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -276.000000, 276.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 195.000000)
	local function __FUNC_2B71_(arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_2B71_)
	registerVal2:addElement(registerVal5)
	registerVal2.CodCasterHeaderWidget = registerVal5
	local registerVal6 = CoD.CodCasterPlayerList.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -307.000000, 1.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 596.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_2BA4_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		registerVal3 = IsModelValueEqualTo(arg1, "CodCaster.showSettingsSideBar", 1.000000)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playerlist", 1.000000)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_2BA4_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_2DA4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2DA4_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_2F2D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2F2D_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.showSettingsSideBar")
	local function __FUNC_30BA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showSettingsSideBar"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_30BA_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_31EB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_31EB_)
	registerVal2:addElement(registerVal6)
	registerVal2.CodCasterPlayerList = registerVal6
	local registerVal7 = CoD.CodCasterMap.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_331E_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "CodCaster.showFullScreenMap")
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_331E_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CodCaster.showFullScreenMap")
	local function __FUNC_344B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showFullScreenMap"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_344B_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_3579_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3579_)
	registerVal2:addElement(registerVal7)
	registerVal2.OverheadMap = registerVal7
	local registerVal8 = CoD.CodCasterMiniMap.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -60.000000, 418.000000)
	registerVal8:setTopBottom(true, false, -45.000000, 263.000000)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_3706_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_minimap", Enum.ShoutcasterSettingMinimapMode.SHOUTCASTER_SETTING_MINIMAP_MODE_FULL)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "CodCaster.showFullScreenMap")
			registerVal3 = IsModelValueEqualTo(arg1, "CodCaster.showQuickSettingsSideBar", 1.000000)
			if not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_3706_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.profileSettingsUpdated")
	local function __FUNC_3978_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3978_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.showFullScreenMap")
	local function __FUNC_3AAE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showFullScreenMap"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3AAE_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.showQuickSettingsSideBar")
	local function __FUNC_3BDD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showQuickSettingsSideBar"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3BDD_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_3D14_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3D14_)
	registerVal2:addElement(registerVal8)
	registerVal2.CodCasterMiniMap = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_3EA2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterSpectate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterButtonBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterHeaderWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterPlayerList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OverheadMap:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.OverheadMap:setTopBottom(false, false, -360.000000, 360.000000)
		registerVal2.OverheadMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CodCasterMiniMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3EA2_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_4214_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterSpectate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterButtonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterHeaderWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterPlayerList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OverheadMap:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.OverheadMap:setTopBottom(false, false, -360.000000, 360.000000)
		registerVal2.OverheadMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CodCasterMiniMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_4214_
	registerVal9.Hidden = registerVal10
	registerVal10 = {}
	local function __FUNC_4588_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterSpectate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterButtonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterHeaderWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterPlayerList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OverheadMap:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.OverheadMap:setTopBottom(false, false, -360.000000, 360.000000)
		registerVal2.OverheadMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CodCasterMiniMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_4588_
	registerVal9.HiddenCopy = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_48FC_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_48FC_
	local registerVal13 = {}
	registerVal13.stateName = "HiddenCopy"
	local function __FUNC_4AD0_(arg0, arg2, arg3)
		return ShouldHideCodCasterHud(arg1)
	end

	registerVal13.condition = __FUNC_4AD0_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_4B2C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_4B2C_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_4CB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_4CB8_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_4E48_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_4E48_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_4FD1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_4FD1_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "scoreboard.team1.count")
	local function __FUNC_5158_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team1.count"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5158_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "scoreboard.team2.count")
	local function __FUNC_5284_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "scoreboard.team2.count"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_5284_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.showFullScreenMap")
	local function __FUNC_53B0_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CodCaster.showFullScreenMap"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_BACK)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_53B0_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.showSettingsSideBar")
	local function __FUNC_55DF_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CodCaster.showSettingsSideBar"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_BACK)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_55DF_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "forceScoreboard")
	local function __FUNC_57A7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "forceScoreboard"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_NONE)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_57A7_)
	local function __FUNC_5A1F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueTrue(arg2, "CodCaster.showFullScreenMap")
		registerVal4 = IsModelValueEqualTo(arg2, "CodCaster.showSettingsSideBar", 1.000000)
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 and not registerVal4 and not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "forceScoreboard")
			return true
		end
	end

	local function __FUNC_5BE9_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueTrue(arg2, "CodCaster.showFullScreenMap")
		registerVal3 = IsModelValueEqualTo(arg2, "CodCaster.showSettingsSideBar", 1.000000)
		registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_BACK, nil, __FUNC_5A1F_, __FUNC_5BE9_, false)
	local function __FUNC_5E14_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsModelValueTrue(arg2, "CodCaster.showFullScreenMap")
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 and not registerVal4 then
			ToggleControllerModelValueBoolean(arg2, "CodCaster.showFullScreenMap")
			SetControllerModelValue(arg2, "forceScoreboard", 0.000000)
			return true
		else
			registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal4 then
				ToggleControllerModelValueBoolean(arg2, "CodCaster.showFullScreenMap")
				return true
			end
		end
	end

	local function __FUNC_6003_(arg0, arg1, arg2)
		local registerVal3 = IsModelValueTrue(arg2, "CodCaster.showFullScreenMap")
		registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "M", __FUNC_5E14_, __FUNC_6003_, false)
	local function __FUNC_624F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterProfileValue(arg2, "shoutcaster_toolbar")
			return true
		end
	end

	local function __FUNC_635C_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "SPACE", __FUNC_624F_, __FUNC_635C_, false)
	local function __FUNC_64D4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleControllerModelValueBoolean(arg2, "CodCaster.showLoadout")
			return true
		end
	end

	local function __FUNC_65EC_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "R", __FUNC_64D4_, __FUNC_65EC_, false)
	local function __FUNC_6766_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "CodCaster.showSettingsSideBar")
			SetPerControllerTableProperty(arg2, "codcasterSettingsSideBarPrimaryTab", "displaySettings")
			OpenPopupWithPriority(registerVal2, "CodCasterSettingsSideBar", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_6A0E_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_RTRIG, "S", __FUNC_6766_, __FUNC_6A0E_, false)
	local function __FUNC_6C08_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "CodCaster.showQuickSettingsSideBar")
			OpenPopupWithPriority(registerVal2, "CodCasterQuickSettingsSideBar", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_6E3C_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_LTRIG, "Q", __FUNC_6C08_, __FUNC_6E3C_, false)
	local function __FUNC_7038_(arg0, arg1, arg2, arg3)
		SendButtonPressToSiblingMenu(arg1, "T7HudMenuGameMode", arg2, arg3, Enum.LUIButton.LUI_KEY_DOWN)
		return true
	end

	local function __FUNC_7118_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_7038_, __FUNC_7118_, false)
	local function __FUNC_7204_(arg0, arg1, arg2, arg3)
		SendButtonPressToSiblingMenu(arg1, "T7HudMenuGameMode", arg2, arg3, Enum.LUIButton.LUI_KEY_UP)
		return true
	end

	local function __FUNC_72E2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_7204_, __FUNC_72E2_, false)
	local function __FUNC_73CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			OpenPopupWithPriority(registerVal2, "CodCasterKeyboardShortcuts", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_750C_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "K", __FUNC_73CA_, __FUNC_750C_, false, true)
	local function __FUNC_767C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateNextAlivePlayer(arg2)
			return true
		end
	end

	local function __FUNC_7767_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "SPACE", __FUNC_767C_, __FUNC_7767_, false, true)
	local function __FUNC_78D4_(arg0, arg1, arg2, arg3)
		ToggleInGamePauseMenu(arg2)
		return true
	end

	local function __FUNC_7933_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "ESCAPE", __FUNC_78D4_, __FUNC_7933_, false, true)
	local function __FUNC_7A1C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_playerlist")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_7BD4_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "F1", __FUNC_7A1C_, __FUNC_7BD4_, false, true)
	local function __FUNC_7D44_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_scorepanel")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_7EFC_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "F2", __FUNC_7D44_, __FUNC_7EFC_, false, true)
	local function __FUNC_806C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_playercard")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_8224_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "F3", __FUNC_806C_, __FUNC_8224_, false, true)
	local function __FUNC_8394_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_playerhud")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_854B_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "F4", __FUNC_8394_, __FUNC_854B_, false, true)
	local function __FUNC_86B8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "0")
			return true
		end
	end

	local function __FUNC_87C6_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "1", __FUNC_86B8_, __FUNC_87C6_, false, true)
	local function __FUNC_8934_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "0")
			return true
		end
	end

	local function __FUNC_8A42_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_END", __FUNC_8934_, __FUNC_8A42_, false, true)
	local function __FUNC_8BB0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "1")
			return true
		end
	end

	local function __FUNC_8CBE_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "2", __FUNC_8BB0_, __FUNC_8CBE_, false, true)
	local function __FUNC_8E2C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "1")
			return true
		end
	end

	local function __FUNC_8F3A_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_DOWNARROW", __FUNC_8E2C_, __FUNC_8F3A_, false, true)
	local function __FUNC_90A8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "2")
			return true
		end
	end

	local function __FUNC_91B6_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "3", __FUNC_90A8_, __FUNC_91B6_, false, true)
	local function __FUNC_9324_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "2")
			return true
		end
	end

	local function __FUNC_9432_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_PGDN", __FUNC_9324_, __FUNC_9432_, false, true)
	local function __FUNC_95A0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "3")
			return true
		end
	end

	local function __FUNC_96AE_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "4", __FUNC_95A0_, __FUNC_96AE_, false, true)
	local function __FUNC_981C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team1", "3")
			return true
		end
	end

	local function __FUNC_992A_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_LEFTARROW", __FUNC_981C_, __FUNC_992A_, false, true)
	local function __FUNC_9A98_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "0")
			return true
		end
	end

	local function __FUNC_9BA6_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "5", __FUNC_9A98_, __FUNC_9BA6_, false, true)
	local function __FUNC_9D14_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "0")
			return true
		end
	end

	local function __FUNC_9E22_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_5", __FUNC_9D14_, __FUNC_9E22_, false, true)
	local function __FUNC_9F90_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "1")
			return true
		end
	end

	local function __FUNC_A09E_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "6", __FUNC_9F90_, __FUNC_A09E_, false, true)
	local function __FUNC_A20C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "1")
			return true
		end
	end

	local function __FUNC_A31A_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_RIGHTARROW", __FUNC_A20C_, __FUNC_A31A_, false, true)
	local function __FUNC_A488_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "2")
			return true
		end
	end

	local function __FUNC_A596_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "7", __FUNC_A488_, __FUNC_A596_, false, true)
	local function __FUNC_A704_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "2")
			return true
		end
	end

	local function __FUNC_A812_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_HOME", __FUNC_A704_, __FUNC_A812_, false, true)
	local function __FUNC_A980_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "3")
			return true
		end
	end

	local function __FUNC_AA8E_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "8", __FUNC_A980_, __FUNC_AA8E_, false, true)
	local function __FUNC_ABFC_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			SpectateScoreboardPlayer(arg2, "team2", "3")
			return true
		end
	end

	local function __FUNC_AD0A_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "KP_UPARROW", __FUNC_ABFC_, __FUNC_AD0A_, false, true)
	local function __FUNC_AE78_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterProfileValue(arg2, "shoutcaster_toolbar")
			return true
		end
	end

	local function __FUNC_AF88_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "TAB", __FUNC_AE78_, __FUNC_AF88_, false, true)
	local function __FUNC_B0F8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "codcaster.showQuickSettingsSideBar")
			OpenPopupWithPriority(registerVal2, "CodCasterQuickSettingsSideBar", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_B2FB_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal3 = ScoreboardVisible(arg2)
		registerVal3 = GameEnded(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "Q", __FUNC_B0F8_, __FUNC_B2FB_, false, true)
	local function __FUNC_B4BE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal4 = ScoreboardVisible(arg2)
		registerVal4 = GameEnded(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "codcaster.showSettingsSideBar")
			SetPerControllerTableProperty(arg2, "codcasterSettingsSideBarPrimaryTab", "displaySettings")
			OpenPopupWithPriority(registerVal2, "CodCasterSettingsSideBar", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_B735_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal3 = ScoreboardVisible(arg2)
		registerVal3 = GameEnded(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "W", __FUNC_B4BE_, __FUNC_B735_, false, true)
	local function __FUNC_B8FA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "codcaster.showSettingsSideBar")
			SetPerControllerTableProperty(arg2, "codcasterSettingsSideBarPrimaryTab", "loadoutSettings")
			OpenPopupWithPriority(registerVal2, "CodCasterSettingsSideBar", arg2, 100.000000)
			SetLuiKeyCatcher(true)
			return true
		end
	end

	local function __FUNC_BB1B_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "E", __FUNC_B8FA_, __FUNC_BB1B_, false, true)
	local function __FUNC_BC88_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_thirdperson")
			return true
		end
	end

	local function __FUNC_BDA8_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "T", __FUNC_BC88_, __FUNC_BDA8_, false, true)
	local function __FUNC_BF18_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterProfileValue(arg2, "shoutcaster_lo_perks")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			return true
		end
	end

	local function __FUNC_C08D_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "P", __FUNC_BF18_, __FUNC_C08D_, false, true)
	local function __FUNC_C1FC_(arg0, arg1, arg2, arg3)
		ToggleScoreboard(arg2)
		return true
	end

	local function __FUNC_C256_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "S", __FUNC_C1FC_, __FUNC_C256_, false, true)
	local function __FUNC_C340_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleControllerModelValueBoolean(arg2, "CodCaster.showLoadout")
			return true
		end
	end

	local function __FUNC_C458_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "L", __FUNC_C340_, __FUNC_C458_, false, true)
	local function __FUNC_C5C8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_xray")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_C77A_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "X", __FUNC_C5C8_, __FUNC_C77A_, false, true)
	local function __FUNC_C8E8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterQuickSettings(registerVal2, arg0, arg2, "shoutcaster_qs_playernumbers")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			SaveShoutcasterSettings(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_CAA3_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "N", __FUNC_C8E8_, __FUNC_CAA3_, false, true)
	local function __FUNC_CC10_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleControllerModelValueBoolean(arg2, "CodCaster.showFullScreenMap")
			return true
		end
	end

	local function __FUNC_CD2E_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "M", __FUNC_CC10_, __FUNC_CD2E_, false, true)
	local function __FUNC_CE9C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 then
			ToggleCodCasterProfileValue(arg2, "shoutcaster_playernames")
			ToggleControllerModelValueNumber(arg2, "CodCaster.profileSettingsUpdated")
			return true
		end
	end

	local function __FUNC_D014_(arg0, arg1, arg2)
		local registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_NONE, "O", __FUNC_CE9C_, __FUNC_D014_, false, true)
	registerVal4:setModel(arg0.buttonModel, arg1)
	registerVal6.id = "CodCasterPlayerList"
	local function __FUNC_D184_(arg0)
		arg0.CodCasterSpectate:close()
		arg0.CodCasterButtonBar:close()
		arg0.CodCasterHeaderWidget:close()
		arg0.CodCasterPlayerList:close()
		arg0.OverheadMap:close()
		arg0.CodCasterMiniMap:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D184_)
	if __FUNC_906_ then
		__FUNC_906_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCaster.new = __FUNC_D0B_
