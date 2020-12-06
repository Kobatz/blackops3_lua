-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.AAR.ScoreboardTab.AARScoreboardHeaderWidget")
require("ui.uieditor.widgets.Scoreboard.CP.ScoreboardWidgetCP")
require("ui.uieditor.widgets.AAR.ScoreboardTab.AARScoreboardRowWidget")
require("ui.uieditor.widgets.AAR.ZM.ScoreboardTab.PlayerStylesWidget")
local function __FUNC_370_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_4B5_(arg1)
		local registerVal2 = Engine.GetModelValue(arg1)
		arg0.m_inputDisabled = (not registerVal2)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_4B5_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScoreboardTabWidgetZM = registerVal2
local function __FUNC_544_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardTabWidgetZM)
	registerVal2.id = "ScoreboardTabWidgetZM"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, -94.370000, 625.630000)
	registerVal2:addElement(registerVal3)
	registerVal2.VignetteBack = registerVal3
	local registerVal4 = CoD.AARScoreboardHeaderWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 226.000000, 1003.000000)
	registerVal4:setTopBottom(true, false, 42.500000, 69.500000)
	registerVal4.GametypeAndMapName:setText(Engine.Localize("MENU_SCOREBOARD_HEADER_CP"))
	registerVal2:addElement(registerVal4)
	registerVal2.AARScoreboardHeaderWidget = registerVal4
	local registerVal5 = CoD.ScoreboardWidgetCP.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 138.860000, 1144.860000)
	registerVal5:setTopBottom(true, false, 34.500000, 219.500000)
	registerVal5.ScoreboardFactionScoresListCP0.Team1:setWidgetType(CoD.AARScoreboardRowWidget)
	registerVal5.ScoreboardFactionScoresListCP0.Team2:setWidgetType(CoD.AARScoreboardRowWidget)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "ArabicZombieAAR"
	local function __FUNC_10B6_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentLanguageArabic()
		if registerVal3 then
			registerVal3 = IsZombies()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_10B6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_1130_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1130_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_1258_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1258_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "forceScoreboard")
	local function __FUNC_13E6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "forceScoreboard"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_13E6_)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreboardWidget = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 41.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 204.860000, 1127.860000)
	registerVal6:setTopBottom(true, false, 388.190000, 491.190000)
	registerVal6:setWidgetType(CoD.PlayerStylesWidget)
	registerVal6:setHorizontalCount(4.000000)
	registerVal6:setSpacing(41.000000)
	registerVal6:setDataSource("ZmPlayerStyles")
	registerVal2:addElement(registerVal6)
	registerVal2.PlayerStylesList = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal5
	registerVal6.navigation = registerVal7
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1509_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_15F2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.VignetteBack:setAlpha(0.000000)
		__FUNC_15F2_(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_1509_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "ScoreboardWidget"
	registerVal6.id = "PlayerStylesList"
	local function __FUNC_17A5_(arg0, arg1)
		local registerVal2 = arg0.ScoreboardWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17A5_)
	local function __FUNC_18B0_(arg0)
		arg0.VignetteBack:close()
		arg0.AARScoreboardHeaderWidget:close()
		arg0.ScoreboardWidget:close()
		arg0.PlayerStylesList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18B0_)
	if __FUNC_370_ then
		__FUNC_370_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScoreboardTabWidgetZM.new = __FUNC_544_
