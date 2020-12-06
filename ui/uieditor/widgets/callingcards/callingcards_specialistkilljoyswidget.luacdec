-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_SpecialistKilljoysEmber")
require("ui.uieditor.widgets.CallingCards.CallingCards_SpecialistKilljoysEyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SpecialistKilljoysWidget = registerVal1
function CoD.CallingCards_SpecialistKilljoysWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SpecialistKilljoysWidget)
	registerVal2.id = "CallingCards_SpecialistKilljoysWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_bg_flipbook"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 6.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fire = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_bg"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 81.000000)
	registerVal5:setAlpha(0.850000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_smoke"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, -0.150000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.smoke = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_man"))
	registerVal2:addElement(registerVal6)
	registerVal2.man = registerVal6
	local registerVal7 = CoD.CallingCards_SpecialistKilljoysEmber.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsSpecialistKilljoysEmber = registerVal7
	local registerVal8 = CoD.CallingCards_SpecialistKilljoysEyes.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 342.000000, 426.000000)
	registerVal8:setTopBottom(true, false, 34.000000, 70.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsSpecialistKilljoysEyes = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_BCC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.CallingCardsSpecialistKilljoysEmber:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CallingCardsSpecialistKilljoysEyes:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_BCC_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_D57_(arg0)
		arg0.CallingCardsSpecialistKilljoysEmber:close()
		arg0.CallingCardsSpecialistKilljoysEyes:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D57_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

