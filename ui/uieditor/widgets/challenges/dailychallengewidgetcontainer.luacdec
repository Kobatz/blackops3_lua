-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_ZM_LobbyWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DailyChallengeWidgetContainer = registerVal1
function CoD.DailyChallengeWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DailyChallengeWidgetContainer)
	registerVal2.id = "DailyChallengeWidgetContainer"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_ZM_LobbyWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -153.000000, 153.000000)
	registerVal3:setTopBottom(false, false, -43.500000, 43.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.DailyChallengeWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_605_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_605_
	local function __FUNC_666_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DailyChallengeWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Active = __FUNC_666_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_76B_(arg0)
		arg0.DailyChallengeWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_76B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

