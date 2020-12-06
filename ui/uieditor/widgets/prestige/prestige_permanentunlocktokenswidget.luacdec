-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_PermanentUnlockTokensWidget = registerVal1
function CoD.Prestige_PermanentUnlockTokensWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_PermanentUnlockTokensWidget)
	registerVal2.id = "Prestige_PermanentUnlockTokensWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 172.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr0 = registerVal3
	local registerVal4 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 35.000000)
	registerVal4:setTopBottom(true, false, 6.200000, 38.200000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_9CB_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_9CB_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.tokenPermanentUnlock = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 42.300000, 172.000000)
	registerVal5:setTopBottom(true, false, 12.700000, 31.700000)
	registerVal5:setRGB(0.580000, 0.640000, 0.650000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(4.300000)
	local function __FUNC_A14_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(GetPermanentUnlockTokenText(arg1, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "permanentUnlockTokensCount", __FUNC_A14_)
	local function __FUNC_AD9_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_AD9_)
	registerVal2:addElement(registerVal5)
	registerVal2.tokenLabel = registerVal5
	local registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_B44_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tokenLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B44_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D05_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenPermanentUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tokenLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D05_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_ECA_(arg0, arg2, arg3)
		return IsInPermanentUnlockMenu(arg1)
	end

	registerVal9.condition = __FUNC_ECA_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_F25_(arg0)
		arg0.FETitleNumBrdr0:close()
		arg0.tokenPermanentUnlock:close()
		arg0.tokenLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F25_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

