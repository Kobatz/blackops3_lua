-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_DailyRecipeFeatureCard = registerVal1
function CoD.FE_DailyRecipeFeatureCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_DailyRecipeFeatureCard)
	registerVal2.id = "FE_DailyRecipeFeatureCard"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 17.460000, 79.290000)
	registerVal4:setTopBottom(false, false, -24.760000, 54.510000)
	registerVal4:setScale(1.100000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_gg_shadow"))
	registerVal2:addElement(registerVal4)
	registerVal2.shadowRight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -78.040000, -16.210000)
	registerVal5:setTopBottom(false, false, -24.760000, 54.510000)
	registerVal5:setScale(1.100000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_cookbook_gg_shadow"))
	registerVal2:addElement(registerVal5)
	registerVal2.shadowLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 172.630000, 230.130000)
	registerVal6:setTopBottom(true, false, 14.000000, 71.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.bgbImageRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 76.630000, 134.130000)
	registerVal7:setTopBottom(true, false, 14.000000, 71.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.bgbImageLeft = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal8:setTopBottom(false, false, -29.500000, 52.540000)
	registerVal8:setScale(1.200000)
	registerVal8:setImage(RegisterImage("uie_t7_zm_cookbook_gg_shadow"))
	registerVal2:addElement(registerVal8)
	registerVal2.shadowMiddle = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 119.750000, 186.250000)
	registerVal9:setTopBottom(true, false, 5.000000, 71.500000)
	registerVal2:addElement(registerVal9)
	registerVal2.bgbImageMiddle = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 66.500000, 87.400000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.400000)
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal10:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal10)
	registerVal2.TitleBg = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 5.880000, 205.880000)
	registerVal11:setTopBottom(true, false, 66.500000, 86.500000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.Title = registerVal11
	local function __FUNC_CEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.bg:linkToElementModel(registerVal2, "background", true, __FUNC_CEB_)
	local function __FUNC_D9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetItemImageFromIndex(registerVal1)))
		end
	end

	registerVal2.bgbImageRight:linkToElementModel(registerVal2, "recipeResultIndex3", true, __FUNC_D9C_)
	local function __FUNC_E77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(GetItemImageFromIndex(registerVal1)))
		end
	end

	registerVal2.bgbImageLeft:linkToElementModel(registerVal2, "recipeResultIndex1", true, __FUNC_E77_)
	local function __FUNC_F4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(GetItemImageFromIndex(registerVal1)))
		end
	end

	registerVal2.bgbImageMiddle:linkToElementModel(registerVal2, "recipeResultIndex2", true, __FUNC_F4F_)
	local function __FUNC_1027_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Title:linkToElementModel(registerVal2, "title", true, __FUNC_1027_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_10DE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_10DE_
	local function __FUNC_113E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.bgbImageLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal13.Active = __FUNC_113E_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1290_(arg0)
		arg0.bg:close()
		arg0.bgbImageRight:close()
		arg0.bgbImageLeft:close()
		arg0.bgbImageMiddle:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1290_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

