-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenFactionBoxPnlIntl = registerVal1
function CoD.LoadingScreenFactionBoxPnlIntl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenFactionBoxPnlIntl)
	registerVal2.id = "LoadingScreenFactionBoxPnlIntl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 43.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 42.910000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_loadingscreen_factionbox"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelLine = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

