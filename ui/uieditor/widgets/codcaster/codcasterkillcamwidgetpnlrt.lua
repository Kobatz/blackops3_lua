-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterKillcamWidgetPnlRT = registerVal1
function CoD.CodCasterKillcamWidgetPnlRT.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterKillcamWidgetPnlRT)
	registerVal2.id = "CodCasterKillcamWidgetPnlRT"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal3:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vsrightl_codcaster"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 40.000000, -32.000000)
	registerVal4:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vsrightm_codcaster"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -32.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_engame_killcam_vsrightr_codcaster"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

