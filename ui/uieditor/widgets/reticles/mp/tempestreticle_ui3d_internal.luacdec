-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TempestReticle_UI3D_Internal = registerVal1
function CoD.TempestReticle_UI3D_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TempestReticle_UI3D_Internal)
	registerVal2.id = "TempestReticle_UI3D_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal3:setTopBottom(false, false, -11.000000, -10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.leftHash = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -50.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -11.000000, -10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.rightHash = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

