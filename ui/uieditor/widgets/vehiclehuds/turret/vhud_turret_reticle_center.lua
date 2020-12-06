-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_turret_reticle_center = registerVal1
function CoD.vhud_turret_reticle_center.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_turret_reticle_center)
	registerVal2.id = "vhud_turret_reticle_center"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal3:setTopBottom(false, false, -32.250000, -8.250000)
	registerVal3:setRGB(1.000000, 0.830000, 0.390000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticleu"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ReticleU = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -27.000000, -3.000000)
	registerVal4:setTopBottom(false, false, 8.250000, 32.250000)
	registerVal4:setRGB(1.000000, 0.830000, 0.390000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticlell"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ReticleLL = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 3.000000, 27.000000)
	registerVal5:setTopBottom(false, false, 8.250000, 32.250000)
	registerVal5:setRGB(1.000000, 0.830000, 0.390000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_reticlelr"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ReticleLR = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_83B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_83B_
	local function __FUNC_89A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.StartUp = __FUNC_89A_
	local function __FUNC_8FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Zoom = __FUNC_8FA_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_95A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_95A_
	local function __FUNC_9BA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultState = __FUNC_9BA_
	registerVal6.Zoom = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

