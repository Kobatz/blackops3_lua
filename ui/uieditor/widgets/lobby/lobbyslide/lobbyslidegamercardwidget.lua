-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideGamerCardInternalWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingE")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLineSingle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideGamerCardWidget = registerVal1
function CoD.LobbySlideGamerCardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideGamerCardWidget)
	registerVal2.id = "LobbySlideGamerCardWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonpanelfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.037267, 0.142857, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(12.000000, 12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.LobbySlideGamerCardInternalWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -10.000000, 330.000000)
	registerVal4:setTopBottom(true, false, -10.000000, 90.000000)
	local function __FUNC_F4D_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_F4D_)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbySlideGamerCardInternalWidget0 = registerVal4
	local registerVal5 = CoD.FE_LabelSubHeadingE.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 10.000000, 313.000000)
	registerVal5:setTopBottom(true, false, 35.000000, 57.000000)
	registerVal5.Label0:setText("")
	registerVal5.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.FELabelSubHeadingE0 = registerVal5
	local registerVal6 = CoD.FE_LabelSubHeadingE.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 10.000000, 313.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 34.000000)
	registerVal6.Label0:setText("")
	registerVal6.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.FELabelSubHeadingE1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal7:setTopBottom(false, false, 38.250000, 41.750000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.PixelB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal8:setTopBottom(false, false, -40.750000, -37.250000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.PixelU = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal9:setTopBottom(false, false, -42.000000, -38.500000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixelU0 = registerVal9
	local registerVal10 = CoD.FE_TitleLineSingle.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 323.990000)
	registerVal10:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleLineSingle0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -349.000000, -313.000000)
	registerVal11:setTopBottom(false, false, 37.250000, 40.750000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image0 = registerVal11
	local registerVal12 = CoD.FE_TitleLineSingle.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 323.990000)
	registerVal12:setTopBottom(true, false, 78.000000, 82.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FETitleLineSingle1 = registerVal12
	local function __FUNC_F9E_(arg0)
		arg0.LobbySlideGamerCardInternalWidget0:close()
		arg0.FELabelSubHeadingE0:close()
		arg0.FELabelSubHeadingE1:close()
		arg0.FETitleLineSingle0:close()
		arg0.FETitleLineSingle1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F9E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

