-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.Customization.CustomizationListButtonImage")
require("ui.uieditor.widgets.CAC.Customization.BlackMarketClassifiedIcon")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_IconTokenGrid")
require("ui.uieditor.widgets.BlackMarket.DuplicateCounter")
require("ui.uieditor.widgets.Promo_Ribbon")
require("ui.uieditor.widgets.BlackMarket.BM_LimitedItemRibbon")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local function __FUNC_5E8_(arg0, arg1)
	local function __FUNC_67E_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "isPackage")
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal3 and registerVal4 then
			registerVal4 = Engine.GetModel(registerVal2, "packageCamoIndices")
			local registerVal5 = Engine.GetModel(registerVal2, "packageCamoImages")
			local registerVal6 = Engine.GetModelValue(registerVal4)
			local registerVal7 = Engine.GetModelValue(registerVal5)
			if registerVal6 then
				local registerVal8 = LUI.splitString(registerVal6, ",")
				arg0.includedItemIndices = registerVal8
				registerVal8 = LUI.splitString(registerVal7, ",")
				arg0.includedImages = registerVal8
			end
			if not arg0.packageCamoUpdateTimer and arg0.includedItemIndices and 0.000000 < #arg0.includedItemIndices and arg0.includedImages and 0.000000 < #arg0.includedImages and #arg0.includedItemIndices == #arg0.includedImages then
				registerVal8 = Engine.GetModel(registerVal2, "itemIndex")
				local registerVal9 = Engine.GetModel(registerVal2, "image")
				Engine.SetModelValue(registerVal8, tonumber(arg0.includedItemIndices[1.000000]))
				Engine.SetModelValue(registerVal9, arg0.includedImages[1.000000])
				arg0.lastUsedIndex = 1.000000
				local function __FUNC_B0A_(arg2)
					arg0.lastUsedIndex = (arg0.lastUsedIndex + 1.000000)
					if #arg0.includedItemIndices < arg0.lastUsedIndex then
						arg0.lastUsedIndex = 1.000000
					end
					Engine.SetModelValue(registerVal8, tonumber(arg0.includedItemIndices[arg0.lastUsedIndex]))
					Engine.SetModelValue(registerVal9, arg0.includedImages[arg0.lastUsedIndex])
					WC_WeaponOptionGainFocus(nil, arg0, arg1)
				end

				local registerVal10 = LUI.UITimer.newElementTimer(4000.000000, false, __FUNC_B0A_)
				arg0.packageCamoUpdateTimer = registerVal10
				arg0:addElement(arg0.packageCamoUpdateTimer)
			end
		end
	end

	arg0:registerEventHandler("gain_focus", __FUNC_67E_)
	local function __FUNC_CD4_(arg0, arg1)
		if arg0.packageCamoUpdateTimer then
			arg0.packageCamoUpdateTimer:close()
			arg0.packageCamoUpdateTimer = nil
		end
		arg0.includedItemIndices = nil
		arg0.includedImages = nil
	end

	arg0:registerEventHandler("lose_focus", __FUNC_CD4_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CustomizationItem_ND = registerVal2
local function __FUNC_D99_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomizationItem_ND)
	registerVal2.id = "CustomizationItem_ND"
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
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.CustomizationListButtonImage.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_304D_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_304D_)
	local function __FUNC_309E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.paintjobExtraCamRender:setupWCPaintjobIconExtraCamRender(GetPaintshopExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "paintjobSlotAndIndex", true, __FUNC_309E_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "PaintJob"
	local function __FUNC_31AA_(arg0, arg2, arg3)
		return IsPaintJobCustomItem(arg2, arg1)
	end

	registerVal10.condition = __FUNC_31AA_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_3206_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "packageImage", true, __FUNC_3206_)
	registerVal2:addElement(registerVal7)
	registerVal2.PackageImage = registerVal7
	local registerVal8 = CoD.BlackMarketClassifiedIcon.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.classifiedIcon = registerVal8
	registerVal9 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 2.000000, 106.000000)
	registerVal9:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.LabelButton = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal10:setRGB(0.560000, 0.680000, 0.270000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.equippedIcon = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal11:setRGB(1.000000, 0.410000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.alertIcon = registerVal11
	local registerVal12 = CoD.cac_lock.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -16.500000, 15.500000)
	registerVal12:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.lockedIcon = registerVal12
	local registerVal13 = CoD.cac_LabelNew.new(arg0, arg1)
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
	local registerVal19 = CoD.cac_IconTokenGrid.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, -28.000000, 0.000000)
	registerVal19:setTopBottom(true, false, -0.500000, 27.500000)
	registerVal19:setAlpha(0.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.cacIconTokenGrid0 = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal20:setRGB(1.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setText(LocalizeToUpperString("MENU_CLASSIFIED"))
	registerVal20:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal20)
	registerVal2.challengeClassified = registerVal20
	local registerVal21 = CoD.DuplicateCounter.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 2.000000, 22.000000)
	registerVal21:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_32B8_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, "rarityType", false, __FUNC_32B8_)
	registerVal2:addElement(registerVal21)
	registerVal2.DuplicateCounter = registerVal21
	local registerVal22 = CoD.Promo_Ribbon.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, -8.500000, 45.500000)
	registerVal22:setTopBottom(true, false, -2.000000, 33.000000)
	registerVal22:setAlpha(0.000000)
	local function __FUNC_330A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "packageLabel", true, __FUNC_330A_)
	registerVal2:addElement(registerVal22)
	registerVal2.BMPromoRibbon = registerVal22
	local registerVal23 = CoD.BM_LimitedItemRibbon.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, -8.500000, 45.500000)
	registerVal23:setTopBottom(true, false, -2.000000, 33.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23.Text:setText(LocalizeToUpperString("MPUI_BM_LIMITED"))
	local function __FUNC_33DC_(arg0)
		registerVal23:setModel(arg0, arg1)
	end

	registerVal23:linkToElementModel(registerVal2, nil, false, __FUNC_33DC_)
	local registerVal26 = {}
	local registerVal27 = {}
	registerVal27.stateName = "Visible"
	local function __FUNC_342E_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLimitedItem")
	end

	registerVal27.condition = __FUNC_342E_
	registerVal26 = {registerVal27}
	registerVal23:mergeStateConditions(registerVal26)
	local function __FUNC_34A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLimitedItem"
		arg0:updateElementState(registerVal23, registerVal4)
	end

	registerVal23:linkToElementModel(registerVal23, "isLimitedItem", true, __FUNC_34A5_)
	registerVal2:addElement(registerVal23)
	registerVal2.BMLimitedItemRibbon = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, -8.670000, 36.670000)
	registerVal24:setTopBottom(true, false, 48.660000, 94.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setScale(0.600000)
	registerVal24:setImage(RegisterImage("uie_t7_icon_contextual_purchase"))
	registerVal2:addElement(registerVal24)
	registerVal2.DownloadIcon = registerVal24
	local registerVal25 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, 62.300000, 114.300000)
	registerVal25:setTopBottom(true, false, 34.000000, 69.000000)
	registerVal25:setAlpha(0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.BMContractsLockBars = registerVal25
	registerVal26 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal26:setLeftRight(true, false, -6.700000, 46.300000)
	registerVal26:setTopBottom(true, false, 34.000000, 69.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setYRot(180.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.BMContractsLockBars0 = registerVal26
	registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 17.000000, 90.000000)
	registerVal27:setTopBottom(true, false, 16.500000, 89.500000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal27)
	registerVal2.bmContractBrandIcon = registerVal27
	local function __FUNC_35C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "name", true, __FUNC_35C7_)
	local registerVal28 = {}
	local registerVal29 = {}
	local function __FUNC_369C_()
		registerVal2:setupElementClipCounter(23.000000)
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
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_369C_
	local function __FUNC_3F80_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_4213_(arg0, arg1)
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
		__FUNC_4213_(registerVal4, {})
		local function __FUNC_43C5_(arg0, arg1)
			local function __FUNC_451C_(arg0, arg1)
				local function __FUNC_4697_(arg0, arg1)
					local function __FUNC_47EC_(arg0, arg1)
						local function __FUNC_4967_(arg0, arg1)
							local function __FUNC_4ABC_(arg0, arg1)
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
								__FUNC_4ABC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ABC_)
						end

						if arg1.interrupted then
							__FUNC_4967_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4967_)
					end

					if arg1.interrupted then
						__FUNC_47EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47EC_)
				end

				if arg1.interrupted then
					__FUNC_4697_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4697_)
			end

			if arg1.interrupted then
				__FUNC_451C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_451C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_43C5_(registerVal14, {})
		local function __FUNC_4C71_(arg0, arg1)
			local function __FUNC_4DC8_(arg0, arg1)
				local function __FUNC_4F43_(arg0, arg1)
					local function __FUNC_5098_(arg0, arg1)
						local function __FUNC_5213_(arg0, arg1)
							local function __FUNC_5368_(arg0, arg1)
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
								__FUNC_5368_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5368_)
						end

						if arg1.interrupted then
							__FUNC_5213_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5213_)
					end

					if arg1.interrupted then
						__FUNC_5098_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5098_)
				end

				if arg1.interrupted then
					__FUNC_4F43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F43_)
			end

			if arg1.interrupted then
				__FUNC_4DC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DC8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_4C71_(registerVal15, {})
		local function __FUNC_551D_(arg0, arg1)
			local function __FUNC_5674_(arg0, arg1)
				local function __FUNC_57EF_(arg0, arg1)
					local function __FUNC_5967_(arg0, arg1)
						local function __FUNC_5ADF_(arg0, arg1)
							local function __FUNC_5C34_(arg0, arg1)
								local function __FUNC_5DAF_(arg0, arg1)
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
									__FUNC_5DAF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DAF_)
							end

							if arg1.interrupted then
								__FUNC_5C34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C34_)
						end

						if arg1.interrupted then
							__FUNC_5ADF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ADF_)
					end

					if arg1.interrupted then
						__FUNC_5967_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5967_)
				end

				if arg1.interrupted then
					__FUNC_57EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57EF_)
			end

			if arg1.interrupted then
				__FUNC_5674_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5674_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_551D_(registerVal16, {})
		local function __FUNC_5F61_(arg0, arg1)
			local function __FUNC_60B8_(arg0, arg1)
				local function __FUNC_6233_(arg0, arg1)
					local function __FUNC_6388_(arg0, arg1)
						local function __FUNC_6503_(arg0, arg1)
							local function __FUNC_6658_(arg0, arg1)
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
								__FUNC_6658_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6658_)
						end

						if arg1.interrupted then
							__FUNC_6503_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6503_)
					end

					if arg1.interrupted then
						__FUNC_6388_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6388_)
				end

				if arg1.interrupted then
					__FUNC_6233_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6233_)
			end

			if arg1.interrupted then
				__FUNC_60B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60B8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_5F61_(registerVal17, {})
		local function __FUNC_680D_(arg0, arg1)
			local function __FUNC_6964_(arg0, arg1)
				local function __FUNC_6ADF_(arg0, arg1)
					local function __FUNC_6C34_(arg0, arg1)
						local function __FUNC_6DAF_(arg0, arg1)
							local function __FUNC_6F04_(arg0, arg1)
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
								__FUNC_6F04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F04_)
						end

						if arg1.interrupted then
							__FUNC_6DAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DAF_)
					end

					if arg1.interrupted then
						__FUNC_6C34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C34_)
				end

				if arg1.interrupted then
					__FUNC_6ADF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ADF_)
			end

			if arg1.interrupted then
				__FUNC_6964_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6964_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_680D_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_3F80_
	local function __FUNC_70B9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal29.Focus = __FUNC_70B9_
	local function __FUNC_7272_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_7503_(arg0, arg1)
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
		__FUNC_7503_(registerVal4, {})
		local function __FUNC_76B5_(arg0, arg1)
			local function __FUNC_782F_(arg0, arg1)
				local function __FUNC_79A7_(arg0, arg1)
					local function __FUNC_7B1F_(arg0, arg1)
						local function __FUNC_7C74_(arg0, arg1)
							local function __FUNC_7DEF_(arg0, arg1)
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
								__FUNC_7DEF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DEF_)
						end

						if arg1.interrupted then
							__FUNC_7C74_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C74_)
					end

					if arg1.interrupted then
						__FUNC_7B1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B1F_)
				end

				if arg1.interrupted then
					__FUNC_79A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79A7_)
			end

			if arg1.interrupted then
				__FUNC_782F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_782F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_76B5_(registerVal14, {})
		local function __FUNC_7FA1_(arg0, arg1)
			local function __FUNC_811B_(arg0, arg1)
				local function __FUNC_8293_(arg0, arg1)
					local function __FUNC_840B_(arg0, arg1)
						local function __FUNC_8560_(arg0, arg1)
							local function __FUNC_86DB_(arg0, arg1)
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
								__FUNC_86DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86DB_)
						end

						if arg1.interrupted then
							__FUNC_8560_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8560_)
					end

					if arg1.interrupted then
						__FUNC_840B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_840B_)
				end

				if arg1.interrupted then
					__FUNC_8293_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8293_)
			end

			if arg1.interrupted then
				__FUNC_811B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_811B_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7FA1_(registerVal15, {})
		local function __FUNC_888D_(arg0, arg1)
			local function __FUNC_89E4_(arg0, arg1)
				local function __FUNC_8B5F_(arg0, arg1)
					local function __FUNC_8CD7_(arg0, arg1)
						local function __FUNC_8E4F_(arg0, arg1)
							local function __FUNC_8FA4_(arg0, arg1)
								local function __FUNC_911F_(arg0, arg1)
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
									__FUNC_911F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_911F_)
							end

							if arg1.interrupted then
								__FUNC_8FA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FA4_)
						end

						if arg1.interrupted then
							__FUNC_8E4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E4F_)
					end

					if arg1.interrupted then
						__FUNC_8CD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CD7_)
				end

				if arg1.interrupted then
					__FUNC_8B5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B5F_)
			end

			if arg1.interrupted then
				__FUNC_89E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89E4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_888D_(registerVal16, {})
		local function __FUNC_92D1_(arg0, arg1)
			local function __FUNC_9428_(arg0, arg1)
				local function __FUNC_95A3_(arg0, arg1)
					local function __FUNC_96F8_(arg0, arg1)
						local function __FUNC_9873_(arg0, arg1)
							local function __FUNC_99C8_(arg0, arg1)
								local function __FUNC_9B43_(arg0, arg1)
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
									__FUNC_9B43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B43_)
							end

							if arg1.interrupted then
								__FUNC_99C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99C8_)
						end

						if arg1.interrupted then
							__FUNC_9873_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9873_)
					end

					if arg1.interrupted then
						__FUNC_96F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96F8_)
				end

				if arg1.interrupted then
					__FUNC_95A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95A3_)
			end

			if arg1.interrupted then
				__FUNC_9428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9428_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_92D1_(registerVal17, {})
		local function __FUNC_9CF5_(arg0, arg1)
			local function __FUNC_9E4C_(arg0, arg1)
				local function __FUNC_9FC7_(arg0, arg1)
					local function __FUNC_A11C_(arg0, arg1)
						local function __FUNC_A297_(arg0, arg1)
							local function __FUNC_A3EC_(arg0, arg1)
								local function __FUNC_A567_(arg0, arg1)
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
									__FUNC_A567_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A567_)
							end

							if arg1.interrupted then
								__FUNC_A3EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3EC_)
						end

						if arg1.interrupted then
							__FUNC_A297_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A297_)
					end

					if arg1.interrupted then
						__FUNC_A11C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A11C_)
				end

				if arg1.interrupted then
					__FUNC_9FC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FC7_)
			end

			if arg1.interrupted then
				__FUNC_9E4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E4C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_9CF5_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_7272_
	registerVal28.DefaultState = registerVal29
	registerVal29 = {}
	local function __FUNC_A719_()
		registerVal2:setupElementClipCounter(22.000000)
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
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_A719_
	local function __FUNC_AFA0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_B1D5_(arg0, arg1)
			local function __FUNC_B32C_(arg0, arg1)
				local function __FUNC_B4A7_(arg0, arg1)
					local function __FUNC_B5FC_(arg0, arg1)
						local function __FUNC_B777_(arg0, arg1)
							local function __FUNC_B8CC_(arg0, arg1)
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
								__FUNC_B8CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8CC_)
						end

						if arg1.interrupted then
							__FUNC_B777_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B777_)
					end

					if arg1.interrupted then
						__FUNC_B5FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5FC_)
				end

				if arg1.interrupted then
					__FUNC_B4A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4A7_)
			end

			if arg1.interrupted then
				__FUNC_B32C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B32C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_B1D5_(registerVal14, {})
		local function __FUNC_BA81_(arg0, arg1)
			local function __FUNC_BBD8_(arg0, arg1)
				local function __FUNC_BD53_(arg0, arg1)
					local function __FUNC_BEA8_(arg0, arg1)
						local function __FUNC_C023_(arg0, arg1)
							local function __FUNC_C178_(arg0, arg1)
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
								__FUNC_C178_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C178_)
						end

						if arg1.interrupted then
							__FUNC_C023_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C023_)
					end

					if arg1.interrupted then
						__FUNC_BEA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEA8_)
				end

				if arg1.interrupted then
					__FUNC_BD53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD53_)
			end

			if arg1.interrupted then
				__FUNC_BBD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBD8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_BA81_(registerVal15, {})
		local function __FUNC_C32D_(arg0, arg1)
			local function __FUNC_C484_(arg0, arg1)
				local function __FUNC_C5FF_(arg0, arg1)
					local function __FUNC_C777_(arg0, arg1)
						local function __FUNC_C8EF_(arg0, arg1)
							local function __FUNC_CA44_(arg0, arg1)
								local function __FUNC_CBBF_(arg0, arg1)
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
									__FUNC_CBBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBBF_)
							end

							if arg1.interrupted then
								__FUNC_CA44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA44_)
						end

						if arg1.interrupted then
							__FUNC_C8EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8EF_)
					end

					if arg1.interrupted then
						__FUNC_C777_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C777_)
				end

				if arg1.interrupted then
					__FUNC_C5FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5FF_)
			end

			if arg1.interrupted then
				__FUNC_C484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C484_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_C32D_(registerVal16, {})
		local function __FUNC_CD71_(arg0, arg1)
			local function __FUNC_CEC8_(arg0, arg1)
				local function __FUNC_D043_(arg0, arg1)
					local function __FUNC_D198_(arg0, arg1)
						local function __FUNC_D313_(arg0, arg1)
							local function __FUNC_D468_(arg0, arg1)
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
								__FUNC_D468_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D468_)
						end

						if arg1.interrupted then
							__FUNC_D313_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D313_)
					end

					if arg1.interrupted then
						__FUNC_D198_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D198_)
				end

				if arg1.interrupted then
					__FUNC_D043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D043_)
			end

			if arg1.interrupted then
				__FUNC_CEC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEC8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_CD71_(registerVal17, {})
		local function __FUNC_D61D_(arg0, arg1)
			local function __FUNC_D774_(arg0, arg1)
				local function __FUNC_D8EF_(arg0, arg1)
					local function __FUNC_DA44_(arg0, arg1)
						local function __FUNC_DBBF_(arg0, arg1)
							local function __FUNC_DD14_(arg0, arg1)
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
								__FUNC_DD14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD14_)
						end

						if arg1.interrupted then
							__FUNC_DBBF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBBF_)
					end

					if arg1.interrupted then
						__FUNC_DA44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA44_)
				end

				if arg1.interrupted then
					__FUNC_D8EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8EF_)
			end

			if arg1.interrupted then
				__FUNC_D774_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D774_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_D61D_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_AFA0_
	local function __FUNC_DEC9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
	end

	registerVal29.Focus = __FUNC_DEC9_
	local function __FUNC_E127_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_E359_(arg0, arg1)
			local function __FUNC_E4D3_(arg0, arg1)
				local function __FUNC_E64B_(arg0, arg1)
					local function __FUNC_E7C3_(arg0, arg1)
						local function __FUNC_E918_(arg0, arg1)
							local function __FUNC_EA93_(arg0, arg1)
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
								__FUNC_EA93_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA93_)
						end

						if arg1.interrupted then
							__FUNC_E918_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E918_)
					end

					if arg1.interrupted then
						__FUNC_E7C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7C3_)
				end

				if arg1.interrupted then
					__FUNC_E64B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E64B_)
			end

			if arg1.interrupted then
				__FUNC_E4D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4D3_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_E359_(registerVal14, {})
		local function __FUNC_EC45_(arg0, arg1)
			local function __FUNC_EDBF_(arg0, arg1)
				local function __FUNC_EF37_(arg0, arg1)
					local function __FUNC_F0AF_(arg0, arg1)
						local function __FUNC_F204_(arg0, arg1)
							local function __FUNC_F37F_(arg0, arg1)
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
								__FUNC_F37F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F37F_)
						end

						if arg1.interrupted then
							__FUNC_F204_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F204_)
					end

					if arg1.interrupted then
						__FUNC_F0AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0AF_)
				end

				if arg1.interrupted then
					__FUNC_EF37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF37_)
			end

			if arg1.interrupted then
				__FUNC_EDBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDBF_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_EC45_(registerVal15, {})
		local function __FUNC_F531_(arg0, arg1)
			local function __FUNC_F688_(arg0, arg1)
				local function __FUNC_F803_(arg0, arg1)
					local function __FUNC_F97B_(arg0, arg1)
						local function __FUNC_FAF3_(arg0, arg1)
							local function __FUNC_FC48_(arg0, arg1)
								local function __FUNC_FDC3_(arg0, arg1)
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
									__FUNC_FDC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDC3_)
							end

							if arg1.interrupted then
								__FUNC_FC48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC48_)
						end

						if arg1.interrupted then
							__FUNC_FAF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAF3_)
					end

					if arg1.interrupted then
						__FUNC_F97B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F97B_)
				end

				if arg1.interrupted then
					__FUNC_F803_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F803_)
			end

			if arg1.interrupted then
				__FUNC_F688_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F688_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_F531_(registerVal16, {})
		local function __FUNC_FF75_(arg0, arg1)
			local function __FUNC_100CC_(arg0, arg1)
				local function __FUNC_10247_(arg0, arg1)
					local function __FUNC_1039C_(arg0, arg1)
						local function __FUNC_10517_(arg0, arg1)
							local function __FUNC_1066C_(arg0, arg1)
								local function __FUNC_107E7_(arg0, arg1)
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
									__FUNC_107E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107E7_)
							end

							if arg1.interrupted then
								__FUNC_1066C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1066C_)
						end

						if arg1.interrupted then
							__FUNC_10517_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10517_)
					end

					if arg1.interrupted then
						__FUNC_1039C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1039C_)
				end

				if arg1.interrupted then
					__FUNC_10247_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10247_)
			end

			if arg1.interrupted then
				__FUNC_100CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100CC_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_FF75_(registerVal17, {})
		local function __FUNC_10999_(arg0, arg1)
			local function __FUNC_10AF0_(arg0, arg1)
				local function __FUNC_10C6B_(arg0, arg1)
					local function __FUNC_10DC0_(arg0, arg1)
						local function __FUNC_10F3B_(arg0, arg1)
							local function __FUNC_11090_(arg0, arg1)
								local function __FUNC_1120B_(arg0, arg1)
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
									__FUNC_1120B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1120B_)
							end

							if arg1.interrupted then
								__FUNC_11090_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11090_)
						end

						if arg1.interrupted then
							__FUNC_10F3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F3B_)
					end

					if arg1.interrupted then
						__FUNC_10DC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DC0_)
				end

				if arg1.interrupted then
					__FUNC_10C6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C6B_)
			end

			if arg1.interrupted then
				__FUNC_10AF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10AF0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10999_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_E127_
	registerVal28.Equipped = registerVal29
	registerVal29 = {}
	local function __FUNC_113BD_()
		registerVal2:setupElementClipCounter(23.000000)
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
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_113BD_
	local function __FUNC_11CA0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_11F47_(arg0, arg1)
			local function __FUNC_1209C_(arg0, arg1)
				local function __FUNC_12217_(arg0, arg1)
					local function __FUNC_1236C_(arg0, arg1)
						local function __FUNC_124E7_(arg0, arg1)
							local function __FUNC_1263C_(arg0, arg1)
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
								__FUNC_1263C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1263C_)
						end

						if arg1.interrupted then
							__FUNC_124E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_124E7_)
					end

					if arg1.interrupted then
						__FUNC_1236C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1236C_)
				end

				if arg1.interrupted then
					__FUNC_12217_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12217_)
			end

			if arg1.interrupted then
				__FUNC_1209C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1209C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_11F47_(registerVal14, {})
		local function __FUNC_127F1_(arg0, arg1)
			local function __FUNC_12948_(arg0, arg1)
				local function __FUNC_12AC3_(arg0, arg1)
					local function __FUNC_12C18_(arg0, arg1)
						local function __FUNC_12D93_(arg0, arg1)
							local function __FUNC_12EE8_(arg0, arg1)
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
								__FUNC_12EE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EE8_)
						end

						if arg1.interrupted then
							__FUNC_12D93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D93_)
					end

					if arg1.interrupted then
						__FUNC_12C18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C18_)
				end

				if arg1.interrupted then
					__FUNC_12AC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AC3_)
			end

			if arg1.interrupted then
				__FUNC_12948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12948_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_127F1_(registerVal15, {})
		local function __FUNC_1309D_(arg0, arg1)
			local function __FUNC_131F4_(arg0, arg1)
				local function __FUNC_1336F_(arg0, arg1)
					local function __FUNC_134E7_(arg0, arg1)
						local function __FUNC_1365F_(arg0, arg1)
							local function __FUNC_137B4_(arg0, arg1)
								local function __FUNC_1392F_(arg0, arg1)
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
									__FUNC_1392F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1392F_)
							end

							if arg1.interrupted then
								__FUNC_137B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137B4_)
						end

						if arg1.interrupted then
							__FUNC_1365F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1365F_)
					end

					if arg1.interrupted then
						__FUNC_134E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134E7_)
				end

				if arg1.interrupted then
					__FUNC_1336F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1336F_)
			end

			if arg1.interrupted then
				__FUNC_131F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131F4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1309D_(registerVal16, {})
		local function __FUNC_13AE1_(arg0, arg1)
			local function __FUNC_13C38_(arg0, arg1)
				local function __FUNC_13DB3_(arg0, arg1)
					local function __FUNC_13F08_(arg0, arg1)
						local function __FUNC_14083_(arg0, arg1)
							local function __FUNC_141D8_(arg0, arg1)
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
								__FUNC_141D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141D8_)
						end

						if arg1.interrupted then
							__FUNC_14083_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14083_)
					end

					if arg1.interrupted then
						__FUNC_13F08_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F08_)
				end

				if arg1.interrupted then
					__FUNC_13DB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13DB3_)
			end

			if arg1.interrupted then
				__FUNC_13C38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C38_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_13AE1_(registerVal17, {})
		local function __FUNC_1438D_(arg0, arg1)
			local function __FUNC_144E4_(arg0, arg1)
				local function __FUNC_1465F_(arg0, arg1)
					local function __FUNC_147B4_(arg0, arg1)
						local function __FUNC_1492F_(arg0, arg1)
							local function __FUNC_14A84_(arg0, arg1)
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
								__FUNC_14A84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A84_)
						end

						if arg1.interrupted then
							__FUNC_1492F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1492F_)
					end

					if arg1.interrupted then
						__FUNC_147B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147B4_)
				end

				if arg1.interrupted then
					__FUNC_1465F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1465F_)
			end

			if arg1.interrupted then
				__FUNC_144E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144E4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1438D_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_11CA0_
	local function __FUNC_14C39_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
	end

	registerVal29.Focus = __FUNC_14C39_
	local function __FUNC_14EF3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_15197_(arg0, arg1)
			local function __FUNC_1530F_(arg0, arg1)
				local function __FUNC_15487_(arg0, arg1)
					local function __FUNC_155FF_(arg0, arg1)
						local function __FUNC_15754_(arg0, arg1)
							local function __FUNC_158CF_(arg0, arg1)
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
								__FUNC_158CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158CF_)
						end

						if arg1.interrupted then
							__FUNC_15754_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15754_)
					end

					if arg1.interrupted then
						__FUNC_155FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155FF_)
				end

				if arg1.interrupted then
					__FUNC_15487_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15487_)
			end

			if arg1.interrupted then
				__FUNC_1530F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1530F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_15197_(registerVal14, {})
		local function __FUNC_15A81_(arg0, arg1)
			local function __FUNC_15BFB_(arg0, arg1)
				local function __FUNC_15D73_(arg0, arg1)
					local function __FUNC_15EEB_(arg0, arg1)
						local function __FUNC_16040_(arg0, arg1)
							local function __FUNC_161BB_(arg0, arg1)
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
								__FUNC_161BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161BB_)
						end

						if arg1.interrupted then
							__FUNC_16040_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16040_)
					end

					if arg1.interrupted then
						__FUNC_15EEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15EEB_)
				end

				if arg1.interrupted then
					__FUNC_15D73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D73_)
			end

			if arg1.interrupted then
				__FUNC_15BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BFB_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_15A81_(registerVal15, {})
		local function __FUNC_1636D_(arg0, arg1)
			local function __FUNC_164C4_(arg0, arg1)
				local function __FUNC_1663F_(arg0, arg1)
					local function __FUNC_167B7_(arg0, arg1)
						local function __FUNC_1692F_(arg0, arg1)
							local function __FUNC_16A84_(arg0, arg1)
								local function __FUNC_16BFF_(arg0, arg1)
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
									__FUNC_16BFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BFF_)
							end

							if arg1.interrupted then
								__FUNC_16A84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A84_)
						end

						if arg1.interrupted then
							__FUNC_1692F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1692F_)
					end

					if arg1.interrupted then
						__FUNC_167B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167B7_)
				end

				if arg1.interrupted then
					__FUNC_1663F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1663F_)
			end

			if arg1.interrupted then
				__FUNC_164C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164C4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1636D_(registerVal16, {})
		local function __FUNC_16DB1_(arg0, arg1)
			local function __FUNC_16F08_(arg0, arg1)
				local function __FUNC_17083_(arg0, arg1)
					local function __FUNC_171D8_(arg0, arg1)
						local function __FUNC_17353_(arg0, arg1)
							local function __FUNC_174A8_(arg0, arg1)
								local function __FUNC_17623_(arg0, arg1)
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
									__FUNC_17623_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17623_)
							end

							if arg1.interrupted then
								__FUNC_174A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174A8_)
						end

						if arg1.interrupted then
							__FUNC_17353_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17353_)
					end

					if arg1.interrupted then
						__FUNC_171D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171D8_)
				end

				if arg1.interrupted then
					__FUNC_17083_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17083_)
			end

			if arg1.interrupted then
				__FUNC_16F08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F08_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_16DB1_(registerVal17, {})
		local function __FUNC_177D5_(arg0, arg1)
			local function __FUNC_1792C_(arg0, arg1)
				local function __FUNC_17AA7_(arg0, arg1)
					local function __FUNC_17BFC_(arg0, arg1)
						local function __FUNC_17D77_(arg0, arg1)
							local function __FUNC_17ECC_(arg0, arg1)
								local function __FUNC_18047_(arg0, arg1)
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
									__FUNC_18047_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18047_)
							end

							if arg1.interrupted then
								__FUNC_17ECC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17ECC_)
						end

						if arg1.interrupted then
							__FUNC_17D77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D77_)
					end

					if arg1.interrupted then
						__FUNC_17BFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BFC_)
				end

				if arg1.interrupted then
					__FUNC_17AA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17AA7_)
			end

			if arg1.interrupted then
				__FUNC_1792C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1792C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_177D5_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_14EF3_
	registerVal28.BMClassified = registerVal29
	registerVal29 = {}
	local function __FUNC_181F9_()
		registerVal2:setupElementClipCounter(22.000000)
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
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_181F9_
	local function __FUNC_18A80_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_18CB5_(arg0, arg1)
			local function __FUNC_18E0C_(arg0, arg1)
				local function __FUNC_18F87_(arg0, arg1)
					local function __FUNC_190DC_(arg0, arg1)
						local function __FUNC_19257_(arg0, arg1)
							local function __FUNC_193AC_(arg0, arg1)
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
								__FUNC_193AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193AC_)
						end

						if arg1.interrupted then
							__FUNC_19257_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19257_)
					end

					if arg1.interrupted then
						__FUNC_190DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_190DC_)
				end

				if arg1.interrupted then
					__FUNC_18F87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F87_)
			end

			if arg1.interrupted then
				__FUNC_18E0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E0C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_18CB5_(registerVal14, {})
		local function __FUNC_19561_(arg0, arg1)
			local function __FUNC_196B8_(arg0, arg1)
				local function __FUNC_19833_(arg0, arg1)
					local function __FUNC_19988_(arg0, arg1)
						local function __FUNC_19B03_(arg0, arg1)
							local function __FUNC_19C58_(arg0, arg1)
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
								__FUNC_19C58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C58_)
						end

						if arg1.interrupted then
							__FUNC_19B03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B03_)
					end

					if arg1.interrupted then
						__FUNC_19988_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19988_)
				end

				if arg1.interrupted then
					__FUNC_19833_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19833_)
			end

			if arg1.interrupted then
				__FUNC_196B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196B8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_19561_(registerVal15, {})
		local function __FUNC_19E0D_(arg0, arg1)
			local function __FUNC_19F64_(arg0, arg1)
				local function __FUNC_1A0DF_(arg0, arg1)
					local function __FUNC_1A257_(arg0, arg1)
						local function __FUNC_1A3CF_(arg0, arg1)
							local function __FUNC_1A524_(arg0, arg1)
								local function __FUNC_1A69F_(arg0, arg1)
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
									__FUNC_1A69F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A69F_)
							end

							if arg1.interrupted then
								__FUNC_1A524_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A524_)
						end

						if arg1.interrupted then
							__FUNC_1A3CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A3CF_)
					end

					if arg1.interrupted then
						__FUNC_1A257_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A257_)
				end

				if arg1.interrupted then
					__FUNC_1A0DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A0DF_)
			end

			if arg1.interrupted then
				__FUNC_19F64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F64_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_19E0D_(registerVal16, {})
		local function __FUNC_1A851_(arg0, arg1)
			local function __FUNC_1A9A8_(arg0, arg1)
				local function __FUNC_1AB23_(arg0, arg1)
					local function __FUNC_1AC78_(arg0, arg1)
						local function __FUNC_1ADF3_(arg0, arg1)
							local function __FUNC_1AF48_(arg0, arg1)
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
								__FUNC_1AF48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF48_)
						end

						if arg1.interrupted then
							__FUNC_1ADF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ADF3_)
					end

					if arg1.interrupted then
						__FUNC_1AC78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC78_)
				end

				if arg1.interrupted then
					__FUNC_1AB23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB23_)
			end

			if arg1.interrupted then
				__FUNC_1A9A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A9A8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1A851_(registerVal17, {})
		local function __FUNC_1B0FD_(arg0, arg1)
			local function __FUNC_1B254_(arg0, arg1)
				local function __FUNC_1B3CF_(arg0, arg1)
					local function __FUNC_1B524_(arg0, arg1)
						local function __FUNC_1B69F_(arg0, arg1)
							local function __FUNC_1B7F4_(arg0, arg1)
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
								__FUNC_1B7F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7F4_)
						end

						if arg1.interrupted then
							__FUNC_1B69F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B69F_)
					end

					if arg1.interrupted then
						__FUNC_1B524_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B524_)
				end

				if arg1.interrupted then
					__FUNC_1B3CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B3CF_)
			end

			if arg1.interrupted then
				__FUNC_1B254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B254_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1B0FD_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_18A80_
	local function __FUNC_1B9A9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
	end

	registerVal29.Focus = __FUNC_1B9A9_
	local function __FUNC_1BC07_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1BE39_(arg0, arg1)
			local function __FUNC_1BFB3_(arg0, arg1)
				local function __FUNC_1C12B_(arg0, arg1)
					local function __FUNC_1C2A3_(arg0, arg1)
						local function __FUNC_1C3F8_(arg0, arg1)
							local function __FUNC_1C573_(arg0, arg1)
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
								__FUNC_1C573_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C573_)
						end

						if arg1.interrupted then
							__FUNC_1C3F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C3F8_)
					end

					if arg1.interrupted then
						__FUNC_1C2A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C2A3_)
				end

				if arg1.interrupted then
					__FUNC_1C12B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C12B_)
			end

			if arg1.interrupted then
				__FUNC_1BFB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BFB3_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1BE39_(registerVal14, {})
		local function __FUNC_1C725_(arg0, arg1)
			local function __FUNC_1C89F_(arg0, arg1)
				local function __FUNC_1CA17_(arg0, arg1)
					local function __FUNC_1CB8F_(arg0, arg1)
						local function __FUNC_1CCE4_(arg0, arg1)
							local function __FUNC_1CE5F_(arg0, arg1)
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
								__FUNC_1CE5F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE5F_)
						end

						if arg1.interrupted then
							__FUNC_1CCE4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCE4_)
					end

					if arg1.interrupted then
						__FUNC_1CB8F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB8F_)
				end

				if arg1.interrupted then
					__FUNC_1CA17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CA17_)
			end

			if arg1.interrupted then
				__FUNC_1C89F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C89F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1C725_(registerVal15, {})
		local function __FUNC_1D011_(arg0, arg1)
			local function __FUNC_1D168_(arg0, arg1)
				local function __FUNC_1D2E3_(arg0, arg1)
					local function __FUNC_1D45B_(arg0, arg1)
						local function __FUNC_1D5D3_(arg0, arg1)
							local function __FUNC_1D728_(arg0, arg1)
								local function __FUNC_1D8A3_(arg0, arg1)
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
									__FUNC_1D8A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D8A3_)
							end

							if arg1.interrupted then
								__FUNC_1D728_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D728_)
						end

						if arg1.interrupted then
							__FUNC_1D5D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D5D3_)
					end

					if arg1.interrupted then
						__FUNC_1D45B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D45B_)
				end

				if arg1.interrupted then
					__FUNC_1D2E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2E3_)
			end

			if arg1.interrupted then
				__FUNC_1D168_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D168_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1D011_(registerVal16, {})
		local function __FUNC_1DA55_(arg0, arg1)
			local function __FUNC_1DBAC_(arg0, arg1)
				local function __FUNC_1DD27_(arg0, arg1)
					local function __FUNC_1DE7C_(arg0, arg1)
						local function __FUNC_1DFF7_(arg0, arg1)
							local function __FUNC_1E14C_(arg0, arg1)
								local function __FUNC_1E2C7_(arg0, arg1)
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
									__FUNC_1E2C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E2C7_)
							end

							if arg1.interrupted then
								__FUNC_1E14C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E14C_)
						end

						if arg1.interrupted then
							__FUNC_1DFF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DFF7_)
					end

					if arg1.interrupted then
						__FUNC_1DE7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE7C_)
				end

				if arg1.interrupted then
					__FUNC_1DD27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD27_)
			end

			if arg1.interrupted then
				__FUNC_1DBAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBAC_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1DA55_(registerVal17, {})
		local function __FUNC_1E479_(arg0, arg1)
			local function __FUNC_1E5D0_(arg0, arg1)
				local function __FUNC_1E74B_(arg0, arg1)
					local function __FUNC_1E8A0_(arg0, arg1)
						local function __FUNC_1EA1B_(arg0, arg1)
							local function __FUNC_1EB70_(arg0, arg1)
								local function __FUNC_1ECEB_(arg0, arg1)
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
									__FUNC_1ECEB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ECEB_)
							end

							if arg1.interrupted then
								__FUNC_1EB70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB70_)
						end

						if arg1.interrupted then
							__FUNC_1EA1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA1B_)
					end

					if arg1.interrupted then
						__FUNC_1E8A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8A0_)
				end

				if arg1.interrupted then
					__FUNC_1E74B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E74B_)
			end

			if arg1.interrupted then
				__FUNC_1E5D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E5D0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1E479_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_1BC07_
	registerVal28.ChallengeClassified = registerVal29
	registerVal29 = {}
	local function __FUNC_1EE9D_()
		registerVal2:setupElementClipCounter(23.000000)
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
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_1EE9D_
	local function __FUNC_1F780_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1FB8F_(arg0, arg1)
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
		__FUNC_1FB8F_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1FD41_(arg0, arg1)
			local function __FUNC_1FE98_(arg0, arg1)
				local function __FUNC_20013_(arg0, arg1)
					local function __FUNC_20168_(arg0, arg1)
						local function __FUNC_202E3_(arg0, arg1)
							local function __FUNC_20438_(arg0, arg1)
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
								__FUNC_20438_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20438_)
						end

						if arg1.interrupted then
							__FUNC_202E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_202E3_)
					end

					if arg1.interrupted then
						__FUNC_20168_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20168_)
				end

				if arg1.interrupted then
					__FUNC_20013_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20013_)
			end

			if arg1.interrupted then
				__FUNC_1FE98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE98_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1FD41_(registerVal14, {})
		local function __FUNC_205ED_(arg0, arg1)
			local function __FUNC_20744_(arg0, arg1)
				local function __FUNC_208BF_(arg0, arg1)
					local function __FUNC_20A14_(arg0, arg1)
						local function __FUNC_20B8F_(arg0, arg1)
							local function __FUNC_20CE4_(arg0, arg1)
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
								__FUNC_20CE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20CE4_)
						end

						if arg1.interrupted then
							__FUNC_20B8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20B8F_)
					end

					if arg1.interrupted then
						__FUNC_20A14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A14_)
				end

				if arg1.interrupted then
					__FUNC_208BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208BF_)
			end

			if arg1.interrupted then
				__FUNC_20744_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20744_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_205ED_(registerVal15, {})
		local function __FUNC_20E99_(arg0, arg1)
			local function __FUNC_20FF0_(arg0, arg1)
				local function __FUNC_2116B_(arg0, arg1)
					local function __FUNC_212E3_(arg0, arg1)
						local function __FUNC_2145B_(arg0, arg1)
							local function __FUNC_215B0_(arg0, arg1)
								local function __FUNC_2172B_(arg0, arg1)
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
									__FUNC_2172B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2172B_)
							end

							if arg1.interrupted then
								__FUNC_215B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215B0_)
						end

						if arg1.interrupted then
							__FUNC_2145B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2145B_)
					end

					if arg1.interrupted then
						__FUNC_212E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_212E3_)
				end

				if arg1.interrupted then
					__FUNC_2116B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2116B_)
			end

			if arg1.interrupted then
				__FUNC_20FF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FF0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_20E99_(registerVal16, {})
		local function __FUNC_218DD_(arg0, arg1)
			local function __FUNC_21A34_(arg0, arg1)
				local function __FUNC_21BAF_(arg0, arg1)
					local function __FUNC_21D04_(arg0, arg1)
						local function __FUNC_21E7F_(arg0, arg1)
							local function __FUNC_21FD4_(arg0, arg1)
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
								__FUNC_21FD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21FD4_)
						end

						if arg1.interrupted then
							__FUNC_21E7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E7F_)
					end

					if arg1.interrupted then
						__FUNC_21D04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D04_)
				end

				if arg1.interrupted then
					__FUNC_21BAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BAF_)
			end

			if arg1.interrupted then
				__FUNC_21A34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A34_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_218DD_(registerVal17, {})
		local function __FUNC_22189_(arg0, arg1)
			local function __FUNC_222E0_(arg0, arg1)
				local function __FUNC_2245B_(arg0, arg1)
					local function __FUNC_225B0_(arg0, arg1)
						local function __FUNC_2272B_(arg0, arg1)
							local function __FUNC_22880_(arg0, arg1)
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
								__FUNC_22880_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22880_)
						end

						if arg1.interrupted then
							__FUNC_2272B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2272B_)
					end

					if arg1.interrupted then
						__FUNC_225B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_225B0_)
				end

				if arg1.interrupted then
					__FUNC_2245B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2245B_)
			end

			if arg1.interrupted then
				__FUNC_222E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_222E0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_22189_(registerVal18, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal29.GainFocus = __FUNC_1F780_
	local function __FUNC_22A35_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal29.Focus = __FUNC_22A35_
	local function __FUNC_22D59_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_23167_(arg0, arg1)
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
		__FUNC_23167_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_23319_(arg0, arg1)
			local function __FUNC_23493_(arg0, arg1)
				local function __FUNC_2360B_(arg0, arg1)
					local function __FUNC_23783_(arg0, arg1)
						local function __FUNC_238D8_(arg0, arg1)
							local function __FUNC_23A53_(arg0, arg1)
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
								__FUNC_23A53_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A53_)
						end

						if arg1.interrupted then
							__FUNC_238D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238D8_)
					end

					if arg1.interrupted then
						__FUNC_23783_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23783_)
				end

				if arg1.interrupted then
					__FUNC_2360B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2360B_)
			end

			if arg1.interrupted then
				__FUNC_23493_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23493_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_23319_(registerVal14, {})
		local function __FUNC_23C05_(arg0, arg1)
			local function __FUNC_23D7F_(arg0, arg1)
				local function __FUNC_23EF7_(arg0, arg1)
					local function __FUNC_2406F_(arg0, arg1)
						local function __FUNC_241C4_(arg0, arg1)
							local function __FUNC_2433F_(arg0, arg1)
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
								__FUNC_2433F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2433F_)
						end

						if arg1.interrupted then
							__FUNC_241C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_241C4_)
					end

					if arg1.interrupted then
						__FUNC_2406F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2406F_)
				end

				if arg1.interrupted then
					__FUNC_23EF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23EF7_)
			end

			if arg1.interrupted then
				__FUNC_23D7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D7F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_23C05_(registerVal15, {})
		local function __FUNC_244F1_(arg0, arg1)
			local function __FUNC_24648_(arg0, arg1)
				local function __FUNC_247C3_(arg0, arg1)
					local function __FUNC_2493B_(arg0, arg1)
						local function __FUNC_24AB3_(arg0, arg1)
							local function __FUNC_24C08_(arg0, arg1)
								local function __FUNC_24D83_(arg0, arg1)
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
									__FUNC_24D83_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D83_)
							end

							if arg1.interrupted then
								__FUNC_24C08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C08_)
						end

						if arg1.interrupted then
							__FUNC_24AB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24AB3_)
					end

					if arg1.interrupted then
						__FUNC_2493B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2493B_)
				end

				if arg1.interrupted then
					__FUNC_247C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_247C3_)
			end

			if arg1.interrupted then
				__FUNC_24648_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24648_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_244F1_(registerVal16, {})
		local function __FUNC_24F35_(arg0, arg1)
			local function __FUNC_2508C_(arg0, arg1)
				local function __FUNC_25207_(arg0, arg1)
					local function __FUNC_2535C_(arg0, arg1)
						local function __FUNC_254D7_(arg0, arg1)
							local function __FUNC_2562C_(arg0, arg1)
								local function __FUNC_257A7_(arg0, arg1)
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
									__FUNC_257A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_257A7_)
							end

							if arg1.interrupted then
								__FUNC_2562C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2562C_)
						end

						if arg1.interrupted then
							__FUNC_254D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254D7_)
					end

					if arg1.interrupted then
						__FUNC_2535C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2535C_)
				end

				if arg1.interrupted then
					__FUNC_25207_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25207_)
			end

			if arg1.interrupted then
				__FUNC_2508C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2508C_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_24F35_(registerVal17, {})
		local function __FUNC_25959_(arg0, arg1)
			local function __FUNC_25AB0_(arg0, arg1)
				local function __FUNC_25C2B_(arg0, arg1)
					local function __FUNC_25D80_(arg0, arg1)
						local function __FUNC_25EFB_(arg0, arg1)
							local function __FUNC_26050_(arg0, arg1)
								local function __FUNC_261CB_(arg0, arg1)
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
									__FUNC_261CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_261CB_)
							end

							if arg1.interrupted then
								__FUNC_26050_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26050_)
						end

						if arg1.interrupted then
							__FUNC_25EFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25EFB_)
					end

					if arg1.interrupted then
						__FUNC_25D80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D80_)
				end

				if arg1.interrupted then
					__FUNC_25C2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C2B_)
			end

			if arg1.interrupted then
				__FUNC_25AB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25AB0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_25959_(registerVal18, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal29.LoseFocus = __FUNC_22D59_
	registerVal28.Package = registerVal29
	registerVal29 = {}
	local function __FUNC_2637D_()
		registerVal2:setupElementClipCounter(22.000000)
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
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_2637D_
	local function __FUNC_26C09_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_26E3D_(arg0, arg1)
			local function __FUNC_26F94_(arg0, arg1)
				local function __FUNC_2710F_(arg0, arg1)
					local function __FUNC_27264_(arg0, arg1)
						local function __FUNC_273DF_(arg0, arg1)
							local function __FUNC_27534_(arg0, arg1)
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
								__FUNC_27534_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27534_)
						end

						if arg1.interrupted then
							__FUNC_273DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273DF_)
					end

					if arg1.interrupted then
						__FUNC_27264_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27264_)
				end

				if arg1.interrupted then
					__FUNC_2710F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2710F_)
			end

			if arg1.interrupted then
				__FUNC_26F94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F94_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_26E3D_(registerVal14, {})
		local function __FUNC_276E9_(arg0, arg1)
			local function __FUNC_27840_(arg0, arg1)
				local function __FUNC_279BB_(arg0, arg1)
					local function __FUNC_27B10_(arg0, arg1)
						local function __FUNC_27C8B_(arg0, arg1)
							local function __FUNC_27DE0_(arg0, arg1)
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
								__FUNC_27DE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27DE0_)
						end

						if arg1.interrupted then
							__FUNC_27C8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C8B_)
					end

					if arg1.interrupted then
						__FUNC_27B10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B10_)
				end

				if arg1.interrupted then
					__FUNC_279BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_279BB_)
			end

			if arg1.interrupted then
				__FUNC_27840_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27840_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_276E9_(registerVal15, {})
		local function __FUNC_27F95_(arg0, arg1)
			local function __FUNC_280EC_(arg0, arg1)
				local function __FUNC_28267_(arg0, arg1)
					local function __FUNC_283DF_(arg0, arg1)
						local function __FUNC_28557_(arg0, arg1)
							local function __FUNC_286AC_(arg0, arg1)
								local function __FUNC_28827_(arg0, arg1)
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
									__FUNC_28827_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28827_)
							end

							if arg1.interrupted then
								__FUNC_286AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_286AC_)
						end

						if arg1.interrupted then
							__FUNC_28557_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28557_)
					end

					if arg1.interrupted then
						__FUNC_283DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_283DF_)
				end

				if arg1.interrupted then
					__FUNC_28267_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28267_)
			end

			if arg1.interrupted then
				__FUNC_280EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280EC_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_27F95_(registerVal16, {})
		local function __FUNC_289D9_(arg0, arg1)
			local function __FUNC_28B30_(arg0, arg1)
				local function __FUNC_28CAB_(arg0, arg1)
					local function __FUNC_28E00_(arg0, arg1)
						local function __FUNC_28F7B_(arg0, arg1)
							local function __FUNC_290D0_(arg0, arg1)
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
								__FUNC_290D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_290D0_)
						end

						if arg1.interrupted then
							__FUNC_28F7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F7B_)
					end

					if arg1.interrupted then
						__FUNC_28E00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E00_)
				end

				if arg1.interrupted then
					__FUNC_28CAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28CAB_)
			end

			if arg1.interrupted then
				__FUNC_28B30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B30_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_289D9_(registerVal17, {})
		local function __FUNC_29285_(arg0, arg1)
			local function __FUNC_293DC_(arg0, arg1)
				local function __FUNC_29557_(arg0, arg1)
					local function __FUNC_296AC_(arg0, arg1)
						local function __FUNC_29827_(arg0, arg1)
							local function __FUNC_2997C_(arg0, arg1)
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
								__FUNC_2997C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2997C_)
						end

						if arg1.interrupted then
							__FUNC_29827_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29827_)
					end

					if arg1.interrupted then
						__FUNC_296AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_296AC_)
				end

				if arg1.interrupted then
					__FUNC_29557_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29557_)
			end

			if arg1.interrupted then
				__FUNC_293DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_293DC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_29285_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_26C09_
	local function __FUNC_29B31_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
	end

	registerVal29.Focus = __FUNC_29B31_
	local function __FUNC_29D8F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2A02E_(arg0, arg1)
			local function __FUNC_2A1A7_(arg0, arg1)
				local function __FUNC_2A31F_(arg0, arg1)
					local function __FUNC_2A497_(arg0, arg1)
						local function __FUNC_2A5EC_(arg0, arg1)
							local function __FUNC_2A767_(arg0, arg1)
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
								__FUNC_2A767_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A767_)
						end

						if arg1.interrupted then
							__FUNC_2A5EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A5EC_)
					end

					if arg1.interrupted then
						__FUNC_2A497_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A497_)
				end

				if arg1.interrupted then
					__FUNC_2A31F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A31F_)
			end

			if arg1.interrupted then
				__FUNC_2A1A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1A7_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2A02E_(registerVal14, {})
		local function __FUNC_2A919_(arg0, arg1)
			local function __FUNC_2AA93_(arg0, arg1)
				local function __FUNC_2AC0B_(arg0, arg1)
					local function __FUNC_2AD83_(arg0, arg1)
						local function __FUNC_2AED8_(arg0, arg1)
							local function __FUNC_2B053_(arg0, arg1)
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
								__FUNC_2B053_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B053_)
						end

						if arg1.interrupted then
							__FUNC_2AED8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AED8_)
					end

					if arg1.interrupted then
						__FUNC_2AD83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD83_)
				end

				if arg1.interrupted then
					__FUNC_2AC0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC0B_)
			end

			if arg1.interrupted then
				__FUNC_2AA93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA93_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2A919_(registerVal15, {})
		local function __FUNC_2B205_(arg0, arg1)
			local function __FUNC_2B35C_(arg0, arg1)
				local function __FUNC_2B4D7_(arg0, arg1)
					local function __FUNC_2B64F_(arg0, arg1)
						local function __FUNC_2B7C7_(arg0, arg1)
							local function __FUNC_2B91C_(arg0, arg1)
								local function __FUNC_2BA97_(arg0, arg1)
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
									__FUNC_2BA97_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA97_)
							end

							if arg1.interrupted then
								__FUNC_2B91C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B91C_)
						end

						if arg1.interrupted then
							__FUNC_2B7C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B7C7_)
					end

					if arg1.interrupted then
						__FUNC_2B64F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B64F_)
				end

				if arg1.interrupted then
					__FUNC_2B4D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4D7_)
			end

			if arg1.interrupted then
				__FUNC_2B35C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B35C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2B205_(registerVal16, {})
		local function __FUNC_2BC49_(arg0, arg1)
			local function __FUNC_2BDA0_(arg0, arg1)
				local function __FUNC_2BF1B_(arg0, arg1)
					local function __FUNC_2C070_(arg0, arg1)
						local function __FUNC_2C1EB_(arg0, arg1)
							local function __FUNC_2C340_(arg0, arg1)
								local function __FUNC_2C4BB_(arg0, arg1)
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
									__FUNC_2C4BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4BB_)
							end

							if arg1.interrupted then
								__FUNC_2C340_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C340_)
						end

						if arg1.interrupted then
							__FUNC_2C1EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C1EB_)
					end

					if arg1.interrupted then
						__FUNC_2C070_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C070_)
				end

				if arg1.interrupted then
					__FUNC_2BF1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF1B_)
			end

			if arg1.interrupted then
				__FUNC_2BDA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDA0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2BC49_(registerVal17, {})
		local function __FUNC_2C66D_(arg0, arg1)
			local function __FUNC_2C7C4_(arg0, arg1)
				local function __FUNC_2C93F_(arg0, arg1)
					local function __FUNC_2CA94_(arg0, arg1)
						local function __FUNC_2CC0F_(arg0, arg1)
							local function __FUNC_2CD64_(arg0, arg1)
								local function __FUNC_2CEDF_(arg0, arg1)
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
									__FUNC_2CEDF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CEDF_)
							end

							if arg1.interrupted then
								__FUNC_2CD64_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CD64_)
						end

						if arg1.interrupted then
							__FUNC_2CC0F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC0F_)
					end

					if arg1.interrupted then
						__FUNC_2CA94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA94_)
				end

				if arg1.interrupted then
					__FUNC_2C93F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C93F_)
			end

			if arg1.interrupted then
				__FUNC_2C7C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7C4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2C66D_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_29D8F_
	registerVal28.New = registerVal29
	registerVal29 = {}
	local function __FUNC_2D091_()
		registerVal2:setupElementClipCounter(23.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setLeftRight(true, false, 62.300000, 114.300000)
		registerVal2.BMContractsLockBars:setTopBottom(true, false, 34.000000, 69.000000)
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setLeftRight(true, false, -6.700000, 46.300000)
		registerVal2.BMContractsLockBars0:setTopBottom(true, false, 34.000000, 69.000000)
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setLeftRight(true, false, 17.000000, 90.000000)
		registerVal2.bmContractBrandIcon:setTopBottom(true, false, 16.500000, 89.500000)
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_2D091_
	local function __FUNC_2DAC7_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2DEF5_(arg0, arg1)
			local function __FUNC_2E04C_(arg0, arg1)
				local function __FUNC_2E1C7_(arg0, arg1)
					local function __FUNC_2E31C_(arg0, arg1)
						local function __FUNC_2E497_(arg0, arg1)
							local function __FUNC_2E5EC_(arg0, arg1)
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
								__FUNC_2E5EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5EC_)
						end

						if arg1.interrupted then
							__FUNC_2E497_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E497_)
					end

					if arg1.interrupted then
						__FUNC_2E31C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E31C_)
				end

				if arg1.interrupted then
					__FUNC_2E1C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E1C7_)
			end

			if arg1.interrupted then
				__FUNC_2E04C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E04C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2DEF5_(registerVal14, {})
		local function __FUNC_2E7A1_(arg0, arg1)
			local function __FUNC_2E8F8_(arg0, arg1)
				local function __FUNC_2EA73_(arg0, arg1)
					local function __FUNC_2EBC8_(arg0, arg1)
						local function __FUNC_2ED43_(arg0, arg1)
							local function __FUNC_2EE98_(arg0, arg1)
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
								__FUNC_2EE98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE98_)
						end

						if arg1.interrupted then
							__FUNC_2ED43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED43_)
					end

					if arg1.interrupted then
						__FUNC_2EBC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EBC8_)
				end

				if arg1.interrupted then
					__FUNC_2EA73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EA73_)
			end

			if arg1.interrupted then
				__FUNC_2E8F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8F8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2E7A1_(registerVal15, {})
		local function __FUNC_2F04D_(arg0, arg1)
			local function __FUNC_2F1A4_(arg0, arg1)
				local function __FUNC_2F31F_(arg0, arg1)
					local function __FUNC_2F497_(arg0, arg1)
						local function __FUNC_2F60F_(arg0, arg1)
							local function __FUNC_2F764_(arg0, arg1)
								local function __FUNC_2F8DF_(arg0, arg1)
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
									__FUNC_2F8DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F8DF_)
							end

							if arg1.interrupted then
								__FUNC_2F764_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F764_)
						end

						if arg1.interrupted then
							__FUNC_2F60F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F60F_)
					end

					if arg1.interrupted then
						__FUNC_2F497_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F497_)
				end

				if arg1.interrupted then
					__FUNC_2F31F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F31F_)
			end

			if arg1.interrupted then
				__FUNC_2F1A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F1A4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2F04D_(registerVal16, {})
		local function __FUNC_2FA91_(arg0, arg1)
			local function __FUNC_2FBE8_(arg0, arg1)
				local function __FUNC_2FD63_(arg0, arg1)
					local function __FUNC_2FEB8_(arg0, arg1)
						local function __FUNC_30033_(arg0, arg1)
							local function __FUNC_30188_(arg0, arg1)
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
								__FUNC_30188_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30188_)
						end

						if arg1.interrupted then
							__FUNC_30033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30033_)
					end

					if arg1.interrupted then
						__FUNC_2FEB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FEB8_)
				end

				if arg1.interrupted then
					__FUNC_2FD63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FD63_)
			end

			if arg1.interrupted then
				__FUNC_2FBE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FBE8_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2FA91_(registerVal17, {})
		local function __FUNC_3033D_(arg0, arg1)
			local function __FUNC_30494_(arg0, arg1)
				local function __FUNC_3060F_(arg0, arg1)
					local function __FUNC_30764_(arg0, arg1)
						local function __FUNC_308DF_(arg0, arg1)
							local function __FUNC_30A34_(arg0, arg1)
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
								__FUNC_30A34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30A34_)
						end

						if arg1.interrupted then
							__FUNC_308DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_308DF_)
					end

					if arg1.interrupted then
						__FUNC_30764_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30764_)
				end

				if arg1.interrupted then
					__FUNC_3060F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3060F_)
			end

			if arg1.interrupted then
				__FUNC_30494_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30494_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3033D_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.GainFocus = __FUNC_2DAC7_
	local function __FUNC_30BE9_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.Focus = __FUNC_30BE9_
	local function __FUNC_3102D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.classifiedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_3145D_(arg0, arg1)
			local function __FUNC_315D7_(arg0, arg1)
				local function __FUNC_3174F_(arg0, arg1)
					local function __FUNC_318C7_(arg0, arg1)
						local function __FUNC_31A1C_(arg0, arg1)
							local function __FUNC_31B97_(arg0, arg1)
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
								__FUNC_31B97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31B97_)
						end

						if arg1.interrupted then
							__FUNC_31A1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31A1C_)
					end

					if arg1.interrupted then
						__FUNC_318C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_318C7_)
				end

				if arg1.interrupted then
					__FUNC_3174F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3174F_)
			end

			if arg1.interrupted then
				__FUNC_315D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_315D7_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3145D_(registerVal14, {})
		local function __FUNC_31D49_(arg0, arg1)
			local function __FUNC_31EC3_(arg0, arg1)
				local function __FUNC_3203B_(arg0, arg1)
					local function __FUNC_321B3_(arg0, arg1)
						local function __FUNC_32308_(arg0, arg1)
							local function __FUNC_32483_(arg0, arg1)
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
								__FUNC_32483_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32483_)
						end

						if arg1.interrupted then
							__FUNC_32308_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32308_)
					end

					if arg1.interrupted then
						__FUNC_321B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_321B3_)
				end

				if arg1.interrupted then
					__FUNC_3203B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3203B_)
			end

			if arg1.interrupted then
				__FUNC_31EC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31EC3_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_31D49_(registerVal15, {})
		local function __FUNC_32635_(arg0, arg1)
			local function __FUNC_3278C_(arg0, arg1)
				local function __FUNC_32907_(arg0, arg1)
					local function __FUNC_32A7F_(arg0, arg1)
						local function __FUNC_32BF7_(arg0, arg1)
							local function __FUNC_32D4C_(arg0, arg1)
								local function __FUNC_32EC7_(arg0, arg1)
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
									__FUNC_32EC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32EC7_)
							end

							if arg1.interrupted then
								__FUNC_32D4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32D4C_)
						end

						if arg1.interrupted then
							__FUNC_32BF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32BF7_)
					end

					if arg1.interrupted then
						__FUNC_32A7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A7F_)
				end

				if arg1.interrupted then
					__FUNC_32907_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32907_)
			end

			if arg1.interrupted then
				__FUNC_3278C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3278C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_32635_(registerVal16, {})
		local function __FUNC_33079_(arg0, arg1)
			local function __FUNC_331D0_(arg0, arg1)
				local function __FUNC_3334B_(arg0, arg1)
					local function __FUNC_334A0_(arg0, arg1)
						local function __FUNC_3361B_(arg0, arg1)
							local function __FUNC_33770_(arg0, arg1)
								local function __FUNC_338EB_(arg0, arg1)
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
									__FUNC_338EB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_338EB_)
							end

							if arg1.interrupted then
								__FUNC_33770_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33770_)
						end

						if arg1.interrupted then
							__FUNC_3361B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3361B_)
					end

					if arg1.interrupted then
						__FUNC_334A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_334A0_)
				end

				if arg1.interrupted then
					__FUNC_3334B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3334B_)
			end

			if arg1.interrupted then
				__FUNC_331D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_331D0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_33079_(registerVal17, {})
		local function __FUNC_33A9D_(arg0, arg1)
			local function __FUNC_33BF4_(arg0, arg1)
				local function __FUNC_33D6F_(arg0, arg1)
					local function __FUNC_33EC4_(arg0, arg1)
						local function __FUNC_3403F_(arg0, arg1)
							local function __FUNC_34194_(arg0, arg1)
								local function __FUNC_3430F_(arg0, arg1)
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
									__FUNC_3430F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3430F_)
							end

							if arg1.interrupted then
								__FUNC_34194_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34194_)
						end

						if arg1.interrupted then
							__FUNC_3403F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3403F_)
					end

					if arg1.interrupted then
						__FUNC_33EC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33EC4_)
				end

				if arg1.interrupted then
					__FUNC_33D6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33D6F_)
			end

			if arg1.interrupted then
				__FUNC_33BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33BF4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_33A9D_(registerVal18, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.LoseFocus = __FUNC_3102D_
	registerVal28.bmContracts = registerVal29
	registerVal29 = {}
	local function __FUNC_344C1_()
		registerVal2:setupElementClipCounter(22.000000)
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
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PackageImage:setAlpha(0.000000)
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
		registerVal2.lockedIcon:setAlpha(1.000000)
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
		registerVal20:completeAnimation()
		registerVal2.challengeClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.BMPromoRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.BMLimitedItemRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DownloadIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
	end

	registerVal29.DefaultClip = __FUNC_344C1_
	local function __FUNC_34D48_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_34F7D_(arg0, arg1)
			local function __FUNC_350D4_(arg0, arg1)
				local function __FUNC_3524F_(arg0, arg1)
					local function __FUNC_353A4_(arg0, arg1)
						local function __FUNC_3551F_(arg0, arg1)
							local function __FUNC_35674_(arg0, arg1)
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
								__FUNC_35674_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35674_)
						end

						if arg1.interrupted then
							__FUNC_3551F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3551F_)
					end

					if arg1.interrupted then
						__FUNC_353A4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_353A4_)
				end

				if arg1.interrupted then
					__FUNC_3524F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3524F_)
			end

			if arg1.interrupted then
				__FUNC_350D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350D4_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_34F7D_(registerVal14, {})
		local function __FUNC_35829_(arg0, arg1)
			local function __FUNC_35980_(arg0, arg1)
				local function __FUNC_35AFB_(arg0, arg1)
					local function __FUNC_35C50_(arg0, arg1)
						local function __FUNC_35DCB_(arg0, arg1)
							local function __FUNC_35F20_(arg0, arg1)
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
								__FUNC_35F20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35F20_)
						end

						if arg1.interrupted then
							__FUNC_35DCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35DCB_)
					end

					if arg1.interrupted then
						__FUNC_35C50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C50_)
				end

				if arg1.interrupted then
					__FUNC_35AFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35AFB_)
			end

			if arg1.interrupted then
				__FUNC_35980_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35980_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_35829_(registerVal15, {})
		local function __FUNC_360D5_(arg0, arg1)
			local function __FUNC_3622C_(arg0, arg1)
				local function __FUNC_363A7_(arg0, arg1)
					local function __FUNC_3651F_(arg0, arg1)
						local function __FUNC_36697_(arg0, arg1)
							local function __FUNC_367EC_(arg0, arg1)
								local function __FUNC_36967_(arg0, arg1)
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
									__FUNC_36967_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36967_)
							end

							if arg1.interrupted then
								__FUNC_367EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_367EC_)
						end

						if arg1.interrupted then
							__FUNC_36697_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36697_)
					end

					if arg1.interrupted then
						__FUNC_3651F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3651F_)
				end

				if arg1.interrupted then
					__FUNC_363A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_363A7_)
			end

			if arg1.interrupted then
				__FUNC_3622C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3622C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_360D5_(registerVal16, {})
		local function __FUNC_36B19_(arg0, arg1)
			local function __FUNC_36C70_(arg0, arg1)
				local function __FUNC_36DEB_(arg0, arg1)
					local function __FUNC_36F40_(arg0, arg1)
						local function __FUNC_370BB_(arg0, arg1)
							local function __FUNC_37210_(arg0, arg1)
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
								__FUNC_37210_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37210_)
						end

						if arg1.interrupted then
							__FUNC_370BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_370BB_)
					end

					if arg1.interrupted then
						__FUNC_36F40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36F40_)
				end

				if arg1.interrupted then
					__FUNC_36DEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36DEB_)
			end

			if arg1.interrupted then
				__FUNC_36C70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C70_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_36B19_(registerVal17, {})
		local function __FUNC_373C5_(arg0, arg1)
			local function __FUNC_3751C_(arg0, arg1)
				local function __FUNC_37697_(arg0, arg1)
					local function __FUNC_377EC_(arg0, arg1)
						local function __FUNC_37967_(arg0, arg1)
							local function __FUNC_37ABC_(arg0, arg1)
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
								__FUNC_37ABC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37ABC_)
						end

						if arg1.interrupted then
							__FUNC_37967_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37967_)
					end

					if arg1.interrupted then
						__FUNC_377EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377EC_)
				end

				if arg1.interrupted then
					__FUNC_37697_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37697_)
			end

			if arg1.interrupted then
				__FUNC_3751C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3751C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_373C5_(registerVal18, {})
	end

	registerVal29.GainFocus = __FUNC_34D48_
	local function __FUNC_37C71_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
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
	end

	registerVal29.Focus = __FUNC_37C71_
	local function __FUNC_37ECF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_38101_(arg0, arg1)
			local function __FUNC_3827B_(arg0, arg1)
				local function __FUNC_383F3_(arg0, arg1)
					local function __FUNC_3856B_(arg0, arg1)
						local function __FUNC_386C0_(arg0, arg1)
							local function __FUNC_3883B_(arg0, arg1)
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
								__FUNC_3883B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3883B_)
						end

						if arg1.interrupted then
							__FUNC_386C0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_386C0_)
					end

					if arg1.interrupted then
						__FUNC_3856B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3856B_)
				end

				if arg1.interrupted then
					__FUNC_383F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_383F3_)
			end

			if arg1.interrupted then
				__FUNC_3827B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3827B_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_38101_(registerVal14, {})
		local function __FUNC_389ED_(arg0, arg1)
			local function __FUNC_38B67_(arg0, arg1)
				local function __FUNC_38CDF_(arg0, arg1)
					local function __FUNC_38E57_(arg0, arg1)
						local function __FUNC_38FAC_(arg0, arg1)
							local function __FUNC_39127_(arg0, arg1)
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
								__FUNC_39127_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39127_)
						end

						if arg1.interrupted then
							__FUNC_38FAC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FAC_)
					end

					if arg1.interrupted then
						__FUNC_38E57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38E57_)
				end

				if arg1.interrupted then
					__FUNC_38CDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38CDF_)
			end

			if arg1.interrupted then
				__FUNC_38B67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B67_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_389ED_(registerVal15, {})
		local function __FUNC_392D9_(arg0, arg1)
			local function __FUNC_39430_(arg0, arg1)
				local function __FUNC_395AB_(arg0, arg1)
					local function __FUNC_39723_(arg0, arg1)
						local function __FUNC_3989B_(arg0, arg1)
							local function __FUNC_399F0_(arg0, arg1)
								local function __FUNC_39B6B_(arg0, arg1)
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
									__FUNC_39B6B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39B6B_)
							end

							if arg1.interrupted then
								__FUNC_399F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_399F0_)
						end

						if arg1.interrupted then
							__FUNC_3989B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3989B_)
					end

					if arg1.interrupted then
						__FUNC_39723_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39723_)
				end

				if arg1.interrupted then
					__FUNC_395AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_395AB_)
			end

			if arg1.interrupted then
				__FUNC_39430_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39430_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_392D9_(registerVal16, {})
		local function __FUNC_39D1D_(arg0, arg1)
			local function __FUNC_39E74_(arg0, arg1)
				local function __FUNC_39FEF_(arg0, arg1)
					local function __FUNC_3A144_(arg0, arg1)
						local function __FUNC_3A2BF_(arg0, arg1)
							local function __FUNC_3A414_(arg0, arg1)
								local function __FUNC_3A58F_(arg0, arg1)
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
									__FUNC_3A58F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A58F_)
							end

							if arg1.interrupted then
								__FUNC_3A414_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A414_)
						end

						if arg1.interrupted then
							__FUNC_3A2BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A2BF_)
					end

					if arg1.interrupted then
						__FUNC_3A144_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A144_)
				end

				if arg1.interrupted then
					__FUNC_39FEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39FEF_)
			end

			if arg1.interrupted then
				__FUNC_39E74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39E74_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_39D1D_(registerVal17, {})
		local function __FUNC_3A741_(arg0, arg1)
			local function __FUNC_3A898_(arg0, arg1)
				local function __FUNC_3AA13_(arg0, arg1)
					local function __FUNC_3AB68_(arg0, arg1)
						local function __FUNC_3ACE3_(arg0, arg1)
							local function __FUNC_3AE38_(arg0, arg1)
								local function __FUNC_3AFB3_(arg0, arg1)
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
									__FUNC_3AFB3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AFB3_)
							end

							if arg1.interrupted then
								__FUNC_3AE38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE38_)
						end

						if arg1.interrupted then
							__FUNC_3ACE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ACE3_)
					end

					if arg1.interrupted then
						__FUNC_3AB68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB68_)
				end

				if arg1.interrupted then
					__FUNC_3AA13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AA13_)
			end

			if arg1.interrupted then
				__FUNC_3A898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A898_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_3A741_(registerVal18, {})
	end

	registerVal29.LoseFocus = __FUNC_37ECF_
	registerVal28.Locked = registerVal29
	registerVal2.clipsPerState = registerVal28
	local registerVal30 = {}
	local registerVal31 = {}
	registerVal31.stateName = "Equipped"
	local function __FUNC_3B165_(arg0, arg1, arg2)
		return true
	end

	registerVal31.condition = __FUNC_3B165_
	local registerVal32 = {}
	registerVal32.stateName = "BMClassified"
	local function __FUNC_3B198_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal32.condition = __FUNC_3B198_
	local registerVal33 = {}
	registerVal33.stateName = "ChallengeClassified"
	local function __FUNC_3B212_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isChallengeClassified")
	end

	registerVal33.condition = __FUNC_3B212_
	local registerVal34 = {}
	registerVal34.stateName = "Package"
	local function __FUNC_3B291_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPackage")
	end

	registerVal34.condition = __FUNC_3B291_
	local registerVal35 = {}
	registerVal35.stateName = "New"
	local function __FUNC_3B305_(arg0, arg1, arg2)
		return true
	end

	registerVal35.condition = __FUNC_3B305_
	local registerVal36 = {}
	registerVal36.stateName = "bmContracts"
	local function __FUNC_3B338_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal36.condition = __FUNC_3B338_
	local registerVal37 = {}
	registerVal37.stateName = "Locked"
	local function __FUNC_3B385_(arg0, arg1, arg2)
		return true
	end

	registerVal37.condition = __FUNC_3B385_
	registerVal30 = {registerVal31, registerVal32, registerVal33, registerVal34, registerVal35, registerVal36, registerVal37}
	registerVal2:mergeStateConditions(registerVal30)
	local function __FUNC_3B3B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_3B3B8_)
	local function __FUNC_3B4DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isChallengeClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isChallengeClassified", true, __FUNC_3B4DC_)
	local function __FUNC_3B607_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isPackage", true, __FUNC_3B607_)
	local function __FUNC_3B723_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.itemImage:close()
		arg0.classifiedIcon:close()
		arg0.LabelButton:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.cacIconTokenGrid0:close()
		arg0.DuplicateCounter:close()
		arg0.BMPromoRibbon:close()
		arg0.BMLimitedItemRibbon:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.PackageImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3B723_)
	if __FUNC_5E8_ then
		__FUNC_5E8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CustomizationItem_ND.new = __FUNC_D99_
