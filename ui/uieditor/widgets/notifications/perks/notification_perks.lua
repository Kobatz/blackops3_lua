-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Perks.PerkInfo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notification_Perks = registerVal1
function CoD.Notification_Perks.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification_Perks)
	registerVal2.id = "Notification_Perks"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 186.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PerkInfo.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -500.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 120.000000, 170.000000)
	registerVal3.DoublePerkDescription:setText(Engine.Localize("MPUI_PERK_NOTIFY_2"))
	registerVal3.DoublePerkDescriptionArabic:setText(Engine.Localize("MPUI_PERK_NOTIFY_2"))
	local function __FUNC_EB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PerkImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Perks", "perk2_1.image", __FUNC_EB1_)
	local function __FUNC_F84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PerkImage0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Perks", "perk2_0.image", __FUNC_F84_)
	local function __FUNC_1058_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.SinglePerkDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Perks", "perk2_0.name", __FUNC_1058_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "SinglePerk"
	local function __FUNC_113D_(arg0, arg2, arg3)
		return HasOnePerkInSlot2(arg1)
	end

	registerVal7.condition = __FUNC_113D_
	local registerVal8 = {}
	registerVal8.stateName = "DoublePerk"
	local function __FUNC_1193_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot2(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1193_
	local registerVal9 = {}
	registerVal9.stateName = "DoublePerkArabic"
	local function __FUNC_121F_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot2(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_121F_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "perks.perk2_count")
	local function __FUNC_12A7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk2_count"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_12A7_)
	registerVal2:addElement(registerVal3)
	registerVal2.PerkInfo2 = registerVal3
	local registerVal4 = CoD.PerkInfo.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -500.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 60.000000, 110.000000)
	registerVal4.DoublePerkDescription:setText(Engine.Localize("MPUI_PERK_NOTIFY_1"))
	registerVal4.DoublePerkDescriptionArabic:setText(Engine.Localize("MPUI_PERK_NOTIFY_1"))
	local function __FUNC_13CB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PerkImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Perks", "perk1_1.image", __FUNC_13CB_)
	local function __FUNC_149C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PerkImage0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Perks", "perk1_0.image", __FUNC_149C_)
	local function __FUNC_1570_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.SinglePerkDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Perks", "perk1_0.name", __FUNC_1570_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "SinglePerk"
	local function __FUNC_1655_(arg0, arg2, arg3)
		return HasOnePerkInSlot1(arg1)
	end

	registerVal8.condition = __FUNC_1655_
	registerVal9 = {}
	registerVal9.stateName = "DoublePerk"
	local function __FUNC_16AB_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot1(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_16AB_
	local registerVal10 = {}
	registerVal10.stateName = "DoublePerkArabic"
	local function __FUNC_1737_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot1(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1737_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "perks.perk1_count")
	local function __FUNC_17BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk1_count"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_17BF_)
	registerVal2:addElement(registerVal4)
	registerVal2.PerkInfo1 = registerVal4
	local registerVal5 = CoD.PerkInfo.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -500.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal5.DoublePerkDescription:setText(Engine.Localize("MPUI_PERK_NOTIFY_0"))
	registerVal5.DoublePerkDescriptionArabic:setText(Engine.Localize("MPUI_PERK_NOTIFY_0"))
	local function __FUNC_18E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PerkImage1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Perks", "perk0_1.image", __FUNC_18E3_)
	local function __FUNC_19B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PerkImage0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Perks", "perk0_0.image", __FUNC_19B4_)
	local function __FUNC_1A88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SinglePerkDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Perks", "perk0_0.name", __FUNC_1A88_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "SinglePerk"
	local function __FUNC_1B6D_(arg0, arg2, arg3)
		return HasOnePerkInSlot0(arg1)
	end

	registerVal9.condition = __FUNC_1B6D_
	registerVal10 = {}
	registerVal10.stateName = "DoublePerk"
	local function __FUNC_1BC3_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot0(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1BC3_
	local registerVal11 = {}
	registerVal11.stateName = "DoublePerkArabic"
	local function __FUNC_1C4F_(arg0, arg2, arg3)
		local registerVal3 = HasTwoPerksInSlot0(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageReversed()
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1C4F_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "perks.perk0_count")
	local function __FUNC_1CD7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk0_count"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1CD7_)
	registerVal2:addElement(registerVal5)
	registerVal2.PerkInfo0 = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_1DFB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 120.000000, 170.000000)
		registerVal2.PerkInfo2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 60.000000, 110.000000)
		registerVal2.PerkInfo1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, 0.000000, 50.000000)
		registerVal2.PerkInfo0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1DFB_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_20E1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 170.000000, 220.000000)
		registerVal2.PerkInfo2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, -50.000000, 0.000000)
		registerVal2.PerkInfo1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, 62.000000, 124.000000)
		registerVal2.PerkInfo0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_20E1_
	registerVal6.Perk0 = registerVal7
	registerVal7 = {}
	local function __FUNC_23CE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 124.000000, 186.000000)
		registerVal2.PerkInfo2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 62.000000, 124.000000)
		registerVal2.PerkInfo1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.PerkInfo0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_23CE_
	registerVal6.Perk0_Perk1_Perk2 = registerVal7
	registerVal7 = {}
	local function __FUNC_26B0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 170.000000, 220.000000)
		registerVal2.PerkInfo2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 93.000000, 155.000000)
		registerVal2.PerkInfo1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, 31.000000, 93.000000)
		registerVal2.PerkInfo0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_26B0_
	registerVal6.Perk0_Perk1 = registerVal7
	registerVal7 = {}
	local function __FUNC_299E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 93.000000, 155.000000)
		registerVal2.PerkInfo2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 260.000000, 310.000000)
		registerVal2.PerkInfo1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, 31.000000, 93.000000)
		registerVal2.PerkInfo0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_299E_
	registerVal6.Perk0_Perk2 = registerVal7
	registerVal7 = {}
	local function __FUNC_2C8A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 170.000000, 220.000000)
		registerVal2.PerkInfo2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 62.000000, 124.000000)
		registerVal2.PerkInfo1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, -50.000000, 0.000000)
		registerVal2.PerkInfo0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2C8A_
	registerVal6.Perk1 = registerVal7
	registerVal7 = {}
	local function __FUNC_2F76_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 93.000000, 155.000000)
		registerVal2.PerkInfo2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 31.000000, 93.000000)
		registerVal2.PerkInfo1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, -50.000000, 0.000000)
		registerVal2.PerkInfo0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2F76_
	registerVal6.Perk1_Perk2 = registerVal7
	registerVal7 = {}
	local function __FUNC_325D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PerkInfo2:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo2:setTopBottom(true, false, 62.000000, 124.000000)
		registerVal2.PerkInfo2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerkInfo1:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo1:setTopBottom(true, false, 170.000000, 220.000000)
		registerVal2.PerkInfo1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerkInfo0:setLeftRight(false, true, -500.000000, 0.000000)
		registerVal2.PerkInfo0:setTopBottom(true, false, -50.000000, 0.000000)
		registerVal2.PerkInfo0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_325D_
	registerVal6.Perk2 = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_354A_(arg0)
		arg0.PerkInfo2:close()
		arg0.PerkInfo1:close()
		arg0.PerkInfo0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_354A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

