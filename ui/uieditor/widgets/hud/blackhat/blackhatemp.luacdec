-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.blackhatEmp = registerVal1
function CoD.blackhatEmp.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.blackhatEmp)
	registerVal2.id = "blackhatEmp"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 202.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 168.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 202.460000)
	registerVal3:setTopBottom(true, false, 0.000000, 168.000000)
	registerVal3:setImage(RegisterImage("uie_hud_t7_blackhat_emp"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
	registerVal3:setShaderVector(0.000000, 17.690000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.630000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 2.210000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5F2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

