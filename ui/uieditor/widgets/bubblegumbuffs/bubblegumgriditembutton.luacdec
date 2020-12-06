-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemButtonNew")
require("ui.uieditor.widgets.CAC.DLCLabel")
require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumDLCTextPopup")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumGridItemButton = registerVal1
function CoD.BubbleGumGridItemButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumGridItemButton)
	registerVal2.id = "BubbleGumGridItemButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GridItemButtonNew.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_EB5_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_EB5_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "New"
	local function __FUNC_F06_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
			if not registerVal3 then
				registerVal3 = IsBGBItemLocked(arg0, arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_F06_
	local registerVal8 = {}
	registerVal8.stateName = "RequiresDLC"
	local function __FUNC_FD4_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		registerVal3 = IsLive()
		if registerVal3 and registerVal3 then
			registerVal3 = IsBGBItemLocked(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_FD4_
	local registerVal9 = {}
	registerVal9.stateName = "Locked"
	local function __FUNC_1087_(arg0, arg2, arg3)
		return IsBGBItemLocked(arg0, arg2, arg1)
	end

	registerVal9.condition = __FUNC_1087_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_10E1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_10E1_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_11FF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_11FF_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_132C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_132C_)
	registerVal2:addElement(registerVal3)
	registerVal2.GridItemButtonNew = registerVal3
	local registerVal4 = CoD.DLCLabel.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -51.000000, 11.000000)
	registerVal4:setTopBottom(false, true, -51.000000, 1.000000)
	local function __FUNC_1454_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1454_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "HasDLC"
	local function __FUNC_14A6_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsBGBItemLocked(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_14A6_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_153B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "itemIndex", true, __FUNC_153B_)
	registerVal2:addElement(registerVal4)
	registerVal2.DLCLabel0 = registerVal4
	local registerVal5 = CoD.BubbleGumDLCTextPopup.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal5:setTopBottom(true, false, 128.290000, 160.290000)
	registerVal2:addElement(registerVal5)
	registerVal2.BubbleGumDLCTextPopupMega = registerVal5
	registerVal6 = CoD.BubbleGumDLCTextPopup.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal6:setTopBottom(true, false, 128.290000, 160.290000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BubbleGumDLCTextPopupClassic = registerVal6
	registerVal7 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal7:setTopBottom(true, false, 115.390000, 125.390000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_1657_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1657_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.HintTextArrow0 = registerVal7
	local function __FUNC_16A1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.textCenterAlign:setText(Engine.Localize(GetBGBDLCStringFromIndex("ZMUI_BGB_PURCHASE_DLC", registerVal1)))
		end
	end

	registerVal2.BubbleGumDLCTextPopupMega:linkToElementModel(registerVal2, "dlcIndex", true, __FUNC_16A1_)
	local function __FUNC_17CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textCenterAlign:setText(Engine.Localize(GetBGBDLCStringFromIndex("ZMUI_BGB_PURCHASE_DLC_CLASSIC", registerVal1)))
		end
	end

	registerVal2.BubbleGumDLCTextPopupClassic:linkToElementModel(registerVal2, "dlcIndex", true, __FUNC_17CC_)
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1900_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1900_
	local function __FUNC_1A6D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.GainFocus = __FUNC_1A6D_
	local function __FUNC_1ACE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Focus = __FUNC_1ACE_
	local function __FUNC_1B2E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.LoseFocus = __FUNC_1B2E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1B8E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1B8E_
	local function __FUNC_1CF9_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1E47_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		__FUNC_1E47_(registerVal5, {})
		local function __FUNC_1FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(0.000000)
		__FUNC_1FF9_(registerVal7, {})
	end

	registerVal9.GainFocus = __FUNC_1CF9_
	local function __FUNC_21AD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_21AD_
	local function __FUNC_2319_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2467_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(1.000000)
		__FUNC_2467_(registerVal5, {})
		local function __FUNC_2619_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(1.000000)
		__FUNC_2619_(registerVal7, {})
	end

	registerVal9.LoseFocus = __FUNC_2319_
	registerVal8.CanBuyDLCMega = registerVal9
	registerVal9 = {}
	local function __FUNC_27CD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_27CD_
	local function __FUNC_2939_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2B07_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupClassic:setAlpha(0.000000)
		__FUNC_2B07_(registerVal6, {})
		local function __FUNC_2CB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(0.000000)
		__FUNC_2CB9_(registerVal7, {})
	end

	registerVal9.GainFocus = __FUNC_2939_
	local function __FUNC_2E6D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupClassic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_2E6D_
	local function __FUNC_3048_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupMega:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_321C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BubbleGumDLCTextPopupClassic:setAlpha(1.000000)
		__FUNC_321C_(registerVal6, {})
		local function __FUNC_33D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.HintTextArrow0:setAlpha(1.000000)
		__FUNC_33D1_(registerVal7, {})
	end

	registerVal9.LoseFocus = __FUNC_3048_
	registerVal8.CanBuyDLCClassic = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "CanBuyDLCMega"
	local function __FUNC_3585_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
			if not registerVal3 then
				registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "group", "bubblegum_consumable")
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_3585_
	local registerVal12 = {}
	registerVal12.stateName = "CanBuyDLCClassic"
	local function __FUNC_3697_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsBGBItemLocked(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_3697_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_3727_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_3727_)
	local function __FUNC_3843_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "group"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "group", true, __FUNC_3843_)
	registerVal3.id = "GridItemButtonNew"
	local function __FUNC_395B_(arg0, arg1)
		local registerVal2 = arg0.GridItemButtonNew:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_395B_)
	local function __FUNC_3A65_(arg0)
		arg0.GridItemButtonNew:close()
		arg0.DLCLabel0:close()
		arg0.BubbleGumDLCTextPopupMega:close()
		arg0.BubbleGumDLCTextPopupClassic:close()
		arg0.HintTextArrow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3A65_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

