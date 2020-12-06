-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TeamIconAndNameWidgetForCodCaster = registerVal1
function CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TeamIconAndNameWidgetForCodCaster)
	registerVal2.id = "TeamIconAndNameWidgetForCodCaster"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 442.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -6.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 18.550000, -23.550000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_loadingscreen_factionbox"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelLine = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -6.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 18.550000, -23.550000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_loadingscreen_factionbox_codcaster"))
	registerVal2:addElement(registerVal4)
	registerVal2.ColorPanelLine1 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

