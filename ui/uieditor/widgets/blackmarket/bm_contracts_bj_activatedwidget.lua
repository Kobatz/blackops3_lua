-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_BJ_Text_Widget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_BJ_ActivatedWidget = registerVal1
function CoD.BM_Contracts_BJ_ActivatedWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_BJ_ActivatedWidget)
	registerVal2.id = "BM_Contracts_BJ_ActivatedWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 264.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_bar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.132576, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(35.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ActivatedBar = registerVal3
	local registerVal4 = CoD.BM_Contracts_BJ_Text_Widget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 26.500000, 237.500000)
	registerVal4:setTopBottom(true, false, 3.500000, 20.500000)
	registerVal4.Activated:setText(Engine.Localize("MENU_ACTIVATED_CAPS"))
	registerVal4.TimeRemaining0:setText(Engine.Localize("MPUI_BM_CONTRACTS_TIME_REMAINING"))
	registerVal2:addElement(registerVal4)
	registerVal2.BMContractsBJTextWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_96E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_96E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9CE_
	registerVal5.Activated = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Activated"
	local function __FUNC_A2E_(arg0, arg2, arg3)
		return IsBlackjackContractActive(arg1)
	end

	registerVal8.condition = __FUNC_A2E_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_A8B_(arg0)
		arg0.BMContractsBJTextWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A8B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

