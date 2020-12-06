-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CPSystems.TacticalMode.GridItemUpgradeIconTacticalRig")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemTacticalRig = registerVal1
function CoD.GridItemTacticalRig.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemTacticalRig)
	registerVal2.id = "GridItemTacticalRig"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, -215.000000)
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
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_2A0B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_2A0B_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, -215.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setupUIStreamedImage(0.000000)
	local function __FUNC_2ABC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_2ABC_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImage = registerVal7
	local registerVal8 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -26.000000, 2.000000)
	registerVal8:setTopBottom(true, false, -2.000000, 26.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_2B70_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if not registerVal3 then
			registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_2B70_
	local registerVal13 = {}
	registerVal13.stateName = "VisibleCP"
	local function __FUNC_2C07_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = ShouldShowTokenIconOnItem(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_2C07_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.lobbyNav")
	local function __FUNC_2C8F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2C8F_)
	local function __FUNC_2DB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_2DB4_)
	registerVal2:addElement(registerVal8)
	registerVal2.tokenUnlock = registerVal8
	local registerVal9 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 74.000000, 178.000000)
	registerVal9:setTopBottom(false, true, -42.000000, -22.000000)
	registerVal9:setAlpha(0.600000)
	local function __FUNC_2ED3_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_2ED3_)
	local function __FUNC_2F22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.itemName:setText(Engine.Localize(AppendStringIfRefExists("_SHORT", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_2F22_)
	registerVal2:addElement(registerVal9)
	registerVal2.LabelButton = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -81.000000, -67.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal10:setRGB(0.560000, 0.680000, 0.270000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.equippedIcon = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -83.000000, -69.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal11:setRGB(1.000000, 0.410000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.alertIcon = registerVal11
	registerVal12 = CoD.cac_lock.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -126.000000, -96.000000)
	registerVal12:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal12:setAlpha(0.800000)
	registerVal2:addElement(registerVal12)
	registerVal2.lockedIcon = registerVal12
	registerVal13 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal13:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.IconNew = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarB = registerVal15
	local registerVal16 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal16:setRGB(1.000000, 0.300000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBorder = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal17:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal17:setRGB(1.000000, 0.090000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.glitch = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal18:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal18:setRGB(1.000000, 0.150000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.glitch2 = registerVal18
	local registerVal19 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 3.000000, 25.000000)
	registerVal19:setTopBottom(true, false, 5.000000, 23.000000)
	registerVal19.ComsumableCountLabel:setText(Engine.Localize("0"))
	local function __FUNC_3035_(arg0)
		registerVal19:setModel(arg0, arg1)
	end

	registerVal19:linkToElementModel(registerVal2, nil, false, __FUNC_3035_)
	registerVal2:addElement(registerVal19)
	registerVal2.ConsumableLabel = registerVal19
	local registerVal20 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal20:setTopBottom(false, true, -104.250000, -84.250000)
	registerVal20:setAlpha(0.000000)
	local function __FUNC_3086_(arg0)
		registerVal20:setModel(arg0, arg1)
	end

	registerVal20:linkToElementModel(registerVal2, nil, false, __FUNC_3086_)
	local function __FUNC_30D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "headerName", true, __FUNC_30D6_)
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Hidden"
	local function __FUNC_31AC_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "headerName")
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_31AC_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	local function __FUNC_3230_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "headerName"
		arg0:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:linkToElementModel(registerVal20, "headerName", true, __FUNC_3230_)
	registerVal2:addElement(registerVal20)
	registerVal2.HeaderLabel = registerVal20
	local registerVal21 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -1.000000, 109.000000)
	registerVal21:setTopBottom(true, false, 0.000000, 95.000000)
	local function __FUNC_3350_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_3350_)
	registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Visible"
	local function __FUNC_33A2_(arg0, arg2, arg3)
		local registerVal3 = ItemIsBanned(arg0, arg2, arg1)
		registerVal3 = PregameActive()
		if registerVal3 and registerVal3 then
			registerVal3 = ItemRestrictionVoteActive()
		end
		return (not registerVal3)
	end

	registerVal25.condition = __FUNC_33A2_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.Pregame.Update")
	local function __FUNC_3458_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_3458_)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.Pregame.state")
	local function __FUNC_3586_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_3586_)
	registerVal2:addElement(registerVal21)
	registerVal2.RestrictedItemWarning = registerVal21
	local registerVal22 = CoD.GridItemUpgradeIconTacticalRig.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 216.000000, 280.000000)
	registerVal22:setTopBottom(true, false, 0.500000, 64.500000)
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Upgradable"
	local function __FUNC_36B1_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgradable(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal26.condition = __FUNC_36B1_
	local registerVal27 = {}
	registerVal27.stateName = "Upgraded"
	local function __FUNC_3735_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemUpgraded(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal27.condition = __FUNC_3735_
	registerVal25 = {registerVal26, registerVal27}
	registerVal22:mergeStateConditions(registerVal25)
	local function __FUNC_37B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:linkToElementModel(registerVal22, "itemIndex", true, __FUNC_37B7_)
	registerVal26 = Engine.GetGlobalModel()
	registerVal25 = Engine.GetModel(registerVal26, "lobbyRoot.lobbyNav")
	local function __FUNC_38D3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:subscribeToModel(registerVal25, __FUNC_38D3_)
	registerVal2:addElement(registerVal22)
	registerVal2.GridItemUpgradeIconTacticalRig = registerVal22
	registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 213.000000, 217.000000)
	registerVal23:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal23:setAlpha(0.300000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.itemImageLine = registerVal23
	registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 64.000000, 68.000000)
	registerVal24:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal24:setAlpha(0.300000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.itemImageLine1 = registerVal24
	registerVal25 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal25:setLeftRight(false, true, -94.000000, -66.000000)
	registerVal25:setTopBottom(true, false, -2.000000, 26.000000)
	registerVal25:setAlpha(0.000000)
	local registerVal28 = {}
	local registerVal29 = {}
	registerVal29.stateName = "Visible"
	local function __FUNC_39F8_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		registerVal3 = IsCACItemPurchased(arg2, arg1)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
		else
		end
		return true
	end

	registerVal29.condition = __FUNC_39F8_
	local registerVal30 = {}
	registerVal30.stateName = "VisibleCP"
	local function __FUNC_3AF6_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
			registerVal3 = IsCACItemPurchased(arg2, arg1)
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
			else
			end
		end
		return true
	end

	registerVal30.condition = __FUNC_3AF6_
	registerVal28 = {registerVal29, registerVal30}
	registerVal25:mergeStateConditions(registerVal28)
	registerVal29 = Engine.GetGlobalModel()
	registerVal28 = Engine.GetModel(registerVal29, "lobbyRoot.lobbyNav")
	local function __FUNC_3BF2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal25, registerVal4)
	end

	registerVal25:subscribeToModel(registerVal28, __FUNC_3BF2_)
	local function __FUNC_3D18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal25, registerVal4)
	end

	registerVal25:linkToElementModel(registerVal25, "itemIndex", true, __FUNC_3D18_)
	registerVal2:addElement(registerVal25)
	registerVal2.tokenUnlockable = registerVal25
	registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal26:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal26:setRGB(0.560000, 0.680000, 0.270000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal26)
	registerVal2.equippedIconFully = registerVal26
	registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, true, 215.000000, 0.000000)
	registerVal27:setTopBottom(true, true, -0.250000, -0.250000)
	registerVal27:setAlpha(0.250000)
	registerVal27:setImage(RegisterImage("uie_t7_cac_cp_upgrade0_icon"))
	registerVal2:addElement(registerVal27)
	registerVal2.UpgradableIconLock = registerVal27
	registerVal28 = {}
	registerVal29 = {}
	local function __FUNC_3E37_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_4616_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		__FUNC_4616_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_3E37_
	local function __FUNC_47C9_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_4C6A_(arg0, arg1)
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
		__FUNC_4C6A_(registerVal4, {})
		local function __FUNC_4E1D_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_4E1D_(registerVal7, {})
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_4FEF_(arg0, arg1)
			local function __FUNC_5144_(arg0, arg1)
				local function __FUNC_52BF_(arg0, arg1)
					local function __FUNC_5414_(arg0, arg1)
						local function __FUNC_558F_(arg0, arg1)
							local function __FUNC_56E4_(arg0, arg1)
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
								__FUNC_56E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56E4_)
						end

						if arg1.interrupted then
							__FUNC_558F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_558F_)
					end

					if arg1.interrupted then
						__FUNC_5414_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5414_)
				end

				if arg1.interrupted then
					__FUNC_52BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52BF_)
			end

			if arg1.interrupted then
				__FUNC_5144_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5144_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_4FEF_(registerVal14, {})
		local function __FUNC_5899_(arg0, arg1)
			local function __FUNC_59F0_(arg0, arg1)
				local function __FUNC_5B6B_(arg0, arg1)
					local function __FUNC_5CC0_(arg0, arg1)
						local function __FUNC_5E3B_(arg0, arg1)
							local function __FUNC_5F90_(arg0, arg1)
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
								__FUNC_5F90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F90_)
						end

						if arg1.interrupted then
							__FUNC_5E3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E3B_)
					end

					if arg1.interrupted then
						__FUNC_5CC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CC0_)
				end

				if arg1.interrupted then
					__FUNC_5B6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B6B_)
			end

			if arg1.interrupted then
				__FUNC_59F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59F0_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_5899_(registerVal15, {})
		local function __FUNC_6145_(arg0, arg1)
			local function __FUNC_629C_(arg0, arg1)
				local function __FUNC_6417_(arg0, arg1)
					local function __FUNC_658F_(arg0, arg1)
						local function __FUNC_6707_(arg0, arg1)
							local function __FUNC_685C_(arg0, arg1)
								local function __FUNC_69D7_(arg0, arg1)
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
									__FUNC_69D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69D7_)
							end

							if arg1.interrupted then
								__FUNC_685C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_685C_)
						end

						if arg1.interrupted then
							__FUNC_6707_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6707_)
					end

					if arg1.interrupted then
						__FUNC_658F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_658F_)
				end

				if arg1.interrupted then
					__FUNC_6417_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6417_)
			end

			if arg1.interrupted then
				__FUNC_629C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_629C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6145_(registerVal16, {})
		local function __FUNC_6B89_(arg0, arg1)
			local function __FUNC_6CE0_(arg0, arg1)
				local function __FUNC_6E5B_(arg0, arg1)
					local function __FUNC_6FB0_(arg0, arg1)
						local function __FUNC_712B_(arg0, arg1)
							local function __FUNC_7280_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7280_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7280_)
						end

						if arg1.interrupted then
							__FUNC_712B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_712B_)
					end

					if arg1.interrupted then
						__FUNC_6FB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FB0_)
				end

				if arg1.interrupted then
					__FUNC_6E5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E5B_)
			end

			if arg1.interrupted then
				__FUNC_6CE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CE0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_6B89_(registerVal17, {})
		local function __FUNC_7435_(arg0, arg1)
			local function __FUNC_758C_(arg0, arg1)
				local function __FUNC_7707_(arg0, arg1)
					local function __FUNC_785C_(arg0, arg1)
						local function __FUNC_79D7_(arg0, arg1)
							local function __FUNC_7B2C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7B2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B2C_)
						end

						if arg1.interrupted then
							__FUNC_79D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79D7_)
					end

					if arg1.interrupted then
						__FUNC_785C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_785C_)
				end

				if arg1.interrupted then
					__FUNC_7707_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7707_)
			end

			if arg1.interrupted then
				__FUNC_758C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_758C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_7435_(registerVal18, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal29.GainFocus = __FUNC_47C9_
	local function __FUNC_7CE1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_7CE1_
	local function __FUNC_8013_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_8365_(arg0, arg1)
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
		__FUNC_8365_(registerVal4, {})
		local function __FUNC_8519_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_8519_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_86CD_(arg0, arg1)
			local function __FUNC_8847_(arg0, arg1)
				local function __FUNC_89BF_(arg0, arg1)
					local function __FUNC_8B37_(arg0, arg1)
						local function __FUNC_8C8C_(arg0, arg1)
							local function __FUNC_8E07_(arg0, arg1)
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
								__FUNC_8E07_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E07_)
						end

						if arg1.interrupted then
							__FUNC_8C8C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C8C_)
					end

					if arg1.interrupted then
						__FUNC_8B37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B37_)
				end

				if arg1.interrupted then
					__FUNC_89BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89BF_)
			end

			if arg1.interrupted then
				__FUNC_8847_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8847_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_86CD_(registerVal14, {})
		local function __FUNC_8FB9_(arg0, arg1)
			local function __FUNC_9133_(arg0, arg1)
				local function __FUNC_92AB_(arg0, arg1)
					local function __FUNC_9423_(arg0, arg1)
						local function __FUNC_9578_(arg0, arg1)
							local function __FUNC_96F3_(arg0, arg1)
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
								__FUNC_96F3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96F3_)
						end

						if arg1.interrupted then
							__FUNC_9578_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9578_)
					end

					if arg1.interrupted then
						__FUNC_9423_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9423_)
				end

				if arg1.interrupted then
					__FUNC_92AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92AB_)
			end

			if arg1.interrupted then
				__FUNC_9133_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9133_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_8FB9_(registerVal15, {})
		local function __FUNC_98A5_(arg0, arg1)
			local function __FUNC_99FC_(arg0, arg1)
				local function __FUNC_9B77_(arg0, arg1)
					local function __FUNC_9CEF_(arg0, arg1)
						local function __FUNC_9E67_(arg0, arg1)
							local function __FUNC_9FBC_(arg0, arg1)
								local function __FUNC_A137_(arg0, arg1)
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
									__FUNC_A137_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A137_)
							end

							if arg1.interrupted then
								__FUNC_9FBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FBC_)
						end

						if arg1.interrupted then
							__FUNC_9E67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E67_)
					end

					if arg1.interrupted then
						__FUNC_9CEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CEF_)
				end

				if arg1.interrupted then
					__FUNC_9B77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B77_)
			end

			if arg1.interrupted then
				__FUNC_99FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99FC_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_98A5_(registerVal16, {})
		local function __FUNC_A2E9_(arg0, arg1)
			local function __FUNC_A440_(arg0, arg1)
				local function __FUNC_A5BB_(arg0, arg1)
					local function __FUNC_A710_(arg0, arg1)
						local function __FUNC_A88B_(arg0, arg1)
							local function __FUNC_A9E0_(arg0, arg1)
								local function __FUNC_AB5B_(arg0, arg1)
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
									__FUNC_AB5B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB5B_)
							end

							if arg1.interrupted then
								__FUNC_A9E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9E0_)
						end

						if arg1.interrupted then
							__FUNC_A88B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A88B_)
					end

					if arg1.interrupted then
						__FUNC_A710_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A710_)
				end

				if arg1.interrupted then
					__FUNC_A5BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5BB_)
			end

			if arg1.interrupted then
				__FUNC_A440_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A440_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_A2E9_(registerVal17, {})
		local function __FUNC_AD0D_(arg0, arg1)
			local function __FUNC_AE64_(arg0, arg1)
				local function __FUNC_AFDF_(arg0, arg1)
					local function __FUNC_B134_(arg0, arg1)
						local function __FUNC_B2AF_(arg0, arg1)
							local function __FUNC_B404_(arg0, arg1)
								local function __FUNC_B57F_(arg0, arg1)
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
									__FUNC_B57F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B57F_)
							end

							if arg1.interrupted then
								__FUNC_B404_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B404_)
						end

						if arg1.interrupted then
							__FUNC_B2AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2AF_)
					end

					if arg1.interrupted then
						__FUNC_B134_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B134_)
				end

				if arg1.interrupted then
					__FUNC_AFDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFDF_)
			end

			if arg1.interrupted then
				__FUNC_AE64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE64_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_AD0D_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_8013_
	registerVal28.DefaultState = registerVal29
	registerVal29 = {}
	local function __FUNC_B731_()
		registerVal2:setupElementClipCounter(19.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.250000)
		registerVal2.UpgradableIconLock:setScale(0.800000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_B731_
	local function __FUNC_BEF3_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_C2A3_(arg0, arg1)
			local function __FUNC_C3F8_(arg0, arg1)
				local function __FUNC_C573_(arg0, arg1)
					local function __FUNC_C6C8_(arg0, arg1)
						local function __FUNC_C843_(arg0, arg1)
							local function __FUNC_C998_(arg0, arg1)
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
								__FUNC_C998_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C998_)
						end

						if arg1.interrupted then
							__FUNC_C843_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C843_)
					end

					if arg1.interrupted then
						__FUNC_C6C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6C8_)
				end

				if arg1.interrupted then
					__FUNC_C573_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C573_)
			end

			if arg1.interrupted then
				__FUNC_C3F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3F8_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C2A3_(registerVal14, {})
		local function __FUNC_CB4D_(arg0, arg1)
			local function __FUNC_CCA4_(arg0, arg1)
				local function __FUNC_CE1F_(arg0, arg1)
					local function __FUNC_CF74_(arg0, arg1)
						local function __FUNC_D0EF_(arg0, arg1)
							local function __FUNC_D244_(arg0, arg1)
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
								__FUNC_D244_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D244_)
						end

						if arg1.interrupted then
							__FUNC_D0EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0EF_)
					end

					if arg1.interrupted then
						__FUNC_CF74_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF74_)
				end

				if arg1.interrupted then
					__FUNC_CE1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE1F_)
			end

			if arg1.interrupted then
				__FUNC_CCA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCA4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_CB4D_(registerVal15, {})
		local function __FUNC_D3F9_(arg0, arg1)
			local function __FUNC_D550_(arg0, arg1)
				local function __FUNC_D6CB_(arg0, arg1)
					local function __FUNC_D843_(arg0, arg1)
						local function __FUNC_D9BB_(arg0, arg1)
							local function __FUNC_DB10_(arg0, arg1)
								local function __FUNC_DC8B_(arg0, arg1)
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
									__FUNC_DC8B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC8B_)
							end

							if arg1.interrupted then
								__FUNC_DB10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB10_)
						end

						if arg1.interrupted then
							__FUNC_D9BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9BB_)
					end

					if arg1.interrupted then
						__FUNC_D843_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D843_)
				end

				if arg1.interrupted then
					__FUNC_D6CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6CB_)
			end

			if arg1.interrupted then
				__FUNC_D550_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D550_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_D3F9_(registerVal16, {})
		local function __FUNC_DE3D_(arg0, arg1)
			local function __FUNC_DF94_(arg0, arg1)
				local function __FUNC_E10F_(arg0, arg1)
					local function __FUNC_E264_(arg0, arg1)
						local function __FUNC_E3DF_(arg0, arg1)
							local function __FUNC_E534_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_E534_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E534_)
						end

						if arg1.interrupted then
							__FUNC_E3DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3DF_)
					end

					if arg1.interrupted then
						__FUNC_E264_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E264_)
				end

				if arg1.interrupted then
					__FUNC_E10F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E10F_)
			end

			if arg1.interrupted then
				__FUNC_DF94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF94_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_DE3D_(registerVal17, {})
		local function __FUNC_E6E9_(arg0, arg1)
			local function __FUNC_E840_(arg0, arg1)
				local function __FUNC_E9BB_(arg0, arg1)
					local function __FUNC_EB10_(arg0, arg1)
						local function __FUNC_EC8B_(arg0, arg1)
							local function __FUNC_EDE0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EDE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDE0_)
						end

						if arg1.interrupted then
							__FUNC_EC8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC8B_)
					end

					if arg1.interrupted then
						__FUNC_EB10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB10_)
				end

				if arg1.interrupted then
					__FUNC_E9BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9BB_)
			end

			if arg1.interrupted then
				__FUNC_E840_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E840_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_E6E9_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.GainFocus = __FUNC_BEF3_
	local function __FUNC_EF95_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.Focus = __FUNC_EF95_
	local function __FUNC_F1A7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_F557_(arg0, arg1)
			local function __FUNC_F6CF_(arg0, arg1)
				local function __FUNC_F847_(arg0, arg1)
					local function __FUNC_F9BF_(arg0, arg1)
						local function __FUNC_FB14_(arg0, arg1)
							local function __FUNC_FC8F_(arg0, arg1)
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
								__FUNC_FC8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC8F_)
						end

						if arg1.interrupted then
							__FUNC_FB14_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB14_)
					end

					if arg1.interrupted then
						__FUNC_F9BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9BF_)
				end

				if arg1.interrupted then
					__FUNC_F847_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F847_)
			end

			if arg1.interrupted then
				__FUNC_F6CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6CF_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_F557_(registerVal14, {})
		local function __FUNC_FE41_(arg0, arg1)
			local function __FUNC_FFBB_(arg0, arg1)
				local function __FUNC_10133_(arg0, arg1)
					local function __FUNC_102AB_(arg0, arg1)
						local function __FUNC_10400_(arg0, arg1)
							local function __FUNC_1057B_(arg0, arg1)
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
								__FUNC_1057B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1057B_)
						end

						if arg1.interrupted then
							__FUNC_10400_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10400_)
					end

					if arg1.interrupted then
						__FUNC_102AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102AB_)
				end

				if arg1.interrupted then
					__FUNC_10133_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10133_)
			end

			if arg1.interrupted then
				__FUNC_FFBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFBB_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_FE41_(registerVal15, {})
		local function __FUNC_1072D_(arg0, arg1)
			local function __FUNC_10884_(arg0, arg1)
				local function __FUNC_109FF_(arg0, arg1)
					local function __FUNC_10B77_(arg0, arg1)
						local function __FUNC_10CEF_(arg0, arg1)
							local function __FUNC_10E44_(arg0, arg1)
								local function __FUNC_10FBF_(arg0, arg1)
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
									__FUNC_10FBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10FBF_)
							end

							if arg1.interrupted then
								__FUNC_10E44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E44_)
						end

						if arg1.interrupted then
							__FUNC_10CEF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CEF_)
					end

					if arg1.interrupted then
						__FUNC_10B77_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B77_)
				end

				if arg1.interrupted then
					__FUNC_109FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109FF_)
			end

			if arg1.interrupted then
				__FUNC_10884_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10884_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1072D_(registerVal16, {})
		local function __FUNC_11171_(arg0, arg1)
			local function __FUNC_112C8_(arg0, arg1)
				local function __FUNC_11443_(arg0, arg1)
					local function __FUNC_11598_(arg0, arg1)
						local function __FUNC_11713_(arg0, arg1)
							local function __FUNC_11868_(arg0, arg1)
								local function __FUNC_119E3_(arg0, arg1)
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
									__FUNC_119E3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119E3_)
							end

							if arg1.interrupted then
								__FUNC_11868_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11868_)
						end

						if arg1.interrupted then
							__FUNC_11713_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11713_)
					end

					if arg1.interrupted then
						__FUNC_11598_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11598_)
				end

				if arg1.interrupted then
					__FUNC_11443_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11443_)
			end

			if arg1.interrupted then
				__FUNC_112C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_112C8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_11171_(registerVal17, {})
		local function __FUNC_11B95_(arg0, arg1)
			local function __FUNC_11CEC_(arg0, arg1)
				local function __FUNC_11E67_(arg0, arg1)
					local function __FUNC_11FBC_(arg0, arg1)
						local function __FUNC_12137_(arg0, arg1)
							local function __FUNC_1228C_(arg0, arg1)
								local function __FUNC_12407_(arg0, arg1)
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
									__FUNC_12407_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12407_)
							end

							if arg1.interrupted then
								__FUNC_1228C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1228C_)
						end

						if arg1.interrupted then
							__FUNC_12137_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12137_)
					end

					if arg1.interrupted then
						__FUNC_11FBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FBC_)
				end

				if arg1.interrupted then
					__FUNC_11E67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E67_)
			end

			if arg1.interrupted then
				__FUNC_11CEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CEC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_11B95_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.LoseFocus = __FUNC_F1A7_
	registerVal28.ItemBanned = registerVal29
	registerVal29 = {}
	local function __FUNC_125B9_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setLeftRight(false, true, -83.000000, -69.000000)
		registerVal2.equippedIcon:setTopBottom(true, false, 2.000000, 16.000000)
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal2.equippedIconFully:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_125B9_
	local function __FUNC_12DDD_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_13137_(arg0, arg1)
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
		__FUNC_13137_(registerVal4, {})
		local function __FUNC_132E9_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_132E9_(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_1349D_(arg0, arg1)
			local function __FUNC_135F4_(arg0, arg1)
				local function __FUNC_1376F_(arg0, arg1)
					local function __FUNC_138C4_(arg0, arg1)
						local function __FUNC_13A3F_(arg0, arg1)
							local function __FUNC_13B94_(arg0, arg1)
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
								__FUNC_13B94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B94_)
						end

						if arg1.interrupted then
							__FUNC_13A3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A3F_)
					end

					if arg1.interrupted then
						__FUNC_138C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138C4_)
				end

				if arg1.interrupted then
					__FUNC_1376F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1376F_)
			end

			if arg1.interrupted then
				__FUNC_135F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135F4_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1349D_(registerVal14, {})
		local function __FUNC_13D49_(arg0, arg1)
			local function __FUNC_13EA0_(arg0, arg1)
				local function __FUNC_1401B_(arg0, arg1)
					local function __FUNC_14170_(arg0, arg1)
						local function __FUNC_142EB_(arg0, arg1)
							local function __FUNC_14440_(arg0, arg1)
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
								__FUNC_14440_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14440_)
						end

						if arg1.interrupted then
							__FUNC_142EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142EB_)
					end

					if arg1.interrupted then
						__FUNC_14170_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14170_)
				end

				if arg1.interrupted then
					__FUNC_1401B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1401B_)
			end

			if arg1.interrupted then
				__FUNC_13EA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EA0_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_13D49_(registerVal15, {})
		local function __FUNC_145F5_(arg0, arg1)
			local function __FUNC_1474C_(arg0, arg1)
				local function __FUNC_148C7_(arg0, arg1)
					local function __FUNC_14A3F_(arg0, arg1)
						local function __FUNC_14BB7_(arg0, arg1)
							local function __FUNC_14D0C_(arg0, arg1)
								local function __FUNC_14E87_(arg0, arg1)
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
									__FUNC_14E87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E87_)
							end

							if arg1.interrupted then
								__FUNC_14D0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D0C_)
						end

						if arg1.interrupted then
							__FUNC_14BB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BB7_)
					end

					if arg1.interrupted then
						__FUNC_14A3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A3F_)
				end

				if arg1.interrupted then
					__FUNC_148C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148C7_)
			end

			if arg1.interrupted then
				__FUNC_1474C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1474C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_145F5_(registerVal16, {})
		local function __FUNC_15039_(arg0, arg1)
			local function __FUNC_15190_(arg0, arg1)
				local function __FUNC_1530B_(arg0, arg1)
					local function __FUNC_15460_(arg0, arg1)
						local function __FUNC_155DB_(arg0, arg1)
							local function __FUNC_15730_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_15730_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15730_)
						end

						if arg1.interrupted then
							__FUNC_155DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155DB_)
					end

					if arg1.interrupted then
						__FUNC_15460_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15460_)
				end

				if arg1.interrupted then
					__FUNC_1530B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1530B_)
			end

			if arg1.interrupted then
				__FUNC_15190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15190_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_15039_(registerVal17, {})
		local function __FUNC_158E5_(arg0, arg1)
			local function __FUNC_15A3C_(arg0, arg1)
				local function __FUNC_15BB7_(arg0, arg1)
					local function __FUNC_15D0C_(arg0, arg1)
						local function __FUNC_15E87_(arg0, arg1)
							local function __FUNC_15FDC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_15FDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FDC_)
						end

						if arg1.interrupted then
							__FUNC_15E87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E87_)
					end

					if arg1.interrupted then
						__FUNC_15D0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D0C_)
				end

				if arg1.interrupted then
					__FUNC_15BB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BB7_)
			end

			if arg1.interrupted then
				__FUNC_15A3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A3C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_158E5_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_12DDD_
	local function __FUNC_16191_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_16191_
	local function __FUNC_16455_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_167AA_(arg0, arg1)
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
		__FUNC_167AA_(registerVal4, {})
		local function __FUNC_1695D_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_1695D_(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_16B11_(arg0, arg1)
			local function __FUNC_16C8B_(arg0, arg1)
				local function __FUNC_16E03_(arg0, arg1)
					local function __FUNC_16F7B_(arg0, arg1)
						local function __FUNC_170D0_(arg0, arg1)
							local function __FUNC_1724B_(arg0, arg1)
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
								__FUNC_1724B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1724B_)
						end

						if arg1.interrupted then
							__FUNC_170D0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_170D0_)
					end

					if arg1.interrupted then
						__FUNC_16F7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F7B_)
				end

				if arg1.interrupted then
					__FUNC_16E03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E03_)
			end

			if arg1.interrupted then
				__FUNC_16C8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C8B_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_16B11_(registerVal14, {})
		local function __FUNC_173FD_(arg0, arg1)
			local function __FUNC_17577_(arg0, arg1)
				local function __FUNC_176EF_(arg0, arg1)
					local function __FUNC_17867_(arg0, arg1)
						local function __FUNC_179BC_(arg0, arg1)
							local function __FUNC_17B37_(arg0, arg1)
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
								__FUNC_17B37_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B37_)
						end

						if arg1.interrupted then
							__FUNC_179BC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179BC_)
					end

					if arg1.interrupted then
						__FUNC_17867_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17867_)
				end

				if arg1.interrupted then
					__FUNC_176EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176EF_)
			end

			if arg1.interrupted then
				__FUNC_17577_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17577_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_173FD_(registerVal15, {})
		local function __FUNC_17CE9_(arg0, arg1)
			local function __FUNC_17E40_(arg0, arg1)
				local function __FUNC_17FBB_(arg0, arg1)
					local function __FUNC_18133_(arg0, arg1)
						local function __FUNC_182AB_(arg0, arg1)
							local function __FUNC_18400_(arg0, arg1)
								local function __FUNC_1857B_(arg0, arg1)
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
									__FUNC_1857B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1857B_)
							end

							if arg1.interrupted then
								__FUNC_18400_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18400_)
						end

						if arg1.interrupted then
							__FUNC_182AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182AB_)
					end

					if arg1.interrupted then
						__FUNC_18133_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18133_)
				end

				if arg1.interrupted then
					__FUNC_17FBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FBB_)
			end

			if arg1.interrupted then
				__FUNC_17E40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E40_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_17CE9_(registerVal16, {})
		local function __FUNC_1872D_(arg0, arg1)
			local function __FUNC_18884_(arg0, arg1)
				local function __FUNC_189FF_(arg0, arg1)
					local function __FUNC_18B54_(arg0, arg1)
						local function __FUNC_18CCF_(arg0, arg1)
							local function __FUNC_18E24_(arg0, arg1)
								local function __FUNC_18F9F_(arg0, arg1)
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
									__FUNC_18F9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F9F_)
							end

							if arg1.interrupted then
								__FUNC_18E24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E24_)
						end

						if arg1.interrupted then
							__FUNC_18CCF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CCF_)
					end

					if arg1.interrupted then
						__FUNC_18B54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B54_)
				end

				if arg1.interrupted then
					__FUNC_189FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189FF_)
			end

			if arg1.interrupted then
				__FUNC_18884_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18884_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1872D_(registerVal17, {})
		local function __FUNC_19151_(arg0, arg1)
			local function __FUNC_192A8_(arg0, arg1)
				local function __FUNC_19423_(arg0, arg1)
					local function __FUNC_19578_(arg0, arg1)
						local function __FUNC_196F3_(arg0, arg1)
							local function __FUNC_19848_(arg0, arg1)
								local function __FUNC_199C3_(arg0, arg1)
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
									__FUNC_199C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199C3_)
							end

							if arg1.interrupted then
								__FUNC_19848_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19848_)
						end

						if arg1.interrupted then
							__FUNC_196F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196F3_)
					end

					if arg1.interrupted then
						__FUNC_19578_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19578_)
				end

				if arg1.interrupted then
					__FUNC_19423_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19423_)
			end

			if arg1.interrupted then
				__FUNC_192A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192A8_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_19151_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_16455_
	registerVal28.Equipped = registerVal29
	registerVal29 = {}
	local function __FUNC_19B75_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(1.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_19B75_
	local function __FUNC_1A3B5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_1A763_(arg0, arg1)
			local function __FUNC_1A8B8_(arg0, arg1)
				local function __FUNC_1AA33_(arg0, arg1)
					local function __FUNC_1AB88_(arg0, arg1)
						local function __FUNC_1AD03_(arg0, arg1)
							local function __FUNC_1AE58_(arg0, arg1)
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
								__FUNC_1AE58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AE58_)
						end

						if arg1.interrupted then
							__FUNC_1AD03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD03_)
					end

					if arg1.interrupted then
						__FUNC_1AB88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB88_)
				end

				if arg1.interrupted then
					__FUNC_1AA33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA33_)
			end

			if arg1.interrupted then
				__FUNC_1A8B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8B8_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1A763_(registerVal14, {})
		local function __FUNC_1B00D_(arg0, arg1)
			local function __FUNC_1B164_(arg0, arg1)
				local function __FUNC_1B2DF_(arg0, arg1)
					local function __FUNC_1B434_(arg0, arg1)
						local function __FUNC_1B5AF_(arg0, arg1)
							local function __FUNC_1B704_(arg0, arg1)
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
								__FUNC_1B704_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B704_)
						end

						if arg1.interrupted then
							__FUNC_1B5AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5AF_)
					end

					if arg1.interrupted then
						__FUNC_1B434_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B434_)
				end

				if arg1.interrupted then
					__FUNC_1B2DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B2DF_)
			end

			if arg1.interrupted then
				__FUNC_1B164_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B164_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1B00D_(registerVal15, {})
		local function __FUNC_1B8B9_(arg0, arg1)
			local function __FUNC_1BA10_(arg0, arg1)
				local function __FUNC_1BB8B_(arg0, arg1)
					local function __FUNC_1BD03_(arg0, arg1)
						local function __FUNC_1BE7B_(arg0, arg1)
							local function __FUNC_1BFD0_(arg0, arg1)
								local function __FUNC_1C14B_(arg0, arg1)
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
									__FUNC_1C14B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C14B_)
							end

							if arg1.interrupted then
								__FUNC_1BFD0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BFD0_)
						end

						if arg1.interrupted then
							__FUNC_1BE7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE7B_)
					end

					if arg1.interrupted then
						__FUNC_1BD03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD03_)
				end

				if arg1.interrupted then
					__FUNC_1BB8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB8B_)
			end

			if arg1.interrupted then
				__FUNC_1BA10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA10_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1B8B9_(registerVal16, {})
		local function __FUNC_1C2FD_(arg0, arg1)
			local function __FUNC_1C454_(arg0, arg1)
				local function __FUNC_1C5CF_(arg0, arg1)
					local function __FUNC_1C724_(arg0, arg1)
						local function __FUNC_1C89F_(arg0, arg1)
							local function __FUNC_1C9F4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1C9F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C9F4_)
						end

						if arg1.interrupted then
							__FUNC_1C89F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C89F_)
					end

					if arg1.interrupted then
						__FUNC_1C724_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C724_)
				end

				if arg1.interrupted then
					__FUNC_1C5CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C5CF_)
			end

			if arg1.interrupted then
				__FUNC_1C454_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C454_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1C2FD_(registerVal17, {})
		local function __FUNC_1CBA9_(arg0, arg1)
			local function __FUNC_1CD00_(arg0, arg1)
				local function __FUNC_1CE7B_(arg0, arg1)
					local function __FUNC_1CFD0_(arg0, arg1)
						local function __FUNC_1D14B_(arg0, arg1)
							local function __FUNC_1D2A0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1D2A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2A0_)
						end

						if arg1.interrupted then
							__FUNC_1D14B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D14B_)
					end

					if arg1.interrupted then
						__FUNC_1CFD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CFD0_)
				end

				if arg1.interrupted then
					__FUNC_1CE7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE7B_)
			end

			if arg1.interrupted then
				__FUNC_1CD00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD00_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1CBA9_(registerVal18, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(1.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal29.GainFocus = __FUNC_1A3B5_
	local function __FUNC_1D455_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(1.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal29.Focus = __FUNC_1D455_
	local function __FUNC_1D715_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_1DAC3_(arg0, arg1)
			local function __FUNC_1DC3B_(arg0, arg1)
				local function __FUNC_1DDB3_(arg0, arg1)
					local function __FUNC_1DF2B_(arg0, arg1)
						local function __FUNC_1E080_(arg0, arg1)
							local function __FUNC_1E1FB_(arg0, arg1)
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
								__FUNC_1E1FB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1FB_)
						end

						if arg1.interrupted then
							__FUNC_1E080_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E080_)
					end

					if arg1.interrupted then
						__FUNC_1DF2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF2B_)
				end

				if arg1.interrupted then
					__FUNC_1DDB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDB3_)
			end

			if arg1.interrupted then
				__FUNC_1DC3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC3B_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1DAC3_(registerVal14, {})
		local function __FUNC_1E3AD_(arg0, arg1)
			local function __FUNC_1E527_(arg0, arg1)
				local function __FUNC_1E69F_(arg0, arg1)
					local function __FUNC_1E817_(arg0, arg1)
						local function __FUNC_1E96C_(arg0, arg1)
							local function __FUNC_1EAE7_(arg0, arg1)
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
								__FUNC_1EAE7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAE7_)
						end

						if arg1.interrupted then
							__FUNC_1E96C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E96C_)
					end

					if arg1.interrupted then
						__FUNC_1E817_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E817_)
				end

				if arg1.interrupted then
					__FUNC_1E69F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E69F_)
			end

			if arg1.interrupted then
				__FUNC_1E527_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E527_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1E3AD_(registerVal15, {})
		local function __FUNC_1EC99_(arg0, arg1)
			local function __FUNC_1EDF0_(arg0, arg1)
				local function __FUNC_1EF6B_(arg0, arg1)
					local function __FUNC_1F0E3_(arg0, arg1)
						local function __FUNC_1F25B_(arg0, arg1)
							local function __FUNC_1F3B0_(arg0, arg1)
								local function __FUNC_1F52B_(arg0, arg1)
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
									__FUNC_1F52B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F52B_)
							end

							if arg1.interrupted then
								__FUNC_1F3B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3B0_)
						end

						if arg1.interrupted then
							__FUNC_1F25B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F25B_)
					end

					if arg1.interrupted then
						__FUNC_1F0E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F0E3_)
				end

				if arg1.interrupted then
					__FUNC_1EF6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF6B_)
			end

			if arg1.interrupted then
				__FUNC_1EDF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EDF0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1EC99_(registerVal16, {})
		local function __FUNC_1F6DD_(arg0, arg1)
			local function __FUNC_1F834_(arg0, arg1)
				local function __FUNC_1F9AF_(arg0, arg1)
					local function __FUNC_1FB04_(arg0, arg1)
						local function __FUNC_1FC7F_(arg0, arg1)
							local function __FUNC_1FDD4_(arg0, arg1)
								local function __FUNC_1FF4F_(arg0, arg1)
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
									__FUNC_1FF4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF4F_)
							end

							if arg1.interrupted then
								__FUNC_1FDD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FDD4_)
						end

						if arg1.interrupted then
							__FUNC_1FC7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC7F_)
					end

					if arg1.interrupted then
						__FUNC_1FB04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FB04_)
				end

				if arg1.interrupted then
					__FUNC_1F9AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F9AF_)
			end

			if arg1.interrupted then
				__FUNC_1F834_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F834_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1F6DD_(registerVal17, {})
		local function __FUNC_20101_(arg0, arg1)
			local function __FUNC_20258_(arg0, arg1)
				local function __FUNC_203D3_(arg0, arg1)
					local function __FUNC_20528_(arg0, arg1)
						local function __FUNC_206A3_(arg0, arg1)
							local function __FUNC_207F8_(arg0, arg1)
								local function __FUNC_20973_(arg0, arg1)
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
									__FUNC_20973_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20973_)
							end

							if arg1.interrupted then
								__FUNC_207F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207F8_)
						end

						if arg1.interrupted then
							__FUNC_206A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_206A3_)
					end

					if arg1.interrupted then
						__FUNC_20528_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20528_)
				end

				if arg1.interrupted then
					__FUNC_203D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203D3_)
			end

			if arg1.interrupted then
				__FUNC_20258_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20258_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_20101_(registerVal18, {})
		registerVal25:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(1.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal29.LoseFocus = __FUNC_1D715_
	registerVal28.New = registerVal29
	registerVal29 = {}
	local function __FUNC_20B25_()
		registerVal2:setupElementClipCounter(18.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setLeftRight(true, true, 215.000000, 0.000000)
		registerVal2.UpgradableIconLock:setTopBottom(true, true, -0.250000, -0.250000)
		registerVal2.UpgradableIconLock:setAlpha(0.250000)
		registerVal2.UpgradableIconLock:setScale(0.800000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_20B25_
	local function __FUNC_212EF_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_21642_(arg0, arg1)
			local function __FUNC_21798_(arg0, arg1)
				local function __FUNC_21913_(arg0, arg1)
					local function __FUNC_21A68_(arg0, arg1)
						local function __FUNC_21BE3_(arg0, arg1)
							local function __FUNC_21D38_(arg0, arg1)
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
								__FUNC_21D38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D38_)
						end

						if arg1.interrupted then
							__FUNC_21BE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BE3_)
					end

					if arg1.interrupted then
						__FUNC_21A68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A68_)
				end

				if arg1.interrupted then
					__FUNC_21913_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21913_)
			end

			if arg1.interrupted then
				__FUNC_21798_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21798_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_21642_(registerVal14, {})
		local function __FUNC_21EED_(arg0, arg1)
			local function __FUNC_22044_(arg0, arg1)
				local function __FUNC_221BF_(arg0, arg1)
					local function __FUNC_22314_(arg0, arg1)
						local function __FUNC_2248F_(arg0, arg1)
							local function __FUNC_225E4_(arg0, arg1)
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
								__FUNC_225E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_225E4_)
						end

						if arg1.interrupted then
							__FUNC_2248F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2248F_)
					end

					if arg1.interrupted then
						__FUNC_22314_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22314_)
				end

				if arg1.interrupted then
					__FUNC_221BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221BF_)
			end

			if arg1.interrupted then
				__FUNC_22044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22044_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_21EED_(registerVal15, {})
		local function __FUNC_22799_(arg0, arg1)
			local function __FUNC_228F0_(arg0, arg1)
				local function __FUNC_22A6B_(arg0, arg1)
					local function __FUNC_22BE3_(arg0, arg1)
						local function __FUNC_22D5B_(arg0, arg1)
							local function __FUNC_22EB0_(arg0, arg1)
								local function __FUNC_2302B_(arg0, arg1)
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
									__FUNC_2302B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2302B_)
							end

							if arg1.interrupted then
								__FUNC_22EB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EB0_)
						end

						if arg1.interrupted then
							__FUNC_22D5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D5B_)
					end

					if arg1.interrupted then
						__FUNC_22BE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22BE3_)
				end

				if arg1.interrupted then
					__FUNC_22A6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A6B_)
			end

			if arg1.interrupted then
				__FUNC_228F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_228F0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_22799_(registerVal16, {})
		local function __FUNC_231DD_(arg0, arg1)
			local function __FUNC_23334_(arg0, arg1)
				local function __FUNC_234AF_(arg0, arg1)
					local function __FUNC_23604_(arg0, arg1)
						local function __FUNC_2377F_(arg0, arg1)
							local function __FUNC_238D4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_238D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238D4_)
						end

						if arg1.interrupted then
							__FUNC_2377F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2377F_)
					end

					if arg1.interrupted then
						__FUNC_23604_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23604_)
				end

				if arg1.interrupted then
					__FUNC_234AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_234AF_)
			end

			if arg1.interrupted then
				__FUNC_23334_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23334_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_231DD_(registerVal17, {})
		local function __FUNC_23A89_(arg0, arg1)
			local function __FUNC_23BE0_(arg0, arg1)
				local function __FUNC_23D5B_(arg0, arg1)
					local function __FUNC_23EB0_(arg0, arg1)
						local function __FUNC_2402B_(arg0, arg1)
							local function __FUNC_24180_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_24180_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24180_)
						end

						if arg1.interrupted then
							__FUNC_2402B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2402B_)
					end

					if arg1.interrupted then
						__FUNC_23EB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23EB0_)
				end

				if arg1.interrupted then
					__FUNC_23D5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D5B_)
			end

			if arg1.interrupted then
				__FUNC_23BE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BE0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_23A89_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_212EF_
	local function __FUNC_24335_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_24335_
	local function __FUNC_2459C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_248F2_(arg0, arg1)
			local function __FUNC_24A6B_(arg0, arg1)
				local function __FUNC_24BE3_(arg0, arg1)
					local function __FUNC_24D5B_(arg0, arg1)
						local function __FUNC_24EB0_(arg0, arg1)
							local function __FUNC_2502B_(arg0, arg1)
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
								__FUNC_2502B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2502B_)
						end

						if arg1.interrupted then
							__FUNC_24EB0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24EB0_)
					end

					if arg1.interrupted then
						__FUNC_24D5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D5B_)
				end

				if arg1.interrupted then
					__FUNC_24BE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24BE3_)
			end

			if arg1.interrupted then
				__FUNC_24A6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A6B_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_248F2_(registerVal14, {})
		local function __FUNC_251DD_(arg0, arg1)
			local function __FUNC_25357_(arg0, arg1)
				local function __FUNC_254CF_(arg0, arg1)
					local function __FUNC_25647_(arg0, arg1)
						local function __FUNC_2579C_(arg0, arg1)
							local function __FUNC_25917_(arg0, arg1)
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
								__FUNC_25917_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25917_)
						end

						if arg1.interrupted then
							__FUNC_2579C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2579C_)
					end

					if arg1.interrupted then
						__FUNC_25647_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25647_)
				end

				if arg1.interrupted then
					__FUNC_254CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254CF_)
			end

			if arg1.interrupted then
				__FUNC_25357_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25357_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_251DD_(registerVal15, {})
		local function __FUNC_25AC9_(arg0, arg1)
			local function __FUNC_25C20_(arg0, arg1)
				local function __FUNC_25D9B_(arg0, arg1)
					local function __FUNC_25F13_(arg0, arg1)
						local function __FUNC_2608B_(arg0, arg1)
							local function __FUNC_261E0_(arg0, arg1)
								local function __FUNC_2635B_(arg0, arg1)
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
									__FUNC_2635B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2635B_)
							end

							if arg1.interrupted then
								__FUNC_261E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_261E0_)
						end

						if arg1.interrupted then
							__FUNC_2608B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2608B_)
					end

					if arg1.interrupted then
						__FUNC_25F13_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25F13_)
				end

				if arg1.interrupted then
					__FUNC_25D9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D9B_)
			end

			if arg1.interrupted then
				__FUNC_25C20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C20_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_25AC9_(registerVal16, {})
		local function __FUNC_2650D_(arg0, arg1)
			local function __FUNC_26664_(arg0, arg1)
				local function __FUNC_267DF_(arg0, arg1)
					local function __FUNC_26934_(arg0, arg1)
						local function __FUNC_26AAF_(arg0, arg1)
							local function __FUNC_26C04_(arg0, arg1)
								local function __FUNC_26D7F_(arg0, arg1)
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
									__FUNC_26D7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D7F_)
							end

							if arg1.interrupted then
								__FUNC_26C04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C04_)
						end

						if arg1.interrupted then
							__FUNC_26AAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26AAF_)
					end

					if arg1.interrupted then
						__FUNC_26934_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26934_)
				end

				if arg1.interrupted then
					__FUNC_267DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_267DF_)
			end

			if arg1.interrupted then
				__FUNC_26664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26664_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2650D_(registerVal17, {})
		local function __FUNC_26F31_(arg0, arg1)
			local function __FUNC_27088_(arg0, arg1)
				local function __FUNC_27203_(arg0, arg1)
					local function __FUNC_27358_(arg0, arg1)
						local function __FUNC_274D3_(arg0, arg1)
							local function __FUNC_27628_(arg0, arg1)
								local function __FUNC_277A3_(arg0, arg1)
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
									__FUNC_277A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277A3_)
							end

							if arg1.interrupted then
								__FUNC_27628_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27628_)
						end

						if arg1.interrupted then
							__FUNC_274D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_274D3_)
					end

					if arg1.interrupted then
						__FUNC_27358_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27358_)
				end

				if arg1.interrupted then
					__FUNC_27203_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27203_)
			end

			if arg1.interrupted then
				__FUNC_27088_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27088_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_26F31_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_2459C_
	registerVal28.Locked = registerVal29
	registerVal29 = {}
	local function __FUNC_27955_()
		registerVal2:setupElementClipCounter(19.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.250000)
		registerVal2.UpgradableIconLock:setScale(0.800000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_27955_
	local function __FUNC_28117_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_284C7_(arg0, arg1)
			local function __FUNC_2861C_(arg0, arg1)
				local function __FUNC_28797_(arg0, arg1)
					local function __FUNC_288EC_(arg0, arg1)
						local function __FUNC_28A67_(arg0, arg1)
							local function __FUNC_28BBC_(arg0, arg1)
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
								__FUNC_28BBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28BBC_)
						end

						if arg1.interrupted then
							__FUNC_28A67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A67_)
					end

					if arg1.interrupted then
						__FUNC_288EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_288EC_)
				end

				if arg1.interrupted then
					__FUNC_28797_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28797_)
			end

			if arg1.interrupted then
				__FUNC_2861C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2861C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_284C7_(registerVal14, {})
		local function __FUNC_28D71_(arg0, arg1)
			local function __FUNC_28EC8_(arg0, arg1)
				local function __FUNC_29043_(arg0, arg1)
					local function __FUNC_29198_(arg0, arg1)
						local function __FUNC_29313_(arg0, arg1)
							local function __FUNC_29468_(arg0, arg1)
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
								__FUNC_29468_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29468_)
						end

						if arg1.interrupted then
							__FUNC_29313_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29313_)
					end

					if arg1.interrupted then
						__FUNC_29198_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29198_)
				end

				if arg1.interrupted then
					__FUNC_29043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29043_)
			end

			if arg1.interrupted then
				__FUNC_28EC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28EC8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_28D71_(registerVal15, {})
		local function __FUNC_2961D_(arg0, arg1)
			local function __FUNC_29774_(arg0, arg1)
				local function __FUNC_298EF_(arg0, arg1)
					local function __FUNC_29A67_(arg0, arg1)
						local function __FUNC_29BDF_(arg0, arg1)
							local function __FUNC_29D34_(arg0, arg1)
								local function __FUNC_29EAF_(arg0, arg1)
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
									__FUNC_29EAF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29EAF_)
							end

							if arg1.interrupted then
								__FUNC_29D34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D34_)
						end

						if arg1.interrupted then
							__FUNC_29BDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29BDF_)
					end

					if arg1.interrupted then
						__FUNC_29A67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A67_)
				end

				if arg1.interrupted then
					__FUNC_298EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298EF_)
			end

			if arg1.interrupted then
				__FUNC_29774_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29774_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2961D_(registerVal16, {})
		local function __FUNC_2A061_(arg0, arg1)
			local function __FUNC_2A1B8_(arg0, arg1)
				local function __FUNC_2A333_(arg0, arg1)
					local function __FUNC_2A488_(arg0, arg1)
						local function __FUNC_2A603_(arg0, arg1)
							local function __FUNC_2A758_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2A758_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A758_)
						end

						if arg1.interrupted then
							__FUNC_2A603_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A603_)
					end

					if arg1.interrupted then
						__FUNC_2A488_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A488_)
				end

				if arg1.interrupted then
					__FUNC_2A333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A333_)
			end

			if arg1.interrupted then
				__FUNC_2A1B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1B8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2A061_(registerVal17, {})
		local function __FUNC_2A90D_(arg0, arg1)
			local function __FUNC_2AA64_(arg0, arg1)
				local function __FUNC_2ABDF_(arg0, arg1)
					local function __FUNC_2AD34_(arg0, arg1)
						local function __FUNC_2AEAF_(arg0, arg1)
							local function __FUNC_2B004_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2B004_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B004_)
						end

						if arg1.interrupted then
							__FUNC_2AEAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEAF_)
					end

					if arg1.interrupted then
						__FUNC_2AD34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD34_)
				end

				if arg1.interrupted then
					__FUNC_2ABDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ABDF_)
			end

			if arg1.interrupted then
				__FUNC_2AA64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA64_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2A90D_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.GainFocus = __FUNC_28117_
	local function __FUNC_2B1B9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.Focus = __FUNC_2B1B9_
	local function __FUNC_2B3CB_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_2B77B_(arg0, arg1)
			local function __FUNC_2B8F3_(arg0, arg1)
				local function __FUNC_2BA6B_(arg0, arg1)
					local function __FUNC_2BBE3_(arg0, arg1)
						local function __FUNC_2BD38_(arg0, arg1)
							local function __FUNC_2BEB3_(arg0, arg1)
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
								__FUNC_2BEB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BEB3_)
						end

						if arg1.interrupted then
							__FUNC_2BD38_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BD38_)
					end

					if arg1.interrupted then
						__FUNC_2BBE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BBE3_)
				end

				if arg1.interrupted then
					__FUNC_2BA6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA6B_)
			end

			if arg1.interrupted then
				__FUNC_2B8F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B8F3_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2B77B_(registerVal14, {})
		local function __FUNC_2C065_(arg0, arg1)
			local function __FUNC_2C1DF_(arg0, arg1)
				local function __FUNC_2C357_(arg0, arg1)
					local function __FUNC_2C4CF_(arg0, arg1)
						local function __FUNC_2C624_(arg0, arg1)
							local function __FUNC_2C79F_(arg0, arg1)
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
								__FUNC_2C79F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C79F_)
						end

						if arg1.interrupted then
							__FUNC_2C624_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C624_)
					end

					if arg1.interrupted then
						__FUNC_2C4CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4CF_)
				end

				if arg1.interrupted then
					__FUNC_2C357_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C357_)
			end

			if arg1.interrupted then
				__FUNC_2C1DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C1DF_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2C065_(registerVal15, {})
		local function __FUNC_2C951_(arg0, arg1)
			local function __FUNC_2CAA8_(arg0, arg1)
				local function __FUNC_2CC23_(arg0, arg1)
					local function __FUNC_2CD9B_(arg0, arg1)
						local function __FUNC_2CF13_(arg0, arg1)
							local function __FUNC_2D068_(arg0, arg1)
								local function __FUNC_2D1E3_(arg0, arg1)
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
									__FUNC_2D1E3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D1E3_)
							end

							if arg1.interrupted then
								__FUNC_2D068_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D068_)
						end

						if arg1.interrupted then
							__FUNC_2CF13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF13_)
					end

					if arg1.interrupted then
						__FUNC_2CD9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CD9B_)
				end

				if arg1.interrupted then
					__FUNC_2CC23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC23_)
			end

			if arg1.interrupted then
				__FUNC_2CAA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CAA8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2C951_(registerVal16, {})
		local function __FUNC_2D395_(arg0, arg1)
			local function __FUNC_2D4EC_(arg0, arg1)
				local function __FUNC_2D667_(arg0, arg1)
					local function __FUNC_2D7BC_(arg0, arg1)
						local function __FUNC_2D937_(arg0, arg1)
							local function __FUNC_2DA8C_(arg0, arg1)
								local function __FUNC_2DC07_(arg0, arg1)
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
									__FUNC_2DC07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC07_)
							end

							if arg1.interrupted then
								__FUNC_2DA8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DA8C_)
						end

						if arg1.interrupted then
							__FUNC_2D937_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D937_)
					end

					if arg1.interrupted then
						__FUNC_2D7BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D7BC_)
				end

				if arg1.interrupted then
					__FUNC_2D667_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D667_)
			end

			if arg1.interrupted then
				__FUNC_2D4EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D4EC_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2D395_(registerVal17, {})
		local function __FUNC_2DDB9_(arg0, arg1)
			local function __FUNC_2DF10_(arg0, arg1)
				local function __FUNC_2E08B_(arg0, arg1)
					local function __FUNC_2E1E0_(arg0, arg1)
						local function __FUNC_2E35B_(arg0, arg1)
							local function __FUNC_2E4B0_(arg0, arg1)
								local function __FUNC_2E62B_(arg0, arg1)
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
									__FUNC_2E62B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E62B_)
							end

							if arg1.interrupted then
								__FUNC_2E4B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E4B0_)
						end

						if arg1.interrupted then
							__FUNC_2E35B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E35B_)
					end

					if arg1.interrupted then
						__FUNC_2E1E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E1E0_)
				end

				if arg1.interrupted then
					__FUNC_2E08B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E08B_)
			end

			if arg1.interrupted then
				__FUNC_2DF10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF10_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2DDB9_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.tokenUnlockable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal29.LoseFocus = __FUNC_2B3CB_
	registerVal28.NotAvailable = registerVal29
	registerVal29 = {}
	local function __FUNC_2E7DD_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.000000)
		registerVal2.UpgradableIconLock:setScale(0.800000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_2E7DD_
	local function __FUNC_2EED5_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2F1BF_(arg0, arg1)
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
		__FUNC_2F1BF_(registerVal4, {})
		local function __FUNC_2F371_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_2F371_(registerVal7, {})
		local function __FUNC_2F525_(arg0, arg1)
			local function __FUNC_2F67C_(arg0, arg1)
				local function __FUNC_2F7F7_(arg0, arg1)
					local function __FUNC_2F94C_(arg0, arg1)
						local function __FUNC_2FAC7_(arg0, arg1)
							local function __FUNC_2FC1C_(arg0, arg1)
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
								__FUNC_2FC1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FC1C_)
						end

						if arg1.interrupted then
							__FUNC_2FAC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FAC7_)
					end

					if arg1.interrupted then
						__FUNC_2F94C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F94C_)
				end

				if arg1.interrupted then
					__FUNC_2F7F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F7F7_)
			end

			if arg1.interrupted then
				__FUNC_2F67C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F67C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2F525_(registerVal14, {})
		local function __FUNC_2FDD1_(arg0, arg1)
			local function __FUNC_2FF28_(arg0, arg1)
				local function __FUNC_300A3_(arg0, arg1)
					local function __FUNC_301F8_(arg0, arg1)
						local function __FUNC_30373_(arg0, arg1)
							local function __FUNC_304C8_(arg0, arg1)
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
								__FUNC_304C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_304C8_)
						end

						if arg1.interrupted then
							__FUNC_30373_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30373_)
					end

					if arg1.interrupted then
						__FUNC_301F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_301F8_)
				end

				if arg1.interrupted then
					__FUNC_300A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_300A3_)
			end

			if arg1.interrupted then
				__FUNC_2FF28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FF28_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2FDD1_(registerVal15, {})
		local function __FUNC_3067D_(arg0, arg1)
			local function __FUNC_307D4_(arg0, arg1)
				local function __FUNC_3094F_(arg0, arg1)
					local function __FUNC_30AC7_(arg0, arg1)
						local function __FUNC_30C3F_(arg0, arg1)
							local function __FUNC_30D94_(arg0, arg1)
								local function __FUNC_30F0F_(arg0, arg1)
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
									__FUNC_30F0F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F0F_)
							end

							if arg1.interrupted then
								__FUNC_30D94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30D94_)
						end

						if arg1.interrupted then
							__FUNC_30C3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C3F_)
					end

					if arg1.interrupted then
						__FUNC_30AC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30AC7_)
				end

				if arg1.interrupted then
					__FUNC_3094F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3094F_)
			end

			if arg1.interrupted then
				__FUNC_307D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_307D4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3067D_(registerVal16, {})
		local function __FUNC_310C1_(arg0, arg1)
			local function __FUNC_31218_(arg0, arg1)
				local function __FUNC_31393_(arg0, arg1)
					local function __FUNC_314E8_(arg0, arg1)
						local function __FUNC_31663_(arg0, arg1)
							local function __FUNC_317B8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_317B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317B8_)
						end

						if arg1.interrupted then
							__FUNC_31663_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31663_)
					end

					if arg1.interrupted then
						__FUNC_314E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_314E8_)
				end

				if arg1.interrupted then
					__FUNC_31393_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31393_)
			end

			if arg1.interrupted then
				__FUNC_31218_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31218_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_310C1_(registerVal17, {})
		local function __FUNC_3196D_(arg0, arg1)
			local function __FUNC_31AC4_(arg0, arg1)
				local function __FUNC_31C3F_(arg0, arg1)
					local function __FUNC_31D94_(arg0, arg1)
						local function __FUNC_31F0F_(arg0, arg1)
							local function __FUNC_32064_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_32064_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32064_)
						end

						if arg1.interrupted then
							__FUNC_31F0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F0F_)
					end

					if arg1.interrupted then
						__FUNC_31D94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31D94_)
				end

				if arg1.interrupted then
					__FUNC_31C3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31C3F_)
			end

			if arg1.interrupted then
				__FUNC_31AC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31AC4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3196D_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_2EED5_
	local function __FUNC_32219_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_32219_
	local function __FUNC_32429_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_3270E_(arg0, arg1)
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
		__FUNC_3270E_(registerVal4, {})
		local function __FUNC_328C1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_328C1_(registerVal7, {})
		local function __FUNC_32A75_(arg0, arg1)
			local function __FUNC_32BEF_(arg0, arg1)
				local function __FUNC_32D67_(arg0, arg1)
					local function __FUNC_32EDF_(arg0, arg1)
						local function __FUNC_33034_(arg0, arg1)
							local function __FUNC_331AF_(arg0, arg1)
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
								__FUNC_331AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_331AF_)
						end

						if arg1.interrupted then
							__FUNC_33034_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33034_)
					end

					if arg1.interrupted then
						__FUNC_32EDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32EDF_)
				end

				if arg1.interrupted then
					__FUNC_32D67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32D67_)
			end

			if arg1.interrupted then
				__FUNC_32BEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32BEF_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_32A75_(registerVal14, {})
		local function __FUNC_33361_(arg0, arg1)
			local function __FUNC_334DB_(arg0, arg1)
				local function __FUNC_33653_(arg0, arg1)
					local function __FUNC_337CB_(arg0, arg1)
						local function __FUNC_33920_(arg0, arg1)
							local function __FUNC_33A9B_(arg0, arg1)
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
								__FUNC_33A9B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33A9B_)
						end

						if arg1.interrupted then
							__FUNC_33920_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33920_)
					end

					if arg1.interrupted then
						__FUNC_337CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_337CB_)
				end

				if arg1.interrupted then
					__FUNC_33653_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33653_)
			end

			if arg1.interrupted then
				__FUNC_334DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_334DB_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_33361_(registerVal15, {})
		local function __FUNC_33C4D_(arg0, arg1)
			local function __FUNC_33DA4_(arg0, arg1)
				local function __FUNC_33F1F_(arg0, arg1)
					local function __FUNC_34097_(arg0, arg1)
						local function __FUNC_3420F_(arg0, arg1)
							local function __FUNC_34364_(arg0, arg1)
								local function __FUNC_344DF_(arg0, arg1)
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
									__FUNC_344DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_344DF_)
							end

							if arg1.interrupted then
								__FUNC_34364_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34364_)
						end

						if arg1.interrupted then
							__FUNC_3420F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3420F_)
					end

					if arg1.interrupted then
						__FUNC_34097_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34097_)
				end

				if arg1.interrupted then
					__FUNC_33F1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F1F_)
			end

			if arg1.interrupted then
				__FUNC_33DA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33DA4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_33C4D_(registerVal16, {})
		local function __FUNC_34691_(arg0, arg1)
			local function __FUNC_347E8_(arg0, arg1)
				local function __FUNC_34963_(arg0, arg1)
					local function __FUNC_34AB8_(arg0, arg1)
						local function __FUNC_34C33_(arg0, arg1)
							local function __FUNC_34D88_(arg0, arg1)
								local function __FUNC_34F03_(arg0, arg1)
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
									__FUNC_34F03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F03_)
							end

							if arg1.interrupted then
								__FUNC_34D88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D88_)
						end

						if arg1.interrupted then
							__FUNC_34C33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34C33_)
					end

					if arg1.interrupted then
						__FUNC_34AB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34AB8_)
				end

				if arg1.interrupted then
					__FUNC_34963_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34963_)
			end

			if arg1.interrupted then
				__FUNC_347E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_347E8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_34691_(registerVal17, {})
		local function __FUNC_350B5_(arg0, arg1)
			local function __FUNC_3520C_(arg0, arg1)
				local function __FUNC_35387_(arg0, arg1)
					local function __FUNC_354DC_(arg0, arg1)
						local function __FUNC_35657_(arg0, arg1)
							local function __FUNC_357AC_(arg0, arg1)
								local function __FUNC_35927_(arg0, arg1)
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
									__FUNC_35927_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35927_)
							end

							if arg1.interrupted then
								__FUNC_357AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_357AC_)
						end

						if arg1.interrupted then
							__FUNC_35657_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35657_)
					end

					if arg1.interrupted then
						__FUNC_354DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_354DC_)
				end

				if arg1.interrupted then
					__FUNC_35387_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35387_)
			end

			if arg1.interrupted then
				__FUNC_3520C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3520C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_350B5_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_32429_
	registerVal28.MutuallyExclusive = registerVal29
	registerVal29 = {}
	local function __FUNC_35AD9_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal29.DefaultClip = __FUNC_35AD9_
	local function __FUNC_361B8_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_363ED_(arg0, arg1)
			local function __FUNC_36544_(arg0, arg1)
				local function __FUNC_366BF_(arg0, arg1)
					local function __FUNC_36814_(arg0, arg1)
						local function __FUNC_3698F_(arg0, arg1)
							local function __FUNC_36AE4_(arg0, arg1)
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
								__FUNC_36AE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36AE4_)
						end

						if arg1.interrupted then
							__FUNC_3698F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3698F_)
					end

					if arg1.interrupted then
						__FUNC_36814_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36814_)
				end

				if arg1.interrupted then
					__FUNC_366BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_366BF_)
			end

			if arg1.interrupted then
				__FUNC_36544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36544_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_363ED_(registerVal14, {})
		local function __FUNC_36C99_(arg0, arg1)
			local function __FUNC_36DF0_(arg0, arg1)
				local function __FUNC_36F6B_(arg0, arg1)
					local function __FUNC_370C0_(arg0, arg1)
						local function __FUNC_3723B_(arg0, arg1)
							local function __FUNC_37390_(arg0, arg1)
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
								__FUNC_37390_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37390_)
						end

						if arg1.interrupted then
							__FUNC_3723B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3723B_)
					end

					if arg1.interrupted then
						__FUNC_370C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_370C0_)
				end

				if arg1.interrupted then
					__FUNC_36F6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36F6B_)
			end

			if arg1.interrupted then
				__FUNC_36DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36DF0_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_36C99_(registerVal15, {})
		local function __FUNC_37545_(arg0, arg1)
			local function __FUNC_3769C_(arg0, arg1)
				local function __FUNC_37817_(arg0, arg1)
					local function __FUNC_3798F_(arg0, arg1)
						local function __FUNC_37B07_(arg0, arg1)
							local function __FUNC_37C5C_(arg0, arg1)
								local function __FUNC_37DD7_(arg0, arg1)
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
									__FUNC_37DD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37DD7_)
							end

							if arg1.interrupted then
								__FUNC_37C5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C5C_)
						end

						if arg1.interrupted then
							__FUNC_37B07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37B07_)
					end

					if arg1.interrupted then
						__FUNC_3798F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3798F_)
				end

				if arg1.interrupted then
					__FUNC_37817_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37817_)
			end

			if arg1.interrupted then
				__FUNC_3769C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3769C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_37545_(registerVal16, {})
		local function __FUNC_37F89_(arg0, arg1)
			local function __FUNC_380E0_(arg0, arg1)
				local function __FUNC_3825B_(arg0, arg1)
					local function __FUNC_383B0_(arg0, arg1)
						local function __FUNC_3852B_(arg0, arg1)
							local function __FUNC_38680_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_38680_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38680_)
						end

						if arg1.interrupted then
							__FUNC_3852B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3852B_)
					end

					if arg1.interrupted then
						__FUNC_383B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_383B0_)
				end

				if arg1.interrupted then
					__FUNC_3825B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3825B_)
			end

			if arg1.interrupted then
				__FUNC_380E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_380E0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_37F89_(registerVal17, {})
		local function __FUNC_38835_(arg0, arg1)
			local function __FUNC_3898C_(arg0, arg1)
				local function __FUNC_38B07_(arg0, arg1)
					local function __FUNC_38C5C_(arg0, arg1)
						local function __FUNC_38DD7_(arg0, arg1)
							local function __FUNC_38F2C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_38F2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F2C_)
						end

						if arg1.interrupted then
							__FUNC_38DD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38DD7_)
					end

					if arg1.interrupted then
						__FUNC_38C5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C5C_)
				end

				if arg1.interrupted then
					__FUNC_38B07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B07_)
			end

			if arg1.interrupted then
				__FUNC_3898C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3898C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_38835_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_361B8_
	local function __FUNC_390E1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_390E1_
	local function __FUNC_39291_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_394C5_(arg0, arg1)
			local function __FUNC_3963F_(arg0, arg1)
				local function __FUNC_397B7_(arg0, arg1)
					local function __FUNC_3992F_(arg0, arg1)
						local function __FUNC_39A84_(arg0, arg1)
							local function __FUNC_39BFF_(arg0, arg1)
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
								__FUNC_39BFF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39BFF_)
						end

						if arg1.interrupted then
							__FUNC_39A84_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39A84_)
					end

					if arg1.interrupted then
						__FUNC_3992F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3992F_)
				end

				if arg1.interrupted then
					__FUNC_397B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_397B7_)
			end

			if arg1.interrupted then
				__FUNC_3963F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3963F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_394C5_(registerVal14, {})
		local function __FUNC_39DB1_(arg0, arg1)
			local function __FUNC_39F2B_(arg0, arg1)
				local function __FUNC_3A0A3_(arg0, arg1)
					local function __FUNC_3A21B_(arg0, arg1)
						local function __FUNC_3A370_(arg0, arg1)
							local function __FUNC_3A4EB_(arg0, arg1)
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
								__FUNC_3A4EB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A4EB_)
						end

						if arg1.interrupted then
							__FUNC_3A370_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A370_)
					end

					if arg1.interrupted then
						__FUNC_3A21B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A21B_)
				end

				if arg1.interrupted then
					__FUNC_3A0A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A0A3_)
			end

			if arg1.interrupted then
				__FUNC_39F2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F2B_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_39DB1_(registerVal15, {})
		local function __FUNC_3A69D_(arg0, arg1)
			local function __FUNC_3A7F4_(arg0, arg1)
				local function __FUNC_3A96F_(arg0, arg1)
					local function __FUNC_3AAE7_(arg0, arg1)
						local function __FUNC_3AC5F_(arg0, arg1)
							local function __FUNC_3ADB4_(arg0, arg1)
								local function __FUNC_3AF2F_(arg0, arg1)
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
									__FUNC_3AF2F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF2F_)
							end

							if arg1.interrupted then
								__FUNC_3ADB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ADB4_)
						end

						if arg1.interrupted then
							__FUNC_3AC5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AC5F_)
					end

					if arg1.interrupted then
						__FUNC_3AAE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AAE7_)
				end

				if arg1.interrupted then
					__FUNC_3A96F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A96F_)
			end

			if arg1.interrupted then
				__FUNC_3A7F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A7F4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3A69D_(registerVal16, {})
		local function __FUNC_3B0E1_(arg0, arg1)
			local function __FUNC_3B238_(arg0, arg1)
				local function __FUNC_3B3B3_(arg0, arg1)
					local function __FUNC_3B508_(arg0, arg1)
						local function __FUNC_3B683_(arg0, arg1)
							local function __FUNC_3B7D8_(arg0, arg1)
								local function __FUNC_3B953_(arg0, arg1)
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
									__FUNC_3B953_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B953_)
							end

							if arg1.interrupted then
								__FUNC_3B7D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B7D8_)
						end

						if arg1.interrupted then
							__FUNC_3B683_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B683_)
					end

					if arg1.interrupted then
						__FUNC_3B508_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B508_)
				end

				if arg1.interrupted then
					__FUNC_3B3B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B3B3_)
			end

			if arg1.interrupted then
				__FUNC_3B238_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B238_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3B0E1_(registerVal17, {})
		local function __FUNC_3BB05_(arg0, arg1)
			local function __FUNC_3BC5C_(arg0, arg1)
				local function __FUNC_3BDD7_(arg0, arg1)
					local function __FUNC_3BF2C_(arg0, arg1)
						local function __FUNC_3C0A7_(arg0, arg1)
							local function __FUNC_3C1FC_(arg0, arg1)
								local function __FUNC_3C377_(arg0, arg1)
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
									__FUNC_3C377_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C377_)
							end

							if arg1.interrupted then
								__FUNC_3C1FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C1FC_)
						end

						if arg1.interrupted then
							__FUNC_3C0A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C0A7_)
					end

					if arg1.interrupted then
						__FUNC_3BF2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BF2C_)
				end

				if arg1.interrupted then
					__FUNC_3BDD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BDD7_)
			end

			if arg1.interrupted then
				__FUNC_3BC5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC5C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_3BB05_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_39291_
	registerVal28.NoConsumablesRemaining = registerVal29
	registerVal29 = {}
	local function __FUNC_3C529_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setLeftRight(false, true, -83.000000, -69.000000)
		registerVal2.equippedIcon:setTopBottom(true, false, 2.000000, 16.000000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal23:completeAnimation()
		registerVal2.itemImageLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal26:completeAnimation()
		registerVal2.equippedIconFully:setLeftRight(false, true, -16.000000, -2.000000)
		registerVal2.equippedIconFully:setTopBottom(true, false, 2.000000, 16.000000)
		registerVal2.equippedIconFully:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.UpgradableIconLock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_3C529_
	local function __FUNC_3CDA7_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_3D15D_(arg0, arg1)
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
		__FUNC_3D15D_(registerVal4, {})
		local function __FUNC_3D311_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_3D311_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_3D4C5_(arg0, arg1)
			local function __FUNC_3D61C_(arg0, arg1)
				local function __FUNC_3D797_(arg0, arg1)
					local function __FUNC_3D8EC_(arg0, arg1)
						local function __FUNC_3DA67_(arg0, arg1)
							local function __FUNC_3DBBC_(arg0, arg1)
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
								__FUNC_3DBBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DBBC_)
						end

						if arg1.interrupted then
							__FUNC_3DA67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DA67_)
					end

					if arg1.interrupted then
						__FUNC_3D8EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D8EC_)
				end

				if arg1.interrupted then
					__FUNC_3D797_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D797_)
			end

			if arg1.interrupted then
				__FUNC_3D61C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D61C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_3D4C5_(registerVal14, {})
		local function __FUNC_3DD71_(arg0, arg1)
			local function __FUNC_3DEC8_(arg0, arg1)
				local function __FUNC_3E043_(arg0, arg1)
					local function __FUNC_3E198_(arg0, arg1)
						local function __FUNC_3E313_(arg0, arg1)
							local function __FUNC_3E468_(arg0, arg1)
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
								__FUNC_3E468_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E468_)
						end

						if arg1.interrupted then
							__FUNC_3E313_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E313_)
					end

					if arg1.interrupted then
						__FUNC_3E198_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E198_)
				end

				if arg1.interrupted then
					__FUNC_3E043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E043_)
			end

			if arg1.interrupted then
				__FUNC_3DEC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DEC8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3DD71_(registerVal15, {})
		local function __FUNC_3E61D_(arg0, arg1)
			local function __FUNC_3E774_(arg0, arg1)
				local function __FUNC_3E8EF_(arg0, arg1)
					local function __FUNC_3EA67_(arg0, arg1)
						local function __FUNC_3EBDF_(arg0, arg1)
							local function __FUNC_3ED34_(arg0, arg1)
								local function __FUNC_3EEAF_(arg0, arg1)
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
									__FUNC_3EEAF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EEAF_)
							end

							if arg1.interrupted then
								__FUNC_3ED34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED34_)
						end

						if arg1.interrupted then
							__FUNC_3EBDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EBDF_)
					end

					if arg1.interrupted then
						__FUNC_3EA67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EA67_)
				end

				if arg1.interrupted then
					__FUNC_3E8EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E8EF_)
			end

			if arg1.interrupted then
				__FUNC_3E774_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E774_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3E61D_(registerVal16, {})
		local function __FUNC_3F061_(arg0, arg1)
			local function __FUNC_3F1B8_(arg0, arg1)
				local function __FUNC_3F333_(arg0, arg1)
					local function __FUNC_3F488_(arg0, arg1)
						local function __FUNC_3F603_(arg0, arg1)
							local function __FUNC_3F758_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3F758_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F758_)
						end

						if arg1.interrupted then
							__FUNC_3F603_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F603_)
					end

					if arg1.interrupted then
						__FUNC_3F488_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F488_)
				end

				if arg1.interrupted then
					__FUNC_3F333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F333_)
			end

			if arg1.interrupted then
				__FUNC_3F1B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F1B8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3F061_(registerVal17, {})
		local function __FUNC_3F90D_(arg0, arg1)
			local function __FUNC_3FA64_(arg0, arg1)
				local function __FUNC_3FBDF_(arg0, arg1)
					local function __FUNC_3FD34_(arg0, arg1)
						local function __FUNC_3FEAF_(arg0, arg1)
							local function __FUNC_40004_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_40004_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40004_)
						end

						if arg1.interrupted then
							__FUNC_3FEAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FEAF_)
					end

					if arg1.interrupted then
						__FUNC_3FD34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD34_)
				end

				if arg1.interrupted then
					__FUNC_3FBDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FBDF_)
			end

			if arg1.interrupted then
				__FUNC_3FA64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FA64_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3F90D_(registerVal18, {})
		registerVal26:completeAnimation()
		registerVal2.equippedIconFully:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal29.GainFocus = __FUNC_3CDA7_
	local function __FUNC_401B9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal26:completeAnimation()
		registerVal2.equippedIconFully:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal29.Focus = __FUNC_401B9_
	local function __FUNC_404DB_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_4088C_(arg0, arg1)
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
		__FUNC_4088C_(registerVal4, {})
		local function __FUNC_40A41_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_40A41_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_40BF5_(arg0, arg1)
			local function __FUNC_40D6F_(arg0, arg1)
				local function __FUNC_40EE7_(arg0, arg1)
					local function __FUNC_4105F_(arg0, arg1)
						local function __FUNC_411B4_(arg0, arg1)
							local function __FUNC_4132F_(arg0, arg1)
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
								__FUNC_4132F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4132F_)
						end

						if arg1.interrupted then
							__FUNC_411B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_411B4_)
					end

					if arg1.interrupted then
						__FUNC_4105F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4105F_)
				end

				if arg1.interrupted then
					__FUNC_40EE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40EE7_)
			end

			if arg1.interrupted then
				__FUNC_40D6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40D6F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_40BF5_(registerVal14, {})
		local function __FUNC_414E1_(arg0, arg1)
			local function __FUNC_4165B_(arg0, arg1)
				local function __FUNC_417D3_(arg0, arg1)
					local function __FUNC_4194B_(arg0, arg1)
						local function __FUNC_41AA0_(arg0, arg1)
							local function __FUNC_41C1B_(arg0, arg1)
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
								__FUNC_41C1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C1B_)
						end

						if arg1.interrupted then
							__FUNC_41AA0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41AA0_)
					end

					if arg1.interrupted then
						__FUNC_4194B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4194B_)
				end

				if arg1.interrupted then
					__FUNC_417D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_417D3_)
			end

			if arg1.interrupted then
				__FUNC_4165B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4165B_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_414E1_(registerVal15, {})
		local function __FUNC_41DCD_(arg0, arg1)
			local function __FUNC_41F24_(arg0, arg1)
				local function __FUNC_4209F_(arg0, arg1)
					local function __FUNC_42217_(arg0, arg1)
						local function __FUNC_4238F_(arg0, arg1)
							local function __FUNC_424E4_(arg0, arg1)
								local function __FUNC_4265F_(arg0, arg1)
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
									__FUNC_4265F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4265F_)
							end

							if arg1.interrupted then
								__FUNC_424E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_424E4_)
						end

						if arg1.interrupted then
							__FUNC_4238F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4238F_)
					end

					if arg1.interrupted then
						__FUNC_42217_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42217_)
				end

				if arg1.interrupted then
					__FUNC_4209F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4209F_)
			end

			if arg1.interrupted then
				__FUNC_41F24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41F24_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_41DCD_(registerVal16, {})
		local function __FUNC_42811_(arg0, arg1)
			local function __FUNC_42968_(arg0, arg1)
				local function __FUNC_42AE3_(arg0, arg1)
					local function __FUNC_42C38_(arg0, arg1)
						local function __FUNC_42DB3_(arg0, arg1)
							local function __FUNC_42F08_(arg0, arg1)
								local function __FUNC_43083_(arg0, arg1)
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
									__FUNC_43083_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43083_)
							end

							if arg1.interrupted then
								__FUNC_42F08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42F08_)
						end

						if arg1.interrupted then
							__FUNC_42DB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42DB3_)
					end

					if arg1.interrupted then
						__FUNC_42C38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42C38_)
				end

				if arg1.interrupted then
					__FUNC_42AE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42AE3_)
			end

			if arg1.interrupted then
				__FUNC_42968_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42968_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_42811_(registerVal17, {})
		local function __FUNC_43235_(arg0, arg1)
			local function __FUNC_4338C_(arg0, arg1)
				local function __FUNC_43507_(arg0, arg1)
					local function __FUNC_4365C_(arg0, arg1)
						local function __FUNC_437D7_(arg0, arg1)
							local function __FUNC_4392C_(arg0, arg1)
								local function __FUNC_43AA7_(arg0, arg1)
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
									__FUNC_43AA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43AA7_)
							end

							if arg1.interrupted then
								__FUNC_4392C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4392C_)
						end

						if arg1.interrupted then
							__FUNC_437D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_437D7_)
					end

					if arg1.interrupted then
						__FUNC_4365C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4365C_)
				end

				if arg1.interrupted then
					__FUNC_43507_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43507_)
			end

			if arg1.interrupted then
				__FUNC_4338C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4338C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_43235_(registerVal18, {})
		registerVal26:completeAnimation()
		registerVal2.equippedIconFully:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal29.LoseFocus = __FUNC_404DB_
	registerVal28.EquippedFullyUpgraded = registerVal29
	registerVal2.clipsPerState = registerVal28
	registerVal30 = {}
	local registerVal31 = {}
	registerVal31.stateName = "ItemBanned"
	local function __FUNC_43C59_(arg0, arg2, arg3)
		return IsCACItemBanned(arg0, arg2, arg1)
	end

	registerVal31.condition = __FUNC_43C59_
	local registerVal32 = {}
	registerVal32.stateName = "Equipped"
	local function __FUNC_43CB5_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemUpgraded(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal32.condition = __FUNC_43CB5_
	local registerVal33 = {}
	registerVal33.stateName = "New"
	local function __FUNC_43D4E_(arg0, arg2, arg3)
		return IsCACItemNew(arg2, arg1)
	end

	registerVal33.condition = __FUNC_43D4E_
	local registerVal34 = {}
	registerVal34.stateName = "Locked"
	local function __FUNC_43DA2_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal34.condition = __FUNC_43DA2_
	local registerVal35 = {}
	registerVal35.stateName = "NotAvailable"
	local function __FUNC_43DFD_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal35.condition = __FUNC_43DFD_
	local registerVal36 = {}
	registerVal36.stateName = "MutuallyExclusive"
	local function __FUNC_43E5C_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal36.condition = __FUNC_43E5C_
	local registerVal37 = {}
	registerVal37.stateName = "NoConsumablesRemaining"
	local function __FUNC_43ECD_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal37.condition = __FUNC_43ECD_
	local registerVal38 = {}
	registerVal38.stateName = "EquippedFullyUpgraded"
	local function __FUNC_43F41_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemUpgraded(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal38.condition = __FUNC_43F41_
	registerVal30 = {registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37, registerVal38}
	registerVal2:mergeStateConditions(registerVal30)
	local function __FUNC_43FD6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_43FD6_)
	registerVal19.id = "ConsumableLabel"
	local function __FUNC_440F3_(arg0, arg1)
		local registerVal2 = arg0.ConsumableLabel:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_440F3_)
	local function __FUNC_441FB_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
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
		arg0.GridItemUpgradeIconTacticalRig:close()
		arg0.tokenUnlockable:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_441FB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

