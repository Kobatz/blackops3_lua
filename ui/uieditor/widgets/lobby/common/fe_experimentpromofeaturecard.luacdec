-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ExperimentPromoFeatureCard = registerVal1
function CoD.FE_ExperimentPromoFeatureCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ExperimentPromoFeatureCard)
	registerVal2.id = "FE_ExperimentPromoFeatureCard"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_826_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetExperimentPromoFeatureCardImageByGroup(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "background", true, __FUNC_826_)
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 66.500000, 87.400000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 5.880000, 205.880000)
	registerVal5:setTopBottom(true, false, 66.500000, 86.500000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setLetterSpacing(0.500000)
	local function __FUNC_913_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(GetExperimentPromoFeatureCardTitleByGroup(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_913_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A05_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_A05_
	local function __FUNC_AFE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.Active = __FUNC_AFE_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_BF6_(arg0)
		arg0.backing:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BF6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

