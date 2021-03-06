-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideEmblemInternalWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLineSingle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideEmblemWidget = registerVal1
function CoD.LobbySlideEmblemWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideEmblemWidget)
	registerVal2.id = "LobbySlideEmblemWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 196.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.050000, 0.050000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(12.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal4:setTopBottom(false, false, -98.750000, -95.250000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.pixelU = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal5:setTopBottom(false, false, 96.250000, 99.750000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.pixelB = registerVal5
	local registerVal6 = CoD.LobbySlideEmblemInternalWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -10.000000, 331.000000)
	registerVal6:setTopBottom(true, false, -10.000000, 207.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.EmblemAdd = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal7:setTopBottom(false, false, -98.750000, -95.250000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixelU0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal8:setTopBottom(false, false, 96.250000, 99.750000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelB0 = registerVal8
	local registerVal9 = CoD.FE_TitleLineSingle.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 323.990000)
	registerVal9:setTopBottom(true, false, 194.250000, 198.250000)
	registerVal2:addElement(registerVal9)
	registerVal2.FETitleLineSingle = registerVal9
	local registerVal10 = CoD.FE_TitleLineSingle.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 323.990000)
	registerVal10:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleLineSingle0 = registerVal10
	local function __FUNC_C54_(arg0)
		arg0.EmblemAdd:close()
		arg0.FETitleLineSingle:close()
		arg0.FETitleLineSingle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C54_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

