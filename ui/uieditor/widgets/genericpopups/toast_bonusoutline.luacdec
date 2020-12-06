-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.Toast_ItemTitleGlow")
require("ui.uieditor.widgets.GenericPopups.GP_FrameBackgroundt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Toast_BonusOutline = registerVal1
function CoD.Toast_BonusOutline.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Toast_BonusOutline)
	registerVal2.id = "Toast_BonusOutline"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 304.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Toast_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -41.000000, 37.000000)
	registerVal3:setTopBottom(false, true, -23.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ToastItemTitleGlow = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -75.500000, 71.500000)
	registerVal4:setTopBottom(false, true, -17.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("MPUI_BONUS_CAPS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Bonus = registerVal4
	local registerVal5 = CoD.GP_FrameBackgroundt.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -29.500000, 28.500000)
	registerVal5:setTopBottom(true, true, 0.000000, -16.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FrameBackground = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A0A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_A0A_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_A6A_(arg0)
		arg0.ToastItemTitleGlow:close()
		arg0.FrameBackground:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A6A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

