-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.UnlockTokensWidget = registerVal1
function CoD.UnlockTokensWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.UnlockTokensWidget)
	registerVal2.id = "UnlockTokensWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 172.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -2.150000)
	registerVal3:setTopBottom(true, true, -4.000000, -6.700000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr0 = registerVal3
	local registerVal4 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 6.000000, 38.000000)
	registerVal4:setTopBottom(true, false, 2.200000, 34.200000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacIconTokenStatic0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 42.300000, 172.000000)
	registerVal5:setTopBottom(false, false, -12.800000, 6.200000)
	registerVal5:setRGB(0.580000, 0.640000, 0.650000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(4.300000)
	local function __FUNC_905_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(GetAllUnlockTokens(arg1, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "unlockTokensCount", __FUNC_905_)
	registerVal2:addElement(registerVal5)
	registerVal2.tokenLabel = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9C0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacIconTokenStatic0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tokenLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9C0_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B80_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cacIconTokenStatic0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tokenLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B80_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_D45_(arg0, arg2, arg3)
		return ShouldCACDisplayTokens(arg1)
	end

	registerVal9.condition = __FUNC_D45_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_DA0_(arg0)
		arg0.FETitleNumBrdr0:close()
		arg0.cacIconTokenStatic0:close()
		arg0.tokenLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DA0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

