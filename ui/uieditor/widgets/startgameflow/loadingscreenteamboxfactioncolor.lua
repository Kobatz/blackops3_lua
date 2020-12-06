-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenTeamBoxFactionColor = registerVal1
function CoD.LoadingScreenTeamBoxFactionColor.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenTeamBoxFactionColor)
	registerVal2.id = "LoadingScreenTeamBoxFactionColor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 156.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3:setRGB(ColorSet.FactionAllies.r, ColorSet.FactionAllies.g, ColorSet.FactionAllies.b)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal2:addElement(registerVal3)
	registerVal2.FactionCOlorBox = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6A8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FactionCOlorBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6A8_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7AF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FactionCOlorBox:setRGB(ColorSet.FactionAxis.r, ColorSet.FactionAxis.g, ColorSet.FactionAxis.b)
		registerVal2.FactionCOlorBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7AF_
	registerVal4.FactionAxis = registerVal5
	registerVal5 = {}
	local function __FUNC_972_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FactionCOlorBox:setRGB(ColorSet.FactionAllies.r, ColorSet.FactionAllies.g, ColorSet.FactionAllies.b)
		registerVal2.FactionCOlorBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_972_
	registerVal4.FactionAllie = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

