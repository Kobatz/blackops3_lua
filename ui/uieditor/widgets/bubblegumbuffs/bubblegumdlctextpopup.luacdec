-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumDLCTextPopup = registerVal1
function CoD.BubbleGumDLCTextPopup.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumDLCTextPopup)
	registerVal2.id = "BubbleGumDLCTextPopup"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.013333, 0.125000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cachitBG0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 8.000000, 294.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal5:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_99D_(arg0, arg1)
		ScaleWidgetToLabelWrappedLeftAlign(registerVal2, arg0, 8.000000, 8.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_99D_)
	registerVal2:addElement(registerVal5)
	registerVal2.textCenterAlign = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A11_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_A11_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A72_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_A72_
	registerVal6.Below = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

