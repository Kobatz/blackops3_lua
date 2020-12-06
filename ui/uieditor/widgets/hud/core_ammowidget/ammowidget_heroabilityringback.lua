-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRingBack = registerVal1
function CoD.AmmoWidget_HeroAbilityRingBack.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRingBack)
	registerVal2.id = "AmmoWidget_HeroAbilityRingBack"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 8.330000, -8.330000)
	registerVal3:setTopBottom(true, true, 8.330000, -8.330000)
	registerVal3:setRGB(1.000000, 0.580000, 0.020000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, -1.240000, 1.380000, 0.000000, 0.000000)
	local function __FUNC_85F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_85F_)
	registerVal2:addElement(registerVal3)
	registerVal2.ImgRingDeplete = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 13.830000, -13.840000)
	registerVal4:setTopBottom(true, true, 13.840000, -13.840000)
	registerVal4:setRGB(1.000000, 0.810000, 0.000000)
	registerVal4:setZoom(-24.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(1.000000, 0.670000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, -0.660000, 0.670000, 0.000000, 0.000000)
	local function __FUNC_9B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_9B4_)
	registerVal2:addElement(registerVal4)
	registerVal2.ImgRingDeplete0 = registerVal4
	local function __FUNC_B0C_(arg0)
		arg0.ImgRingDeplete:close()
		arg0.ImgRingDeplete0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B0C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

