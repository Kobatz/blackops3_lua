-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BurnProgressIndicator = registerVal1
function CoD.BM_BurnProgressIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BurnProgressIndicator)
	registerVal2.id = "BM_BurnProgressIndicator"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 476.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ProgressBG = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 414.000000, 476.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_859_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "BurnDupeProgress", "progressString", __FUNC_859_)
	registerVal2:addElement(registerVal4)
	registerVal2.Processed = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1.000000, 399.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 24.000000)
	registerVal5:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_912_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "BurnDupeProgress", "fraction", __FUNC_912_)
	registerVal2:addElement(registerVal5)
	registerVal2.ProgressBar = registerVal5
	local function __FUNC_A68_(arg0)
		arg0.Processed:close()
		arg0.ProgressBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A68_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

