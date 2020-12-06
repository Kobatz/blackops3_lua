-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteLabelUpper = registerVal1
function CoD.MapVoteLabelUpper.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVoteLabelUpper)
	registerVal2.id = "MapVoteLabelUpper"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 177.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 21.000000)
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 4.000000)
	registerVal4:setTopBottom(true, false, 0.500000, 20.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(2.500000)
	local function __FUNC_85D_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_85D_)
	registerVal2:addElement(registerVal4)
	registerVal2.btnDisplayTextStroke = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8C8_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8C8_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_92A_(arg0)
		arg0.FEListHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_92A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

