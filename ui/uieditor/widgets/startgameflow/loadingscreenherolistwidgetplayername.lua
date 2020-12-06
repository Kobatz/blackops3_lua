-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenHeroListWidgetPlayerName = registerVal1
function CoD.LoadingScreenHeroListWidgetPlayerName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenHeroListWidgetPlayerName)
	registerVal2.id = "LoadingScreenHeroListWidgetPlayerName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 6.680000, -0.680000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.500000, -2.500000)
	registerVal4:setTopBottom(false, false, 14.320000, 36.530000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonPanel00 = registerVal4
	local registerVal5 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal5:setTopBottom(true, true, 28.000000, 23.430000)
	registerVal5:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.TitleGlow1 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -92.500000, 92.000000)
	registerVal6:setTopBottom(true, false, 33.430000, 47.430000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("WWWWWWWWWWWWWWWWW"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.PlayerName = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -95.500000, 95.000000)
	registerVal7:setTopBottom(true, false, 9.500000, 26.500000)
	registerVal7:setText(LocalizeToUpperString("WWWWWWWWWWWWWWWW"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLetterSpacing(0.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.WpnName = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B4D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.TitleGlow1:setRGB(0.890000, 0.890000, 0.890000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.WpnName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B4D_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_CB6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.TitleGlow1:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_CB6_
	registerVal8.Coloured = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_DC1_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.FEButtonPanel00:close()
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DC1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

