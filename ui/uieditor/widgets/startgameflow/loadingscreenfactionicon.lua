-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenFactionIcon = registerVal1
function CoD.LoadingScreenFactionIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenFactionIcon)
	registerVal2.id = "LoadingScreenFactionIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 138.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 138.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -0.250000)
	registerVal3:setTopBottom(true, true, 0.130000, -0.130000)
	registerVal3:setAlpha(0.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.GlowPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 26.380000, -26.630000)
	registerVal4:setTopBottom(true, true, 26.380000, -26.380000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.970000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_faction_icon_faction1"))
	registerVal2:addElement(registerVal4)
	registerVal2.FactionIconSolid = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 26.380000, -26.630000)
	registerVal5:setTopBottom(true, true, 26.380000, -26.380000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_faction_icon_faction1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.FactionIcon = registerVal5
	local function __FUNC_7C8_(arg0)
		arg0.GlowPanel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7C8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

