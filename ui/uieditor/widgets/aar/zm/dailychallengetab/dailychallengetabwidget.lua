-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_DailyChallenge")
require("ui.T7.Utility.OverlayUtility")
local function __FUNC_260_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "AARDailyChallengeModel")
	if not registerVal3 then
		local registerVal5 = Engine.GetModelForController(arg1)
		registerVal4 = Engine.CreateModel(registerVal5, "DailyChallengeWidget")
		registerVal5 = Engine.CreateModel(registerVal4, "Data")
		CoD.ChallengesUtility.UpdateDailyChallengeModel(arg1, registerVal5, Enum.eModes.MODE_ZOMBIES)
	end
	arg0.systemOverlayDailyChallenge:setModel(registerVal5)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.DailyChallengeTabWidget = registerVal2
local function __FUNC_4C8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DailyChallengeTabWidget)
	registerVal2.id = "DailyChallengeTabWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.systemOverlay_DailyChallenge.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 43.000000, 363.000000)
	local function __FUNC_843_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_843_)
	registerVal2:addElement(registerVal3)
	registerVal2.systemOverlayDailyChallenge = registerVal3
	local function __FUNC_892_(arg0)
		arg0.systemOverlayDailyChallenge:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_892_)
	if __FUNC_260_ then
		__FUNC_260_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DailyChallengeTabWidget.new = __FUNC_4C8_
