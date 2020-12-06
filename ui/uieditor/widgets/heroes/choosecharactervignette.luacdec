-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.chooseCharacterVignette = registerVal1
function CoD.chooseCharacterVignette.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.chooseCharacterVignette)
	registerVal2.id = "chooseCharacterVignette"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -408.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -250.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setYRot(-180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal3)
	registerVal2.bottomRight = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -408.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -500.000000, -250.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setXRot(180.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal4)
	registerVal2.topRight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -816.000000, -408.000000)
	registerVal5:setTopBottom(false, true, -250.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal5)
	registerVal2.bottomLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -816.000000, -408.000000)
	registerVal6:setTopBottom(false, true, -500.000000, -250.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setXRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal6)
	registerVal2.topLeft = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

