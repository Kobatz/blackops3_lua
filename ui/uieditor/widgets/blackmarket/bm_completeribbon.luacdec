-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_CompleteRibbon = registerVal1
function CoD.BM_CompleteRibbon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_CompleteRibbon)
	registerVal2.id = "BM_CompleteRibbon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 132.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -48.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribboncenter"))
	registerVal2:addElement(registerVal3)
	registerVal2.CompletedIcon0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -48.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbonright"))
	registerVal2:addElement(registerVal4)
	registerVal2.CompletedIcon00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -23.000000, 1.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbonleft"))
	registerVal2:addElement(registerVal5)
	registerVal2.CompletedIcon000 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 1.000000, -8.000000)
	registerVal6:setTopBottom(false, false, -7.750000, 7.250000)
	registerVal6:setRGB(0.670000, 1.000000, 0.660000)
	registerVal6:setText(Engine.Localize("MPUI_BM_CONTRACTS_AVAILABLE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.800000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A8E_(arg0, arg1)
		ScaleWidgetToLabelRightAlignedNoReverse(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_A8E_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B02_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CompletedIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CompletedIcon00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CompletedIcon000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B02_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D13_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CompletedIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CompletedIcon00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CompletedIcon000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D13_
	registerVal7.Completed = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

