-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_33F_(arg0, arg1)
	local function __FUNC_3AE_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "maxTier")
		local registerVal4 = Engine.GetModel(registerVal2, "currentTier")
		local registerVal5 = Engine.GetModel(registerVal2, "xp")
		if registerVal3 and registerVal4 and registerVal5 then
			SetGlobalModelValue("maxTier", Engine.GetModelValue(registerVal3))
			SetGlobalModelValue("currentTier", Engine.GetModelValue(registerVal4))
			SetGlobalModelValue("tierXP", Engine.GetModelValue(registerVal5))
			local registerVal8 = {}
			registerVal8.name = "update_tier_list"
			registerVal8.controller = arg1
			arg0:dispatchEventToParent(registerVal8)
		end
	end

	arg0:registerEventHandler("gain_focus", __FUNC_3AE_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_CallingCardWidget = registerVal2
local function __FUNC_5D5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CallingCardWidget)
	registerVal2.id = "Challenges_CallingCardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal3:setTopBottom(true, false, 60.000000, 85.000000)
	registerVal3:setAlpha(0.020000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, -22.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -120.000000, 120.000000)
	registerVal5:setTopBottom(true, true, -30.000000, 6.000000)
	registerVal5.CardIconFrame:setScale(0.500000)
	local function __FUNC_1465_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1465_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsFrameWidget0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icons_challenges_classified_placeholder"))
	registerVal2:addElement(registerVal6)
	registerVal2.DarkOpsClassifiedIcon = registerVal6
	local registerVal7 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -2.000000, 62.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgInactiveDiag0 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 4.000000, 236.000000)
	registerVal8:setTopBottom(true, false, 63.000000, 82.000000)
	registerVal8:setAlpha(0.850000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setLetterSpacing(0.500000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_14B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "title", true, __FUNC_14B6_)
	registerVal2:addElement(registerVal8)
	registerVal2.text = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 120.000000, 124.000000)
	registerVal9:setTopBottom(true, false, -40.000000, 209.000000)
	registerVal9:setZRot(-90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.featlineleft0000 = registerVal9
	local registerVal10 = CoD.cac_lock.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 108.000000, 140.000000)
	registerVal10:setTopBottom(true, false, 12.000000, 44.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.lockedIcon = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, -2.000000, 1.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_156E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_156E_
	local function __FUNC_18A6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_18A6_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1A64_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1A64_
	local function __FUNC_1DB0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_1DB0_
	registerVal13.Locked = registerVal14
	registerVal14 = {}
	local function __FUNC_209B_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsFrameWidget0:setLeftRight(true, true, -120.000000, 120.000000)
		registerVal2.CallingCardsFrameWidget0:setTopBottom(true, true, -30.000000, 6.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.FocusBarT:setZoom(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_209B_
	local function __FUNC_2480_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.DarkOpsClassifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_2480_
	registerVal13.Classified = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Locked"
	local function __FUNC_26FA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal16.condition = __FUNC_26FA_
	local registerVal17 = {}
	registerVal17.stateName = "Classified"
	local function __FUNC_276C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_276C_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_27B9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_27B9_)
	local function __FUNC_28D6_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.CallingCardsFrameWidget0:close()
		arg0.BoxButtonLrgInactiveDiag0:close()
		arg0.lockedIcon:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_28D6_)
	if __FUNC_33F_ then
		__FUNC_33F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_CallingCardWidget.new = __FUNC_5D5_
