-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordRightTitleWithBackground = registerVal1
function CoD.CombatRecordRightTitleWithBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordRightTitleWithBackground)
	registerVal2.id = "CombatRecordRightTitleWithBackground"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -2.500000, 2.500000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 5.000000, 254.000000)
	registerVal4:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("MENU_FAVORITE_SPECIALIST"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_937_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 7.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_937_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_995_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_995_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_9F6_(arg0)
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

