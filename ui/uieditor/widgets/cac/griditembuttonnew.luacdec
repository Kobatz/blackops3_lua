-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.GridItemBGBGlow")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.GridItemUpgradeIconWidget")
require("ui.uieditor.widgets.Prestige.Prestige_TokenRefundHintWidget")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemButtonNew = registerVal1
function CoD.GridItemButtonNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemButtonNew)
	registerVal2.id = "GridItemButtonNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.GridItemBGBGlow.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -21.000000, 21.000000)
	registerVal6:setTopBottom(true, true, -21.000000, 21.000000)
	local function __FUNC_2CBD_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_2CBD_)
	registerVal2:addElement(registerVal6)
	registerVal2.GridItemBGBGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_2D0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_2D0E_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImageSolid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setupUIStreamedImage(0.000000)
	local function __FUNC_2DC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_2DC0_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -3.000000, 25.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_2E74_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_2E74_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.tokenPermanentUnlock = registerVal9
	local registerVal10 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal10:setTopBottom(true, false, -3.000000, 25.000000)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_2F0C_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if not registerVal3 then
			registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsInPermanentUnlockMenu(arg1)
				if not registerVal3 then
					registerVal3 = IsArenaMode()
				else
				else
				end
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_2F0C_
	local registerVal15 = {}
	registerVal15.stateName = "VisibleCP"
	local function __FUNC_3001_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_3001_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_30C4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_30C4_)
	local function __FUNC_31EC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemIndex", true, __FUNC_31EC_)
	registerVal2:addElement(registerVal10)
	registerVal2.tokenUnlock = registerVal10
	local registerVal11 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal11:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal11:setAlpha(0.600000)
	local function __FUNC_330B_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_330B_)
	local function __FUNC_335A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "name", true, __FUNC_335A_)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Hidden"
	local function __FUNC_3430_(arg0, arg2, arg3)
		return IsCACItemBubbleGum(arg0, arg2, arg1)
	end

	registerVal15.condition = __FUNC_3430_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_3490_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "itemIndex", true, __FUNC_3490_)
	registerVal2:addElement(registerVal11)
	registerVal2.LabelButton = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal12:setRGB(0.560000, 0.680000, 0.270000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal12)
	registerVal2.equippedIcon = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal13:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal13:setRGB(1.000000, 0.410000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal13)
	registerVal2.alertIcon = registerVal13
	registerVal14 = CoD.cac_lock.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -15.500000, 14.500000)
	registerVal14:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal14:setAlpha(0.800000)
	registerVal2:addElement(registerVal14)
	registerVal2.lockedIcon = registerVal14
	registerVal15 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal15:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.IconNew = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarT = registerVal16
	local registerVal17 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal17:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal17:setZoom(1.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBarB = registerVal17
	local registerVal18 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal18:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal18:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal18:setRGB(1.000000, 0.300000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.FocusBorder = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal19:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal19:setRGB(1.000000, 0.090000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal20:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal20:setRGB(1.000000, 0.150000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.glitch2 = registerVal20
	local registerVal21 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 2.000000, 24.000000)
	registerVal21:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal21:setScale(0.800000)
	local function __FUNC_35AF_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_35AF_)
	local function __FUNC_35FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.ComsumableCountLabel:setText(Engine.Localize(GetConsumableCountFromIndex(arg1, registerVal1)))
		end
	end

	registerVal21:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_35FE_)
	registerVal2:addElement(registerVal21)
	registerVal2.ConsumableLabel = registerVal21
	local registerVal22 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal22:setTopBottom(false, true, -104.250000, -84.250000)
	registerVal22:setAlpha(0.600000)
	local function __FUNC_3711_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_3711_)
	local function __FUNC_3762_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "headerName", true, __FUNC_3762_)
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Hidden"
	local function __FUNC_3838_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "headerName")
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_3838_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	local function __FUNC_38BC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "headerName"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:linkToElementModel(registerVal22, "headerName", true, __FUNC_38BC_)
	registerVal2:addElement(registerVal22)
	registerVal2.HeaderLabel = registerVal22
	local registerVal23 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, -1.000000, 109.000000)
	registerVal23:setTopBottom(true, false, 0.000000, 95.000000)
	local function __FUNC_39DC_(arg0)
		registerVal23:setModel(arg0, arg1)
	end

	registerVal23:linkToElementModel(registerVal2, nil, false, __FUNC_39DC_)
	registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Visible"
	local function __FUNC_3A2E_(arg0, arg2, arg3)
		local registerVal3 = ItemIsBannedLobby(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = ItemRestrictionVoteActive()
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_3A2E_
	registerVal26 = {registerVal27}
	registerVal23:mergeStateConditions(registerVal26)
	local function __FUNC_3AC2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:linkToElementModel(registerVal23, nil, true, __FUNC_3AC2_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.Pregame.Update")
	local function __FUNC_3BCD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_3BCD_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.Pregame.state")
	local function __FUNC_3CFA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_3CFA_)
	registerVal2:addElement(registerVal23)
	registerVal2.RestrictedItemWarning = registerVal23
	local registerVal24 = CoD.GridItemUpgradeIconWidget.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 2.000000, 20.000000)
	registerVal24:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "Upgradable"
	local function __FUNC_3E25_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgradable(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal28.condition = __FUNC_3E25_
	local registerVal29 = {}
	registerVal29.stateName = "Upgraded"
	local function __FUNC_3EA9_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgraded(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal29.condition = __FUNC_3EA9_
	registerVal27 = {registerVal28, registerVal29}
	registerVal24:mergeStateConditions(registerVal27)
	local function __FUNC_3F2B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:linkToElementModel(registerVal24, "itemIndex", true, __FUNC_3F2B_)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "lobbyRoot.lobbyNav")
	local function __FUNC_4047_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:subscribeToModel(registerVal27, __FUNC_4047_)
	registerVal2:addElement(registerVal24)
	registerVal2.GridItemUpgradeIconWidget = registerVal24
	registerVal25 = CoD.Prestige_TokenRefundHintWidget.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal25:setTopBottom(false, true, 19.000000, 51.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25.textCenterAlign:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal28 = {}
	registerVal29 = {}
	registerVal29.stateName = "Below"
	local function __FUNC_416C_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal29.condition = __FUNC_416C_
	local registerVal30 = {}
	registerVal30.stateName = "Right"
	local function __FUNC_41B8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal30.condition = __FUNC_41B8_
	local registerVal31 = {}
	registerVal31.stateName = "Left"
	local function __FUNC_4205_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal31.condition = __FUNC_4205_
	local registerVal32 = {}
	registerVal32.stateName = "Above"
	local function __FUNC_4251_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal32.condition = __FUNC_4251_
	registerVal28 = {registerVal29, registerVal30, registerVal31, registerVal32}
	registerVal25:mergeStateConditions(registerVal28)
	registerVal2:addElement(registerVal25)
	registerVal2.TokenRefundHint = registerVal25
	registerVal26 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal26:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal26:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setZoom(1.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.FocusWhiteT = registerVal26
	registerVal27 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal27:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal27:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setZoom(1.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.FocusWhiteB = registerVal27
	registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal28:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
	registerVal2:addElement(registerVal28)
	registerVal2.dlcDownloadImage = registerVal28
	registerVal29 = {}
	registerVal30 = {}
	local function __FUNC_429D_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.DefaultClip = __FUNC_429D_
	local function __FUNC_4A33_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4DAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_4DAB_(registerVal4, {})
		local function __FUNC_4F5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_4F5D_(registerVal8, {})
		local function __FUNC_512F_(arg0, arg1)
			local function __FUNC_5284_(arg0, arg1)
				local function __FUNC_53FF_(arg0, arg1)
					local function __FUNC_5554_(arg0, arg1)
						local function __FUNC_56CF_(arg0, arg1)
							local function __FUNC_5824_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5824_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5824_)
						end

						if arg1.interrupted then
							__FUNC_56CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56CF_)
					end

					if arg1.interrupted then
						__FUNC_5554_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5554_)
				end

				if arg1.interrupted then
					__FUNC_53FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53FF_)
			end

			if arg1.interrupted then
				__FUNC_5284_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5284_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_512F_(registerVal16, {})
		local function __FUNC_59D9_(arg0, arg1)
			local function __FUNC_5B30_(arg0, arg1)
				local function __FUNC_5CAB_(arg0, arg1)
					local function __FUNC_5E00_(arg0, arg1)
						local function __FUNC_5F7B_(arg0, arg1)
							local function __FUNC_60D0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_60D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60D0_)
						end

						if arg1.interrupted then
							__FUNC_5F7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F7B_)
					end

					if arg1.interrupted then
						__FUNC_5E00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E00_)
				end

				if arg1.interrupted then
					__FUNC_5CAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CAB_)
			end

			if arg1.interrupted then
				__FUNC_5B30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B30_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_59D9_(registerVal17, {})
		local function __FUNC_6285_(arg0, arg1)
			local function __FUNC_63DC_(arg0, arg1)
				local function __FUNC_6557_(arg0, arg1)
					local function __FUNC_66CF_(arg0, arg1)
						local function __FUNC_6847_(arg0, arg1)
							local function __FUNC_699C_(arg0, arg1)
								local function __FUNC_6B17_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_6B17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B17_)
							end

							if arg1.interrupted then
								__FUNC_699C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_699C_)
						end

						if arg1.interrupted then
							__FUNC_6847_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6847_)
					end

					if arg1.interrupted then
						__FUNC_66CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66CF_)
				end

				if arg1.interrupted then
					__FUNC_6557_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6557_)
			end

			if arg1.interrupted then
				__FUNC_63DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63DC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6285_(registerVal18, {})
		local function __FUNC_6CC9_(arg0, arg1)
			local function __FUNC_6E20_(arg0, arg1)
				local function __FUNC_6F9B_(arg0, arg1)
					local function __FUNC_70F0_(arg0, arg1)
						local function __FUNC_726B_(arg0, arg1)
							local function __FUNC_73C0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_73C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73C0_)
						end

						if arg1.interrupted then
							__FUNC_726B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_726B_)
					end

					if arg1.interrupted then
						__FUNC_70F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70F0_)
				end

				if arg1.interrupted then
					__FUNC_6F9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F9B_)
			end

			if arg1.interrupted then
				__FUNC_6E20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E20_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_6CC9_(registerVal19, {})
		local function __FUNC_75A3_(arg0, arg1)
			local function __FUNC_76F8_(arg0, arg1)
				local function __FUNC_7873_(arg0, arg1)
					local function __FUNC_79C8_(arg0, arg1)
						local function __FUNC_7B43_(arg0, arg1)
							local function __FUNC_7C98_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7C98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C98_)
						end

						if arg1.interrupted then
							__FUNC_7B43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B43_)
					end

					if arg1.interrupted then
						__FUNC_79C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79C8_)
				end

				if arg1.interrupted then
					__FUNC_7873_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7873_)
			end

			if arg1.interrupted then
				__FUNC_76F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76F8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_75A3_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_4A33_
	local function __FUNC_7E7B_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.Focus = __FUNC_7E7B_
	local function __FUNC_82DA_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_8620_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_8620_(registerVal4, {})
		local function __FUNC_87D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_87D5_(registerVal8, {})
		local function __FUNC_8989_(arg0, arg1)
			local function __FUNC_8B03_(arg0, arg1)
				local function __FUNC_8C7B_(arg0, arg1)
					local function __FUNC_8DF3_(arg0, arg1)
						local function __FUNC_8F48_(arg0, arg1)
							local function __FUNC_90C3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_90C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90C3_)
						end

						if arg1.interrupted then
							__FUNC_8F48_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F48_)
					end

					if arg1.interrupted then
						__FUNC_8DF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DF3_)
				end

				if arg1.interrupted then
					__FUNC_8C7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C7B_)
			end

			if arg1.interrupted then
				__FUNC_8B03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B03_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_8989_(registerVal16, {})
		local function __FUNC_9275_(arg0, arg1)
			local function __FUNC_93EF_(arg0, arg1)
				local function __FUNC_9567_(arg0, arg1)
					local function __FUNC_96DF_(arg0, arg1)
						local function __FUNC_9834_(arg0, arg1)
							local function __FUNC_99AF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_99AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99AF_)
						end

						if arg1.interrupted then
							__FUNC_9834_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9834_)
					end

					if arg1.interrupted then
						__FUNC_96DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96DF_)
				end

				if arg1.interrupted then
					__FUNC_9567_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9567_)
			end

			if arg1.interrupted then
				__FUNC_93EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93EF_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_9275_(registerVal17, {})
		local function __FUNC_9B61_(arg0, arg1)
			local function __FUNC_9CB8_(arg0, arg1)
				local function __FUNC_9E33_(arg0, arg1)
					local function __FUNC_9FAB_(arg0, arg1)
						local function __FUNC_A123_(arg0, arg1)
							local function __FUNC_A278_(arg0, arg1)
								local function __FUNC_A3F3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_A3F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3F3_)
							end

							if arg1.interrupted then
								__FUNC_A278_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A278_)
						end

						if arg1.interrupted then
							__FUNC_A123_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A123_)
					end

					if arg1.interrupted then
						__FUNC_9FAB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FAB_)
				end

				if arg1.interrupted then
					__FUNC_9E33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E33_)
			end

			if arg1.interrupted then
				__FUNC_9CB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CB8_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9B61_(registerVal18, {})
		local function __FUNC_A5A5_(arg0, arg1)
			local function __FUNC_A6FC_(arg0, arg1)
				local function __FUNC_A877_(arg0, arg1)
					local function __FUNC_A9CC_(arg0, arg1)
						local function __FUNC_AB47_(arg0, arg1)
							local function __FUNC_AC9C_(arg0, arg1)
								local function __FUNC_AE17_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_AE17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE17_)
							end

							if arg1.interrupted then
								__FUNC_AC9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC9C_)
						end

						if arg1.interrupted then
							__FUNC_AB47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB47_)
					end

					if arg1.interrupted then
						__FUNC_A9CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9CC_)
				end

				if arg1.interrupted then
					__FUNC_A877_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A877_)
			end

			if arg1.interrupted then
				__FUNC_A6FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6FC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_A5A5_(registerVal19, {})
		local function __FUNC_AFF7_(arg0, arg1)
			local function __FUNC_B14C_(arg0, arg1)
				local function __FUNC_B2C7_(arg0, arg1)
					local function __FUNC_B41C_(arg0, arg1)
						local function __FUNC_B597_(arg0, arg1)
							local function __FUNC_B6EC_(arg0, arg1)
								local function __FUNC_B867_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_B867_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B867_)
							end

							if arg1.interrupted then
								__FUNC_B6EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6EC_)
						end

						if arg1.interrupted then
							__FUNC_B597_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B597_)
					end

					if arg1.interrupted then
						__FUNC_B41C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B41C_)
				end

				if arg1.interrupted then
					__FUNC_B2C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2C7_)
			end

			if arg1.interrupted then
				__FUNC_B14C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B14C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_AFF7_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_82DA_
	registerVal29.DefaultState = registerVal30
	registerVal30 = {}
	local function __FUNC_BA47_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.DefaultClip = __FUNC_BA47_
	local function __FUNC_C1A7_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_C51A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_C51A_(registerVal4, {})
		local function __FUNC_C6CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_C6CD_(registerVal8, {})
		local function __FUNC_C881_(arg0, arg1)
			local function __FUNC_C9D8_(arg0, arg1)
				local function __FUNC_CB53_(arg0, arg1)
					local function __FUNC_CCA8_(arg0, arg1)
						local function __FUNC_CE23_(arg0, arg1)
							local function __FUNC_CF78_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CF78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF78_)
						end

						if arg1.interrupted then
							__FUNC_CE23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE23_)
					end

					if arg1.interrupted then
						__FUNC_CCA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCA8_)
				end

				if arg1.interrupted then
					__FUNC_CB53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB53_)
			end

			if arg1.interrupted then
				__FUNC_C9D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9D8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C881_(registerVal16, {})
		local function __FUNC_D12D_(arg0, arg1)
			local function __FUNC_D284_(arg0, arg1)
				local function __FUNC_D3FF_(arg0, arg1)
					local function __FUNC_D554_(arg0, arg1)
						local function __FUNC_D6CF_(arg0, arg1)
							local function __FUNC_D824_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_D824_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D824_)
						end

						if arg1.interrupted then
							__FUNC_D6CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6CF_)
					end

					if arg1.interrupted then
						__FUNC_D554_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D554_)
				end

				if arg1.interrupted then
					__FUNC_D3FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3FF_)
			end

			if arg1.interrupted then
				__FUNC_D284_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D284_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_D12D_(registerVal17, {})
		local function __FUNC_D9D9_(arg0, arg1)
			local function __FUNC_DB30_(arg0, arg1)
				local function __FUNC_DCAB_(arg0, arg1)
					local function __FUNC_DE23_(arg0, arg1)
						local function __FUNC_DF9B_(arg0, arg1)
							local function __FUNC_E0F0_(arg0, arg1)
								local function __FUNC_E26B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_E26B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E26B_)
							end

							if arg1.interrupted then
								__FUNC_E0F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0F0_)
						end

						if arg1.interrupted then
							__FUNC_DF9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF9B_)
					end

					if arg1.interrupted then
						__FUNC_DE23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE23_)
				end

				if arg1.interrupted then
					__FUNC_DCAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCAB_)
			end

			if arg1.interrupted then
				__FUNC_DB30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB30_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D9D9_(registerVal18, {})
		local function __FUNC_E44B_(arg0, arg1)
			local function __FUNC_E5A0_(arg0, arg1)
				local function __FUNC_E71B_(arg0, arg1)
					local function __FUNC_E870_(arg0, arg1)
						local function __FUNC_E9EB_(arg0, arg1)
							local function __FUNC_EB40_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EB40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB40_)
						end

						if arg1.interrupted then
							__FUNC_E9EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9EB_)
					end

					if arg1.interrupted then
						__FUNC_E870_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E870_)
				end

				if arg1.interrupted then
					__FUNC_E71B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E71B_)
			end

			if arg1.interrupted then
				__FUNC_E5A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5A0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_E44B_(registerVal19, {})
		local function __FUNC_ED23_(arg0, arg1)
			local function __FUNC_EE78_(arg0, arg1)
				local function __FUNC_EFF3_(arg0, arg1)
					local function __FUNC_F148_(arg0, arg1)
						local function __FUNC_F2C3_(arg0, arg1)
							local function __FUNC_F418_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_F418_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F418_)
						end

						if arg1.interrupted then
							__FUNC_F2C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2C3_)
					end

					if arg1.interrupted then
						__FUNC_F148_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F148_)
				end

				if arg1.interrupted then
					__FUNC_EFF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFF3_)
			end

			if arg1.interrupted then
				__FUNC_EE78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE78_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_ED23_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_C1A7_
	local function __FUNC_F5FB_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.Focus = __FUNC_F5FB_
	local function __FUNC_F99C_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_FD0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_FD0D_(registerVal4, {})
		local function __FUNC_FEC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_FEC1_(registerVal8, {})
		local function __FUNC_10075_(arg0, arg1)
			local function __FUNC_101EF_(arg0, arg1)
				local function __FUNC_10367_(arg0, arg1)
					local function __FUNC_104DF_(arg0, arg1)
						local function __FUNC_10634_(arg0, arg1)
							local function __FUNC_107AF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_107AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107AF_)
						end

						if arg1.interrupted then
							__FUNC_10634_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10634_)
					end

					if arg1.interrupted then
						__FUNC_104DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104DF_)
				end

				if arg1.interrupted then
					__FUNC_10367_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10367_)
			end

			if arg1.interrupted then
				__FUNC_101EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101EF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_10075_(registerVal16, {})
		local function __FUNC_10961_(arg0, arg1)
			local function __FUNC_10ADB_(arg0, arg1)
				local function __FUNC_10C53_(arg0, arg1)
					local function __FUNC_10DCB_(arg0, arg1)
						local function __FUNC_10F20_(arg0, arg1)
							local function __FUNC_1109B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1109B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1109B_)
						end

						if arg1.interrupted then
							__FUNC_10F20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F20_)
					end

					if arg1.interrupted then
						__FUNC_10DCB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DCB_)
				end

				if arg1.interrupted then
					__FUNC_10C53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C53_)
			end

			if arg1.interrupted then
				__FUNC_10ADB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10ADB_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_10961_(registerVal17, {})
		local function __FUNC_1124D_(arg0, arg1)
			local function __FUNC_113A4_(arg0, arg1)
				local function __FUNC_1151F_(arg0, arg1)
					local function __FUNC_11697_(arg0, arg1)
						local function __FUNC_1180F_(arg0, arg1)
							local function __FUNC_11964_(arg0, arg1)
								local function __FUNC_11ADF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_11ADF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11ADF_)
							end

							if arg1.interrupted then
								__FUNC_11964_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11964_)
						end

						if arg1.interrupted then
							__FUNC_1180F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1180F_)
					end

					if arg1.interrupted then
						__FUNC_11697_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11697_)
				end

				if arg1.interrupted then
					__FUNC_1151F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1151F_)
			end

			if arg1.interrupted then
				__FUNC_113A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113A4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1124D_(registerVal18, {})
		local function __FUNC_11CBF_(arg0, arg1)
			local function __FUNC_11E14_(arg0, arg1)
				local function __FUNC_11F8F_(arg0, arg1)
					local function __FUNC_120E4_(arg0, arg1)
						local function __FUNC_1225F_(arg0, arg1)
							local function __FUNC_123B4_(arg0, arg1)
								local function __FUNC_1252F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1252F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1252F_)
							end

							if arg1.interrupted then
								__FUNC_123B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123B4_)
						end

						if arg1.interrupted then
							__FUNC_1225F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1225F_)
					end

					if arg1.interrupted then
						__FUNC_120E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120E4_)
				end

				if arg1.interrupted then
					__FUNC_11F8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F8F_)
			end

			if arg1.interrupted then
				__FUNC_11E14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E14_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_11CBF_(registerVal19, {})
		local function __FUNC_1270F_(arg0, arg1)
			local function __FUNC_12864_(arg0, arg1)
				local function __FUNC_129DF_(arg0, arg1)
					local function __FUNC_12B34_(arg0, arg1)
						local function __FUNC_12CAF_(arg0, arg1)
							local function __FUNC_12E04_(arg0, arg1)
								local function __FUNC_12F7F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_12F7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F7F_)
							end

							if arg1.interrupted then
								__FUNC_12E04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E04_)
						end

						if arg1.interrupted then
							__FUNC_12CAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CAF_)
					end

					if arg1.interrupted then
						__FUNC_12B34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B34_)
				end

				if arg1.interrupted then
					__FUNC_129DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129DF_)
			end

			if arg1.interrupted then
				__FUNC_12864_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12864_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1270F_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_F99C_
	registerVal29.Equipped = registerVal30
	registerVal30 = {}
	local function __FUNC_1315F_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.DefaultClip = __FUNC_1315F_
	local function __FUNC_13866_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_13B7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.000000)
		__FUNC_13B7D_(registerVal6, {})
		local function __FUNC_13D31_(arg0, arg1)
			local function __FUNC_13E88_(arg0, arg1)
				local function __FUNC_14003_(arg0, arg1)
					local function __FUNC_14158_(arg0, arg1)
						local function __FUNC_142D3_(arg0, arg1)
							local function __FUNC_14428_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_14428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14428_)
						end

						if arg1.interrupted then
							__FUNC_142D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142D3_)
					end

					if arg1.interrupted then
						__FUNC_14158_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14158_)
				end

				if arg1.interrupted then
					__FUNC_14003_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14003_)
			end

			if arg1.interrupted then
				__FUNC_13E88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E88_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_13D31_(registerVal16, {})
		local function __FUNC_145DD_(arg0, arg1)
			local function __FUNC_14734_(arg0, arg1)
				local function __FUNC_148AF_(arg0, arg1)
					local function __FUNC_14A04_(arg0, arg1)
						local function __FUNC_14B7F_(arg0, arg1)
							local function __FUNC_14CD4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_14CD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14CD4_)
						end

						if arg1.interrupted then
							__FUNC_14B7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B7F_)
					end

					if arg1.interrupted then
						__FUNC_14A04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A04_)
				end

				if arg1.interrupted then
					__FUNC_148AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148AF_)
			end

			if arg1.interrupted then
				__FUNC_14734_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14734_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_145DD_(registerVal17, {})
		local function __FUNC_14E89_(arg0, arg1)
			local function __FUNC_14FE0_(arg0, arg1)
				local function __FUNC_1515B_(arg0, arg1)
					local function __FUNC_152D3_(arg0, arg1)
						local function __FUNC_1544B_(arg0, arg1)
							local function __FUNC_155A0_(arg0, arg1)
								local function __FUNC_1571B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1571B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1571B_)
							end

							if arg1.interrupted then
								__FUNC_155A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155A0_)
						end

						if arg1.interrupted then
							__FUNC_1544B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1544B_)
					end

					if arg1.interrupted then
						__FUNC_152D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152D3_)
				end

				if arg1.interrupted then
					__FUNC_1515B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1515B_)
			end

			if arg1.interrupted then
				__FUNC_14FE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FE0_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_14E89_(registerVal18, {})
		local function __FUNC_158FB_(arg0, arg1)
			local function __FUNC_15A50_(arg0, arg1)
				local function __FUNC_15BCB_(arg0, arg1)
					local function __FUNC_15D20_(arg0, arg1)
						local function __FUNC_15E9B_(arg0, arg1)
							local function __FUNC_15FF0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_15FF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FF0_)
						end

						if arg1.interrupted then
							__FUNC_15E9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E9B_)
					end

					if arg1.interrupted then
						__FUNC_15D20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D20_)
				end

				if arg1.interrupted then
					__FUNC_15BCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BCB_)
			end

			if arg1.interrupted then
				__FUNC_15A50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A50_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_158FB_(registerVal19, {})
		local function __FUNC_161D3_(arg0, arg1)
			local function __FUNC_16328_(arg0, arg1)
				local function __FUNC_164A3_(arg0, arg1)
					local function __FUNC_165F8_(arg0, arg1)
						local function __FUNC_16773_(arg0, arg1)
							local function __FUNC_168C8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_168C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168C8_)
						end

						if arg1.interrupted then
							__FUNC_16773_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16773_)
					end

					if arg1.interrupted then
						__FUNC_165F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165F8_)
				end

				if arg1.interrupted then
					__FUNC_164A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164A3_)
			end

			if arg1.interrupted then
				__FUNC_16328_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16328_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_161D3_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_13866_
	local function __FUNC_16AAB_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.Focus = __FUNC_16AAB_
	local function __FUNC_16D9B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_16FCD_(arg0, arg1)
			local function __FUNC_17147_(arg0, arg1)
				local function __FUNC_172BF_(arg0, arg1)
					local function __FUNC_17437_(arg0, arg1)
						local function __FUNC_1758C_(arg0, arg1)
							local function __FUNC_17707_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_17707_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17707_)
						end

						if arg1.interrupted then
							__FUNC_1758C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1758C_)
					end

					if arg1.interrupted then
						__FUNC_17437_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17437_)
				end

				if arg1.interrupted then
					__FUNC_172BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172BF_)
			end

			if arg1.interrupted then
				__FUNC_17147_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17147_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_16FCD_(registerVal16, {})
		local function __FUNC_178B9_(arg0, arg1)
			local function __FUNC_17A33_(arg0, arg1)
				local function __FUNC_17BAB_(arg0, arg1)
					local function __FUNC_17D23_(arg0, arg1)
						local function __FUNC_17E78_(arg0, arg1)
							local function __FUNC_17FF3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_17FF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FF3_)
						end

						if arg1.interrupted then
							__FUNC_17E78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E78_)
					end

					if arg1.interrupted then
						__FUNC_17D23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D23_)
				end

				if arg1.interrupted then
					__FUNC_17BAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BAB_)
			end

			if arg1.interrupted then
				__FUNC_17A33_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A33_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_178B9_(registerVal17, {})
		local function __FUNC_181A5_(arg0, arg1)
			local function __FUNC_182FC_(arg0, arg1)
				local function __FUNC_18477_(arg0, arg1)
					local function __FUNC_185EF_(arg0, arg1)
						local function __FUNC_18767_(arg0, arg1)
							local function __FUNC_188BC_(arg0, arg1)
								local function __FUNC_18A37_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_18A37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A37_)
							end

							if arg1.interrupted then
								__FUNC_188BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188BC_)
						end

						if arg1.interrupted then
							__FUNC_18767_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18767_)
					end

					if arg1.interrupted then
						__FUNC_185EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_185EF_)
				end

				if arg1.interrupted then
					__FUNC_18477_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18477_)
			end

			if arg1.interrupted then
				__FUNC_182FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182FC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_181A5_(registerVal18, {})
		local function __FUNC_18BE9_(arg0, arg1)
			local function __FUNC_18D40_(arg0, arg1)
				local function __FUNC_18EBB_(arg0, arg1)
					local function __FUNC_19010_(arg0, arg1)
						local function __FUNC_1918B_(arg0, arg1)
							local function __FUNC_192E0_(arg0, arg1)
								local function __FUNC_1945B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1945B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1945B_)
							end

							if arg1.interrupted then
								__FUNC_192E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192E0_)
						end

						if arg1.interrupted then
							__FUNC_1918B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1918B_)
					end

					if arg1.interrupted then
						__FUNC_19010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19010_)
				end

				if arg1.interrupted then
					__FUNC_18EBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EBB_)
			end

			if arg1.interrupted then
				__FUNC_18D40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D40_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_18BE9_(registerVal19, {})
		local function __FUNC_1960D_(arg0, arg1)
			local function __FUNC_19764_(arg0, arg1)
				local function __FUNC_198DF_(arg0, arg1)
					local function __FUNC_19A34_(arg0, arg1)
						local function __FUNC_19BAF_(arg0, arg1)
							local function __FUNC_19D04_(arg0, arg1)
								local function __FUNC_19E7F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_19E7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E7F_)
							end

							if arg1.interrupted then
								__FUNC_19D04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D04_)
						end

						if arg1.interrupted then
							__FUNC_19BAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19BAF_)
					end

					if arg1.interrupted then
						__FUNC_19A34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A34_)
				end

				if arg1.interrupted then
					__FUNC_198DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_198DF_)
			end

			if arg1.interrupted then
				__FUNC_19764_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19764_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1960D_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_16D9B_
	registerVal29.New = registerVal30
	registerVal30 = {}
	local function __FUNC_1A031_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ConsumableLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal28:completeAnimation()
		registerVal2.dlcDownloadImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.DefaultClip = __FUNC_1A031_
	local function __FUNC_1A7CC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1AA8C_(arg0, arg1)
			local function __FUNC_1ABE4_(arg0, arg1)
				local function __FUNC_1AD5F_(arg0, arg1)
					local function __FUNC_1AEB4_(arg0, arg1)
						local function __FUNC_1B02F_(arg0, arg1)
							local function __FUNC_1B184_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1B184_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B184_)
						end

						if arg1.interrupted then
							__FUNC_1B02F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B02F_)
					end

					if arg1.interrupted then
						__FUNC_1AEB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEB4_)
				end

				if arg1.interrupted then
					__FUNC_1AD5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD5F_)
			end

			if arg1.interrupted then
				__FUNC_1ABE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABE4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1AA8C_(registerVal16, {})
		local function __FUNC_1B339_(arg0, arg1)
			local function __FUNC_1B490_(arg0, arg1)
				local function __FUNC_1B60B_(arg0, arg1)
					local function __FUNC_1B760_(arg0, arg1)
						local function __FUNC_1B8DB_(arg0, arg1)
							local function __FUNC_1BA30_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1BA30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA30_)
						end

						if arg1.interrupted then
							__FUNC_1B8DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8DB_)
					end

					if arg1.interrupted then
						__FUNC_1B760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B760_)
				end

				if arg1.interrupted then
					__FUNC_1B60B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B60B_)
			end

			if arg1.interrupted then
				__FUNC_1B490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B490_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1B339_(registerVal17, {})
		local function __FUNC_1BBE5_(arg0, arg1)
			local function __FUNC_1BD3C_(arg0, arg1)
				local function __FUNC_1BEB7_(arg0, arg1)
					local function __FUNC_1C02F_(arg0, arg1)
						local function __FUNC_1C1A7_(arg0, arg1)
							local function __FUNC_1C2FC_(arg0, arg1)
								local function __FUNC_1C477_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1C477_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C477_)
							end

							if arg1.interrupted then
								__FUNC_1C2FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C2FC_)
						end

						if arg1.interrupted then
							__FUNC_1C1A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1A7_)
					end

					if arg1.interrupted then
						__FUNC_1C02F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C02F_)
				end

				if arg1.interrupted then
					__FUNC_1BEB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BEB7_)
			end

			if arg1.interrupted then
				__FUNC_1BD3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD3C_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1BBE5_(registerVal18, {})
		local function __FUNC_1C657_(arg0, arg1)
			local function __FUNC_1C7AC_(arg0, arg1)
				local function __FUNC_1C927_(arg0, arg1)
					local function __FUNC_1CA7C_(arg0, arg1)
						local function __FUNC_1CBF7_(arg0, arg1)
							local function __FUNC_1CD4C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1CD4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD4C_)
						end

						if arg1.interrupted then
							__FUNC_1CBF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CBF7_)
					end

					if arg1.interrupted then
						__FUNC_1CA7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CA7C_)
				end

				if arg1.interrupted then
					__FUNC_1C927_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C927_)
			end

			if arg1.interrupted then
				__FUNC_1C7AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7AC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1C657_(registerVal19, {})
		local function __FUNC_1CF2F_(arg0, arg1)
			local function __FUNC_1D084_(arg0, arg1)
				local function __FUNC_1D1FF_(arg0, arg1)
					local function __FUNC_1D354_(arg0, arg1)
						local function __FUNC_1D4CF_(arg0, arg1)
							local function __FUNC_1D624_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1D624_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D624_)
						end

						if arg1.interrupted then
							__FUNC_1D4CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4CF_)
					end

					if arg1.interrupted then
						__FUNC_1D354_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D354_)
				end

				if arg1.interrupted then
					__FUNC_1D1FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1FF_)
			end

			if arg1.interrupted then
				__FUNC_1D084_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D084_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1CF2F_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_1A7CC_
	local function __FUNC_1D807_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ConsumableLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal28:completeAnimation()
		registerVal2.dlcDownloadImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal28, {})
	end

	registerVal30.Focus = __FUNC_1D807_
	local function __FUNC_1DC09_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1DEC8_(arg0, arg1)
			local function __FUNC_1E043_(arg0, arg1)
				local function __FUNC_1E1BB_(arg0, arg1)
					local function __FUNC_1E333_(arg0, arg1)
						local function __FUNC_1E488_(arg0, arg1)
							local function __FUNC_1E603_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1E603_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E603_)
						end

						if arg1.interrupted then
							__FUNC_1E488_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E488_)
					end

					if arg1.interrupted then
						__FUNC_1E333_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E333_)
				end

				if arg1.interrupted then
					__FUNC_1E1BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1BB_)
			end

			if arg1.interrupted then
				__FUNC_1E043_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E043_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1DEC8_(registerVal16, {})
		local function __FUNC_1E7B5_(arg0, arg1)
			local function __FUNC_1E92F_(arg0, arg1)
				local function __FUNC_1EAA7_(arg0, arg1)
					local function __FUNC_1EC1F_(arg0, arg1)
						local function __FUNC_1ED74_(arg0, arg1)
							local function __FUNC_1EEEF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1EEEF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EEEF_)
						end

						if arg1.interrupted then
							__FUNC_1ED74_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED74_)
					end

					if arg1.interrupted then
						__FUNC_1EC1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC1F_)
				end

				if arg1.interrupted then
					__FUNC_1EAA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAA7_)
			end

			if arg1.interrupted then
				__FUNC_1E92F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E92F_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1E7B5_(registerVal17, {})
		local function __FUNC_1F0A1_(arg0, arg1)
			local function __FUNC_1F1F8_(arg0, arg1)
				local function __FUNC_1F373_(arg0, arg1)
					local function __FUNC_1F4EB_(arg0, arg1)
						local function __FUNC_1F663_(arg0, arg1)
							local function __FUNC_1F7B8_(arg0, arg1)
								local function __FUNC_1F933_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1F933_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F933_)
							end

							if arg1.interrupted then
								__FUNC_1F7B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7B8_)
						end

						if arg1.interrupted then
							__FUNC_1F663_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F663_)
					end

					if arg1.interrupted then
						__FUNC_1F4EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4EB_)
				end

				if arg1.interrupted then
					__FUNC_1F373_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F373_)
			end

			if arg1.interrupted then
				__FUNC_1F1F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1F8_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1F0A1_(registerVal18, {})
		local function __FUNC_1FB13_(arg0, arg1)
			local function __FUNC_1FC68_(arg0, arg1)
				local function __FUNC_1FDE3_(arg0, arg1)
					local function __FUNC_1FF38_(arg0, arg1)
						local function __FUNC_200B3_(arg0, arg1)
							local function __FUNC_20208_(arg0, arg1)
								local function __FUNC_20383_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_20383_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20383_)
							end

							if arg1.interrupted then
								__FUNC_20208_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20208_)
						end

						if arg1.interrupted then
							__FUNC_200B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_200B3_)
					end

					if arg1.interrupted then
						__FUNC_1FF38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF38_)
				end

				if arg1.interrupted then
					__FUNC_1FDE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FDE3_)
			end

			if arg1.interrupted then
				__FUNC_1FC68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC68_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1FB13_(registerVal19, {})
		local function __FUNC_20563_(arg0, arg1)
			local function __FUNC_206B8_(arg0, arg1)
				local function __FUNC_20833_(arg0, arg1)
					local function __FUNC_20988_(arg0, arg1)
						local function __FUNC_20B03_(arg0, arg1)
							local function __FUNC_20C58_(arg0, arg1)
								local function __FUNC_20DD3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_20DD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20DD3_)
							end

							if arg1.interrupted then
								__FUNC_20C58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C58_)
						end

						if arg1.interrupted then
							__FUNC_20B03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20B03_)
					end

					if arg1.interrupted then
						__FUNC_20988_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20988_)
				end

				if arg1.interrupted then
					__FUNC_20833_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20833_)
			end

			if arg1.interrupted then
				__FUNC_206B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_206B8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_20563_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_1DC09_
	registerVal29.RequiresDLC = registerVal30
	registerVal30 = {}
	local function __FUNC_20FB3_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ConsumableLabel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal30.DefaultClip = __FUNC_20FB3_
	local function __FUNC_216F3_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_219B0_(arg0, arg1)
			local function __FUNC_21B08_(arg0, arg1)
				local function __FUNC_21C83_(arg0, arg1)
					local function __FUNC_21DD8_(arg0, arg1)
						local function __FUNC_21F53_(arg0, arg1)
							local function __FUNC_220A8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_220A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220A8_)
						end

						if arg1.interrupted then
							__FUNC_21F53_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F53_)
					end

					if arg1.interrupted then
						__FUNC_21DD8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DD8_)
				end

				if arg1.interrupted then
					__FUNC_21C83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C83_)
			end

			if arg1.interrupted then
				__FUNC_21B08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21B08_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_219B0_(registerVal16, {})
		local function __FUNC_2225D_(arg0, arg1)
			local function __FUNC_223B4_(arg0, arg1)
				local function __FUNC_2252F_(arg0, arg1)
					local function __FUNC_22684_(arg0, arg1)
						local function __FUNC_227FF_(arg0, arg1)
							local function __FUNC_22954_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_22954_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22954_)
						end

						if arg1.interrupted then
							__FUNC_227FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227FF_)
					end

					if arg1.interrupted then
						__FUNC_22684_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22684_)
				end

				if arg1.interrupted then
					__FUNC_2252F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2252F_)
			end

			if arg1.interrupted then
				__FUNC_223B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_223B4_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2225D_(registerVal17, {})
		local function __FUNC_22B09_(arg0, arg1)
			local function __FUNC_22C60_(arg0, arg1)
				local function __FUNC_22DDB_(arg0, arg1)
					local function __FUNC_22F53_(arg0, arg1)
						local function __FUNC_230CB_(arg0, arg1)
							local function __FUNC_23220_(arg0, arg1)
								local function __FUNC_2339B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2339B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2339B_)
							end

							if arg1.interrupted then
								__FUNC_23220_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23220_)
						end

						if arg1.interrupted then
							__FUNC_230CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_230CB_)
					end

					if arg1.interrupted then
						__FUNC_22F53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22F53_)
				end

				if arg1.interrupted then
					__FUNC_22DDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22DDB_)
			end

			if arg1.interrupted then
				__FUNC_22C60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C60_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_22B09_(registerVal18, {})
		local function __FUNC_2357B_(arg0, arg1)
			local function __FUNC_236D0_(arg0, arg1)
				local function __FUNC_2384B_(arg0, arg1)
					local function __FUNC_239A0_(arg0, arg1)
						local function __FUNC_23B1B_(arg0, arg1)
							local function __FUNC_23C70_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_23C70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C70_)
						end

						if arg1.interrupted then
							__FUNC_23B1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B1B_)
					end

					if arg1.interrupted then
						__FUNC_239A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_239A0_)
				end

				if arg1.interrupted then
					__FUNC_2384B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2384B_)
			end

			if arg1.interrupted then
				__FUNC_236D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_236D0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2357B_(registerVal19, {})
		local function __FUNC_23E53_(arg0, arg1)
			local function __FUNC_23FA8_(arg0, arg1)
				local function __FUNC_24123_(arg0, arg1)
					local function __FUNC_24278_(arg0, arg1)
						local function __FUNC_243F3_(arg0, arg1)
							local function __FUNC_24548_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_24548_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24548_)
						end

						if arg1.interrupted then
							__FUNC_243F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_243F3_)
					end

					if arg1.interrupted then
						__FUNC_24278_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24278_)
				end

				if arg1.interrupted then
					__FUNC_24123_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24123_)
			end

			if arg1.interrupted then
				__FUNC_23FA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FA8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_23E53_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_216F3_
	local function __FUNC_2472B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.Focus = __FUNC_2472B_
	local function __FUNC_249BE_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_24C7C_(arg0, arg1)
			local function __FUNC_24DF7_(arg0, arg1)
				local function __FUNC_24F6F_(arg0, arg1)
					local function __FUNC_250E7_(arg0, arg1)
						local function __FUNC_2523C_(arg0, arg1)
							local function __FUNC_253B7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_253B7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_253B7_)
						end

						if arg1.interrupted then
							__FUNC_2523C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2523C_)
					end

					if arg1.interrupted then
						__FUNC_250E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_250E7_)
				end

				if arg1.interrupted then
					__FUNC_24F6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F6F_)
			end

			if arg1.interrupted then
				__FUNC_24DF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DF7_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_24C7C_(registerVal16, {})
		local function __FUNC_25569_(arg0, arg1)
			local function __FUNC_256E3_(arg0, arg1)
				local function __FUNC_2585B_(arg0, arg1)
					local function __FUNC_259D3_(arg0, arg1)
						local function __FUNC_25B28_(arg0, arg1)
							local function __FUNC_25CA3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_25CA3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25CA3_)
						end

						if arg1.interrupted then
							__FUNC_25B28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B28_)
					end

					if arg1.interrupted then
						__FUNC_259D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_259D3_)
				end

				if arg1.interrupted then
					__FUNC_2585B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2585B_)
			end

			if arg1.interrupted then
				__FUNC_256E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_256E3_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_25569_(registerVal17, {})
		local function __FUNC_25E55_(arg0, arg1)
			local function __FUNC_25FAC_(arg0, arg1)
				local function __FUNC_26127_(arg0, arg1)
					local function __FUNC_2629F_(arg0, arg1)
						local function __FUNC_26417_(arg0, arg1)
							local function __FUNC_2656C_(arg0, arg1)
								local function __FUNC_266E7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_266E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_266E7_)
							end

							if arg1.interrupted then
								__FUNC_2656C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2656C_)
						end

						if arg1.interrupted then
							__FUNC_26417_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26417_)
					end

					if arg1.interrupted then
						__FUNC_2629F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2629F_)
				end

				if arg1.interrupted then
					__FUNC_26127_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26127_)
			end

			if arg1.interrupted then
				__FUNC_25FAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25FAC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_25E55_(registerVal18, {})
		local function __FUNC_268C7_(arg0, arg1)
			local function __FUNC_26A1C_(arg0, arg1)
				local function __FUNC_26B97_(arg0, arg1)
					local function __FUNC_26CEC_(arg0, arg1)
						local function __FUNC_26E67_(arg0, arg1)
							local function __FUNC_26FBC_(arg0, arg1)
								local function __FUNC_27137_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_27137_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27137_)
							end

							if arg1.interrupted then
								__FUNC_26FBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26FBC_)
						end

						if arg1.interrupted then
							__FUNC_26E67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26E67_)
					end

					if arg1.interrupted then
						__FUNC_26CEC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26CEC_)
				end

				if arg1.interrupted then
					__FUNC_26B97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B97_)
			end

			if arg1.interrupted then
				__FUNC_26A1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A1C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_268C7_(registerVal19, {})
		local function __FUNC_27317_(arg0, arg1)
			local function __FUNC_2746C_(arg0, arg1)
				local function __FUNC_275E7_(arg0, arg1)
					local function __FUNC_2773C_(arg0, arg1)
						local function __FUNC_278B7_(arg0, arg1)
							local function __FUNC_27A0C_(arg0, arg1)
								local function __FUNC_27B87_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_27B87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B87_)
							end

							if arg1.interrupted then
								__FUNC_27A0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A0C_)
						end

						if arg1.interrupted then
							__FUNC_278B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_278B7_)
					end

					if arg1.interrupted then
						__FUNC_2773C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2773C_)
				end

				if arg1.interrupted then
					__FUNC_275E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_275E7_)
			end

			if arg1.interrupted then
				__FUNC_2746C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2746C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_27317_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_249BE_
	registerVal29.Locked = registerVal30
	registerVal30 = {}
	local function __FUNC_27D67_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.DefaultClip = __FUNC_27D67_
	local function __FUNC_28529_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_28920_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_28920_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_28AD5_(arg0, arg1)
			local function __FUNC_28C2C_(arg0, arg1)
				local function __FUNC_28DA7_(arg0, arg1)
					local function __FUNC_28EFC_(arg0, arg1)
						local function __FUNC_29077_(arg0, arg1)
							local function __FUNC_291CC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_291CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291CC_)
						end

						if arg1.interrupted then
							__FUNC_29077_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29077_)
					end

					if arg1.interrupted then
						__FUNC_28EFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28EFC_)
				end

				if arg1.interrupted then
					__FUNC_28DA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DA7_)
			end

			if arg1.interrupted then
				__FUNC_28C2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C2C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_28AD5_(registerVal16, {})
		local function __FUNC_29381_(arg0, arg1)
			local function __FUNC_294D8_(arg0, arg1)
				local function __FUNC_29653_(arg0, arg1)
					local function __FUNC_297A8_(arg0, arg1)
						local function __FUNC_29923_(arg0, arg1)
							local function __FUNC_29A78_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_29A78_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A78_)
						end

						if arg1.interrupted then
							__FUNC_29923_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29923_)
					end

					if arg1.interrupted then
						__FUNC_297A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_297A8_)
				end

				if arg1.interrupted then
					__FUNC_29653_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29653_)
			end

			if arg1.interrupted then
				__FUNC_294D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_294D8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_29381_(registerVal17, {})
		local function __FUNC_29C2D_(arg0, arg1)
			local function __FUNC_29D84_(arg0, arg1)
				local function __FUNC_29EFF_(arg0, arg1)
					local function __FUNC_2A077_(arg0, arg1)
						local function __FUNC_2A1EF_(arg0, arg1)
							local function __FUNC_2A344_(arg0, arg1)
								local function __FUNC_2A4BF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2A4BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A4BF_)
							end

							if arg1.interrupted then
								__FUNC_2A344_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A344_)
						end

						if arg1.interrupted then
							__FUNC_2A1EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1EF_)
					end

					if arg1.interrupted then
						__FUNC_2A077_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A077_)
				end

				if arg1.interrupted then
					__FUNC_29EFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29EFF_)
			end

			if arg1.interrupted then
				__FUNC_29D84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D84_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_29C2D_(registerVal18, {})
		local function __FUNC_2A69F_(arg0, arg1)
			local function __FUNC_2A7F4_(arg0, arg1)
				local function __FUNC_2A96F_(arg0, arg1)
					local function __FUNC_2AAC4_(arg0, arg1)
						local function __FUNC_2AC3F_(arg0, arg1)
							local function __FUNC_2AD94_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2AD94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD94_)
						end

						if arg1.interrupted then
							__FUNC_2AC3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC3F_)
					end

					if arg1.interrupted then
						__FUNC_2AAC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AAC4_)
				end

				if arg1.interrupted then
					__FUNC_2A96F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A96F_)
			end

			if arg1.interrupted then
				__FUNC_2A7F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A7F4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2A69F_(registerVal19, {})
		local function __FUNC_2AF77_(arg0, arg1)
			local function __FUNC_2B0CC_(arg0, arg1)
				local function __FUNC_2B247_(arg0, arg1)
					local function __FUNC_2B39C_(arg0, arg1)
						local function __FUNC_2B517_(arg0, arg1)
							local function __FUNC_2B66C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2B66C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B66C_)
						end

						if arg1.interrupted then
							__FUNC_2B517_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B517_)
					end

					if arg1.interrupted then
						__FUNC_2B39C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B39C_)
				end

				if arg1.interrupted then
					__FUNC_2B247_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B247_)
			end

			if arg1.interrupted then
				__FUNC_2B0CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B0CC_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2AF77_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_28529_
	local function __FUNC_2B84F_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.Focus = __FUNC_2B84F_
	local function __FUNC_2BC5C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2C054_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_2C054_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2C209_(arg0, arg1)
			local function __FUNC_2C383_(arg0, arg1)
				local function __FUNC_2C4FB_(arg0, arg1)
					local function __FUNC_2C673_(arg0, arg1)
						local function __FUNC_2C7C8_(arg0, arg1)
							local function __FUNC_2C943_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2C943_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C943_)
						end

						if arg1.interrupted then
							__FUNC_2C7C8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7C8_)
					end

					if arg1.interrupted then
						__FUNC_2C673_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C673_)
				end

				if arg1.interrupted then
					__FUNC_2C4FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4FB_)
			end

			if arg1.interrupted then
				__FUNC_2C383_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C383_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2C209_(registerVal16, {})
		local function __FUNC_2CAF5_(arg0, arg1)
			local function __FUNC_2CC6F_(arg0, arg1)
				local function __FUNC_2CDE7_(arg0, arg1)
					local function __FUNC_2CF5F_(arg0, arg1)
						local function __FUNC_2D0B4_(arg0, arg1)
							local function __FUNC_2D22F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2D22F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D22F_)
						end

						if arg1.interrupted then
							__FUNC_2D0B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0B4_)
					end

					if arg1.interrupted then
						__FUNC_2CF5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF5F_)
				end

				if arg1.interrupted then
					__FUNC_2CDE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDE7_)
			end

			if arg1.interrupted then
				__FUNC_2CC6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC6F_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2CAF5_(registerVal17, {})
		local function __FUNC_2D3E1_(arg0, arg1)
			local function __FUNC_2D538_(arg0, arg1)
				local function __FUNC_2D6B3_(arg0, arg1)
					local function __FUNC_2D82B_(arg0, arg1)
						local function __FUNC_2D9A3_(arg0, arg1)
							local function __FUNC_2DAF8_(arg0, arg1)
								local function __FUNC_2DC73_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2DC73_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC73_)
							end

							if arg1.interrupted then
								__FUNC_2DAF8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DAF8_)
						end

						if arg1.interrupted then
							__FUNC_2D9A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9A3_)
					end

					if arg1.interrupted then
						__FUNC_2D82B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D82B_)
				end

				if arg1.interrupted then
					__FUNC_2D6B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6B3_)
			end

			if arg1.interrupted then
				__FUNC_2D538_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D538_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2D3E1_(registerVal18, {})
		local function __FUNC_2DE53_(arg0, arg1)
			local function __FUNC_2DFA8_(arg0, arg1)
				local function __FUNC_2E123_(arg0, arg1)
					local function __FUNC_2E278_(arg0, arg1)
						local function __FUNC_2E3F3_(arg0, arg1)
							local function __FUNC_2E548_(arg0, arg1)
								local function __FUNC_2E6C3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2E6C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6C3_)
							end

							if arg1.interrupted then
								__FUNC_2E548_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E548_)
						end

						if arg1.interrupted then
							__FUNC_2E3F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E3F3_)
					end

					if arg1.interrupted then
						__FUNC_2E278_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E278_)
				end

				if arg1.interrupted then
					__FUNC_2E123_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E123_)
			end

			if arg1.interrupted then
				__FUNC_2DFA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFA8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2DE53_(registerVal19, {})
		local function __FUNC_2E8A3_(arg0, arg1)
			local function __FUNC_2E9F8_(arg0, arg1)
				local function __FUNC_2EB73_(arg0, arg1)
					local function __FUNC_2ECC8_(arg0, arg1)
						local function __FUNC_2EE43_(arg0, arg1)
							local function __FUNC_2EF98_(arg0, arg1)
								local function __FUNC_2F113_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2F113_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F113_)
							end

							if arg1.interrupted then
								__FUNC_2EF98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF98_)
						end

						if arg1.interrupted then
							__FUNC_2EE43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE43_)
					end

					if arg1.interrupted then
						__FUNC_2ECC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ECC8_)
				end

				if arg1.interrupted then
					__FUNC_2EB73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EB73_)
			end

			if arg1.interrupted then
				__FUNC_2E9F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9F8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2E8A3_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_2BC5C_
	registerVal29.NotAvailable = registerVal30
	registerVal30 = {}
	local function __FUNC_2F2F3_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.DefaultClip = __FUNC_2F2F3_
	local function __FUNC_2F9FF_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2FD72_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2FD72_(registerVal4, {})
		local function __FUNC_2FF25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_2FF25_(registerVal8, {})
		local function __FUNC_300D9_(arg0, arg1)
			local function __FUNC_30230_(arg0, arg1)
				local function __FUNC_303AB_(arg0, arg1)
					local function __FUNC_30500_(arg0, arg1)
						local function __FUNC_3067B_(arg0, arg1)
							local function __FUNC_307D0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_307D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_307D0_)
						end

						if arg1.interrupted then
							__FUNC_3067B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3067B_)
					end

					if arg1.interrupted then
						__FUNC_30500_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30500_)
				end

				if arg1.interrupted then
					__FUNC_303AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_303AB_)
			end

			if arg1.interrupted then
				__FUNC_30230_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30230_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_300D9_(registerVal16, {})
		local function __FUNC_30985_(arg0, arg1)
			local function __FUNC_30ADC_(arg0, arg1)
				local function __FUNC_30C57_(arg0, arg1)
					local function __FUNC_30DAC_(arg0, arg1)
						local function __FUNC_30F27_(arg0, arg1)
							local function __FUNC_3107C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3107C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3107C_)
						end

						if arg1.interrupted then
							__FUNC_30F27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F27_)
					end

					if arg1.interrupted then
						__FUNC_30DAC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30DAC_)
				end

				if arg1.interrupted then
					__FUNC_30C57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C57_)
			end

			if arg1.interrupted then
				__FUNC_30ADC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30ADC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_30985_(registerVal17, {})
		local function __FUNC_31231_(arg0, arg1)
			local function __FUNC_31388_(arg0, arg1)
				local function __FUNC_31503_(arg0, arg1)
					local function __FUNC_3167B_(arg0, arg1)
						local function __FUNC_317F3_(arg0, arg1)
							local function __FUNC_31948_(arg0, arg1)
								local function __FUNC_31AC3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_31AC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31AC3_)
							end

							if arg1.interrupted then
								__FUNC_31948_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31948_)
						end

						if arg1.interrupted then
							__FUNC_317F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317F3_)
					end

					if arg1.interrupted then
						__FUNC_3167B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3167B_)
				end

				if arg1.interrupted then
					__FUNC_31503_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31503_)
			end

			if arg1.interrupted then
				__FUNC_31388_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31388_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_31231_(registerVal18, {})
		local function __FUNC_31CA3_(arg0, arg1)
			local function __FUNC_31DF8_(arg0, arg1)
				local function __FUNC_31F73_(arg0, arg1)
					local function __FUNC_320C8_(arg0, arg1)
						local function __FUNC_32243_(arg0, arg1)
							local function __FUNC_32398_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_32398_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32398_)
						end

						if arg1.interrupted then
							__FUNC_32243_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32243_)
					end

					if arg1.interrupted then
						__FUNC_320C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_320C8_)
				end

				if arg1.interrupted then
					__FUNC_31F73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F73_)
			end

			if arg1.interrupted then
				__FUNC_31DF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31DF8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_31CA3_(registerVal19, {})
		local function __FUNC_3257B_(arg0, arg1)
			local function __FUNC_326D0_(arg0, arg1)
				local function __FUNC_3284B_(arg0, arg1)
					local function __FUNC_329A0_(arg0, arg1)
						local function __FUNC_32B1B_(arg0, arg1)
							local function __FUNC_32C70_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_32C70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32C70_)
						end

						if arg1.interrupted then
							__FUNC_32B1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32B1B_)
					end

					if arg1.interrupted then
						__FUNC_329A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_329A0_)
				end

				if arg1.interrupted then
					__FUNC_3284B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3284B_)
			end

			if arg1.interrupted then
				__FUNC_326D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_326D0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3257B_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_2F9FF_
	local function __FUNC_32E53_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.Focus = __FUNC_32E53_
	local function __FUNC_3319F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_3350D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_3350D_(registerVal4, {})
		local function __FUNC_336C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_336C1_(registerVal8, {})
		local function __FUNC_33875_(arg0, arg1)
			local function __FUNC_339EF_(arg0, arg1)
				local function __FUNC_33B67_(arg0, arg1)
					local function __FUNC_33CDF_(arg0, arg1)
						local function __FUNC_33E34_(arg0, arg1)
							local function __FUNC_33FAF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_33FAF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33FAF_)
						end

						if arg1.interrupted then
							__FUNC_33E34_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33E34_)
					end

					if arg1.interrupted then
						__FUNC_33CDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33CDF_)
				end

				if arg1.interrupted then
					__FUNC_33B67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33B67_)
			end

			if arg1.interrupted then
				__FUNC_339EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_339EF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_33875_(registerVal16, {})
		local function __FUNC_34161_(arg0, arg1)
			local function __FUNC_342DB_(arg0, arg1)
				local function __FUNC_34453_(arg0, arg1)
					local function __FUNC_345CB_(arg0, arg1)
						local function __FUNC_34720_(arg0, arg1)
							local function __FUNC_3489B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3489B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3489B_)
						end

						if arg1.interrupted then
							__FUNC_34720_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34720_)
					end

					if arg1.interrupted then
						__FUNC_345CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_345CB_)
				end

				if arg1.interrupted then
					__FUNC_34453_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34453_)
			end

			if arg1.interrupted then
				__FUNC_342DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_342DB_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_34161_(registerVal17, {})
		local function __FUNC_34A4D_(arg0, arg1)
			local function __FUNC_34BA4_(arg0, arg1)
				local function __FUNC_34D1F_(arg0, arg1)
					local function __FUNC_34E97_(arg0, arg1)
						local function __FUNC_3500F_(arg0, arg1)
							local function __FUNC_35164_(arg0, arg1)
								local function __FUNC_352DF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_352DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_352DF_)
							end

							if arg1.interrupted then
								__FUNC_35164_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35164_)
						end

						if arg1.interrupted then
							__FUNC_3500F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3500F_)
					end

					if arg1.interrupted then
						__FUNC_34E97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E97_)
				end

				if arg1.interrupted then
					__FUNC_34D1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D1F_)
			end

			if arg1.interrupted then
				__FUNC_34BA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34BA4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_34A4D_(registerVal18, {})
		local function __FUNC_354BF_(arg0, arg1)
			local function __FUNC_35614_(arg0, arg1)
				local function __FUNC_3578F_(arg0, arg1)
					local function __FUNC_358E4_(arg0, arg1)
						local function __FUNC_35A5F_(arg0, arg1)
							local function __FUNC_35BB4_(arg0, arg1)
								local function __FUNC_35D2F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_35D2F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35D2F_)
							end

							if arg1.interrupted then
								__FUNC_35BB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35BB4_)
						end

						if arg1.interrupted then
							__FUNC_35A5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35A5F_)
					end

					if arg1.interrupted then
						__FUNC_358E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_358E4_)
				end

				if arg1.interrupted then
					__FUNC_3578F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3578F_)
			end

			if arg1.interrupted then
				__FUNC_35614_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35614_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_354BF_(registerVal19, {})
		local function __FUNC_35F0F_(arg0, arg1)
			local function __FUNC_36064_(arg0, arg1)
				local function __FUNC_361DF_(arg0, arg1)
					local function __FUNC_36334_(arg0, arg1)
						local function __FUNC_364AF_(arg0, arg1)
							local function __FUNC_36604_(arg0, arg1)
								local function __FUNC_3677F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3677F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3677F_)
							end

							if arg1.interrupted then
								__FUNC_36604_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36604_)
						end

						if arg1.interrupted then
							__FUNC_364AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_364AF_)
					end

					if arg1.interrupted then
						__FUNC_36334_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36334_)
				end

				if arg1.interrupted then
					__FUNC_361DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_361DF_)
			end

			if arg1.interrupted then
				__FUNC_36064_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36064_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_35F0F_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_3319F_
	registerVal29.MutuallyExclusive = registerVal30
	registerVal30 = {}
	local function __FUNC_3695F_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.DefaultClip = __FUNC_3695F_
	local function __FUNC_370C9_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_37388_(arg0, arg1)
			local function __FUNC_374E0_(arg0, arg1)
				local function __FUNC_3765B_(arg0, arg1)
					local function __FUNC_377B0_(arg0, arg1)
						local function __FUNC_3792B_(arg0, arg1)
							local function __FUNC_37A80_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_37A80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37A80_)
						end

						if arg1.interrupted then
							__FUNC_3792B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3792B_)
					end

					if arg1.interrupted then
						__FUNC_377B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377B0_)
				end

				if arg1.interrupted then
					__FUNC_3765B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3765B_)
			end

			if arg1.interrupted then
				__FUNC_374E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_374E0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_37388_(registerVal16, {})
		local function __FUNC_37C35_(arg0, arg1)
			local function __FUNC_37D8C_(arg0, arg1)
				local function __FUNC_37F07_(arg0, arg1)
					local function __FUNC_3805C_(arg0, arg1)
						local function __FUNC_381D7_(arg0, arg1)
							local function __FUNC_3832C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3832C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3832C_)
						end

						if arg1.interrupted then
							__FUNC_381D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_381D7_)
					end

					if arg1.interrupted then
						__FUNC_3805C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3805C_)
				end

				if arg1.interrupted then
					__FUNC_37F07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37F07_)
			end

			if arg1.interrupted then
				__FUNC_37D8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37D8C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_37C35_(registerVal17, {})
		local function __FUNC_384E1_(arg0, arg1)
			local function __FUNC_38638_(arg0, arg1)
				local function __FUNC_387B3_(arg0, arg1)
					local function __FUNC_3892B_(arg0, arg1)
						local function __FUNC_38AA3_(arg0, arg1)
							local function __FUNC_38BF8_(arg0, arg1)
								local function __FUNC_38D73_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_38D73_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38D73_)
							end

							if arg1.interrupted then
								__FUNC_38BF8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BF8_)
						end

						if arg1.interrupted then
							__FUNC_38AA3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AA3_)
					end

					if arg1.interrupted then
						__FUNC_3892B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3892B_)
				end

				if arg1.interrupted then
					__FUNC_387B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_387B3_)
			end

			if arg1.interrupted then
				__FUNC_38638_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38638_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_384E1_(registerVal18, {})
		local function __FUNC_38F53_(arg0, arg1)
			local function __FUNC_390A8_(arg0, arg1)
				local function __FUNC_39223_(arg0, arg1)
					local function __FUNC_39378_(arg0, arg1)
						local function __FUNC_394F3_(arg0, arg1)
							local function __FUNC_39648_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_39648_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39648_)
						end

						if arg1.interrupted then
							__FUNC_394F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_394F3_)
					end

					if arg1.interrupted then
						__FUNC_39378_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39378_)
				end

				if arg1.interrupted then
					__FUNC_39223_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39223_)
			end

			if arg1.interrupted then
				__FUNC_390A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_390A8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_38F53_(registerVal19, {})
		local function __FUNC_3982B_(arg0, arg1)
			local function __FUNC_39980_(arg0, arg1)
				local function __FUNC_39AFB_(arg0, arg1)
					local function __FUNC_39C50_(arg0, arg1)
						local function __FUNC_39DCB_(arg0, arg1)
							local function __FUNC_39F20_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_39F20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F20_)
						end

						if arg1.interrupted then
							__FUNC_39DCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39DCB_)
					end

					if arg1.interrupted then
						__FUNC_39C50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39C50_)
				end

				if arg1.interrupted then
					__FUNC_39AFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39AFB_)
			end

			if arg1.interrupted then
				__FUNC_39980_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39980_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3982B_(registerVal20, {})
	end

	registerVal30.GainFocus = __FUNC_370C9_
	local function __FUNC_3A103_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal30.Focus = __FUNC_3A103_
	local function __FUNC_3A3EF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3A6AC_(arg0, arg1)
			local function __FUNC_3A827_(arg0, arg1)
				local function __FUNC_3A99F_(arg0, arg1)
					local function __FUNC_3AB17_(arg0, arg1)
						local function __FUNC_3AC6C_(arg0, arg1)
							local function __FUNC_3ADE7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3ADE7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ADE7_)
						end

						if arg1.interrupted then
							__FUNC_3AC6C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AC6C_)
					end

					if arg1.interrupted then
						__FUNC_3AB17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB17_)
				end

				if arg1.interrupted then
					__FUNC_3A99F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A99F_)
			end

			if arg1.interrupted then
				__FUNC_3A827_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A827_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3A6AC_(registerVal16, {})
		local function __FUNC_3AF99_(arg0, arg1)
			local function __FUNC_3B113_(arg0, arg1)
				local function __FUNC_3B28B_(arg0, arg1)
					local function __FUNC_3B403_(arg0, arg1)
						local function __FUNC_3B558_(arg0, arg1)
							local function __FUNC_3B6D3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3B6D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B6D3_)
						end

						if arg1.interrupted then
							__FUNC_3B558_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B558_)
					end

					if arg1.interrupted then
						__FUNC_3B403_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B403_)
				end

				if arg1.interrupted then
					__FUNC_3B28B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B28B_)
			end

			if arg1.interrupted then
				__FUNC_3B113_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B113_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_3AF99_(registerVal17, {})
		local function __FUNC_3B885_(arg0, arg1)
			local function __FUNC_3B9DC_(arg0, arg1)
				local function __FUNC_3BB57_(arg0, arg1)
					local function __FUNC_3BCCF_(arg0, arg1)
						local function __FUNC_3BE47_(arg0, arg1)
							local function __FUNC_3BF9C_(arg0, arg1)
								local function __FUNC_3C117_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3C117_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C117_)
							end

							if arg1.interrupted then
								__FUNC_3BF9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BF9C_)
						end

						if arg1.interrupted then
							__FUNC_3BE47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BE47_)
					end

					if arg1.interrupted then
						__FUNC_3BCCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCCF_)
				end

				if arg1.interrupted then
					__FUNC_3BB57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB57_)
			end

			if arg1.interrupted then
				__FUNC_3B9DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B9DC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3B885_(registerVal18, {})
		local function __FUNC_3C2F7_(arg0, arg1)
			local function __FUNC_3C44C_(arg0, arg1)
				local function __FUNC_3C5C7_(arg0, arg1)
					local function __FUNC_3C71C_(arg0, arg1)
						local function __FUNC_3C897_(arg0, arg1)
							local function __FUNC_3C9EC_(arg0, arg1)
								local function __FUNC_3CB67_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3CB67_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CB67_)
							end

							if arg1.interrupted then
								__FUNC_3C9EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C9EC_)
						end

						if arg1.interrupted then
							__FUNC_3C897_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C897_)
					end

					if arg1.interrupted then
						__FUNC_3C71C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C71C_)
				end

				if arg1.interrupted then
					__FUNC_3C5C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C5C7_)
			end

			if arg1.interrupted then
				__FUNC_3C44C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C44C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3C2F7_(registerVal19, {})
		local function __FUNC_3CD47_(arg0, arg1)
			local function __FUNC_3CE9C_(arg0, arg1)
				local function __FUNC_3D017_(arg0, arg1)
					local function __FUNC_3D16C_(arg0, arg1)
						local function __FUNC_3D2E7_(arg0, arg1)
							local function __FUNC_3D43C_(arg0, arg1)
								local function __FUNC_3D5B7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3D5B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D5B7_)
							end

							if arg1.interrupted then
								__FUNC_3D43C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D43C_)
						end

						if arg1.interrupted then
							__FUNC_3D2E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D2E7_)
					end

					if arg1.interrupted then
						__FUNC_3D16C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D16C_)
				end

				if arg1.interrupted then
					__FUNC_3D017_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D017_)
			end

			if arg1.interrupted then
				__FUNC_3CE9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE9C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_3CD47_(registerVal20, {})
	end

	registerVal30.LoseFocus = __FUNC_3A3EF_
	registerVal29.NoConsumablesRemaining = registerVal30
	registerVal30 = {}
	local function __FUNC_3D797_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal26:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal30.DefaultClip = __FUNC_3D797_
	local function __FUNC_3DF23_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_3E37D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_3E37D_(registerVal4, {})
		local function __FUNC_3E531_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_3E531_(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_3E708_(arg0, arg1)
			local function __FUNC_3E860_(arg0, arg1)
				local function __FUNC_3E9DB_(arg0, arg1)
					local function __FUNC_3EB53_(arg0, arg1)
						local function __FUNC_3ECCB_(arg0, arg1)
							local function __FUNC_3EE20_(arg0, arg1)
								local function __FUNC_3EF9B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3EF9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EF9B_)
							end

							if arg1.interrupted then
								__FUNC_3EE20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE20_)
						end

						if arg1.interrupted then
							__FUNC_3ECCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ECCB_)
					end

					if arg1.interrupted then
						__FUNC_3EB53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EB53_)
				end

				if arg1.interrupted then
					__FUNC_3E9DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E9DB_)
			end

			if arg1.interrupted then
				__FUNC_3E860_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E860_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3E708_(registerVal18, {})
		local function __FUNC_3F176_(arg0, arg1)
			local function __FUNC_3F2CC_(arg0, arg1)
				local function __FUNC_3F447_(arg0, arg1)
					local function __FUNC_3F59C_(arg0, arg1)
						local function __FUNC_3F717_(arg0, arg1)
							local function __FUNC_3F86C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3F86C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F86C_)
						end

						if arg1.interrupted then
							__FUNC_3F717_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F717_)
					end

					if arg1.interrupted then
						__FUNC_3F59C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F59C_)
				end

				if arg1.interrupted then
					__FUNC_3F447_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F447_)
			end

			if arg1.interrupted then
				__FUNC_3F2CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F2CC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3F176_(registerVal19, {})
		local function __FUNC_3FA4A_(arg0, arg1)
			local function __FUNC_3FBA0_(arg0, arg1)
				local function __FUNC_3FD1B_(arg0, arg1)
					local function __FUNC_3FE70_(arg0, arg1)
						local function __FUNC_3FFEB_(arg0, arg1)
							local function __FUNC_40140_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_40140_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40140_)
						end

						if arg1.interrupted then
							__FUNC_3FFEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FFEB_)
					end

					if arg1.interrupted then
						__FUNC_3FE70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FE70_)
				end

				if arg1.interrupted then
					__FUNC_3FD1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD1B_)
			end

			if arg1.interrupted then
				__FUNC_3FBA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FBA0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3FA4A_(registerVal20, {})
		local function __FUNC_4031E_(arg0, arg1)
			local function __FUNC_40474_(arg0, arg1)
				local function __FUNC_405EF_(arg0, arg1)
					local function __FUNC_40744_(arg0, arg1)
						local function __FUNC_408BF_(arg0, arg1)
							local function __FUNC_40A14_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_40A14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40A14_)
						end

						if arg1.interrupted then
							__FUNC_408BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408BF_)
					end

					if arg1.interrupted then
						__FUNC_40744_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40744_)
				end

				if arg1.interrupted then
					__FUNC_405EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405EF_)
			end

			if arg1.interrupted then
				__FUNC_40474_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40474_)
		end

		registerVal26:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_4031E_(registerVal26, {})
		local function __FUNC_40BC9_(arg0, arg1)
			local function __FUNC_40D20_(arg0, arg1)
				local function __FUNC_40E9B_(arg0, arg1)
					local function __FUNC_40FF0_(arg0, arg1)
						local function __FUNC_4116B_(arg0, arg1)
							local function __FUNC_412C0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_412C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_412C0_)
						end

						if arg1.interrupted then
							__FUNC_4116B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4116B_)
					end

					if arg1.interrupted then
						__FUNC_40FF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40FF0_)
				end

				if arg1.interrupted then
					__FUNC_40E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40E9B_)
			end

			if arg1.interrupted then
				__FUNC_40D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40D20_)
		end

		registerVal27:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		__FUNC_40BC9_(registerVal27, {})
	end

	registerVal30.GainFocus = __FUNC_3DF23_
	local function __FUNC_41475_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal26:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal30.Focus = __FUNC_41475_
	local function __FUNC_418CE_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_41CD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_41CD7_(registerVal4, {})
		local function __FUNC_41E89_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		__FUNC_41E89_(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_4203D_(arg0, arg1)
			local function __FUNC_42194_(arg0, arg1)
				local function __FUNC_4230F_(arg0, arg1)
					local function __FUNC_42487_(arg0, arg1)
						local function __FUNC_425FF_(arg0, arg1)
							local function __FUNC_42754_(arg0, arg1)
								local function __FUNC_428CF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_428CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_428CF_)
							end

							if arg1.interrupted then
								__FUNC_42754_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42754_)
						end

						if arg1.interrupted then
							__FUNC_425FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_425FF_)
					end

					if arg1.interrupted then
						__FUNC_42487_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42487_)
				end

				if arg1.interrupted then
					__FUNC_4230F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4230F_)
			end

			if arg1.interrupted then
				__FUNC_42194_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42194_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4203D_(registerVal18, {})
		local function __FUNC_42A81_(arg0, arg1)
			local function __FUNC_42BD8_(arg0, arg1)
				local function __FUNC_42D53_(arg0, arg1)
					local function __FUNC_42EA8_(arg0, arg1)
						local function __FUNC_43023_(arg0, arg1)
							local function __FUNC_43178_(arg0, arg1)
								local function __FUNC_432F3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_432F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_432F3_)
							end

							if arg1.interrupted then
								__FUNC_43178_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43178_)
						end

						if arg1.interrupted then
							__FUNC_43023_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43023_)
					end

					if arg1.interrupted then
						__FUNC_42EA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42EA8_)
				end

				if arg1.interrupted then
					__FUNC_42D53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42D53_)
			end

			if arg1.interrupted then
				__FUNC_42BD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42BD8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_42A81_(registerVal19, {})
		local function __FUNC_434CE_(arg0, arg1)
			local function __FUNC_43624_(arg0, arg1)
				local function __FUNC_4379F_(arg0, arg1)
					local function __FUNC_438F4_(arg0, arg1)
						local function __FUNC_43A6F_(arg0, arg1)
							local function __FUNC_43BC4_(arg0, arg1)
								local function __FUNC_43D3F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_43D3F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43D3F_)
							end

							if arg1.interrupted then
								__FUNC_43BC4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43BC4_)
						end

						if arg1.interrupted then
							__FUNC_43A6F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43A6F_)
					end

					if arg1.interrupted then
						__FUNC_438F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_438F4_)
				end

				if arg1.interrupted then
					__FUNC_4379F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4379F_)
			end

			if arg1.interrupted then
				__FUNC_43624_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43624_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_434CE_(registerVal20, {})
		local function __FUNC_43F1A_(arg0, arg1)
			local function __FUNC_44093_(arg0, arg1)
				local function __FUNC_4420B_(arg0, arg1)
					local function __FUNC_44383_(arg0, arg1)
						local function __FUNC_444D8_(arg0, arg1)
							local function __FUNC_44653_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_44653_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44653_)
						end

						if arg1.interrupted then
							__FUNC_444D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_444D8_)
					end

					if arg1.interrupted then
						__FUNC_44383_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44383_)
				end

				if arg1.interrupted then
					__FUNC_4420B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4420B_)
			end

			if arg1.interrupted then
				__FUNC_44093_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44093_)
		end

		registerVal26:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_43F1A_(registerVal26, {})
		local function __FUNC_44805_(arg0, arg1)
			local function __FUNC_4497F_(arg0, arg1)
				local function __FUNC_44AF7_(arg0, arg1)
					local function __FUNC_44C6F_(arg0, arg1)
						local function __FUNC_44DC4_(arg0, arg1)
							local function __FUNC_44F3F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_44F3F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44F3F_)
						end

						if arg1.interrupted then
							__FUNC_44DC4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44DC4_)
					end

					if arg1.interrupted then
						__FUNC_44C6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44C6F_)
				end

				if arg1.interrupted then
					__FUNC_44AF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44AF7_)
			end

			if arg1.interrupted then
				__FUNC_4497F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4497F_)
		end

		registerVal27:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		__FUNC_44805_(registerVal27, {})
	end

	registerVal30.LoseFocus = __FUNC_418CE_
	registerVal29.Invalid = registerVal30
	registerVal30 = {}
	local function __FUNC_450F1_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.DefaultClip = __FUNC_450F1_
	local function __FUNC_4588C_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_45C60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_45C60_(registerVal4, {})
		local function __FUNC_45E15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_45E15_(registerVal8, {})
		local function __FUNC_45FE7_(arg0, arg1)
			local function __FUNC_4613C_(arg0, arg1)
				local function __FUNC_462B7_(arg0, arg1)
					local function __FUNC_4640C_(arg0, arg1)
						local function __FUNC_46587_(arg0, arg1)
							local function __FUNC_466DC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_466DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_466DC_)
						end

						if arg1.interrupted then
							__FUNC_46587_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46587_)
					end

					if arg1.interrupted then
						__FUNC_4640C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4640C_)
				end

				if arg1.interrupted then
					__FUNC_462B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_462B7_)
			end

			if arg1.interrupted then
				__FUNC_4613C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4613C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_45FE7_(registerVal16, {})
		local function __FUNC_46891_(arg0, arg1)
			local function __FUNC_469E8_(arg0, arg1)
				local function __FUNC_46B63_(arg0, arg1)
					local function __FUNC_46CB8_(arg0, arg1)
						local function __FUNC_46E33_(arg0, arg1)
							local function __FUNC_46F88_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_46F88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46F88_)
						end

						if arg1.interrupted then
							__FUNC_46E33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46E33_)
					end

					if arg1.interrupted then
						__FUNC_46CB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46CB8_)
				end

				if arg1.interrupted then
					__FUNC_46B63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46B63_)
			end

			if arg1.interrupted then
				__FUNC_469E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_469E8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_46891_(registerVal17, {})
		local function __FUNC_4713D_(arg0, arg1)
			local function __FUNC_47294_(arg0, arg1)
				local function __FUNC_4740F_(arg0, arg1)
					local function __FUNC_47587_(arg0, arg1)
						local function __FUNC_476FF_(arg0, arg1)
							local function __FUNC_47854_(arg0, arg1)
								local function __FUNC_479CF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_479CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_479CF_)
							end

							if arg1.interrupted then
								__FUNC_47854_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47854_)
						end

						if arg1.interrupted then
							__FUNC_476FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_476FF_)
					end

					if arg1.interrupted then
						__FUNC_47587_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47587_)
				end

				if arg1.interrupted then
					__FUNC_4740F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4740F_)
			end

			if arg1.interrupted then
				__FUNC_47294_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47294_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4713D_(registerVal18, {})
		local function __FUNC_47B81_(arg0, arg1)
			local function __FUNC_47CD8_(arg0, arg1)
				local function __FUNC_47E53_(arg0, arg1)
					local function __FUNC_47FA8_(arg0, arg1)
						local function __FUNC_48123_(arg0, arg1)
							local function __FUNC_48278_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_48278_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48278_)
						end

						if arg1.interrupted then
							__FUNC_48123_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48123_)
					end

					if arg1.interrupted then
						__FUNC_47FA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47FA8_)
				end

				if arg1.interrupted then
					__FUNC_47E53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47E53_)
			end

			if arg1.interrupted then
				__FUNC_47CD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47CD8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_47B81_(registerVal19, {})
		local function __FUNC_4845B_(arg0, arg1)
			local function __FUNC_485B0_(arg0, arg1)
				local function __FUNC_4872B_(arg0, arg1)
					local function __FUNC_48880_(arg0, arg1)
						local function __FUNC_489FB_(arg0, arg1)
							local function __FUNC_48B50_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_48B50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48B50_)
						end

						if arg1.interrupted then
							__FUNC_489FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_489FB_)
					end

					if arg1.interrupted then
						__FUNC_48880_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48880_)
				end

				if arg1.interrupted then
					__FUNC_4872B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4872B_)
			end

			if arg1.interrupted then
				__FUNC_485B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_485B0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4845B_(registerVal20, {})
		local function __FUNC_48D33_(arg0, arg1)
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

		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(0.000000)
		__FUNC_48D33_(registerVal25, {})
	end

	registerVal30.GainFocus = __FUNC_4588C_
	local function __FUNC_48EE5_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal30.Focus = __FUNC_48EE5_
	local function __FUNC_492EE_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_4968D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_4968D_(registerVal4, {})
		local function __FUNC_49841_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_49841_(registerVal8, {})
		local function __FUNC_499F5_(arg0, arg1)
			local function __FUNC_49B6F_(arg0, arg1)
				local function __FUNC_49CE7_(arg0, arg1)
					local function __FUNC_49E5F_(arg0, arg1)
						local function __FUNC_49FB4_(arg0, arg1)
							local function __FUNC_4A12F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4A12F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A12F_)
						end

						if arg1.interrupted then
							__FUNC_49FB4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49FB4_)
					end

					if arg1.interrupted then
						__FUNC_49E5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49E5F_)
				end

				if arg1.interrupted then
					__FUNC_49CE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49CE7_)
			end

			if arg1.interrupted then
				__FUNC_49B6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49B6F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_499F5_(registerVal16, {})
		local function __FUNC_4A2E1_(arg0, arg1)
			local function __FUNC_4A45B_(arg0, arg1)
				local function __FUNC_4A5D3_(arg0, arg1)
					local function __FUNC_4A74B_(arg0, arg1)
						local function __FUNC_4A8A0_(arg0, arg1)
							local function __FUNC_4AA1B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4AA1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AA1B_)
						end

						if arg1.interrupted then
							__FUNC_4A8A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A8A0_)
					end

					if arg1.interrupted then
						__FUNC_4A74B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A74B_)
				end

				if arg1.interrupted then
					__FUNC_4A5D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A5D3_)
			end

			if arg1.interrupted then
				__FUNC_4A45B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A45B_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4A2E1_(registerVal17, {})
		local function __FUNC_4ABCD_(arg0, arg1)
			local function __FUNC_4AD24_(arg0, arg1)
				local function __FUNC_4AE9F_(arg0, arg1)
					local function __FUNC_4B017_(arg0, arg1)
						local function __FUNC_4B18F_(arg0, arg1)
							local function __FUNC_4B2E4_(arg0, arg1)
								local function __FUNC_4B45F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_4B45F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B45F_)
							end

							if arg1.interrupted then
								__FUNC_4B2E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B2E4_)
						end

						if arg1.interrupted then
							__FUNC_4B18F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B18F_)
					end

					if arg1.interrupted then
						__FUNC_4B017_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B017_)
				end

				if arg1.interrupted then
					__FUNC_4AE9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AE9F_)
			end

			if arg1.interrupted then
				__FUNC_4AD24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AD24_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4ABCD_(registerVal18, {})
		local function __FUNC_4B611_(arg0, arg1)
			local function __FUNC_4B768_(arg0, arg1)
				local function __FUNC_4B8E3_(arg0, arg1)
					local function __FUNC_4BA38_(arg0, arg1)
						local function __FUNC_4BBB3_(arg0, arg1)
							local function __FUNC_4BD08_(arg0, arg1)
								local function __FUNC_4BE83_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_4BE83_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BE83_)
							end

							if arg1.interrupted then
								__FUNC_4BD08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BD08_)
						end

						if arg1.interrupted then
							__FUNC_4BBB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BBB3_)
					end

					if arg1.interrupted then
						__FUNC_4BA38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BA38_)
				end

				if arg1.interrupted then
					__FUNC_4B8E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8E3_)
			end

			if arg1.interrupted then
				__FUNC_4B768_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B768_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_4B611_(registerVal19, {})
		local function __FUNC_4C063_(arg0, arg1)
			local function __FUNC_4C1B8_(arg0, arg1)
				local function __FUNC_4C333_(arg0, arg1)
					local function __FUNC_4C488_(arg0, arg1)
						local function __FUNC_4C603_(arg0, arg1)
							local function __FUNC_4C758_(arg0, arg1)
								local function __FUNC_4C8D3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_4C8D3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C8D3_)
							end

							if arg1.interrupted then
								__FUNC_4C758_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C758_)
						end

						if arg1.interrupted then
							__FUNC_4C603_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C603_)
					end

					if arg1.interrupted then
						__FUNC_4C488_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C488_)
				end

				if arg1.interrupted then
					__FUNC_4C333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C333_)
			end

			if arg1.interrupted then
				__FUNC_4C1B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C1B8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4C063_(registerVal20, {})
		local function __FUNC_4CAB3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.TokenRefundHint:setAlpha(1.000000)
		__FUNC_4CAB3_(registerVal25, {})
	end

	registerVal30.LoseFocus = __FUNC_492EE_
	registerVal29.PermanentUnlockRefund = registerVal30
	registerVal2.clipsPerState = registerVal29
	registerVal31 = {}
	registerVal32 = {}
	registerVal32.stateName = "Equipped"
	local function __FUNC_4CC65_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal32.condition = __FUNC_4CC65_
	local registerVal33 = {}
	registerVal33.stateName = "New"
	local function __FUNC_4CCFC_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal33.condition = __FUNC_4CCFC_
	local registerVal34 = {}
	registerVal34.stateName = "RequiresDLC"
	local function __FUNC_4CD8B_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal34.condition = __FUNC_4CD8B_
	local registerVal35 = {}
	registerVal35.stateName = "Locked"
	local function __FUNC_4CE25_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal35.condition = __FUNC_4CE25_
	local registerVal36 = {}
	registerVal36.stateName = "NotAvailable"
	local function __FUNC_4CE81_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal36.condition = __FUNC_4CE81_
	local registerVal37 = {}
	registerVal37.stateName = "MutuallyExclusive"
	local function __FUNC_4CEE0_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal37.condition = __FUNC_4CEE0_
	local registerVal38 = {}
	registerVal38.stateName = "NoConsumablesRemaining"
	local function __FUNC_4CF51_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal38.condition = __FUNC_4CF51_
	local registerVal39 = {}
	registerVal39.stateName = "Invalid"
	local function __FUNC_4CFC5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal39.condition = __FUNC_4CFC5_
	local registerVal40 = {}
	registerVal40.stateName = "PermanentUnlockRefund"
	local function __FUNC_4D011_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
			if not registerVal3 then
				registerVal3 = HavePermanentUnlockTokens(arg1)
				if registerVal3 then
					registerVal3 = IsCACItemPurchased(arg2, arg1)
				else
				end
			end
		end
		return true
	end

	registerVal40.condition = __FUNC_4D011_
	registerVal31 = {registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38, registerVal39, registerVal40}
	registerVal2:mergeStateConditions(registerVal31)
	local function __FUNC_4D11B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_4D11B_)
	local function __FUNC_4D237_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.GridItemBGBGlow:close()
		arg0.tokenPermanentUnlock:close()
		arg0.tokenUnlock:close()
		arg0.LabelButton:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.ConsumableLabel:close()
		arg0.HeaderLabel:close()
		arg0.RestrictedItemWarning:close()
		arg0.GridItemUpgradeIconWidget:close()
		arg0.TokenRefundHint:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D237_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

