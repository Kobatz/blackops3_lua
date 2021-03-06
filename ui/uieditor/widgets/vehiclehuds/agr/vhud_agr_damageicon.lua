-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_damageicon = registerVal1
function CoD.vhud_agr_damageicon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_agr_damageicon)
	registerVal2.id = "vhud_agr_damageicon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 95.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 79.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -47.500000, 47.860000)
	registerVal3:setTopBottom(false, false, -39.500000, 39.970000)
	registerVal3:setRGB(0.490000, 1.000000, 0.740000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setZoom(-50.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_damageiconlinergb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Line0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -47.500000, 47.860000)
	registerVal4:setTopBottom(false, false, -39.500000, 39.970000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_damageiconred"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_895_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "damage", true, __FUNC_895_)
	registerVal2:addElement(registerVal4)
	registerVal2.Red = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -47.500000, 47.860000)
	registerVal5:setTopBottom(false, false, -39.500000, 39.970000)
	registerVal5:setRGB(0.490000, 1.000000, 0.740000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_damageiconlinergb"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Line = registerVal5
	local function __FUNC_9EC_(arg0)
		arg0.Red:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9EC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

