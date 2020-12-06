-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown_BeginsIn = registerVal1
function CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown_BeginsIn)
	registerVal2.id = "PrematchCountdown_BeginsIn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -16.110000, 16.110000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -17.000000, 23.000000)
	registerVal4:setTopBottom(false, false, -39.300000, 42.300000)
	registerVal4:setRGB(0.300000, 0.230000, 0.200000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 14.000000)
	registerVal5:setRGB(0.960000, 0.960000, 1.000000)
	registerVal5:setAlpha(0.950000)
	registerVal5:setText(Engine.Localize("MP_MATCH_STARTING_IN"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(2.700000)
	local function __FUNC_8F9_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 15.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_8F9_)
	registerVal2:addElement(registerVal5)
	registerVal2.MatchText = registerVal5
	local function __FUNC_961_(arg0)
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_961_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

