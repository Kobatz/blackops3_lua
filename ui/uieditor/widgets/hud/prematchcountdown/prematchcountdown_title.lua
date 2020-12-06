-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown_Title = registerVal1
function CoD.PrematchCountdown_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown_Title)
	registerVal2.id = "PrematchCountdown_Title"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -13.110000, 12.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal4:setTopBottom(false, false, -11.000000, 12.000000)
	registerVal4:setRGB(0.960000, 0.960000, 1.000000)
	registerVal4:setAlpha(0.950000)
	registerVal4:setText(Engine.Localize("MP_MATCH_STARTING_IN"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setLetterSpacing(1.200000)
	local function __FUNC_763_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 15.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_763_)
	registerVal2:addElement(registerVal4)
	registerVal2.MatchText = registerVal4
	local function __FUNC_7C9_(arg0)
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7C9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

