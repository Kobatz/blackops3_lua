-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardWidgetButtonContainer = registerVal1
function CoD.ScoreboardWidgetButtonContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardWidgetButtonContainer)
	registerVal2.id = "ScoreboardWidgetButtonContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 445.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 445.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreboardButtons = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6AB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardButtons:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6AB_
	local function __FUNC_7AC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Intro = __FUNC_7AC_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_80E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ScoreboardButtons:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_80E_
	registerVal4.AAR = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "AAR"
	local function __FUNC_915_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_915_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal3:setModel(arg0.buttonModel, arg1)
	local function __FUNC_962_(arg0)
		arg0.ScoreboardButtons:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_962_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

