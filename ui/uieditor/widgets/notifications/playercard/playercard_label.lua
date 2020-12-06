-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerCard_Label = registerVal1
function CoD.PlayerCard_Label.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerCard_Label)
	registerVal2.id = "PlayerCard_Label"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 4.180000, 270.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_847_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_847_)
	local function __FUNC_8D8_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_8D8_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_939_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_939_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A39_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.itemName:setRGB(ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A39_
	registerVal5.PlayerYellow = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BCA_(arg0)
		arg0.Panel:close()
		arg0.itemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BCA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

