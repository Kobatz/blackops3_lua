-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.DLC_Free_TitleAndText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Party_Double_promo = registerVal1
function CoD.Party_Double_promo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Party_Double_promo)
	registerVal2.id = "Party_Double_promo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 425.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 125.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DLC_Free_TitleAndText.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 125.000000)
	registerVal3.Title:setText(Engine.Localize("MPUI_PARTY_DOUBLE_PROMO"))
	registerVal3.Body:setText(Engine.Localize("MPUI_PARTY_DOUBLE_PROMO_DESC"))
	registerVal2:addElement(registerVal3)
	registerVal2.DLCFreeTitleAndText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_722_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCFreeTitleAndText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_722_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_82B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCFreeTitleAndText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_82B_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_92E_(arg0, arg1, arg2)
		return IsDvarValueEqualTo("ui_partyPromo", "1")
	end

	registerVal7.condition = __FUNC_92E_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_9AA_(arg0)
		arg0.DLCFreeTitleAndText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

