-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_CC_AAR_Widget = registerVal1
function CoD.BM_Contracts_CC_AAR_Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_CC_AAR_Widget)
	registerVal2.id = "BM_Contracts_CC_AAR_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 176.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 30.000000, 307.250000)
	registerVal3:setTopBottom(true, false, 97.230000, 115.230000)
	registerVal3:setRGB(0.750000, 0.750000, 0.750000)
	registerVal3:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.CardcompletedDescription = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -322.000000, -28.000000)
	registerVal4:setTopBottom(true, false, 12.000000, 89.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -38.000000, -38.000000)
	registerVal5:setAlpha(0.400000)
	registerVal5.CardIconFrame:setScale(0.600000)
	local function __FUNC_1171_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1171_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsFrameWidget = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -322.000000, -28.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 88.000000)
	registerVal6:setAlpha(0.530000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -316.000000, -36.750000)
	registerVal7:setTopBottom(true, false, 35.550000, 65.450000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.400000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal7:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal7)
	registerVal2.TitleBg = registerVal7
	local registerVal8 = CoD.cac_lock.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -187.230000, -156.780000)
	registerVal8:setTopBottom(true, false, 36.010000, 66.460000)
	registerVal2:addElement(registerVal8)
	registerVal2.LockedIcon = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -175.100000, -171.100000)
	registerVal9:setTopBottom(true, false, -133.000000, 204.000000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setZRot(-90.000000)
	registerVal9:setScale(0.850000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.featlineleft000 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -174.000000, -171.000000)
	registerVal10:setTopBottom(true, false, -103.950000, 235.050000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setZRot(-90.000000)
	registerVal10:setScale(0.850000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.featlineleft0000 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_11C2_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CardcompletedDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setLeftRight(false, true, -315.000000, -36.750000)
		registerVal2.BoxButtonLrgInactiveDiag:setTopBottom(true, false, 14.480000, 87.980000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TitleBg:setLeftRight(false, true, -319.000000, -31.750000)
		registerVal2.TitleBg:setTopBottom(true, false, 35.550000, 65.450000)
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.featlineleft000:setLeftRight(false, true, -175.100000, -171.100000)
		registerVal2.featlineleft000:setTopBottom(true, false, -142.000000, 212.000000)
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft0000:setLeftRight(false, true, -174.000000, -171.000000)
		registerVal2.featlineleft0000:setTopBottom(true, false, -110.950000, 242.050000)
		registerVal2.featlineleft0000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_11C2_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1798_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CardcompletedDescription:setText(Engine.Localize("BLACKJACK_CHALLENGE_SIDE_BET_DESC"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TitleBg:setLeftRight(false, true, -319.000000, -31.750000)
		registerVal2.TitleBg:setTopBottom(true, false, 35.550000, 65.450000)
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.featlineleft000:setLeftRight(false, true, -175.100000, -171.100000)
		registerVal2.featlineleft000:setTopBottom(true, false, -142.000000, 212.000000)
		registerVal2.featlineleft000:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft0000:setLeftRight(false, true, -174.000000, -171.000000)
		registerVal2.featlineleft0000:setTopBottom(true, false, -110.950000, 242.050000)
		registerVal2.featlineleft0000:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1798_
	registerVal11.Locked = registerVal12
	registerVal12 = {}
	local function __FUNC_1D11_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CardcompletedDescription:setText(Engine.Localize("BLACKJACK_CARD_COMPLETED"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setLeftRight(false, true, -315.000000, -36.750000)
		registerVal2.BoxButtonLrgInactiveDiag:setTopBottom(true, false, 14.480000, 87.980000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TitleBg:setLeftRight(false, true, -319.000000, -31.750000)
		registerVal2.TitleBg:setTopBottom(true, false, 35.550000, 65.450000)
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.featlineleft000:setLeftRight(false, true, -175.100000, -171.100000)
		registerVal2.featlineleft000:setTopBottom(true, false, -142.000000, 212.000000)
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft0000:setLeftRight(false, true, -174.000000, -171.000000)
		registerVal2.featlineleft0000:setTopBottom(true, false, -110.950000, 242.050000)
		registerVal2.featlineleft0000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1D11_
	registerVal11.CompletedCard = registerVal12
	registerVal12 = {}
	local function __FUNC_22DF_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CardcompletedDescription:setText(Engine.Localize("BLACKJACK_CARD_SET_COMPLETED"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setLeftRight(false, true, -315.000000, -36.750000)
		registerVal2.BoxButtonLrgInactiveDiag:setTopBottom(true, false, 14.480000, 87.980000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TitleBg:setLeftRight(false, true, -319.000000, -31.750000)
		registerVal2.TitleBg:setTopBottom(true, false, 35.550000, 65.450000)
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.featlineleft000:setLeftRight(false, true, -175.100000, -171.100000)
		registerVal2.featlineleft000:setTopBottom(true, false, -142.000000, 212.000000)
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft0000:setLeftRight(false, true, -174.000000, -171.000000)
		registerVal2.featlineleft0000:setTopBottom(true, false, -110.950000, 242.050000)
		registerVal2.featlineleft0000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_22DF_
	registerVal11.CompletedCardSet = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_28AF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal14.condition = __FUNC_28AF_
	local registerVal15 = {}
	registerVal15.stateName = "CompletedCard"
	local function __FUNC_2920_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isMastery")
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_2920_
	local registerVal16 = {}
	registerVal16.stateName = "CompletedCardSet"
	local function __FUNC_2999_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isMastery")
	end

	registerVal16.condition = __FUNC_2999_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_2A0D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_2A0D_)
	local function __FUNC_2B2A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isMastery"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isMastery", true, __FUNC_2B2A_)
	local function __FUNC_2C47_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.CallingCardsFrameWidget:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockedIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C47_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

