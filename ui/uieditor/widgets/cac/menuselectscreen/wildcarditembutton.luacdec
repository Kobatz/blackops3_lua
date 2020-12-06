-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.WildcardItemButtonImage")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WildcardInfoWidget")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreaksArrow")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokenStatic")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WildcardItemButton = registerVal1
function CoD.WildcardItemButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WildcardItemButton)
	registerVal2.id = "WildcardItemButton"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 142.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.540000, 101.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 140.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bkg = registerVal3
	local registerVal4 = CoD.WildcardItemButtonImage.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -47.000000, 46.000000)
	registerVal4:setTopBottom(false, false, -58.000000, 58.000000)
	local function __FUNC_1C39_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1C39_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "ContextualWildcard"
	local function __FUNC_1C8A_(arg0, arg2, arg3)
		return IsCACContextualWildcardOpen(arg1)
	end

	registerVal8.condition = __FUNC_1C8A_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.itemImage = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = CoD.WildcardInfoWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -120.000000, 120.000000)
	registerVal6:setTopBottom(false, true, 15.000000, 127.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(0.900000)
	local function __FUNC_1CE9_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1CE9_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "PermanentUnlockRefund"
	local function __FUNC_1D3A_(arg0, arg2, arg3)
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

	registerVal10.condition = __FUNC_1D3A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1E43_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1E43_)
	registerVal2:addElement(registerVal6)
	registerVal2.infoText = registerVal6
	registerVal7 = CoD.scorestreaksArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -10.000000, 10.000000)
	registerVal7:setTopBottom(false, true, 0.000000, 20.000000)
	registerVal7:setAlpha(0.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_1F5F_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_1F5F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1FDE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, nil, true, __FUNC_1FDE_)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	registerVal8 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal8:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.IconNew = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -18.000000, -4.000000)
	registerVal11:setTopBottom(true, false, 4.000000, 18.000000)
	registerVal11:setRGB(1.000000, 0.410000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.alertIcon = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -18.000000, -4.000000)
	registerVal12:setTopBottom(true, false, 4.000000, 18.000000)
	registerVal12:setRGB(0.550000, 0.770000, 0.250000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal12)
	registerVal2.equippedIcon = registerVal12
	local registerVal13 = CoD.cac_lock.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal13:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.lockedIcon = registerVal13
	local registerVal14 = CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	registerVal14:setLeftRight(false, true, -27.000000, 1.000000)
	registerVal14:setTopBottom(true, false, -2.000000, 26.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_20E9_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_20E9_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal2:addElement(registerVal14)
	registerVal2.tokenPermanentUnlock = registerVal14
	local registerVal15 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal15:setLeftRight(false, true, -27.000000, 1.000000)
	registerVal15:setTopBottom(true, false, -2.000000, 26.000000)
	registerVal15:setAlpha(0.000000)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_2180_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		registerVal3 = IsCACItemPurchased(arg2, arg1)
		registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_2180_
	local registerVal20 = {}
	registerVal20.stateName = "VisibleCP"
	local function __FUNC_22B3_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
			registerVal3 = IsCACItemPurchased(arg2, arg1)
			registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
			if not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsInPermanentUnlockMenu(arg1)
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_22B3_
	registerVal18 = {registerVal19, registerVal20}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.lobbyNav")
	local function __FUNC_23E3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_23E3_)
	local function __FUNC_2508_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "itemIndex", true, __FUNC_2508_)
	registerVal2:addElement(registerVal15)
	registerVal2.tokenUnlock = registerVal15
	local registerVal16 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 2.000000, 102.000000)
	registerVal16:setTopBottom(true, false, 28.320000, 114.680000)
	local function __FUNC_2627_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_2627_)
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_2676_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal20.condition = __FUNC_2676_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "lobbyRoot.Pregame.Update")
	local function __FUNC_26CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_26CE_)
	registerVal2:addElement(registerVal16)
	registerVal2.RestrictedItemWarning = registerVal16
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_27FA_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_27FA_
	local function __FUNC_2BB4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -43.500000, 43.500000)
		registerVal2.itemImage:setTopBottom(false, false, -58.000000, 58.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setLeftRight(false, false, -120.000000, 120.000000)
		registerVal2.infoText:setTopBottom(false, true, 15.000000, 127.000000)
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_2BB4_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_2FA1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_2FA1_
	local function __FUNC_325B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_325B_
	registerVal17.ContextualWildcardEquipped = registerVal18
	registerVal18 = {}
	local function __FUNC_350E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_350E_
	local function __FUNC_381F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_381F_
	registerVal17.ContextualWildcardLocked = registerVal18
	registerVal18 = {}
	local function __FUNC_3AD7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.020000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_3AD7_
	local function __FUNC_3DF0_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.Focus = __FUNC_3DF0_
	registerVal17.ContextualWildcardNotAvailable = registerVal18
	registerVal18 = {}
	local function __FUNC_4103_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_4103_
	local function __FUNC_43BB_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_43BB_
	registerVal17.ContextualWildcard = registerVal18
	registerVal18 = {}
	local function __FUNC_4673_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_4673_
	local function __FUNC_492B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, -5.000000, 5.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 0.000000, 10.000000)
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_492B_
	registerVal17.WildcardOverCapacityEquipped = registerVal18
	registerVal18 = {}
	local function __FUNC_4C6E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, -5.000000, 5.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 0.000000, 10.000000)
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_4C6E_
	local function __FUNC_4FB2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_4FB2_
	registerVal17.WildcardOverCapacity = registerVal18
	registerVal18 = {}
	local function __FUNC_526B_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.020000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_526B_
	local function __FUNC_5582_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setLeftRight(false, false, -120.000000, 120.000000)
		registerVal2.infoText:setTopBottom(false, true, 15.000000, 127.000000)
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, -10.000000, 10.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 0.000000, 20.000000)
		registerVal2.hintArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_5582_
	registerVal17.Equipped = registerVal18
	registerVal18 = {}
	local function __FUNC_5989_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, -10.000000, 10.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 0.000000, 20.000000)
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.020000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_5989_
	local function __FUNC_5D2A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setLeftRight(false, false, -10.000000, 10.000000)
		registerVal2.hintArrow:setTopBottom(false, true, 0.000000, 20.000000)
		registerVal2.hintArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal18.Focus = __FUNC_5D2A_
	registerVal17.New = registerVal18
	registerVal18 = {}
	local function __FUNC_6017_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.020000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_6017_
	local function __FUNC_62D2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.Focus = __FUNC_62D2_
	registerVal17.Locked = registerVal18
	registerVal18 = {}
	local function __FUNC_6589_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.020000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_6589_
	local function __FUNC_68F9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.Focus = __FUNC_68F9_
	registerVal17.NotAvailable = registerVal18
	registerVal18 = {}
	local function __FUNC_6C0B_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_6C0B_
	local function __FUNC_6FC9_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -43.500000, 43.500000)
		registerVal2.itemImage:setTopBottom(false, false, -58.000000, 58.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.infoText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_6FC9_
	registerVal17.MutuallyExclusive = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "ContextualWildcardEquipped"
	local function __FUNC_73A8_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		registerVal3 = IsCACContextualWildcardOpen(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_73A8_
	local registerVal21 = {}
	registerVal21.stateName = "ContextualWildcardLocked"
	local function __FUNC_7479_(arg0, arg2, arg3)
		local registerVal3 = IsCACContextualWildcardOpen(arg1)
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_7479_
	local registerVal22 = {}
	registerVal22.stateName = "ContextualWildcardNotAvailable"
	local function __FUNC_750E_(arg0, arg2, arg3)
		local registerVal3 = IsCACContextualWildcardOpen(arg1)
		if registerVal3 then
			registerVal3 = IsCACItemPurchased(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_750E_
	local registerVal23 = {}
	registerVal23.stateName = "ContextualWildcard"
	local function __FUNC_75A5_(arg0, arg2, arg3)
		return IsCACContextualWildcardOpen(arg1)
	end

	registerVal23.condition = __FUNC_75A5_
	local registerVal24 = {}
	registerVal24.stateName = "WildcardOverCapacityEquipped"
	local function __FUNC_7605_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal24.condition = __FUNC_7605_
	local registerVal25 = {}
	registerVal25.stateName = "WildcardOverCapacity"
	local function __FUNC_7651_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal25.condition = __FUNC_7651_
	local registerVal26 = {}
	registerVal26.stateName = "Equipped"
	local function __FUNC_769D_(arg0, arg2, arg3)
		local registerVal3 = IsCACWildcardEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_769D_
	local registerVal27 = {}
	registerVal27.stateName = "New"
	local function __FUNC_7738_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_7738_
	local registerVal28 = {}
	registerVal28.stateName = "Locked"
	local function __FUNC_77C7_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal28.condition = __FUNC_77C7_
	local registerVal29 = {}
	registerVal29.stateName = "NotAvailable"
	local function __FUNC_7821_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_7821_
	local registerVal30 = {}
	registerVal30.stateName = "MutuallyExclusive"
	local function __FUNC_7880_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal30.condition = __FUNC_7880_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28, registerVal29, registerVal30}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_78F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_78F1_)
	registerVal4.id = "itemImage"
	local function __FUNC_7A0F_(arg0, arg1)
		local registerVal2 = arg0.itemImage:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7A0F_)
	local function __FUNC_7B11_(arg0)
		arg0.itemImage:close()
		arg0.StartMenuframenoBG0:close()
		arg0.infoText:close()
		arg0.hintArrow:close()
		arg0.IconNew:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.lockedIcon:close()
		arg0.tokenPermanentUnlock:close()
		arg0.tokenUnlock:close()
		arg0.RestrictedItemWarning:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7B11_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

