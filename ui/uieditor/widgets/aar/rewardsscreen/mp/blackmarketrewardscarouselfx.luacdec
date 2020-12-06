-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.smokewidget")
require("ui.uieditor.widgets.BlackMarket.fx_Ember2")
require("ui.uieditor.widgets.BlackMarket.fx_Ember")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackmarketRewardsCarouselFX = registerVal1
function CoD.BlackmarketRewardsCarouselFX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.BlackmarketRewardsCarouselFX)
	registerVal2.id = "BlackmarketRewardsCarouselFX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 170.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -68.400000, 68.400000)
	registerVal3:setTopBottom(false, false, -63.750000, 72.250000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_crate_whiteglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.glow00 = registerVal3
	local registerVal4 = CoD.smokewidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -85.000000, 84.600000)
	registerVal4:setTopBottom(false, false, -115.000000, 63.500000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.smokewidget = registerVal4
	local registerVal5 = CoD.fx_Ember2.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -72.200000, 71.800000)
	registerVal5:setTopBottom(false, false, -100.000000, 80.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.fxEmber2 = registerVal5
	local registerVal6 = CoD.fx_Ember.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -76.000000, 75.600000)
	registerVal6:setTopBottom(false, false, -87.500000, 102.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.fxEmber = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -68.400000, 68.400000)
	registerVal7:setTopBottom(false, false, -63.750000, 72.250000)
	local function __FUNC_993_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "rewardCarouselItemImage", true, __FUNC_993_)
	registerVal2:addElement(registerVal7)
	registerVal2.CardImage = registerVal7
	local function __FUNC_A44_(arg0)
		arg0.smokewidget:close()
		arg0.fxEmber2:close()
		arg0.fxEmber:close()
		arg0.CardImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A44_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

