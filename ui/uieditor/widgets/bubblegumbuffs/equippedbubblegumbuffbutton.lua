-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.GridItemBGBGlow")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.GridItemUpgradeIconWidget")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EquippedBubbleGumBuffButton = registerVal1
function CoD.EquippedBubbleGumBuffButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EquippedBubbleGumBuffButton)
	registerVal2.id = "EquippedBubbleGumBuffButton"
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
	registerVal6:setAlpha(0.000000)
	local function __FUNC_275D_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_275D_)
	registerVal2:addElement(registerVal6)
	registerVal2.GridItemBGBGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_27AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_27AE_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImageSolid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_2860_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(GetItemImageFromIndex(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2860_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -3.000000, 25.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_293B_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if not registerVal3 then
			registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_293B_
	local registerVal14 = {}
	registerVal14.stateName = "VisibleCP"
	local function __FUNC_29CF_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_29CF_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_2A57_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2A57_)
	local function __FUNC_2B7C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemIndex", true, __FUNC_2B7C_)
	registerVal2:addElement(registerVal9)
	registerVal2.tokenUnlock = registerVal9
	local registerVal10 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 3.000000, 89.000000)
	registerVal10:setTopBottom(false, false, 32.000000, 52.000000)
	registerVal10:setAlpha(0.600000)
	local function __FUNC_2C9B_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_2C9B_)
	local function __FUNC_2CEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.itemName:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2CEA_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Hidden"
	local function __FUNC_2DE6_(arg0, arg2, arg3)
		return IsCACItemBubbleGum(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_2DE6_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_2E44_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemIndex", true, __FUNC_2E44_)
	registerVal2:addElement(registerVal10)
	registerVal2.LabelButton = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal11:setRGB(1.000000, 0.410000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.alertIcon = registerVal11
	registerVal12 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal12:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal12:setAlpha(0.600000)
	local function __FUNC_2F63_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_2F63_)
	local function __FUNC_2FB2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "name", true, __FUNC_2FB2_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Hidden"
	local function __FUNC_3088_(arg0, arg2, arg3)
		return IsCACItemBubbleGum(arg0, arg2, arg1)
	end

	registerVal16.condition = __FUNC_3088_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_30E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "itemIndex", true, __FUNC_30E8_)
	registerVal2:addElement(registerVal12)
	registerVal2.LabelButton0 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal13:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal13:setRGB(0.560000, 0.680000, 0.270000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal13)
	registerVal2.equippedIcon = registerVal13
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
	registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
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
	local function __FUNC_3207_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_3207_)
	local function __FUNC_3256_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21.ComsumableCountLabel:setText(Engine.Localize(GetConsumableCountFromIndex(arg1, registerVal1)))
		end
	end

	registerVal21:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_3256_)
	registerVal2:addElement(registerVal21)
	registerVal2.ConsumableLabel = registerVal21
	local registerVal22 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal22:setTopBottom(false, true, -104.250000, -84.250000)
	registerVal22:setAlpha(0.600000)
	local function __FUNC_3369_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_3369_)
	local function __FUNC_33BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "headerName", true, __FUNC_33BA_)
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Hidden"
	local function __FUNC_3490_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "headerName")
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_3490_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	local function __FUNC_3514_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "headerName"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:linkToElementModel(registerVal22, "headerName", true, __FUNC_3514_)
	registerVal2:addElement(registerVal22)
	registerVal2.HeaderLabel = registerVal22
	local registerVal23 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, -1.000000, 109.000000)
	registerVal23:setTopBottom(true, false, 0.000000, 95.000000)
	local function __FUNC_3634_(arg0)
		registerVal23:setModel(arg0, arg1)
	end

	registerVal23:linkToElementModel(registerVal2, nil, false, __FUNC_3634_)
	registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Visible"
	local function __FUNC_3686_(arg0, arg2, arg3)
		local registerVal3 = ItemIsBanned(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = ItemRestrictionVoteActive()
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_3686_
	registerVal26 = {registerVal27}
	registerVal23:mergeStateConditions(registerVal26)
	local function __FUNC_3715_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:linkToElementModel(registerVal23, nil, true, __FUNC_3715_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.Pregame.Update")
	local function __FUNC_3821_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_3821_)
	registerVal27 = Engine.GetGlobalModel()
	registerVal26 = Engine.GetModel(registerVal27, "lobbyRoot.Pregame.state")
	local function __FUNC_394E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:subscribeToModel(registerVal26, __FUNC_394E_)
	registerVal2:addElement(registerVal23)
	registerVal2.RestrictedItemWarning = registerVal23
	local registerVal24 = CoD.GridItemUpgradeIconWidget.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 2.000000, 20.000000)
	registerVal24:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "Upgradable"
	local function __FUNC_3A79_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgradable(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal28.condition = __FUNC_3A79_
	local registerVal29 = {}
	registerVal29.stateName = "Upgraded"
	local function __FUNC_3AFD_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgraded(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal29.condition = __FUNC_3AFD_
	registerVal27 = {registerVal28, registerVal29}
	registerVal24:mergeStateConditions(registerVal27)
	local function __FUNC_3B7F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:linkToElementModel(registerVal24, "itemIndex", true, __FUNC_3B7F_)
	registerVal28 = Engine.GetGlobalModel()
	registerVal27 = Engine.GetModel(registerVal28, "lobbyRoot.lobbyNav")
	local function __FUNC_3C9B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal24, registerVal4)
	end

	registerVal24:subscribeToModel(registerVal27, __FUNC_3C9B_)
	registerVal2:addElement(registerVal24)
	registerVal2.GridItemUpgradeIconWidget = registerVal24
	registerVal25 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal25:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal25:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setZoom(1.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.FocusWhiteT = registerVal25
	registerVal26 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal26:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal26:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setZoom(1.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.FocusWhiteB = registerVal26
	registerVal27 = {}
	registerVal28 = {}
	local function __FUNC_3DC0_()
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
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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
	end

	registerVal28.DefaultClip = __FUNC_3DC0_
	local function __FUNC_44FA_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4873_(arg0, arg1)
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
		__FUNC_4873_(registerVal4, {})
		local function __FUNC_4A25_(arg0, arg1)
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
		__FUNC_4A25_(registerVal8, {})
		local function __FUNC_4BF7_(arg0, arg1)
			local function __FUNC_4D4C_(arg0, arg1)
				local function __FUNC_4EC7_(arg0, arg1)
					local function __FUNC_501C_(arg0, arg1)
						local function __FUNC_5197_(arg0, arg1)
							local function __FUNC_52EC_(arg0, arg1)
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
								__FUNC_52EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52EC_)
						end

						if arg1.interrupted then
							__FUNC_5197_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5197_)
					end

					if arg1.interrupted then
						__FUNC_501C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_501C_)
				end

				if arg1.interrupted then
					__FUNC_4EC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC7_)
			end

			if arg1.interrupted then
				__FUNC_4D4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D4C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_4BF7_(registerVal16, {})
		local function __FUNC_54A1_(arg0, arg1)
			local function __FUNC_55F8_(arg0, arg1)
				local function __FUNC_5773_(arg0, arg1)
					local function __FUNC_58C8_(arg0, arg1)
						local function __FUNC_5A43_(arg0, arg1)
							local function __FUNC_5B98_(arg0, arg1)
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
								__FUNC_5B98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B98_)
						end

						if arg1.interrupted then
							__FUNC_5A43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A43_)
					end

					if arg1.interrupted then
						__FUNC_58C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58C8_)
				end

				if arg1.interrupted then
					__FUNC_5773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5773_)
			end

			if arg1.interrupted then
				__FUNC_55F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55F8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_54A1_(registerVal17, {})
		local function __FUNC_5D4D_(arg0, arg1)
			local function __FUNC_5EA4_(arg0, arg1)
				local function __FUNC_601F_(arg0, arg1)
					local function __FUNC_6197_(arg0, arg1)
						local function __FUNC_630F_(arg0, arg1)
							local function __FUNC_6464_(arg0, arg1)
								local function __FUNC_65DF_(arg0, arg1)
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
									__FUNC_65DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65DF_)
							end

							if arg1.interrupted then
								__FUNC_6464_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6464_)
						end

						if arg1.interrupted then
							__FUNC_630F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_630F_)
					end

					if arg1.interrupted then
						__FUNC_6197_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6197_)
				end

				if arg1.interrupted then
					__FUNC_601F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_601F_)
			end

			if arg1.interrupted then
				__FUNC_5EA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EA4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_5D4D_(registerVal18, {})
		local function __FUNC_6791_(arg0, arg1)
			local function __FUNC_68E8_(arg0, arg1)
				local function __FUNC_6A63_(arg0, arg1)
					local function __FUNC_6BB8_(arg0, arg1)
						local function __FUNC_6D33_(arg0, arg1)
							local function __FUNC_6E88_(arg0, arg1)
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
								__FUNC_6E88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E88_)
						end

						if arg1.interrupted then
							__FUNC_6D33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D33_)
					end

					if arg1.interrupted then
						__FUNC_6BB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BB8_)
				end

				if arg1.interrupted then
					__FUNC_6A63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A63_)
			end

			if arg1.interrupted then
				__FUNC_68E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68E8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_6791_(registerVal19, {})
		local function __FUNC_706B_(arg0, arg1)
			local function __FUNC_71C0_(arg0, arg1)
				local function __FUNC_733B_(arg0, arg1)
					local function __FUNC_7490_(arg0, arg1)
						local function __FUNC_760B_(arg0, arg1)
							local function __FUNC_7760_(arg0, arg1)
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
								__FUNC_7760_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7760_)
						end

						if arg1.interrupted then
							__FUNC_760B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_760B_)
					end

					if arg1.interrupted then
						__FUNC_7490_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7490_)
				end

				if arg1.interrupted then
					__FUNC_733B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_733B_)
			end

			if arg1.interrupted then
				__FUNC_71C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71C0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_706B_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_44FA_
	local function __FUNC_7943_()
		registerVal2:setupElementClipCounter(8.000000)
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
	end

	registerVal28.Focus = __FUNC_7943_
	local function __FUNC_7CED_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_8034_(arg0, arg1)
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
		__FUNC_8034_(registerVal4, {})
		local function __FUNC_81E9_(arg0, arg1)
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
		__FUNC_81E9_(registerVal8, {})
		local function __FUNC_839D_(arg0, arg1)
			local function __FUNC_8517_(arg0, arg1)
				local function __FUNC_868F_(arg0, arg1)
					local function __FUNC_8807_(arg0, arg1)
						local function __FUNC_895C_(arg0, arg1)
							local function __FUNC_8AD7_(arg0, arg1)
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
								__FUNC_8AD7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AD7_)
						end

						if arg1.interrupted then
							__FUNC_895C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_895C_)
					end

					if arg1.interrupted then
						__FUNC_8807_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8807_)
				end

				if arg1.interrupted then
					__FUNC_868F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868F_)
			end

			if arg1.interrupted then
				__FUNC_8517_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8517_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_839D_(registerVal16, {})
		local function __FUNC_8C89_(arg0, arg1)
			local function __FUNC_8E03_(arg0, arg1)
				local function __FUNC_8F7B_(arg0, arg1)
					local function __FUNC_90F3_(arg0, arg1)
						local function __FUNC_9248_(arg0, arg1)
							local function __FUNC_93C3_(arg0, arg1)
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
								__FUNC_93C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93C3_)
						end

						if arg1.interrupted then
							__FUNC_9248_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9248_)
					end

					if arg1.interrupted then
						__FUNC_90F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90F3_)
				end

				if arg1.interrupted then
					__FUNC_8F7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F7B_)
			end

			if arg1.interrupted then
				__FUNC_8E03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E03_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_8C89_(registerVal17, {})
		local function __FUNC_9575_(arg0, arg1)
			local function __FUNC_96CC_(arg0, arg1)
				local function __FUNC_9847_(arg0, arg1)
					local function __FUNC_99BF_(arg0, arg1)
						local function __FUNC_9B37_(arg0, arg1)
							local function __FUNC_9C8C_(arg0, arg1)
								local function __FUNC_9E07_(arg0, arg1)
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
									__FUNC_9E07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E07_)
							end

							if arg1.interrupted then
								__FUNC_9C8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C8C_)
						end

						if arg1.interrupted then
							__FUNC_9B37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B37_)
					end

					if arg1.interrupted then
						__FUNC_99BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99BF_)
				end

				if arg1.interrupted then
					__FUNC_9847_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9847_)
			end

			if arg1.interrupted then
				__FUNC_96CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96CC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9575_(registerVal18, {})
		local function __FUNC_9FB9_(arg0, arg1)
			local function __FUNC_A110_(arg0, arg1)
				local function __FUNC_A28B_(arg0, arg1)
					local function __FUNC_A3E0_(arg0, arg1)
						local function __FUNC_A55B_(arg0, arg1)
							local function __FUNC_A6B0_(arg0, arg1)
								local function __FUNC_A82B_(arg0, arg1)
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
									__FUNC_A82B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A82B_)
							end

							if arg1.interrupted then
								__FUNC_A6B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6B0_)
						end

						if arg1.interrupted then
							__FUNC_A55B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A55B_)
					end

					if arg1.interrupted then
						__FUNC_A3E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3E0_)
				end

				if arg1.interrupted then
					__FUNC_A28B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A28B_)
			end

			if arg1.interrupted then
				__FUNC_A110_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A110_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_9FB9_(registerVal19, {})
		local function __FUNC_AA0B_(arg0, arg1)
			local function __FUNC_AB60_(arg0, arg1)
				local function __FUNC_ACDB_(arg0, arg1)
					local function __FUNC_AE30_(arg0, arg1)
						local function __FUNC_AFAB_(arg0, arg1)
							local function __FUNC_B100_(arg0, arg1)
								local function __FUNC_B27B_(arg0, arg1)
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
									__FUNC_B27B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B27B_)
							end

							if arg1.interrupted then
								__FUNC_B100_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B100_)
						end

						if arg1.interrupted then
							__FUNC_AFAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFAB_)
					end

					if arg1.interrupted then
						__FUNC_AE30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE30_)
				end

				if arg1.interrupted then
					__FUNC_ACDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACDB_)
			end

			if arg1.interrupted then
				__FUNC_AB60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB60_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_AA0B_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_7CED_
	registerVal27.DefaultState = registerVal28
	registerVal28 = {}
	local function __FUNC_B45B_()
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
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
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

	registerVal28.DefaultClip = __FUNC_B45B_
	local function __FUNC_BBBB_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_BF2E_(arg0, arg1)
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
		__FUNC_BF2E_(registerVal4, {})
		local function __FUNC_C0E1_(arg0, arg1)
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
		__FUNC_C0E1_(registerVal8, {})
		local function __FUNC_C295_(arg0, arg1)
			local function __FUNC_C3EC_(arg0, arg1)
				local function __FUNC_C567_(arg0, arg1)
					local function __FUNC_C6BC_(arg0, arg1)
						local function __FUNC_C837_(arg0, arg1)
							local function __FUNC_C98C_(arg0, arg1)
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
								__FUNC_C98C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C98C_)
						end

						if arg1.interrupted then
							__FUNC_C837_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C837_)
					end

					if arg1.interrupted then
						__FUNC_C6BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6BC_)
				end

				if arg1.interrupted then
					__FUNC_C567_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C567_)
			end

			if arg1.interrupted then
				__FUNC_C3EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3EC_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C295_(registerVal16, {})
		local function __FUNC_CB41_(arg0, arg1)
			local function __FUNC_CC98_(arg0, arg1)
				local function __FUNC_CE13_(arg0, arg1)
					local function __FUNC_CF68_(arg0, arg1)
						local function __FUNC_D0E3_(arg0, arg1)
							local function __FUNC_D238_(arg0, arg1)
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
								__FUNC_D238_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D238_)
						end

						if arg1.interrupted then
							__FUNC_D0E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0E3_)
					end

					if arg1.interrupted then
						__FUNC_CF68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF68_)
				end

				if arg1.interrupted then
					__FUNC_CE13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE13_)
			end

			if arg1.interrupted then
				__FUNC_CC98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC98_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CB41_(registerVal17, {})
		local function __FUNC_D3ED_(arg0, arg1)
			local function __FUNC_D544_(arg0, arg1)
				local function __FUNC_D6BF_(arg0, arg1)
					local function __FUNC_D837_(arg0, arg1)
						local function __FUNC_D9AF_(arg0, arg1)
							local function __FUNC_DB04_(arg0, arg1)
								local function __FUNC_DC7F_(arg0, arg1)
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
									__FUNC_DC7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC7F_)
							end

							if arg1.interrupted then
								__FUNC_DB04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB04_)
						end

						if arg1.interrupted then
							__FUNC_D9AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9AF_)
					end

					if arg1.interrupted then
						__FUNC_D837_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D837_)
				end

				if arg1.interrupted then
					__FUNC_D6BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6BF_)
			end

			if arg1.interrupted then
				__FUNC_D544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D544_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D3ED_(registerVal18, {})
		local function __FUNC_DE5F_(arg0, arg1)
			local function __FUNC_DFB4_(arg0, arg1)
				local function __FUNC_E12F_(arg0, arg1)
					local function __FUNC_E284_(arg0, arg1)
						local function __FUNC_E3FF_(arg0, arg1)
							local function __FUNC_E554_(arg0, arg1)
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
								__FUNC_E554_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E554_)
						end

						if arg1.interrupted then
							__FUNC_E3FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3FF_)
					end

					if arg1.interrupted then
						__FUNC_E284_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E284_)
				end

				if arg1.interrupted then
					__FUNC_E12F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E12F_)
			end

			if arg1.interrupted then
				__FUNC_DFB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFB4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_DE5F_(registerVal19, {})
		local function __FUNC_E737_(arg0, arg1)
			local function __FUNC_E88C_(arg0, arg1)
				local function __FUNC_EA07_(arg0, arg1)
					local function __FUNC_EB5C_(arg0, arg1)
						local function __FUNC_ECD7_(arg0, arg1)
							local function __FUNC_EE2C_(arg0, arg1)
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
								__FUNC_EE2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE2C_)
						end

						if arg1.interrupted then
							__FUNC_ECD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECD7_)
					end

					if arg1.interrupted then
						__FUNC_EB5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB5C_)
				end

				if arg1.interrupted then
					__FUNC_EA07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA07_)
			end

			if arg1.interrupted then
				__FUNC_E88C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E88C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_E737_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_BBBB_
	local function __FUNC_F00F_()
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

	registerVal28.Focus = __FUNC_F00F_
	local function __FUNC_F3B0_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_F721_(arg0, arg1)
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
		__FUNC_F721_(registerVal4, {})
		local function __FUNC_F8D5_(arg0, arg1)
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
		__FUNC_F8D5_(registerVal8, {})
		local function __FUNC_FA89_(arg0, arg1)
			local function __FUNC_FC03_(arg0, arg1)
				local function __FUNC_FD7B_(arg0, arg1)
					local function __FUNC_FEF3_(arg0, arg1)
						local function __FUNC_10048_(arg0, arg1)
							local function __FUNC_101C3_(arg0, arg1)
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
								__FUNC_101C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101C3_)
						end

						if arg1.interrupted then
							__FUNC_10048_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10048_)
					end

					if arg1.interrupted then
						__FUNC_FEF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEF3_)
				end

				if arg1.interrupted then
					__FUNC_FD7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD7B_)
			end

			if arg1.interrupted then
				__FUNC_FC03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC03_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_FA89_(registerVal16, {})
		local function __FUNC_10375_(arg0, arg1)
			local function __FUNC_104EF_(arg0, arg1)
				local function __FUNC_10667_(arg0, arg1)
					local function __FUNC_107DF_(arg0, arg1)
						local function __FUNC_10934_(arg0, arg1)
							local function __FUNC_10AAF_(arg0, arg1)
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
								__FUNC_10AAF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10AAF_)
						end

						if arg1.interrupted then
							__FUNC_10934_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10934_)
					end

					if arg1.interrupted then
						__FUNC_107DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107DF_)
				end

				if arg1.interrupted then
					__FUNC_10667_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10667_)
			end

			if arg1.interrupted then
				__FUNC_104EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104EF_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_10375_(registerVal17, {})
		local function __FUNC_10C61_(arg0, arg1)
			local function __FUNC_10DB8_(arg0, arg1)
				local function __FUNC_10F33_(arg0, arg1)
					local function __FUNC_110AB_(arg0, arg1)
						local function __FUNC_11223_(arg0, arg1)
							local function __FUNC_11378_(arg0, arg1)
								local function __FUNC_114F3_(arg0, arg1)
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
									__FUNC_114F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114F3_)
							end

							if arg1.interrupted then
								__FUNC_11378_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11378_)
						end

						if arg1.interrupted then
							__FUNC_11223_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11223_)
					end

					if arg1.interrupted then
						__FUNC_110AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110AB_)
				end

				if arg1.interrupted then
					__FUNC_10F33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F33_)
			end

			if arg1.interrupted then
				__FUNC_10DB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DB8_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_10C61_(registerVal18, {})
		local function __FUNC_116D3_(arg0, arg1)
			local function __FUNC_11828_(arg0, arg1)
				local function __FUNC_119A3_(arg0, arg1)
					local function __FUNC_11AF8_(arg0, arg1)
						local function __FUNC_11C73_(arg0, arg1)
							local function __FUNC_11DC8_(arg0, arg1)
								local function __FUNC_11F43_(arg0, arg1)
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
									__FUNC_11F43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F43_)
							end

							if arg1.interrupted then
								__FUNC_11DC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DC8_)
						end

						if arg1.interrupted then
							__FUNC_11C73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C73_)
					end

					if arg1.interrupted then
						__FUNC_11AF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AF8_)
				end

				if arg1.interrupted then
					__FUNC_119A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119A3_)
			end

			if arg1.interrupted then
				__FUNC_11828_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11828_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_116D3_(registerVal19, {})
		local function __FUNC_12123_(arg0, arg1)
			local function __FUNC_12278_(arg0, arg1)
				local function __FUNC_123F3_(arg0, arg1)
					local function __FUNC_12548_(arg0, arg1)
						local function __FUNC_126C3_(arg0, arg1)
							local function __FUNC_12818_(arg0, arg1)
								local function __FUNC_12993_(arg0, arg1)
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
									__FUNC_12993_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12993_)
							end

							if arg1.interrupted then
								__FUNC_12818_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12818_)
						end

						if arg1.interrupted then
							__FUNC_126C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126C3_)
					end

					if arg1.interrupted then
						__FUNC_12548_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12548_)
				end

				if arg1.interrupted then
					__FUNC_123F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123F3_)
			end

			if arg1.interrupted then
				__FUNC_12278_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12278_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_12123_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_F3B0_
	registerVal27.Equipped = registerVal28
	registerVal28 = {}
	local function __FUNC_12B73_()
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
		registerVal2.GridItemBGBGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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

	registerVal28.DefaultClip = __FUNC_12B73_
	local function __FUNC_13275_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_13534_(arg0, arg1)
			local function __FUNC_1368C_(arg0, arg1)
				local function __FUNC_13807_(arg0, arg1)
					local function __FUNC_1395C_(arg0, arg1)
						local function __FUNC_13AD7_(arg0, arg1)
							local function __FUNC_13C2C_(arg0, arg1)
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
								__FUNC_13C2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C2C_)
						end

						if arg1.interrupted then
							__FUNC_13AD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AD7_)
					end

					if arg1.interrupted then
						__FUNC_1395C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1395C_)
				end

				if arg1.interrupted then
					__FUNC_13807_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13807_)
			end

			if arg1.interrupted then
				__FUNC_1368C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1368C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_13534_(registerVal16, {})
		local function __FUNC_13DE1_(arg0, arg1)
			local function __FUNC_13F38_(arg0, arg1)
				local function __FUNC_140B3_(arg0, arg1)
					local function __FUNC_14208_(arg0, arg1)
						local function __FUNC_14383_(arg0, arg1)
							local function __FUNC_144D8_(arg0, arg1)
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
								__FUNC_144D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144D8_)
						end

						if arg1.interrupted then
							__FUNC_14383_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14383_)
					end

					if arg1.interrupted then
						__FUNC_14208_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14208_)
				end

				if arg1.interrupted then
					__FUNC_140B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140B3_)
			end

			if arg1.interrupted then
				__FUNC_13F38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F38_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_13DE1_(registerVal17, {})
		local function __FUNC_1468D_(arg0, arg1)
			local function __FUNC_147E4_(arg0, arg1)
				local function __FUNC_1495F_(arg0, arg1)
					local function __FUNC_14AD7_(arg0, arg1)
						local function __FUNC_14C4F_(arg0, arg1)
							local function __FUNC_14DA4_(arg0, arg1)
								local function __FUNC_14F1F_(arg0, arg1)
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
									__FUNC_14F1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F1F_)
							end

							if arg1.interrupted then
								__FUNC_14DA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DA4_)
						end

						if arg1.interrupted then
							__FUNC_14C4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C4F_)
					end

					if arg1.interrupted then
						__FUNC_14AD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AD7_)
				end

				if arg1.interrupted then
					__FUNC_1495F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1495F_)
			end

			if arg1.interrupted then
				__FUNC_147E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147E4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1468D_(registerVal18, {})
		local function __FUNC_150FF_(arg0, arg1)
			local function __FUNC_15254_(arg0, arg1)
				local function __FUNC_153CF_(arg0, arg1)
					local function __FUNC_15524_(arg0, arg1)
						local function __FUNC_1569F_(arg0, arg1)
							local function __FUNC_157F4_(arg0, arg1)
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
								__FUNC_157F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157F4_)
						end

						if arg1.interrupted then
							__FUNC_1569F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1569F_)
					end

					if arg1.interrupted then
						__FUNC_15524_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15524_)
				end

				if arg1.interrupted then
					__FUNC_153CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153CF_)
			end

			if arg1.interrupted then
				__FUNC_15254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15254_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_150FF_(registerVal19, {})
		local function __FUNC_159D7_(arg0, arg1)
			local function __FUNC_15B2C_(arg0, arg1)
				local function __FUNC_15CA7_(arg0, arg1)
					local function __FUNC_15DFC_(arg0, arg1)
						local function __FUNC_15F77_(arg0, arg1)
							local function __FUNC_160CC_(arg0, arg1)
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
								__FUNC_160CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160CC_)
						end

						if arg1.interrupted then
							__FUNC_15F77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F77_)
					end

					if arg1.interrupted then
						__FUNC_15DFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DFC_)
				end

				if arg1.interrupted then
					__FUNC_15CA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CA7_)
			end

			if arg1.interrupted then
				__FUNC_15B2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B2C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_159D7_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_13275_
	local function __FUNC_162AF_()
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

	registerVal28.Focus = __FUNC_162AF_
	local function __FUNC_16542_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_16775_(arg0, arg1)
			local function __FUNC_168EF_(arg0, arg1)
				local function __FUNC_16A67_(arg0, arg1)
					local function __FUNC_16BDF_(arg0, arg1)
						local function __FUNC_16D34_(arg0, arg1)
							local function __FUNC_16EAF_(arg0, arg1)
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
								__FUNC_16EAF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EAF_)
						end

						if arg1.interrupted then
							__FUNC_16D34_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D34_)
					end

					if arg1.interrupted then
						__FUNC_16BDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BDF_)
				end

				if arg1.interrupted then
					__FUNC_16A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A67_)
			end

			if arg1.interrupted then
				__FUNC_168EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168EF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_16775_(registerVal16, {})
		local function __FUNC_17061_(arg0, arg1)
			local function __FUNC_171DB_(arg0, arg1)
				local function __FUNC_17353_(arg0, arg1)
					local function __FUNC_174CB_(arg0, arg1)
						local function __FUNC_17620_(arg0, arg1)
							local function __FUNC_1779B_(arg0, arg1)
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
								__FUNC_1779B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1779B_)
						end

						if arg1.interrupted then
							__FUNC_17620_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17620_)
					end

					if arg1.interrupted then
						__FUNC_174CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174CB_)
				end

				if arg1.interrupted then
					__FUNC_17353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17353_)
			end

			if arg1.interrupted then
				__FUNC_171DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171DB_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_17061_(registerVal17, {})
		local function __FUNC_1794D_(arg0, arg1)
			local function __FUNC_17AA4_(arg0, arg1)
				local function __FUNC_17C1F_(arg0, arg1)
					local function __FUNC_17D97_(arg0, arg1)
						local function __FUNC_17F0F_(arg0, arg1)
							local function __FUNC_18064_(arg0, arg1)
								local function __FUNC_181DF_(arg0, arg1)
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
									__FUNC_181DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_181DF_)
							end

							if arg1.interrupted then
								__FUNC_18064_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18064_)
						end

						if arg1.interrupted then
							__FUNC_17F0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F0F_)
					end

					if arg1.interrupted then
						__FUNC_17D97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D97_)
				end

				if arg1.interrupted then
					__FUNC_17C1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C1F_)
			end

			if arg1.interrupted then
				__FUNC_17AA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17AA4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1794D_(registerVal18, {})
		local function __FUNC_18391_(arg0, arg1)
			local function __FUNC_184E8_(arg0, arg1)
				local function __FUNC_18663_(arg0, arg1)
					local function __FUNC_187B8_(arg0, arg1)
						local function __FUNC_18933_(arg0, arg1)
							local function __FUNC_18A88_(arg0, arg1)
								local function __FUNC_18C03_(arg0, arg1)
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
									__FUNC_18C03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C03_)
							end

							if arg1.interrupted then
								__FUNC_18A88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A88_)
						end

						if arg1.interrupted then
							__FUNC_18933_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18933_)
					end

					if arg1.interrupted then
						__FUNC_187B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187B8_)
				end

				if arg1.interrupted then
					__FUNC_18663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18663_)
			end

			if arg1.interrupted then
				__FUNC_184E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184E8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_18391_(registerVal19, {})
		local function __FUNC_18DB5_(arg0, arg1)
			local function __FUNC_18F0C_(arg0, arg1)
				local function __FUNC_19087_(arg0, arg1)
					local function __FUNC_191DC_(arg0, arg1)
						local function __FUNC_19357_(arg0, arg1)
							local function __FUNC_194AC_(arg0, arg1)
								local function __FUNC_19627_(arg0, arg1)
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
									__FUNC_19627_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19627_)
							end

							if arg1.interrupted then
								__FUNC_194AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_194AC_)
						end

						if arg1.interrupted then
							__FUNC_19357_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19357_)
					end

					if arg1.interrupted then
						__FUNC_191DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_191DC_)
				end

				if arg1.interrupted then
					__FUNC_19087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19087_)
			end

			if arg1.interrupted then
				__FUNC_18F0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F0C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_18DB5_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_16542_
	registerVal27.New = registerVal28
	registerVal28 = {}
	local function __FUNC_197D9_()
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
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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

	registerVal28.DefaultClip = __FUNC_197D9_
	local function __FUNC_19F1B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1A1D8_(arg0, arg1)
			local function __FUNC_1A330_(arg0, arg1)
				local function __FUNC_1A4AB_(arg0, arg1)
					local function __FUNC_1A600_(arg0, arg1)
						local function __FUNC_1A77B_(arg0, arg1)
							local function __FUNC_1A8D0_(arg0, arg1)
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
								__FUNC_1A8D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8D0_)
						end

						if arg1.interrupted then
							__FUNC_1A77B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A77B_)
					end

					if arg1.interrupted then
						__FUNC_1A600_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A600_)
				end

				if arg1.interrupted then
					__FUNC_1A4AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A4AB_)
			end

			if arg1.interrupted then
				__FUNC_1A330_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A330_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1A1D8_(registerVal16, {})
		local function __FUNC_1AA85_(arg0, arg1)
			local function __FUNC_1ABDC_(arg0, arg1)
				local function __FUNC_1AD57_(arg0, arg1)
					local function __FUNC_1AEAC_(arg0, arg1)
						local function __FUNC_1B027_(arg0, arg1)
							local function __FUNC_1B17C_(arg0, arg1)
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
								__FUNC_1B17C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B17C_)
						end

						if arg1.interrupted then
							__FUNC_1B027_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B027_)
					end

					if arg1.interrupted then
						__FUNC_1AEAC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEAC_)
				end

				if arg1.interrupted then
					__FUNC_1AD57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD57_)
			end

			if arg1.interrupted then
				__FUNC_1ABDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABDC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1AA85_(registerVal17, {})
		local function __FUNC_1B331_(arg0, arg1)
			local function __FUNC_1B488_(arg0, arg1)
				local function __FUNC_1B603_(arg0, arg1)
					local function __FUNC_1B77B_(arg0, arg1)
						local function __FUNC_1B8F3_(arg0, arg1)
							local function __FUNC_1BA48_(arg0, arg1)
								local function __FUNC_1BBC3_(arg0, arg1)
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
									__FUNC_1BBC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BBC3_)
							end

							if arg1.interrupted then
								__FUNC_1BA48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA48_)
						end

						if arg1.interrupted then
							__FUNC_1B8F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8F3_)
					end

					if arg1.interrupted then
						__FUNC_1B77B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B77B_)
				end

				if arg1.interrupted then
					__FUNC_1B603_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B603_)
			end

			if arg1.interrupted then
				__FUNC_1B488_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B488_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1B331_(registerVal18, {})
		local function __FUNC_1BDA3_(arg0, arg1)
			local function __FUNC_1BEF8_(arg0, arg1)
				local function __FUNC_1C073_(arg0, arg1)
					local function __FUNC_1C1C8_(arg0, arg1)
						local function __FUNC_1C343_(arg0, arg1)
							local function __FUNC_1C498_(arg0, arg1)
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
								__FUNC_1C498_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C498_)
						end

						if arg1.interrupted then
							__FUNC_1C343_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C343_)
					end

					if arg1.interrupted then
						__FUNC_1C1C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1C8_)
				end

				if arg1.interrupted then
					__FUNC_1C073_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C073_)
			end

			if arg1.interrupted then
				__FUNC_1BEF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BEF8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1BDA3_(registerVal19, {})
		local function __FUNC_1C67B_(arg0, arg1)
			local function __FUNC_1C7D0_(arg0, arg1)
				local function __FUNC_1C94B_(arg0, arg1)
					local function __FUNC_1CAA0_(arg0, arg1)
						local function __FUNC_1CC1B_(arg0, arg1)
							local function __FUNC_1CD70_(arg0, arg1)
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
								__FUNC_1CD70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD70_)
						end

						if arg1.interrupted then
							__FUNC_1CC1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC1B_)
					end

					if arg1.interrupted then
						__FUNC_1CAA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CAA0_)
				end

				if arg1.interrupted then
					__FUNC_1C94B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C94B_)
			end

			if arg1.interrupted then
				__FUNC_1C7D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7D0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1C67B_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_19F1B_
	local function __FUNC_1CF53_()
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

	registerVal28.Focus = __FUNC_1CF53_
	local function __FUNC_1D1E6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1D4A4_(arg0, arg1)
			local function __FUNC_1D61F_(arg0, arg1)
				local function __FUNC_1D797_(arg0, arg1)
					local function __FUNC_1D90F_(arg0, arg1)
						local function __FUNC_1DA64_(arg0, arg1)
							local function __FUNC_1DBDF_(arg0, arg1)
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
								__FUNC_1DBDF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBDF_)
						end

						if arg1.interrupted then
							__FUNC_1DA64_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA64_)
					end

					if arg1.interrupted then
						__FUNC_1D90F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D90F_)
				end

				if arg1.interrupted then
					__FUNC_1D797_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D797_)
			end

			if arg1.interrupted then
				__FUNC_1D61F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D61F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1D4A4_(registerVal16, {})
		local function __FUNC_1DD91_(arg0, arg1)
			local function __FUNC_1DF0B_(arg0, arg1)
				local function __FUNC_1E083_(arg0, arg1)
					local function __FUNC_1E1FB_(arg0, arg1)
						local function __FUNC_1E350_(arg0, arg1)
							local function __FUNC_1E4CB_(arg0, arg1)
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
								__FUNC_1E4CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4CB_)
						end

						if arg1.interrupted then
							__FUNC_1E350_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E350_)
					end

					if arg1.interrupted then
						__FUNC_1E1FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1FB_)
				end

				if arg1.interrupted then
					__FUNC_1E083_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E083_)
			end

			if arg1.interrupted then
				__FUNC_1DF0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF0B_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1DD91_(registerVal17, {})
		local function __FUNC_1E67D_(arg0, arg1)
			local function __FUNC_1E7D4_(arg0, arg1)
				local function __FUNC_1E94F_(arg0, arg1)
					local function __FUNC_1EAC7_(arg0, arg1)
						local function __FUNC_1EC3F_(arg0, arg1)
							local function __FUNC_1ED94_(arg0, arg1)
								local function __FUNC_1EF0F_(arg0, arg1)
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
									__FUNC_1EF0F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF0F_)
							end

							if arg1.interrupted then
								__FUNC_1ED94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED94_)
						end

						if arg1.interrupted then
							__FUNC_1EC3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC3F_)
					end

					if arg1.interrupted then
						__FUNC_1EAC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAC7_)
				end

				if arg1.interrupted then
					__FUNC_1E94F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E94F_)
			end

			if arg1.interrupted then
				__FUNC_1E7D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7D4_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1E67D_(registerVal18, {})
		local function __FUNC_1F0EF_(arg0, arg1)
			local function __FUNC_1F244_(arg0, arg1)
				local function __FUNC_1F3BF_(arg0, arg1)
					local function __FUNC_1F514_(arg0, arg1)
						local function __FUNC_1F68F_(arg0, arg1)
							local function __FUNC_1F7E4_(arg0, arg1)
								local function __FUNC_1F95F_(arg0, arg1)
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
									__FUNC_1F95F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F95F_)
							end

							if arg1.interrupted then
								__FUNC_1F7E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7E4_)
						end

						if arg1.interrupted then
							__FUNC_1F68F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F68F_)
					end

					if arg1.interrupted then
						__FUNC_1F514_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F514_)
				end

				if arg1.interrupted then
					__FUNC_1F3BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3BF_)
			end

			if arg1.interrupted then
				__FUNC_1F244_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F244_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1F0EF_(registerVal19, {})
		local function __FUNC_1FB3F_(arg0, arg1)
			local function __FUNC_1FC94_(arg0, arg1)
				local function __FUNC_1FE0F_(arg0, arg1)
					local function __FUNC_1FF64_(arg0, arg1)
						local function __FUNC_200DF_(arg0, arg1)
							local function __FUNC_20234_(arg0, arg1)
								local function __FUNC_203AF_(arg0, arg1)
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
									__FUNC_203AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203AF_)
							end

							if arg1.interrupted then
								__FUNC_20234_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20234_)
						end

						if arg1.interrupted then
							__FUNC_200DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_200DF_)
					end

					if arg1.interrupted then
						__FUNC_1FF64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF64_)
				end

				if arg1.interrupted then
					__FUNC_1FE0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE0F_)
			end

			if arg1.interrupted then
				__FUNC_1FC94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC94_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1FB3F_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_1D1E6_
	registerVal27.Locked = registerVal28
	registerVal28 = {}
	local function __FUNC_2058F_()
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
		registerVal2.GridItemBGBGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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

	registerVal28.DefaultClip = __FUNC_2058F_
	local function __FUNC_20CF4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_20FB4_(arg0, arg1)
			local function __FUNC_2110C_(arg0, arg1)
				local function __FUNC_21287_(arg0, arg1)
					local function __FUNC_213DC_(arg0, arg1)
						local function __FUNC_21557_(arg0, arg1)
							local function __FUNC_216AC_(arg0, arg1)
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
								__FUNC_216AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_216AC_)
						end

						if arg1.interrupted then
							__FUNC_21557_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21557_)
					end

					if arg1.interrupted then
						__FUNC_213DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_213DC_)
				end

				if arg1.interrupted then
					__FUNC_21287_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21287_)
			end

			if arg1.interrupted then
				__FUNC_2110C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2110C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_20FB4_(registerVal16, {})
		local function __FUNC_21861_(arg0, arg1)
			local function __FUNC_219B8_(arg0, arg1)
				local function __FUNC_21B33_(arg0, arg1)
					local function __FUNC_21C88_(arg0, arg1)
						local function __FUNC_21E03_(arg0, arg1)
							local function __FUNC_21F58_(arg0, arg1)
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
								__FUNC_21F58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F58_)
						end

						if arg1.interrupted then
							__FUNC_21E03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E03_)
					end

					if arg1.interrupted then
						__FUNC_21C88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C88_)
				end

				if arg1.interrupted then
					__FUNC_21B33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21B33_)
			end

			if arg1.interrupted then
				__FUNC_219B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_219B8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_21861_(registerVal17, {})
		local function __FUNC_2210D_(arg0, arg1)
			local function __FUNC_22264_(arg0, arg1)
				local function __FUNC_223DF_(arg0, arg1)
					local function __FUNC_22557_(arg0, arg1)
						local function __FUNC_226CF_(arg0, arg1)
							local function __FUNC_22824_(arg0, arg1)
								local function __FUNC_2299F_(arg0, arg1)
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
									__FUNC_2299F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2299F_)
							end

							if arg1.interrupted then
								__FUNC_22824_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22824_)
						end

						if arg1.interrupted then
							__FUNC_226CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_226CF_)
					end

					if arg1.interrupted then
						__FUNC_22557_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22557_)
				end

				if arg1.interrupted then
					__FUNC_223DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_223DF_)
			end

			if arg1.interrupted then
				__FUNC_22264_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22264_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2210D_(registerVal18, {})
		local function __FUNC_22B7F_(arg0, arg1)
			local function __FUNC_22CD4_(arg0, arg1)
				local function __FUNC_22E4F_(arg0, arg1)
					local function __FUNC_22FA4_(arg0, arg1)
						local function __FUNC_2311F_(arg0, arg1)
							local function __FUNC_23274_(arg0, arg1)
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
								__FUNC_23274_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23274_)
						end

						if arg1.interrupted then
							__FUNC_2311F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2311F_)
					end

					if arg1.interrupted then
						__FUNC_22FA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22FA4_)
				end

				if arg1.interrupted then
					__FUNC_22E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E4F_)
			end

			if arg1.interrupted then
				__FUNC_22CD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22CD4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_22B7F_(registerVal19, {})
		local function __FUNC_23457_(arg0, arg1)
			local function __FUNC_235AC_(arg0, arg1)
				local function __FUNC_23727_(arg0, arg1)
					local function __FUNC_2387C_(arg0, arg1)
						local function __FUNC_239F7_(arg0, arg1)
							local function __FUNC_23B4C_(arg0, arg1)
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
								__FUNC_23B4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B4C_)
						end

						if arg1.interrupted then
							__FUNC_239F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_239F7_)
					end

					if arg1.interrupted then
						__FUNC_2387C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2387C_)
				end

				if arg1.interrupted then
					__FUNC_23727_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23727_)
			end

			if arg1.interrupted then
				__FUNC_235AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235AC_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_23457_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_20CF4_
	local function __FUNC_23D2F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
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

	registerVal28.Focus = __FUNC_23D2F_
	local function __FUNC_2401B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_242D8_(arg0, arg1)
			local function __FUNC_24453_(arg0, arg1)
				local function __FUNC_245CB_(arg0, arg1)
					local function __FUNC_24743_(arg0, arg1)
						local function __FUNC_24898_(arg0, arg1)
							local function __FUNC_24A13_(arg0, arg1)
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
								__FUNC_24A13_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A13_)
						end

						if arg1.interrupted then
							__FUNC_24898_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24898_)
					end

					if arg1.interrupted then
						__FUNC_24743_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24743_)
				end

				if arg1.interrupted then
					__FUNC_245CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245CB_)
			end

			if arg1.interrupted then
				__FUNC_24453_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24453_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_242D8_(registerVal16, {})
		local function __FUNC_24BC5_(arg0, arg1)
			local function __FUNC_24D3F_(arg0, arg1)
				local function __FUNC_24EB7_(arg0, arg1)
					local function __FUNC_2502F_(arg0, arg1)
						local function __FUNC_25184_(arg0, arg1)
							local function __FUNC_252FF_(arg0, arg1)
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
								__FUNC_252FF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252FF_)
						end

						if arg1.interrupted then
							__FUNC_25184_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25184_)
					end

					if arg1.interrupted then
						__FUNC_2502F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2502F_)
				end

				if arg1.interrupted then
					__FUNC_24EB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24EB7_)
			end

			if arg1.interrupted then
				__FUNC_24D3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D3F_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_24BC5_(registerVal17, {})
		local function __FUNC_254B1_(arg0, arg1)
			local function __FUNC_25608_(arg0, arg1)
				local function __FUNC_25783_(arg0, arg1)
					local function __FUNC_258FB_(arg0, arg1)
						local function __FUNC_25A73_(arg0, arg1)
							local function __FUNC_25BC8_(arg0, arg1)
								local function __FUNC_25D43_(arg0, arg1)
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
									__FUNC_25D43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D43_)
							end

							if arg1.interrupted then
								__FUNC_25BC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25BC8_)
						end

						if arg1.interrupted then
							__FUNC_25A73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A73_)
					end

					if arg1.interrupted then
						__FUNC_258FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_258FB_)
				end

				if arg1.interrupted then
					__FUNC_25783_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25783_)
			end

			if arg1.interrupted then
				__FUNC_25608_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25608_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_254B1_(registerVal18, {})
		local function __FUNC_25F23_(arg0, arg1)
			local function __FUNC_26078_(arg0, arg1)
				local function __FUNC_261F3_(arg0, arg1)
					local function __FUNC_26348_(arg0, arg1)
						local function __FUNC_264C3_(arg0, arg1)
							local function __FUNC_26618_(arg0, arg1)
								local function __FUNC_26793_(arg0, arg1)
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
									__FUNC_26793_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26793_)
							end

							if arg1.interrupted then
								__FUNC_26618_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26618_)
						end

						if arg1.interrupted then
							__FUNC_264C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264C3_)
					end

					if arg1.interrupted then
						__FUNC_26348_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26348_)
				end

				if arg1.interrupted then
					__FUNC_261F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_261F3_)
			end

			if arg1.interrupted then
				__FUNC_26078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26078_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_25F23_(registerVal19, {})
		local function __FUNC_26973_(arg0, arg1)
			local function __FUNC_26AC8_(arg0, arg1)
				local function __FUNC_26C43_(arg0, arg1)
					local function __FUNC_26D98_(arg0, arg1)
						local function __FUNC_26F13_(arg0, arg1)
							local function __FUNC_27068_(arg0, arg1)
								local function __FUNC_271E3_(arg0, arg1)
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
									__FUNC_271E3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271E3_)
							end

							if arg1.interrupted then
								__FUNC_27068_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27068_)
						end

						if arg1.interrupted then
							__FUNC_26F13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F13_)
					end

					if arg1.interrupted then
						__FUNC_26D98_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D98_)
				end

				if arg1.interrupted then
					__FUNC_26C43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C43_)
			end

			if arg1.interrupted then
				__FUNC_26AC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26AC8_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_26973_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_2401B_
	registerVal27.NotAvailable = registerVal28
	registerVal28 = {}
	local function __FUNC_273C3_()
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
		registerVal2.GridItemBGBGlow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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

	registerVal28.DefaultClip = __FUNC_273C3_
	local function __FUNC_27ACF_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_27E42_(arg0, arg1)
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
		__FUNC_27E42_(registerVal4, {})
		local function __FUNC_27FF5_(arg0, arg1)
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
		__FUNC_27FF5_(registerVal8, {})
		local function __FUNC_281A9_(arg0, arg1)
			local function __FUNC_28300_(arg0, arg1)
				local function __FUNC_2847B_(arg0, arg1)
					local function __FUNC_285D0_(arg0, arg1)
						local function __FUNC_2874B_(arg0, arg1)
							local function __FUNC_288A0_(arg0, arg1)
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
								__FUNC_288A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_288A0_)
						end

						if arg1.interrupted then
							__FUNC_2874B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2874B_)
					end

					if arg1.interrupted then
						__FUNC_285D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285D0_)
				end

				if arg1.interrupted then
					__FUNC_2847B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2847B_)
			end

			if arg1.interrupted then
				__FUNC_28300_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28300_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_281A9_(registerVal16, {})
		local function __FUNC_28A55_(arg0, arg1)
			local function __FUNC_28BAC_(arg0, arg1)
				local function __FUNC_28D27_(arg0, arg1)
					local function __FUNC_28E7C_(arg0, arg1)
						local function __FUNC_28FF7_(arg0, arg1)
							local function __FUNC_2914C_(arg0, arg1)
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
								__FUNC_2914C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2914C_)
						end

						if arg1.interrupted then
							__FUNC_28FF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28FF7_)
					end

					if arg1.interrupted then
						__FUNC_28E7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E7C_)
				end

				if arg1.interrupted then
					__FUNC_28D27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D27_)
			end

			if arg1.interrupted then
				__FUNC_28BAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28BAC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_28A55_(registerVal17, {})
		local function __FUNC_29301_(arg0, arg1)
			local function __FUNC_29458_(arg0, arg1)
				local function __FUNC_295D3_(arg0, arg1)
					local function __FUNC_2974B_(arg0, arg1)
						local function __FUNC_298C3_(arg0, arg1)
							local function __FUNC_29A18_(arg0, arg1)
								local function __FUNC_29B93_(arg0, arg1)
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
									__FUNC_29B93_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29B93_)
							end

							if arg1.interrupted then
								__FUNC_29A18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A18_)
						end

						if arg1.interrupted then
							__FUNC_298C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298C3_)
					end

					if arg1.interrupted then
						__FUNC_2974B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2974B_)
				end

				if arg1.interrupted then
					__FUNC_295D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_295D3_)
			end

			if arg1.interrupted then
				__FUNC_29458_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29458_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_29301_(registerVal18, {})
		local function __FUNC_29D73_(arg0, arg1)
			local function __FUNC_29EC8_(arg0, arg1)
				local function __FUNC_2A043_(arg0, arg1)
					local function __FUNC_2A198_(arg0, arg1)
						local function __FUNC_2A313_(arg0, arg1)
							local function __FUNC_2A468_(arg0, arg1)
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
								__FUNC_2A468_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A468_)
						end

						if arg1.interrupted then
							__FUNC_2A313_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A313_)
					end

					if arg1.interrupted then
						__FUNC_2A198_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A198_)
				end

				if arg1.interrupted then
					__FUNC_2A043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A043_)
			end

			if arg1.interrupted then
				__FUNC_29EC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29EC8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_29D73_(registerVal19, {})
		local function __FUNC_2A64B_(arg0, arg1)
			local function __FUNC_2A7A0_(arg0, arg1)
				local function __FUNC_2A91B_(arg0, arg1)
					local function __FUNC_2AA70_(arg0, arg1)
						local function __FUNC_2ABEB_(arg0, arg1)
							local function __FUNC_2AD40_(arg0, arg1)
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
								__FUNC_2AD40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD40_)
						end

						if arg1.interrupted then
							__FUNC_2ABEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ABEB_)
					end

					if arg1.interrupted then
						__FUNC_2AA70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA70_)
				end

				if arg1.interrupted then
					__FUNC_2A91B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A91B_)
			end

			if arg1.interrupted then
				__FUNC_2A7A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A7A0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2A64B_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_27ACF_
	local function __FUNC_2AF23_()
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

	registerVal28.Focus = __FUNC_2AF23_
	local function __FUNC_2B26F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2B5DD_(arg0, arg1)
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
		__FUNC_2B5DD_(registerVal4, {})
		local function __FUNC_2B791_(arg0, arg1)
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
		__FUNC_2B791_(registerVal8, {})
		local function __FUNC_2B945_(arg0, arg1)
			local function __FUNC_2BABF_(arg0, arg1)
				local function __FUNC_2BC37_(arg0, arg1)
					local function __FUNC_2BDAF_(arg0, arg1)
						local function __FUNC_2BF04_(arg0, arg1)
							local function __FUNC_2C07F_(arg0, arg1)
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
								__FUNC_2C07F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C07F_)
						end

						if arg1.interrupted then
							__FUNC_2BF04_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF04_)
					end

					if arg1.interrupted then
						__FUNC_2BDAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDAF_)
				end

				if arg1.interrupted then
					__FUNC_2BC37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC37_)
			end

			if arg1.interrupted then
				__FUNC_2BABF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BABF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2B945_(registerVal16, {})
		local function __FUNC_2C231_(arg0, arg1)
			local function __FUNC_2C3AB_(arg0, arg1)
				local function __FUNC_2C523_(arg0, arg1)
					local function __FUNC_2C69B_(arg0, arg1)
						local function __FUNC_2C7F0_(arg0, arg1)
							local function __FUNC_2C96B_(arg0, arg1)
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
								__FUNC_2C96B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C96B_)
						end

						if arg1.interrupted then
							__FUNC_2C7F0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7F0_)
					end

					if arg1.interrupted then
						__FUNC_2C69B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C69B_)
				end

				if arg1.interrupted then
					__FUNC_2C523_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C523_)
			end

			if arg1.interrupted then
				__FUNC_2C3AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3AB_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2C231_(registerVal17, {})
		local function __FUNC_2CB1D_(arg0, arg1)
			local function __FUNC_2CC74_(arg0, arg1)
				local function __FUNC_2CDEF_(arg0, arg1)
					local function __FUNC_2CF67_(arg0, arg1)
						local function __FUNC_2D0DF_(arg0, arg1)
							local function __FUNC_2D234_(arg0, arg1)
								local function __FUNC_2D3AF_(arg0, arg1)
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
									__FUNC_2D3AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D3AF_)
							end

							if arg1.interrupted then
								__FUNC_2D234_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D234_)
						end

						if arg1.interrupted then
							__FUNC_2D0DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0DF_)
					end

					if arg1.interrupted then
						__FUNC_2CF67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF67_)
				end

				if arg1.interrupted then
					__FUNC_2CDEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDEF_)
			end

			if arg1.interrupted then
				__FUNC_2CC74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC74_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2CB1D_(registerVal18, {})
		local function __FUNC_2D58F_(arg0, arg1)
			local function __FUNC_2D6E4_(arg0, arg1)
				local function __FUNC_2D85F_(arg0, arg1)
					local function __FUNC_2D9B4_(arg0, arg1)
						local function __FUNC_2DB2F_(arg0, arg1)
							local function __FUNC_2DC84_(arg0, arg1)
								local function __FUNC_2DDFF_(arg0, arg1)
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
									__FUNC_2DDFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDFF_)
							end

							if arg1.interrupted then
								__FUNC_2DC84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC84_)
						end

						if arg1.interrupted then
							__FUNC_2DB2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB2F_)
					end

					if arg1.interrupted then
						__FUNC_2D9B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9B4_)
				end

				if arg1.interrupted then
					__FUNC_2D85F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D85F_)
			end

			if arg1.interrupted then
				__FUNC_2D6E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6E4_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2D58F_(registerVal19, {})
		local function __FUNC_2DFDF_(arg0, arg1)
			local function __FUNC_2E134_(arg0, arg1)
				local function __FUNC_2E2AF_(arg0, arg1)
					local function __FUNC_2E404_(arg0, arg1)
						local function __FUNC_2E57F_(arg0, arg1)
							local function __FUNC_2E6D4_(arg0, arg1)
								local function __FUNC_2E84F_(arg0, arg1)
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
									__FUNC_2E84F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E84F_)
							end

							if arg1.interrupted then
								__FUNC_2E6D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6D4_)
						end

						if arg1.interrupted then
							__FUNC_2E57F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E57F_)
					end

					if arg1.interrupted then
						__FUNC_2E404_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E404_)
				end

				if arg1.interrupted then
					__FUNC_2E2AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E2AF_)
			end

			if arg1.interrupted then
				__FUNC_2E134_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E134_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2DFDF_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_2B26F_
	registerVal27.MutuallyExclusive = registerVal28
	registerVal28 = {}
	local function __FUNC_2EA2F_()
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
		registerVal2.GridItemBGBGlow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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

	registerVal28.DefaultClip = __FUNC_2EA2F_
	local function __FUNC_2F199_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2F458_(arg0, arg1)
			local function __FUNC_2F5B0_(arg0, arg1)
				local function __FUNC_2F72B_(arg0, arg1)
					local function __FUNC_2F880_(arg0, arg1)
						local function __FUNC_2F9FB_(arg0, arg1)
							local function __FUNC_2FB50_(arg0, arg1)
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
								__FUNC_2FB50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB50_)
						end

						if arg1.interrupted then
							__FUNC_2F9FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F9FB_)
					end

					if arg1.interrupted then
						__FUNC_2F880_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F880_)
				end

				if arg1.interrupted then
					__FUNC_2F72B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F72B_)
			end

			if arg1.interrupted then
				__FUNC_2F5B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F5B0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2F458_(registerVal16, {})
		local function __FUNC_2FD05_(arg0, arg1)
			local function __FUNC_2FE5C_(arg0, arg1)
				local function __FUNC_2FFD7_(arg0, arg1)
					local function __FUNC_3012C_(arg0, arg1)
						local function __FUNC_302A7_(arg0, arg1)
							local function __FUNC_303FC_(arg0, arg1)
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
								__FUNC_303FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_303FC_)
						end

						if arg1.interrupted then
							__FUNC_302A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_302A7_)
					end

					if arg1.interrupted then
						__FUNC_3012C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3012C_)
				end

				if arg1.interrupted then
					__FUNC_2FFD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FFD7_)
			end

			if arg1.interrupted then
				__FUNC_2FE5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE5C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2FD05_(registerVal17, {})
		local function __FUNC_305B1_(arg0, arg1)
			local function __FUNC_30708_(arg0, arg1)
				local function __FUNC_30883_(arg0, arg1)
					local function __FUNC_309FB_(arg0, arg1)
						local function __FUNC_30B73_(arg0, arg1)
							local function __FUNC_30CC8_(arg0, arg1)
								local function __FUNC_30E43_(arg0, arg1)
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
									__FUNC_30E43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E43_)
							end

							if arg1.interrupted then
								__FUNC_30CC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30CC8_)
						end

						if arg1.interrupted then
							__FUNC_30B73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B73_)
					end

					if arg1.interrupted then
						__FUNC_309FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_309FB_)
				end

				if arg1.interrupted then
					__FUNC_30883_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30883_)
			end

			if arg1.interrupted then
				__FUNC_30708_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30708_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_305B1_(registerVal18, {})
		local function __FUNC_31023_(arg0, arg1)
			local function __FUNC_31178_(arg0, arg1)
				local function __FUNC_312F3_(arg0, arg1)
					local function __FUNC_31448_(arg0, arg1)
						local function __FUNC_315C3_(arg0, arg1)
							local function __FUNC_31718_(arg0, arg1)
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
								__FUNC_31718_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31718_)
						end

						if arg1.interrupted then
							__FUNC_315C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_315C3_)
					end

					if arg1.interrupted then
						__FUNC_31448_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31448_)
				end

				if arg1.interrupted then
					__FUNC_312F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_312F3_)
			end

			if arg1.interrupted then
				__FUNC_31178_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31178_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_31023_(registerVal19, {})
		local function __FUNC_318FB_(arg0, arg1)
			local function __FUNC_31A50_(arg0, arg1)
				local function __FUNC_31BCB_(arg0, arg1)
					local function __FUNC_31D20_(arg0, arg1)
						local function __FUNC_31E9B_(arg0, arg1)
							local function __FUNC_31FF0_(arg0, arg1)
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
								__FUNC_31FF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31FF0_)
						end

						if arg1.interrupted then
							__FUNC_31E9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E9B_)
					end

					if arg1.interrupted then
						__FUNC_31D20_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31D20_)
				end

				if arg1.interrupted then
					__FUNC_31BCB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31BCB_)
			end

			if arg1.interrupted then
				__FUNC_31A50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31A50_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_318FB_(registerVal20, {})
	end

	registerVal28.GainFocus = __FUNC_2F199_
	local function __FUNC_321D3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
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

	registerVal28.Focus = __FUNC_321D3_
	local function __FUNC_324BF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3277C_(arg0, arg1)
			local function __FUNC_328F7_(arg0, arg1)
				local function __FUNC_32A6F_(arg0, arg1)
					local function __FUNC_32BE7_(arg0, arg1)
						local function __FUNC_32D3C_(arg0, arg1)
							local function __FUNC_32EB7_(arg0, arg1)
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
								__FUNC_32EB7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32EB7_)
						end

						if arg1.interrupted then
							__FUNC_32D3C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32D3C_)
					end

					if arg1.interrupted then
						__FUNC_32BE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32BE7_)
				end

				if arg1.interrupted then
					__FUNC_32A6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A6F_)
			end

			if arg1.interrupted then
				__FUNC_328F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_328F7_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3277C_(registerVal16, {})
		local function __FUNC_33069_(arg0, arg1)
			local function __FUNC_331E3_(arg0, arg1)
				local function __FUNC_3335B_(arg0, arg1)
					local function __FUNC_334D3_(arg0, arg1)
						local function __FUNC_33628_(arg0, arg1)
							local function __FUNC_337A3_(arg0, arg1)
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
								__FUNC_337A3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_337A3_)
						end

						if arg1.interrupted then
							__FUNC_33628_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33628_)
					end

					if arg1.interrupted then
						__FUNC_334D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_334D3_)
				end

				if arg1.interrupted then
					__FUNC_3335B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3335B_)
			end

			if arg1.interrupted then
				__FUNC_331E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_331E3_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_33069_(registerVal17, {})
		local function __FUNC_33955_(arg0, arg1)
			local function __FUNC_33AAC_(arg0, arg1)
				local function __FUNC_33C27_(arg0, arg1)
					local function __FUNC_33D9F_(arg0, arg1)
						local function __FUNC_33F17_(arg0, arg1)
							local function __FUNC_3406C_(arg0, arg1)
								local function __FUNC_341E7_(arg0, arg1)
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
									__FUNC_341E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_341E7_)
							end

							if arg1.interrupted then
								__FUNC_3406C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3406C_)
						end

						if arg1.interrupted then
							__FUNC_33F17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F17_)
					end

					if arg1.interrupted then
						__FUNC_33D9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33D9F_)
				end

				if arg1.interrupted then
					__FUNC_33C27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33C27_)
			end

			if arg1.interrupted then
				__FUNC_33AAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33AAC_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_33955_(registerVal18, {})
		local function __FUNC_343C7_(arg0, arg1)
			local function __FUNC_3451C_(arg0, arg1)
				local function __FUNC_34697_(arg0, arg1)
					local function __FUNC_347EC_(arg0, arg1)
						local function __FUNC_34967_(arg0, arg1)
							local function __FUNC_34ABC_(arg0, arg1)
								local function __FUNC_34C37_(arg0, arg1)
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
									__FUNC_34C37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34C37_)
							end

							if arg1.interrupted then
								__FUNC_34ABC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34ABC_)
						end

						if arg1.interrupted then
							__FUNC_34967_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34967_)
					end

					if arg1.interrupted then
						__FUNC_347EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_347EC_)
				end

				if arg1.interrupted then
					__FUNC_34697_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34697_)
			end

			if arg1.interrupted then
				__FUNC_3451C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3451C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_343C7_(registerVal19, {})
		local function __FUNC_34E17_(arg0, arg1)
			local function __FUNC_34F6C_(arg0, arg1)
				local function __FUNC_350E7_(arg0, arg1)
					local function __FUNC_3523C_(arg0, arg1)
						local function __FUNC_353B7_(arg0, arg1)
							local function __FUNC_3550C_(arg0, arg1)
								local function __FUNC_35687_(arg0, arg1)
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
									__FUNC_35687_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35687_)
							end

							if arg1.interrupted then
								__FUNC_3550C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3550C_)
						end

						if arg1.interrupted then
							__FUNC_353B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_353B7_)
					end

					if arg1.interrupted then
						__FUNC_3523C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3523C_)
				end

				if arg1.interrupted then
					__FUNC_350E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350E7_)
			end

			if arg1.interrupted then
				__FUNC_34F6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F6C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_34E17_(registerVal20, {})
	end

	registerVal28.LoseFocus = __FUNC_324BF_
	registerVal27.NoConsumablesRemaining = registerVal28
	registerVal28 = {}
	local function __FUNC_35867_()
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
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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
		registerVal25:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.DefaultClip = __FUNC_35867_
	local function __FUNC_35FF3_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_3644D_(arg0, arg1)
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
		__FUNC_3644D_(registerVal4, {})
		local function __FUNC_36601_(arg0, arg1)
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
		__FUNC_36601_(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_367D8_(arg0, arg1)
			local function __FUNC_36930_(arg0, arg1)
				local function __FUNC_36AAB_(arg0, arg1)
					local function __FUNC_36C23_(arg0, arg1)
						local function __FUNC_36D9B_(arg0, arg1)
							local function __FUNC_36EF0_(arg0, arg1)
								local function __FUNC_3706B_(arg0, arg1)
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
									__FUNC_3706B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3706B_)
							end

							if arg1.interrupted then
								__FUNC_36EF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36EF0_)
						end

						if arg1.interrupted then
							__FUNC_36D9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36D9B_)
					end

					if arg1.interrupted then
						__FUNC_36C23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C23_)
				end

				if arg1.interrupted then
					__FUNC_36AAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36AAB_)
			end

			if arg1.interrupted then
				__FUNC_36930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36930_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_367D8_(registerVal18, {})
		local function __FUNC_37246_(arg0, arg1)
			local function __FUNC_3739C_(arg0, arg1)
				local function __FUNC_37517_(arg0, arg1)
					local function __FUNC_3766C_(arg0, arg1)
						local function __FUNC_377E7_(arg0, arg1)
							local function __FUNC_3793C_(arg0, arg1)
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
								__FUNC_3793C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3793C_)
						end

						if arg1.interrupted then
							__FUNC_377E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377E7_)
					end

					if arg1.interrupted then
						__FUNC_3766C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3766C_)
				end

				if arg1.interrupted then
					__FUNC_37517_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37517_)
			end

			if arg1.interrupted then
				__FUNC_3739C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3739C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_37246_(registerVal19, {})
		local function __FUNC_37B1A_(arg0, arg1)
			local function __FUNC_37C70_(arg0, arg1)
				local function __FUNC_37DEB_(arg0, arg1)
					local function __FUNC_37F40_(arg0, arg1)
						local function __FUNC_380BB_(arg0, arg1)
							local function __FUNC_38210_(arg0, arg1)
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
								__FUNC_38210_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38210_)
						end

						if arg1.interrupted then
							__FUNC_380BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_380BB_)
					end

					if arg1.interrupted then
						__FUNC_37F40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37F40_)
				end

				if arg1.interrupted then
					__FUNC_37DEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37DEB_)
			end

			if arg1.interrupted then
				__FUNC_37C70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C70_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_37B1A_(registerVal20, {})
		local function __FUNC_383EE_(arg0, arg1)
			local function __FUNC_38544_(arg0, arg1)
				local function __FUNC_386BF_(arg0, arg1)
					local function __FUNC_38814_(arg0, arg1)
						local function __FUNC_3898F_(arg0, arg1)
							local function __FUNC_38AE4_(arg0, arg1)
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
								__FUNC_38AE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AE4_)
						end

						if arg1.interrupted then
							__FUNC_3898F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3898F_)
					end

					if arg1.interrupted then
						__FUNC_38814_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38814_)
				end

				if arg1.interrupted then
					__FUNC_386BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_386BF_)
			end

			if arg1.interrupted then
				__FUNC_38544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38544_)
		end

		registerVal25:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_383EE_(registerVal25, {})
		local function __FUNC_38C99_(arg0, arg1)
			local function __FUNC_38DF0_(arg0, arg1)
				local function __FUNC_38F6B_(arg0, arg1)
					local function __FUNC_390C0_(arg0, arg1)
						local function __FUNC_3923B_(arg0, arg1)
							local function __FUNC_39390_(arg0, arg1)
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
								__FUNC_39390_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39390_)
						end

						if arg1.interrupted then
							__FUNC_3923B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3923B_)
					end

					if arg1.interrupted then
						__FUNC_390C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_390C0_)
				end

				if arg1.interrupted then
					__FUNC_38F6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F6B_)
			end

			if arg1.interrupted then
				__FUNC_38DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38DF0_)
		end

		registerVal26:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		__FUNC_38C99_(registerVal26, {})
	end

	registerVal28.GainFocus = __FUNC_35FF3_
	local function __FUNC_39545_()
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
		registerVal25:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal28.Focus = __FUNC_39545_
	local function __FUNC_3999E_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_39DA7_(arg0, arg1)
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
		__FUNC_39DA7_(registerVal4, {})
		local function __FUNC_39F59_(arg0, arg1)
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
		__FUNC_39F59_(registerVal8, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_3A10D_(arg0, arg1)
			local function __FUNC_3A264_(arg0, arg1)
				local function __FUNC_3A3DF_(arg0, arg1)
					local function __FUNC_3A557_(arg0, arg1)
						local function __FUNC_3A6CF_(arg0, arg1)
							local function __FUNC_3A824_(arg0, arg1)
								local function __FUNC_3A99F_(arg0, arg1)
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
									__FUNC_3A99F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A99F_)
							end

							if arg1.interrupted then
								__FUNC_3A824_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A824_)
						end

						if arg1.interrupted then
							__FUNC_3A6CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A6CF_)
					end

					if arg1.interrupted then
						__FUNC_3A557_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A557_)
				end

				if arg1.interrupted then
					__FUNC_3A3DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A3DF_)
			end

			if arg1.interrupted then
				__FUNC_3A264_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A264_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3A10D_(registerVal18, {})
		local function __FUNC_3AB51_(arg0, arg1)
			local function __FUNC_3ACA8_(arg0, arg1)
				local function __FUNC_3AE23_(arg0, arg1)
					local function __FUNC_3AF78_(arg0, arg1)
						local function __FUNC_3B0F3_(arg0, arg1)
							local function __FUNC_3B248_(arg0, arg1)
								local function __FUNC_3B3C3_(arg0, arg1)
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
									__FUNC_3B3C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B3C3_)
							end

							if arg1.interrupted then
								__FUNC_3B248_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B248_)
						end

						if arg1.interrupted then
							__FUNC_3B0F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B0F3_)
					end

					if arg1.interrupted then
						__FUNC_3AF78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF78_)
				end

				if arg1.interrupted then
					__FUNC_3AE23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE23_)
			end

			if arg1.interrupted then
				__FUNC_3ACA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ACA8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3AB51_(registerVal19, {})
		local function __FUNC_3B59E_(arg0, arg1)
			local function __FUNC_3B6F4_(arg0, arg1)
				local function __FUNC_3B86F_(arg0, arg1)
					local function __FUNC_3B9C4_(arg0, arg1)
						local function __FUNC_3BB3F_(arg0, arg1)
							local function __FUNC_3BC94_(arg0, arg1)
								local function __FUNC_3BE0F_(arg0, arg1)
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
									__FUNC_3BE0F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BE0F_)
							end

							if arg1.interrupted then
								__FUNC_3BC94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC94_)
						end

						if arg1.interrupted then
							__FUNC_3BB3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB3F_)
					end

					if arg1.interrupted then
						__FUNC_3B9C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B9C4_)
				end

				if arg1.interrupted then
					__FUNC_3B86F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B86F_)
			end

			if arg1.interrupted then
				__FUNC_3B6F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B6F4_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_3B59E_(registerVal20, {})
		local function __FUNC_3BFEA_(arg0, arg1)
			local function __FUNC_3C163_(arg0, arg1)
				local function __FUNC_3C2DB_(arg0, arg1)
					local function __FUNC_3C453_(arg0, arg1)
						local function __FUNC_3C5A8_(arg0, arg1)
							local function __FUNC_3C723_(arg0, arg1)
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
								__FUNC_3C723_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C723_)
						end

						if arg1.interrupted then
							__FUNC_3C5A8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C5A8_)
					end

					if arg1.interrupted then
						__FUNC_3C453_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C453_)
				end

				if arg1.interrupted then
					__FUNC_3C2DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C2DB_)
			end

			if arg1.interrupted then
				__FUNC_3C163_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C163_)
		end

		registerVal25:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_3BFEA_(registerVal25, {})
		local function __FUNC_3C8D5_(arg0, arg1)
			local function __FUNC_3CA4F_(arg0, arg1)
				local function __FUNC_3CBC7_(arg0, arg1)
					local function __FUNC_3CD3F_(arg0, arg1)
						local function __FUNC_3CE94_(arg0, arg1)
							local function __FUNC_3D00F_(arg0, arg1)
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
								__FUNC_3D00F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D00F_)
						end

						if arg1.interrupted then
							__FUNC_3CE94_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE94_)
					end

					if arg1.interrupted then
						__FUNC_3CD3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CD3F_)
				end

				if arg1.interrupted then
					__FUNC_3CBC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CBC7_)
			end

			if arg1.interrupted then
				__FUNC_3CA4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CA4F_)
		end

		registerVal26:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		__FUNC_3C8D5_(registerVal26, {})
	end

	registerVal28.LoseFocus = __FUNC_3999E_
	registerVal27.Invalid = registerVal28
	registerVal2.clipsPerState = registerVal27
	registerVal29 = {}
	local registerVal30 = {}
	registerVal30.stateName = "Equipped"
	local function __FUNC_3D1C1_(arg0, arg2, arg3)
		return IsCACItemEquipped(arg0, arg2, arg1)
	end

	registerVal30.condition = __FUNC_3D1C1_
	local registerVal31 = {}
	registerVal31.stateName = "New"
	local function __FUNC_3D21F_(arg0, arg2, arg3)
		return IsCACItemNew(arg2, arg1)
	end

	registerVal31.condition = __FUNC_3D21F_
	local registerVal32 = {}
	registerVal32.stateName = "Locked"
	local function __FUNC_3D272_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal32.condition = __FUNC_3D272_
	local registerVal33 = {}
	registerVal33.stateName = "NotAvailable"
	local function __FUNC_3D2CD_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal33.condition = __FUNC_3D2CD_
	local registerVal34 = {}
	registerVal34.stateName = "MutuallyExclusive"
	local function __FUNC_3D32C_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal34.condition = __FUNC_3D32C_
	local registerVal35 = {}
	registerVal35.stateName = "NoConsumablesRemaining"
	local function __FUNC_3D39D_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal35.condition = __FUNC_3D39D_
	local registerVal36 = {}
	registerVal36.stateName = "Invalid"
	local function __FUNC_3D411_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal36.condition = __FUNC_3D411_
	registerVal29 = {registerVal30, registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36}
	registerVal2:mergeStateConditions(registerVal29)
	local function __FUNC_3D45D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_3D45D_)
	local function __FUNC_3D57B_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.GridItemBGBGlow:close()
		arg0.tokenUnlock:close()
		arg0.LabelButton:close()
		arg0.LabelButton0:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.ConsumableLabel:close()
		arg0.HeaderLabel:close()
		arg0.RestrictedItemWarning:close()
		arg0.GridItemUpgradeIconWidget:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3D57B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

