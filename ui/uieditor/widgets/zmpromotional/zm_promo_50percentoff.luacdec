-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMPromotional.ZM_Promo_50percentInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_Promo_50percentoff = registerVal1
function CoD.ZM_Promo_50percentoff.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_Promo_50percentoff)
	registerVal2.id = "ZM_Promo_50percentoff"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 357.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ZM_Promo_50percentInternal.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -178.500000, 178.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal3.MarketingShadow:setText(DvarLocalizedIntoString("loot_ld_discount", "ZMUI_PERCENT_OFF"))
	registerVal3.Marketing:setText(DvarLocalizedIntoString("loot_ld_discount", "ZMUI_PERCENT_OFF"))
	registerVal2:addElement(registerVal3)
	registerVal2.ZMPromo50percentInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_73C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromo50percentInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_73C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_84C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromo50percentInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_84C_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_957_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_957_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_9A1_(arg0)
		arg0.ZMPromo50percentInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

