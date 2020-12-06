-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PerkInfo = registerVal1
function CoD.PerkInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PerkInfo)
	registerVal2.id = "PerkInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PerkImage1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -124.000000, -62.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PerkImage0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -500.000000, -126.000000)
	registerVal5:setTopBottom(true, false, 22.000000, 38.000000)
	registerVal5:setText(Engine.Localize("TEST"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.DoublePerkDescription = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -500.000000, -126.000000)
	registerVal6:setTopBottom(true, false, 18.000000, 34.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("TEST"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.DoublePerkDescriptionArabic = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, true, -500.000000, -124.000000)
	registerVal7:setTopBottom(true, false, 22.000000, 38.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("TEST"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.SinglePerkDescription = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B5E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkImage1:setLeftRight(false, true, -62.000000, 0.000000)
		registerVal2.PerkImage1:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkImage0:setLeftRight(false, true, -124.000000, -62.000000)
		registerVal2.PerkImage0:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoublePerkDescription:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoublePerkDescriptionArabic:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescriptionArabic:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescriptionArabic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SinglePerkDescription:setLeftRight(false, true, -500.000000, -68.000000)
		registerVal2.SinglePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.SinglePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B5E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_FC9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkImage1:setLeftRight(false, true, -62.000000, 0.000000)
		registerVal2.PerkImage1:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkImage0:setLeftRight(false, true, -62.000000, 0.000000)
		registerVal2.PerkImage0:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoublePerkDescription:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoublePerkDescriptionArabic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SinglePerkDescription:setLeftRight(false, true, -500.000000, -62.000000)
		registerVal2.SinglePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.SinglePerkDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FC9_
	local function __FUNC_13E0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Show = __FUNC_13E0_
	registerVal8.SinglePerk = registerVal9
	registerVal9 = {}
	local function __FUNC_1442_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkImage1:setLeftRight(false, true, -62.000000, 0.000000)
		registerVal2.PerkImage1:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkImage0:setLeftRight(false, true, -124.000000, -62.000000)
		registerVal2.PerkImage0:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoublePerkDescription:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoublePerkDescriptionArabic:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescriptionArabic:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescriptionArabic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SinglePerkDescription:setLeftRight(false, true, -500.000000, -151.000000)
		registerVal2.SinglePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.SinglePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1442_
	registerVal8.DoublePerk = registerVal9
	registerVal9 = {}
	local function __FUNC_18B2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkImage1:setLeftRight(false, true, -62.000000, 0.000000)
		registerVal2.PerkImage1:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkImage0:setLeftRight(false, true, -124.000000, -62.000000)
		registerVal2.PerkImage0:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkImage0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoublePerkDescription:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoublePerkDescriptionArabic:setLeftRight(false, true, -500.000000, -126.000000)
		registerVal2.DoublePerkDescriptionArabic:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.DoublePerkDescriptionArabic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.SinglePerkDescription:setLeftRight(false, true, -500.000000, -151.000000)
		registerVal2.SinglePerkDescription:setTopBottom(true, false, 18.000000, 34.000000)
		registerVal2.SinglePerkDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_18B2_
	registerVal8.DoublePerkArabic = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

