-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_Rank_PrestigeText = registerVal1
function CoD.Social_Rank_PrestigeText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Rank_PrestigeText)
	registerVal2.id = "Social_Rank_PrestigeText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(0.900000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_748_(arg0, arg1)
		ScaleWidgetToLabelWrappedUp(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_748_)
	registerVal2:addElement(registerVal3)
	registerVal2.prestige = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

