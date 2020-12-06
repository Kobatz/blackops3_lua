-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_air_plane = registerVal1
function CoD.CallingCards_code_air_plane.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_code_air_plane)
	registerVal2.id = "CallingCards_code_air_plane"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_air_plane"))
	registerVal2:addElement(registerVal3)
	registerVal2.clouds = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 439.000000, 480.000000)
	registerVal4:setTopBottom(true, false, -22.000000, 142.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_air_propellerflip"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal4:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 6.570000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.propeller = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

