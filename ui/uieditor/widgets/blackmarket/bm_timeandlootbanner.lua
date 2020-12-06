-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_DateTimeAndTotalCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_TimeAndLootBanner = registerVal1
function CoD.BM_TimeAndLootBanner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_TimeAndLootBanner)
	registerVal2.id = "BM_TimeAndLootBanner"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -32.500000, 279.500000)
	registerVal3:setTopBottom(true, false, -2.500000, 45.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_common_timedate_backing"))
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = CoD.BM_DateTimeAndTotalCount.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 38.000000)
	local function __FUNC_D08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.dateTimeReceived:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "dateTime", true, __FUNC_D08_)
	local function __FUNC_DE8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.TotalCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "duplicateText", true, __FUNC_DE8_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Condensed"
	local function __FUNC_EC2_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "LootBanner")
	end

	registerVal8.condition = __FUNC_EC2_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.BMDateTimeAndTotalCount = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -28.000000, 241.000000)
	registerVal5:setTopBottom(true, false, -26.000000, 63.670000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contraband_banner"))
	registerVal2:addElement(registerVal5)
	registerVal2.LootBanner = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -28.000000, 241.000000)
	registerVal6:setTopBottom(true, false, -26.000000, 63.670000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contraband_banner"))
	registerVal2:addElement(registerVal6)
	registerVal2.LimitedItemBanner = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 12.000000, 233.000000)
	registerVal7:setTopBottom(true, false, 9.500000, 28.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_NEW"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.LootBannerText = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 12.000000, 233.000000)
	registerVal8:setTopBottom(true, false, 9.500000, 28.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("EM_ICON_EMBLEM_3"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.LimitedItemBannerText = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F2B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMDateTimeAndTotalCount:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.BMDateTimeAndTotalCount:setTopBottom(true, false, 0.000000, 38.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LootBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LimitedItemBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LootBannerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LimitedItemBannerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F2B_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_126C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.backing:completeAnimation()
		registerVal2.BMDateTimeAndTotalCount:setLeftRight(true, false, 1.000000, 246.000000)
		registerVal2.BMDateTimeAndTotalCount:setTopBottom(true, false, 31.000000, 69.000000)
		registerVal2.BMDateTimeAndTotalCount.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LootBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LimitedItemBanner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LootBannerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LimitedItemBannerText:setLeftRight(true, false, 32.000000, 222.000000)
		registerVal2.LimitedItemBannerText:setTopBottom(true, false, 7.000000, 26.000000)
		registerVal2.LimitedItemBannerText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_126C_
	registerVal9.LimitedItemBanner = registerVal10
	registerVal10 = {}
	local function __FUNC_165E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.backing:completeAnimation()
		registerVal2.BMDateTimeAndTotalCount:setLeftRight(true, false, 1.000000, 246.000000)
		registerVal2.BMDateTimeAndTotalCount:setTopBottom(true, false, 31.000000, 69.000000)
		registerVal2.BMDateTimeAndTotalCount.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LootBanner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LimitedItemBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LootBannerText:setLeftRight(true, false, 32.000000, 222.000000)
		registerVal2.LootBannerText:setTopBottom(true, false, 7.000000, 26.000000)
		registerVal2.LootBannerText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LimitedItemBannerText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_165E_
	registerVal9.LootBanner = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1A4E_(arg0)
		arg0.BMDateTimeAndTotalCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A4E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

