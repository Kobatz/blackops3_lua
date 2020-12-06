-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleNumberGames = registerVal1
function CoD.FE_3dTitleNumberGames.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FE_3dTitleNumberGames)
	registerVal2.id = "FE_3dTitleNumberGames"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 85.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 7.130000, 91.130000)
	registerVal4:setTopBottom(true, false, 6.500000, 22.500000)
	registerVal4:setRGB(0.710000, 0.760000, 0.770000)
	registerVal4:setText(Engine.Localize("MENU_NUMPLAYERS_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	local function __FUNC_85F_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_85F_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label1 = registerVal4
	local function __FUNC_8BD_(arg0)
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8BD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

