-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_PromoTitle")
require("ui.uieditor.widgets.BlackMarket.BM_Promo_Countdown2")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Promo_TitleAndCountdown = registerVal1
function CoD.BM_Promo_TitleAndCountdown.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Promo_TitleAndCountdown)
	registerVal2.id = "BM_Promo_TitleAndCountdown"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 604.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.BM_PromoTitle.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 238.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal3.Title:setText(LocalizeToUpperString("MPUI_BM_NO_DUPES"))
	registerVal2:addElement(registerVal3)
	registerVal2.BMPromoTitle = registerVal3
	local registerVal4 = CoD.BM_Promo_Countdown2.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 238.000000, 342.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 45.000000)
	local function __FUNC_8EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Expires:setText(LocalizeIntoString("MPUI_BM_PROMO_EXPIRES", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_limited_time", __FUNC_8EF_)
	registerVal2:addElement(registerVal4)
	registerVal2.BMPromoCountdown2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9E4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.BMPromoCountdown2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9E4_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AE8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.BMPromoCountdown2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AE8_
	registerVal5.Notimer = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BF1_(arg0)
		arg0.BMPromoTitle:close()
		arg0.BMPromoCountdown2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BF1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

