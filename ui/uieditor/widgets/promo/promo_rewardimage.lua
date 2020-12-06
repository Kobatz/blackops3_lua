-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_RewardImage = registerVal1
function CoD.Promo_RewardImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_RewardImage)
	registerVal2.id = "Promo_RewardImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 252.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 63.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 252.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 63.000000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -114.000000, 366.000000)
	registerVal4:setTopBottom(true, false, -28.500000, 91.500000)
	registerVal4.CardIconFrame:setScale(0.530000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardsFrameWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6E9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_84F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_84F_
	registerVal5.CallingCard = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_9B3_(arg0)
		arg0.CallingCardsFrameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9B3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

