-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreWidget = registerVal1
function CoD.ScoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreWidget)
	registerVal2.id = "ScoreWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 281.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 5.110000, -5.890000)
	registerVal3:setTopBottom(true, true, 36.480000, -6.480000)
	registerVal3:setRGB(0.240000, 0.240000, 0.260000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setRGB(0.880000, 0.890000, 0.910000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MPUI_SCORE_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreLabel = registerVal4
	local registerVal5 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -7.000000, 43.000000)
	registerVal5.Numbers:setRGB(0.950000, 0.910000, 0.110000)
	registerVal5.Numbers:setText(Engine.Localize("2150"))
	registerVal2:addElement(registerVal5)
	registerVal2.Score = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -1.770000, 1.000000)
	registerVal6:setTopBottom(true, true, 30.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal6
	local registerVal7 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 89.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 22.000000)
	registerVal7.SubTitle:setText(Engine.Localize("SOMETHING"))
	registerVal7.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C3D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal5.Numbers:completeAnimation()
		registerVal2.Score.Numbers:setRGB(0.800000, 0.800000, 0.800000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_C3D_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_D74_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal5.Numbers:completeAnimation()
		registerVal2.Score.Numbers:setRGB(0.950000, 0.910000, 0.110000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_D74_
	registerVal8.Best = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_EB6_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.Score:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.StartMenuIdentitySubTitle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EB6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

