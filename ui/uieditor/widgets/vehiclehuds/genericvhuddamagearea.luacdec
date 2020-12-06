-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.genericVHUDdamageArea = registerVal1
function CoD.genericVHUDdamageArea.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.genericVHUDdamageArea)
	registerVal2.id = "genericVHUDdamageArea"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.600000, 0.820000, 0.910000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setZoom(-20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_raps_damageiconlinergb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.lineBack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_raps_damageiconred"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_8DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal11 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal12 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal13 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(2.000000, SubtractVectorComponentFrom(1.000000, 1.000000, SetVectorComponent(2.000000, 1.000000, registerVal11, registerVal12, registerVal13, CoD.GetVectorComponentFromString(registerVal1, 4.000000))))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "damage", true, __FUNC_8DC_)
	registerVal2:addElement(registerVal4)
	registerVal2.fill = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.600000, 0.820000, 0.910000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_raps_damageiconlinergb"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.lineFront = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A90_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_A90_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_AF2_(arg0)
		arg0.fill:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AF2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

