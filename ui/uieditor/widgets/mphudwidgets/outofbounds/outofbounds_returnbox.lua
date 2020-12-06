-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_returnbox = registerVal1
function CoD.outofbounds_returnbox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_returnbox)
	registerVal2.id = "outofbounds_returnbox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 563.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -281.500000, 281.500000)
	registerVal4:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal4:setAlpha(0.950000)
	registerVal4:setText(Engine.Localize("MPUI_OUT_OF_BOUNDS_RETURN_TO_COMBAT_ZONE"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.150000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(3.900000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ReturnText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_892_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ReturnText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_892_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A1C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBox:setLeftRight(false, false, -217.500000, 217.500000)
		registerVal2.BlackBox:setTopBottom(false, false, 21.000000, 53.000000)
		registerVal2.BlackBox:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ReturnText:setLeftRight(false, false, -217.500000, 217.500000)
		registerVal2.ReturnText:setTopBottom(false, false, 23.000000, 53.000000)
		registerVal2.ReturnText:setAlpha(0.950000)
		registerVal2.ReturnText:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
		registerVal2.ReturnText:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.ReturnText:setShaderVector(1.000000, 0.150000, 0.000000, 0.000000, 0.000000)
		registerVal2.ReturnText:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.ReturnText:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A1C_
	registerVal5.IsOutOfBounds = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

