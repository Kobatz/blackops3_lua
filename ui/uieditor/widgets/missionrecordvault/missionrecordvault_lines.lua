-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_lines = registerVal1
function CoD.MissionRecordVault_lines.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_lines)
	registerVal2.id = "MissionRecordVault_lines"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal5:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal6:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal7:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image10 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal8:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image20 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -7.000000, 5.000000)
	registerVal9:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlelinel"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image000 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal10:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image100 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -5.000000, 7.000000)
	registerVal11:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_titleliner"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image200 = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

