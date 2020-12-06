-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SpecialistAbilitiesWidget = registerVal1
function CoD.CallingCards_SpecialistAbilitiesWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SpecialistAbilitiesWidget)
	registerVal2.id = "CallingCards_SpecialistAbilitiesWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_streetart_master_flipbook"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 4.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 6.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Flipbook = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

