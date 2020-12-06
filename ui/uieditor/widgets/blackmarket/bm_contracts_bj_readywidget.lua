-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_BJ_ReadyWidget = registerVal1
function CoD.BM_Contracts_BJ_ReadyWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_BJ_ReadyWidget)
	registerVal2.id = "BM_Contracts_BJ_ReadyWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 226.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_bar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.154867, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(35.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ActivatedBar = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 29.500000, 165.500000)
	registerVal4:setTopBottom(true, false, 3.500000, 20.500000)
	registerVal4:setRGB(0.950000, 0.550000, 0.150000)
	registerVal4:setText(LocalizeToUpperString("MPUI_BM_CONTRACT_BLACKJACK_READY_DESC"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	local function __FUNC_97C_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 15.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_97C_)
	registerVal2:addElement(registerVal4)
	registerVal2.Activated = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9DD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActivatedBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Activated:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9DD_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B37_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActivatedBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Activated:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B37_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_C8F_(arg0, arg2, arg3)
		return IsStorageValueEqualTo(arg1, "stats_mp", "blackjack_contract_count", 0.000000)
	end

	registerVal8.condition = __FUNC_C8F_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

