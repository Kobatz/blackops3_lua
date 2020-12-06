-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetFctnLine = registerVal1
function CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetFctnLine)
	registerVal2.id = "KillcamWidgetFctnLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vslinel"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 8.000000, -8.000000)
	registerVal4:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vslinem"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image3 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -8.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vsliner"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image4 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

