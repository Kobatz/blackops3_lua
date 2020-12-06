-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_Internal")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_Back")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.BM_BribeLabel_Specialist")
local function __FUNC_359_(arg0, arg1)
	arg0.m_preventFromBeingCurrentMouseFocus = true
	arg0.disabledAllowNav = true
end

local function __FUNC_3D5_(arg0, arg1)
	local registerVal2, registerVal3 = arg0:getLocalSize()
	local function __FUNC_489_()
		if arg0.gridInfoTable then
			if arg0.gridInfoTable.parentGrid.activeWidget == arg0 then
				return registerVal2
			else
				return 90.000000
			end
		end
	end

	arg0.getWidthInList = __FUNC_489_
	if CoD.isPC then
		__FUNC_359_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem = registerVal3
local function __FUNC_55A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChooseCharacterLoadoutCarouselItem_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 30.000000, -30.000000)
	registerVal3.heroNumber:setAlpha(0.000000)
	registerVal3.border:setRGB(0.290000, 0.290000, 0.290000)
	registerVal3.infoArea:setAlpha(0.000000)
	registerVal3.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	local function __FUNC_12C3_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_12C3_)
	local function __FUNC_1312_(arg0, arg2)
		HeroLoadoutPreviewChange(arg0, arg1)
		SetSpecialistAsOld(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1312_)
	registerVal2:addElement(registerVal3)
	registerVal2.item = registerVal3
	local registerVal4 = CoD.ChooseCharacterLoadoutCarouselItem_Back.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_13A6_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_13A6_)
	registerVal2:addElement(registerVal4)
	registerVal2.back = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -44.500000, 44.500000)
	registerVal5:setTopBottom(false, false, 70.000000, 74.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarB0 = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -45.500000, 45.500000)
	registerVal6:setTopBottom(false, false, -210.000000, -214.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(-180.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB00 = registerVal6
	local registerVal7 = CoD.BM_BribeLabel_Specialist.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -510.000000, 22.000000)
	registerVal7:setTopBottom(false, true, -108.000000, -52.000000)
	registerVal7.Text:setText(Engine.Localize("CONTRACT_BM_BRIBE_ACTIVE"))
	local function __FUNC_13F6_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_13F6_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_1446_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentBribeForSpecialist(arg2)
		if registerVal3 then
			registerVal3 = AllowSpecialistBribeWidget(arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1446_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "autoevents.cycled")
	local function __FUNC_14DD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_14DD_)
	registerVal2:addElement(registerVal7)
	registerVal2.BMBribeLabelSpecialist = registerVal7
	local function __FUNC_1603_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.back:linkToElementModel(registerVal2, "name", true, __FUNC_1603_)
	local registerVal8 = {}
	registerVal8.up = registerVal4
	registerVal3.navigation = registerVal8
	registerVal8 = {}
	registerVal8.up = registerVal3
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1706_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal3.ChooseCharacterLoadoutButtonFooter:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item:setYRot(0.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(0.000000)
		registerVal2.item.lockedSliverRender:setAlpha(0.000000)
		registerVal2.item.characterWithBackground:setAlpha(0.000000)
		registerVal2.item.unlockSliverRender:setAlpha(1.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(1.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.back:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1706_
	local function __FUNC_1E48_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal3.ChooseCharacterLoadoutButtonFooter:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(0.000000)
		registerVal2.item.lockedSliverRender:setAlpha(0.000000)
		registerVal2.item.characterWithBackground:setAlpha(1.000000)
		registerVal2.item.unlockSliverRender:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(1.000000)
		registerVal2.item.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_1E48_
	local function __FUNC_2503_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(0.000000)
		registerVal2.item.lockedSliverRender:setAlpha(0.000000)
		registerVal2.item.characterWithBackground:setAlpha(0.000000)
		registerVal2.item.unlockSliverRender:setAlpha(1.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 221.000000, 217.000000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.FocusBarB0:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB00:setTopBottom(false, false, -217.000000, -221.000000)
		registerVal2.FocusBarB00:setAlpha(1.000000)
		registerVal2.FocusBarB00:setZRot(-180.000000)
		registerVal2.FocusBarB00:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Over = __FUNC_2503_
	local function __FUNC_2C4F_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2E97_(arg0, arg1)
			local function __FUNC_300E_(arg0, arg1)
				local function __FUNC_3186_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setYRot(90.000000)
					arg0:setZoom(20.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3186_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3186_)
			end

			if arg1.interrupted then
				__FUNC_300E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_300E_)
		end

		registerVal3:completeAnimation()
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item:setYRot(0.000000)
		registerVal2.item:setZoom(0.000000)
		__FUNC_2E97_(registerVal3, {})
		local function __FUNC_337D_(arg0, arg1)
			local function __FUNC_34D4_(arg0, arg1)
				local function __FUNC_364F_(arg0, arg1)
					local function __FUNC_37C6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setYRot(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_37C6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37C6_)
				end

				if arg1.interrupted then
					__FUNC_364F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_364F_)
			end

			if arg1.interrupted then
				__FUNC_34D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D4_)
		end

		registerVal4:completeAnimation()
		registerVal2.back:setAlpha(0.000000)
		registerVal2.back:setYRot(-90.000000)
		registerVal2.back:setZoom(20.000000)
		__FUNC_337D_(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Flipped = __FUNC_2C4F_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_39B8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal3.ChooseCharacterLoadoutButtonFooter:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(0.000000)
		registerVal2.item.lockedSliverRender:setAlpha(1.000000)
		registerVal2.item.characterWithBackground:setAlpha(0.000000)
		registerVal2.item.unlockSliverRender:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_39B8_
	local function __FUNC_4024_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(1.000000)
		registerVal2.item.lockedSliverRender:setAlpha(0.000000)
		registerVal2.item.characterWithBackground:setAlpha(0.000000)
		registerVal2.item.unlockSliverRender:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(1.000000)
		registerVal2.item.border:setRGB(0.570000, 0.570000, 0.570000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Focus = __FUNC_4024_
	local function __FUNC_45D1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item.lockedCharacterWithBackground:setAlpha(0.000000)
		registerVal2.item.lockedSliverRender:setAlpha(1.000000)
		registerVal2.item.characterWithBackground:setAlpha(0.000000)
		registerVal2.item.unlockSliverRender:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 221.000000, 217.000000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.FocusBarB0:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB00:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB00:setTopBottom(false, false, -217.000000, -221.000000)
		registerVal2.FocusBarB00:setAlpha(1.000000)
		registerVal2.FocusBarB00:setZRot(-180.000000)
		registerVal2.FocusBarB00:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Over = __FUNC_45D1_
	registerVal8.Locked = registerVal9
	registerVal9 = {}
	local function __FUNC_4CC1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal3.ChooseCharacterLoadoutButtonFooter:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item:setAlpha(0.000000)
		registerVal2.item:setYRot(0.000000)
		registerVal2.item:setZoom(0.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(1.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_4CC1_
	local function __FUNC_521C_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_54EE_(arg0, arg1)
			local function __FUNC_5667_(arg0, arg1)
				local function __FUNC_57DE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setYRot(0.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_57DE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57DE_)
			end

			if arg1.interrupted then
				__FUNC_5667_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5667_)
		end

		registerVal3:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:setYRot(90.000000)
		registerVal3:setZoom(20.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_54EE_)
		local function __FUNC_59D0_(arg0, arg1)
			local function __FUNC_5B4A_(arg0, arg1)
				local function __FUNC_5CC2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setYRot(-90.000000)
					arg0:setZoom(20.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5CC2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(-90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CC2_)
			end

			if arg1.interrupted then
				__FUNC_5B4A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B4A_)
		end

		registerVal4:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setYRot(0.000000)
		registerVal2.back:setZoom(0.000000)
		__FUNC_59D0_(registerVal4, {})
		local function __FUNC_5EB9_(arg0, arg1)
			local function __FUNC_6010_(arg0, arg1)
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
				__FUNC_6010_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6010_)
		end

		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		__FUNC_5EB9_(registerVal7, {})
	end

	registerVal9.DefaultState = __FUNC_521C_
	local function __FUNC_61C5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item:setAlpha(0.000000)
		registerVal2.item:setZoom(0.000000)
		registerVal2.item.heroNumber:setAlpha(1.000000)
		registerVal2.item.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setYRot(0.000000)
		registerVal2.back:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.BMBribeLabelSpecialist:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_61C5_
	registerVal8.Flipped = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_667D_(arg0, arg2, arg3)
		return IsHeroLocked(arg2, arg1)
	end

	registerVal11.condition = __FUNC_667D_
	local registerVal12 = {}
	registerVal12.stateName = "Flipped"
	local function __FUNC_66D2_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Flipped")
	end

	registerVal12.condition = __FUNC_66D2_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_6738_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "Flipped")
		if registerVal2 then
			SetLoseFocusToElement(registerVal2, "item", arg1)
			MakeElementNotFocusable(registerVal2, "item", arg1)
			MakeElementFocusable(registerVal2, "back", arg1)
			SetFocusToElement(registerVal2, "back", arg1)
		else
			registerVal2 = IsSelfInState(registerVal2, "DefaultState")
			registerVal2 = IsElementInFocus(arg0)
			if registerVal2 and registerVal2 then
				SetLoseFocusToElement(registerVal2, "back", arg1)
				MakeElementNotFocusable(registerVal2, "back", arg1)
				MakeElementFocusable(registerVal2, "item", arg1)
				SetFocusToElement(registerVal2, "item", arg1)
			else
				registerVal2 = IsSelfInState(registerVal2, "DefaultState")
				if registerVal2 then
					MakeElementNotFocusable(registerVal2, "back", arg1)
					MakeElementFocusable(registerVal2, "item", arg1)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_6738_)
	registerVal3.id = "item"
	registerVal4.id = "back"
	local function __FUNC_697D_(arg0, arg1)
		local registerVal2 = arg0.item:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_697D_)
	local function __FUNC_6A7C_(arg0)
		arg0.item:close()
		arg0.back:close()
		arg0.FocusBarB0:close()
		arg0.FocusBarB00:close()
		arg0.BMBribeLabelSpecialist:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6A7C_)
	if __FUNC_3D5_ then
		__FUNC_3D5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadoutCarouselItem.new = __FUNC_55A_
