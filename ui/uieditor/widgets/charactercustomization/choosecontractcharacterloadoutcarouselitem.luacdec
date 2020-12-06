-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseContractCharacterLoadoutCarouselItem_Internal")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_SideBet")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_Back")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Blackjack.ChooseCharacterLoadoutCarouselItem_BlackJack_Frame")
local function __FUNC_3EC_(arg0, arg1)
	arg0.m_preventFromBeingCurrentMouseFocus = true
	arg0.disabledAllowNav = true
end

local function __FUNC_469_(arg0, arg1)
	local registerVal2, registerVal3 = arg0:getLocalSize()
	local function __FUNC_51D_()
		if arg0.gridInfoTable then
			if arg0.gridInfoTable.parentGrid.activeWidget == arg0 then
				return registerVal2
			else
				return 90.000000
			end
		end
	end

	arg0.getWidthInList = __FUNC_51D_
	if CoD.isPC then
		__FUNC_3EC_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseContractCharacterLoadoutCarouselItem = registerVal3
local function __FUNC_5EE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseContractCharacterLoadoutCarouselItem)
	registerVal2.id = "ChooseContractCharacterLoadoutCarouselItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChooseContractCharacterLoadoutCarouselItem_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 30.000000, -30.000000)
	registerVal3.border:setRGB(0.290000, 0.290000, 0.290000)
	registerVal3.infoArea:setAlpha(0.000000)
	registerVal3.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	local function __FUNC_15F7_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_15F7_)
	local function __FUNC_1646_(arg0, arg2)
		HeroLoadoutPreviewChange(arg0, arg1)
		SetSpecialistAsOld(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1646_)
	local function __FUNC_16DA_(arg0, arg1)
		ClearNavigationTable(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_16DA_)
	registerVal2:addElement(registerVal3)
	registerVal2.item = registerVal3
	local registerVal4 = CoD.ChooseCharacterLoadoutCarouselItem_SideBet.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_176F_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_176F_)
	local function __FUNC_17BE_(arg0, arg1)
		ClearNavigationTable(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_17BE_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "DisabledFocus"
	local function __FUNC_1853_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1853_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.contractChallenges = registerVal4
	local registerVal5 = CoD.ChooseCharacterLoadoutCarouselItem_Back.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_189D_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_189D_)
	local function __FUNC_18EE_(arg0, arg1)
		ClearNavigationTable(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_18EE_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "DisabledFocus"
	local function __FUNC_1983_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_1983_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_19CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, nil, true, __FUNC_19CD_)
	registerVal2:addElement(registerVal5)
	registerVal2.back = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -44.500000, 44.500000)
	registerVal6:setTopBottom(false, false, 70.000000, 74.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB0 = registerVal6
	registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -45.500000, 45.500000)
	registerVal7:setTopBottom(false, false, -210.000000, -214.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZRot(-180.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB00 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -3.000000, 822.000000)
	registerVal8:setTopBottom(true, false, -49.000000, 505.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(20.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_backimg2"))
	registerVal2:addElement(registerVal8)
	registerVal2.BackTopAndBottom0 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -3.000000, 822.000000)
	registerVal9:setTopBottom(true, false, -49.000000, 505.000000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_frame_img"))
	registerVal2:addElement(registerVal9)
	registerVal2.FrontTopAndBottom = registerVal9
	local registerVal10 = CoD.ChooseCharacterLoadoutCarouselItem_BlackJack_Frame.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -4.000000, 821.000000)
	registerVal10:setTopBottom(true, false, -49.000000, 505.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Frame = registerVal10
	local function __FUNC_1AD9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.back:linkToElementModel(registerVal2, "name", true, __FUNC_1AD9_)
	local registerVal11 = {}
	registerVal11.up = registerVal5
	registerVal3.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal3
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1BDE_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(1.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.contractChallenges:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.back:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BackTopAndBottom0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Frame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1BDE_
	local function __FUNC_23D9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_23D9_
	local function __FUNC_2A8D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 221.000000, 217.000000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.FocusBarB0:setScale(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB00:setLeftRight(false, false, -45.500000, 45.500000)
		registerVal2.FocusBarB00:setTopBottom(false, false, -217.000000, -221.000000)
		registerVal2.FocusBarB00:setAlpha(1.000000)
		registerVal2.FocusBarB00:setZRot(-180.000000)
		registerVal2.FocusBarB00:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Frame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Over = __FUNC_2A8D_
	local function __FUNC_31D5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_36BB_(arg0, arg1)
			local function __FUNC_3832_(arg0, arg1)
				local function __FUNC_39AA_(arg0, arg1)
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
					__FUNC_39AA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39AA_)
			end

			if arg1.interrupted then
				__FUNC_3832_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3832_)
		end

		registerVal3:completeAnimation()
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item:setYRot(0.000000)
		registerVal2.item:setZoom(0.000000)
		__FUNC_36BB_(registerVal3, {})
		local function __FUNC_3BA1_(arg0, arg1)
			local function __FUNC_3CF8_(arg0, arg1)
				local function __FUNC_3E73_(arg0, arg1)
					local function __FUNC_3FEA_(arg0, arg1)
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
						__FUNC_3FEA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FEA_)
				end

				if arg1.interrupted then
					__FUNC_3E73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E73_)
			end

			if arg1.interrupted then
				__FUNC_3CF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CF8_)
		end

		registerVal5:completeAnimation()
		registerVal2.back:setAlpha(0.000000)
		registerVal2.back:setYRot(-90.000000)
		registerVal2.back:setZoom(20.000000)
		__FUNC_3BA1_(registerVal5, {})
		local function __FUNC_41DC_(arg0, arg1)
			local function __FUNC_4356_(arg0, arg1)
				local function __FUNC_44CE_(arg0, arg1)
					local function __FUNC_46DF_(arg0, arg1)
						local function __FUNC_4856_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -3.000000, 822.000000)
							arg0:setTopBottom(true, false, -56.000000, 508.000000)
							arg0:setRGB(0.000000, 0.000000, 0.000000)
							arg0:setAlpha(1.000000)
							arg0:setYRot(180.000000)
							arg0:setZoom(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4856_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(180.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4856_)
					end

					if arg1.interrupted then
						__FUNC_46DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -3.000000, 822.000000)
					arg0:setTopBottom(true, false, -56.000000, 508.000000)
					arg0:setRGB(0.000000, 0.000000, 0.000000)
					arg0:setYRot(90.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46DF_)
				end

				if arg1.interrupted then
					__FUNC_44CE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44CE_)
			end

			if arg1.interrupted then
				__FUNC_4356_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4356_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setLeftRight(true, false, -3.000000, 822.000000)
		registerVal2.FrontTopAndBottom:setTopBottom(true, false, -49.000000, 505.000000)
		registerVal2.FrontTopAndBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FrontTopAndBottom:setAlpha(1.000000)
		registerVal2.FrontTopAndBottom:setYRot(0.000000)
		registerVal2.FrontTopAndBottom:setZoom(0.000000)
		__FUNC_41DC_(registerVal9, {})
		local function __FUNC_4AE1_(arg0, arg1)
			local function __FUNC_4C5A_(arg0, arg1)
				local function __FUNC_4DD2_(arg0, arg1)
					local function __FUNC_512F_(arg0, arg1)
						local function __FUNC_52A6_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.text:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.Flippedtext:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.rightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.FlippedrightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setYRot(180.000000)
							arg0:setZoom(0.000000)
							arg0.text:setAlpha(0.000000)
							arg0.Flippedtext:setAlpha(1.000000)
							arg0.rightBumper:setAlpha(0.000000)
							arg0.FlippedrightBumper:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_52A6_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(180.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52A6_)
					end

					if arg1.interrupted then
						__FUNC_512F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.text:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.Flippedtext:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.rightBumper:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.FlippedrightBumper:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(90.000000)
					arg0.text:setAlpha(0.000000)
					arg0.Flippedtext:setAlpha(1.000000)
					arg0.rightBumper:setAlpha(0.000000)
					arg0.FlippedrightBumper:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_512F_)
				end

				if arg1.interrupted then
					__FUNC_4DD2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DD2_)
			end

			if arg1.interrupted then
				__FUNC_4C5A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5A_)
		end

		registerVal10:completeAnimation()
		registerVal10.text:completeAnimation()
		registerVal10.Flippedtext:completeAnimation()
		registerVal10.rightBumper:completeAnimation()
		registerVal10.FlippedrightBumper:completeAnimation()
		registerVal2.Frame:setYRot(0.000000)
		registerVal2.Frame:setZoom(0.000000)
		registerVal2.Frame.text:setAlpha(1.000000)
		registerVal2.Frame.Flippedtext:setAlpha(0.000000)
		registerVal2.Frame.rightBumper:setAlpha(1.000000)
		registerVal2.Frame.FlippedrightBumper:setAlpha(0.000000)
		__FUNC_4AE1_(registerVal10, {})
	end

	registerVal12.Flipped = __FUNC_31D5_
	local function __FUNC_565A_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5B50_(arg0, arg1)
			local function __FUNC_5CCA_(arg0, arg1)
				local function __FUNC_5E42_(arg0, arg1)
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
					__FUNC_5E42_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E42_)
			end

			if arg1.interrupted then
				__FUNC_5CCA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CCA_)
		end

		registerVal3:completeAnimation()
		registerVal2.item:setAlpha(1.000000)
		registerVal2.item:setYRot(0.000000)
		registerVal2.item:setZoom(0.000000)
		__FUNC_5B50_(registerVal3, {})
		local function __FUNC_6039_(arg0, arg1)
			local function __FUNC_6190_(arg0, arg1)
				local function __FUNC_630B_(arg0, arg1)
					local function __FUNC_6482_(arg0, arg1)
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
						__FUNC_6482_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6482_)
				end

				if arg1.interrupted then
					__FUNC_630B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_630B_)
			end

			if arg1.interrupted then
				__FUNC_6190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6190_)
		end

		registerVal4:completeAnimation()
		registerVal2.contractChallenges:setAlpha(0.000000)
		registerVal2.contractChallenges:setYRot(-90.000000)
		registerVal2.contractChallenges:setZoom(20.000000)
		__FUNC_6039_(registerVal4, {})
		local function __FUNC_6674_(arg0, arg1)
			local function __FUNC_67CC_(arg0, arg1)
				local function __FUNC_6947_(arg0, arg1)
					local function __FUNC_6ABE_(arg0, arg1)
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
						__FUNC_6ABE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ABE_)
				end

				if arg1.interrupted then
					__FUNC_6947_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6947_)
			end

			if arg1.interrupted then
				__FUNC_67CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67CC_)
		end

		registerVal8:completeAnimation()
		registerVal2.BackTopAndBottom0:setAlpha(0.000000)
		registerVal2.BackTopAndBottom0:setYRot(-90.000000)
		registerVal2.BackTopAndBottom0:setZoom(20.000000)
		__FUNC_6674_(registerVal8, {})
		local function __FUNC_6CB0_(arg0, arg1)
			local function __FUNC_6E2A_(arg0, arg1)
				local function __FUNC_6FA2_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(0.000000, 0.000000, 0.000000)
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
					__FUNC_6FA2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FA2_)
			end

			if arg1.interrupted then
				__FUNC_6E2A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E2A_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FrontTopAndBottom:setAlpha(1.000000)
		registerVal2.FrontTopAndBottom:setYRot(0.000000)
		registerVal2.FrontTopAndBottom:setZoom(0.000000)
		__FUNC_6CB0_(registerVal9, {})
		local function __FUNC_71BD_(arg0, arg1)
			local function __FUNC_7336_(arg0, arg1)
				local function __FUNC_74AE_(arg0, arg1)
					local function __FUNC_780B_(arg0, arg1)
						local function __FUNC_7982_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.text:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.Flippedtext:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.rightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.FlippedrightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setYRot(180.000000)
							arg0:setZoom(0.000000)
							arg0.text:setAlpha(0.000000)
							arg0.Flippedtext:setAlpha(1.000000)
							arg0.rightBumper:setAlpha(0.000000)
							arg0.FlippedrightBumper:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_7982_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(180.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7982_)
					end

					if arg1.interrupted then
						__FUNC_780B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.text:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.Flippedtext:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.rightBumper:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0.FlippedrightBumper:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(90.000000)
					arg0.text:setAlpha(0.000000)
					arg0.Flippedtext:setAlpha(1.000000)
					arg0.rightBumper:setAlpha(0.000000)
					arg0.FlippedrightBumper:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_780B_)
				end

				if arg1.interrupted then
					__FUNC_74AE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74AE_)
			end

			if arg1.interrupted then
				__FUNC_7336_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7336_)
		end

		registerVal10:completeAnimation()
		registerVal10.text:completeAnimation()
		registerVal10.Flippedtext:completeAnimation()
		registerVal10.rightBumper:completeAnimation()
		registerVal10.FlippedrightBumper:completeAnimation()
		registerVal2.Frame:setYRot(0.000000)
		registerVal2.Frame:setZoom(0.000000)
		registerVal2.Frame.text:setAlpha(1.000000)
		registerVal2.Frame.Flippedtext:setAlpha(0.000000)
		registerVal2.Frame.rightBumper:setAlpha(1.000000)
		registerVal2.Frame.FlippedrightBumper:setAlpha(0.000000)
		__FUNC_71BD_(registerVal10, {})
	end

	registerVal12.Challenges = __FUNC_565A_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_7D36_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Frame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_7D36_
	local function __FUNC_82E9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(0.570000, 0.570000, 0.570000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal12.Focus = __FUNC_82E9_
	local function __FUNC_8727_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.lockedCharacterWithBackground:completeAnimation()
		registerVal3.lockedSliverRender:completeAnimation()
		registerVal3.characterWithBackground:completeAnimation()
		registerVal3.unlockSliverRender:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal12.Over = __FUNC_8727_
	registerVal11.Locked = registerVal12
	registerVal12 = {}
	local function __FUNC_8B6D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(1.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setLeftRight(true, false, -3.000000, 822.000000)
		registerVal2.FrontTopAndBottom:setTopBottom(true, false, -54.000000, 505.000000)
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_8B6D_
	local function __FUNC_90DB_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_9665_(arg0, arg1)
			local function __FUNC_97DF_(arg0, arg1)
				local function __FUNC_9956_(arg0, arg1)
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
					__FUNC_9956_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9956_)
			end

			if arg1.interrupted then
				__FUNC_97DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97DF_)
		end

		registerVal3:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:setYRot(90.000000)
		registerVal3:setZoom(20.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_9665_)
		local function __FUNC_9B48_(arg0, arg1)
			local function __FUNC_9CC2_(arg0, arg1)
				local function __FUNC_9E3A_(arg0, arg1)
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
					__FUNC_9E3A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(-90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E3A_)
			end

			if arg1.interrupted then
				__FUNC_9CC2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CC2_)
		end

		registerVal5:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setYRot(0.000000)
		registerVal2.back:setZoom(0.000000)
		__FUNC_9B48_(registerVal5, {})
		local function __FUNC_A031_(arg0, arg1)
			local function __FUNC_A1AA_(arg0, arg1)
				local function __FUNC_A322_(arg0, arg1)
					local function __FUNC_A4FB_(arg0, arg1)
						local function __FUNC_A672_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -3.000000, 822.000000)
							arg0:setTopBottom(true, false, -49.000000, 505.000000)
							arg0:setRGB(1.000000, 1.000000, 1.000000)
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
							__FUNC_A672_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A672_)
					end

					if arg1.interrupted then
						__FUNC_A4FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -49.000000, 505.000000)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setYRot(84.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4FB_)
				end

				if arg1.interrupted then
					__FUNC_A322_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A322_)
			end

			if arg1.interrupted then
				__FUNC_A1AA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1AA_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setLeftRight(true, false, -3.000000, 822.000000)
		registerVal2.FrontTopAndBottom:setTopBottom(true, false, -53.000000, 509.000000)
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.FrontTopAndBottom:setAlpha(1.000000)
		registerVal2.FrontTopAndBottom:setYRot(180.000000)
		registerVal2.FrontTopAndBottom:setZoom(0.000000)
		__FUNC_A031_(registerVal9, {})
		local function __FUNC_A8F8_(arg0, arg1)
			local function __FUNC_AA72_(arg0, arg1)
				local function __FUNC_ABEA_(arg0, arg1)
					local function __FUNC_AF47_(arg0, arg1)
						local function __FUNC_B0BE_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.text:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.Flippedtext:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.rightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.FlippedrightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setYRot(0.000000)
							arg0:setZoom(0.000000)
							arg0.text:setAlpha(1.000000)
							arg0.Flippedtext:setAlpha(0.000000)
							arg0.rightBumper:setAlpha(1.000000)
							arg0.FlippedrightBumper:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_B0BE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0BE_)
					end

					if arg1.interrupted then
						__FUNC_AF47_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.text:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.Flippedtext:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.rightBumper:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.FlippedrightBumper:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(84.000000)
					arg0.text:setAlpha(1.000000)
					arg0.Flippedtext:setAlpha(0.000000)
					arg0.rightBumper:setAlpha(1.000000)
					arg0.FlippedrightBumper:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF47_)
				end

				if arg1.interrupted then
					__FUNC_ABEA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABEA_)
			end

			if arg1.interrupted then
				__FUNC_AA72_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA72_)
		end

		registerVal10:completeAnimation()
		registerVal10.text:completeAnimation()
		registerVal10.Flippedtext:completeAnimation()
		registerVal10.rightBumper:completeAnimation()
		registerVal10.FlippedrightBumper:completeAnimation()
		registerVal2.Frame:setYRot(180.000000)
		registerVal2.Frame:setZoom(0.000000)
		registerVal2.Frame.text:setAlpha(0.000000)
		registerVal2.Frame.Flippedtext:setAlpha(1.000000)
		registerVal2.Frame.rightBumper:setAlpha(0.000000)
		registerVal2.Frame.FlippedrightBumper:setAlpha(1.000000)
		__FUNC_A8F8_(registerVal10, {})
	end

	registerVal12.DefaultState = __FUNC_90DB_
	local function __FUNC_B46D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item:setAlpha(0.000000)
		registerVal2.item:setZoom(0.000000)
		registerVal2.item.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.back:setAlpha(1.000000)
		registerVal2.back:setYRot(0.000000)
		registerVal2.back:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_B46D_
	registerVal11.Flipped = registerVal12
	registerVal12 = {}
	local function __FUNC_B8D4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
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
		registerVal2.item.border:setRGB(0.290000, 0.290000, 0.290000)
		registerVal2.item.infoArea:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(1.000000)
		registerVal2.item.ChooseCharacterLoadoutButtonFooter:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.contractChallenges:setAlpha(1.000000)
		registerVal2.contractChallenges:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.BackTopAndBottom0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_B8D4_
	local function __FUNC_BE68_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_C406_(arg0, arg1)
			local function __FUNC_C57F_(arg0, arg1)
				local function __FUNC_C6F6_(arg0, arg1)
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
					__FUNC_C6F6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6F6_)
			end

			if arg1.interrupted then
				__FUNC_C57F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C57F_)
		end

		registerVal3:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:setYRot(90.000000)
		registerVal3:setZoom(20.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_C406_)
		local function __FUNC_C8E8_(arg0, arg1)
			local function __FUNC_CA62_(arg0, arg1)
				local function __FUNC_CBDA_(arg0, arg1)
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
					__FUNC_CBDA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(-90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBDA_)
			end

			if arg1.interrupted then
				__FUNC_CA62_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA62_)
		end

		registerVal4:completeAnimation()
		registerVal2.contractChallenges:setAlpha(1.000000)
		registerVal2.contractChallenges:setYRot(0.000000)
		registerVal2.contractChallenges:setZoom(0.000000)
		__FUNC_C8E8_(registerVal4, {})
		local function __FUNC_CDD1_(arg0, arg1)
			local function __FUNC_CF4A_(arg0, arg1)
				local function __FUNC_D0C2_(arg0, arg1)
					local function __FUNC_D23B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_D23B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D23B_)
				end

				if arg1.interrupted then
					__FUNC_D0C2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(-90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0C2_)
			end

			if arg1.interrupted then
				__FUNC_CF4A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF4A_)
		end

		registerVal8:completeAnimation()
		registerVal2.BackTopAndBottom0:setAlpha(1.000000)
		registerVal2.BackTopAndBottom0:setYRot(0.000000)
		registerVal2.BackTopAndBottom0:setZoom(0.000000)
		__FUNC_CDD1_(registerVal8, {})
		local function __FUNC_D431_(arg0, arg1)
			local function __FUNC_D588_(arg0, arg1)
				local function __FUNC_D76B_(arg0, arg1)
					local function __FUNC_D8E2_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
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
						__FUNC_D8E2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8E2_)
				end

				if arg1.interrupted then
					__FUNC_D76B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				arg0:setYRot(84.000000)
				arg0:setZoom(20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D76B_)
			end

			if arg1.interrupted then
				__FUNC_D588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D588_)
		end

		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.FrontTopAndBottom:setYRot(90.000000)
		registerVal2.FrontTopAndBottom:setZoom(0.000000)
		__FUNC_D431_(registerVal9, {})
		local function __FUNC_DAF8_(arg0, arg1)
			local function __FUNC_DC72_(arg0, arg1)
				local function __FUNC_DDEA_(arg0, arg1)
					local function __FUNC_E147_(arg0, arg1)
						local function __FUNC_E2BE_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.text:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.Flippedtext:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.rightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0.FlippedrightBumper:beginAnimation("subkeyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setYRot(0.000000)
							arg0:setZoom(0.000000)
							arg0.text:setAlpha(1.000000)
							arg0.Flippedtext:setAlpha(0.000000)
							arg0.rightBumper:setAlpha(1.000000)
							arg0.FlippedrightBumper:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_E2BE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						arg0:setYRot(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2BE_)
					end

					if arg1.interrupted then
						__FUNC_E147_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.text:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.Flippedtext:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.rightBumper:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0.FlippedrightBumper:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(84.000000)
					arg0.text:setAlpha(1.000000)
					arg0.Flippedtext:setAlpha(0.000000)
					arg0.rightBumper:setAlpha(1.000000)
					arg0.FlippedrightBumper:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E147_)
				end

				if arg1.interrupted then
					__FUNC_DDEA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setYRot(90.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDEA_)
			end

			if arg1.interrupted then
				__FUNC_DC72_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(20.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC72_)
		end

		registerVal10:completeAnimation()
		registerVal10.text:completeAnimation()
		registerVal10.Flippedtext:completeAnimation()
		registerVal10.rightBumper:completeAnimation()
		registerVal10.FlippedrightBumper:completeAnimation()
		registerVal2.Frame:setYRot(180.000000)
		registerVal2.Frame:setZoom(0.000000)
		registerVal2.Frame.text:setAlpha(0.000000)
		registerVal2.Frame.Flippedtext:setAlpha(1.000000)
		registerVal2.Frame.rightBumper:setAlpha(0.000000)
		registerVal2.Frame.FlippedrightBumper:setAlpha(1.000000)
		__FUNC_DAF8_(registerVal10, {})
	end

	registerVal12.DefaultState = __FUNC_BE68_
	local function __FUNC_E66D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal3.infoArea:completeAnimation()
		registerVal3.FETitleNumBrdr0:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.newIcon:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item:setAlpha(0.000000)
		registerVal2.item:setZoom(0.000000)
		registerVal2.item.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.item.infoArea:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.contractChallenges:setAlpha(1.000000)
		registerVal2.contractChallenges:setYRot(0.000000)
		registerVal2.contractChallenges:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FrontTopAndBottom:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.FrontTopAndBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_E66D_
	registerVal11.Challenges = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_EAFE_(arg0, arg2, arg3)
		return IsHeroLocked(arg2, arg1)
	end

	registerVal14.condition = __FUNC_EAFE_
	local registerVal15 = {}
	registerVal15.stateName = "Flipped"
	local function __FUNC_EB52_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Flipped")
	end

	registerVal15.condition = __FUNC_EB52_
	local registerVal16 = {}
	registerVal16.stateName = "Challenges"
	local function __FUNC_EBB8_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Challenges")
	end

	registerVal16.condition = __FUNC_EBB8_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_EC23_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "Flipped")
		if registerVal2 then
			SetLoseFocusToElement(registerVal2, "item", arg1)
			MakeElementNotFocusable(registerVal2, "item", arg1)
			MakeElementFocusable(registerVal2, "back", arg1)
			SetFocusToElement(registerVal2, "back", arg1)
		else
			registerVal2 = IsSelfInState(registerVal2, "Challenges")
			if registerVal2 then
				SetLoseFocusToElement(registerVal2, "item", arg1)
				MakeElementNotFocusable(registerVal2, "item", arg1)
				MakeElementFocusable(registerVal2, "contractChallenges", arg1)
				SetFocusToElement(registerVal2, "contractChallenges", arg1)
			else
				registerVal2 = IsSelfInState(registerVal2, "DefaultState")
				registerVal2 = IsElementInFocus(arg0)
				if registerVal2 and registerVal2 then
					SetLoseFocusToElement(registerVal2, "back", arg1)
					MakeElementNotFocusable(registerVal2, "back", arg1)
					SetLoseFocusToElement(registerVal2, "contractChallenges", arg1)
					MakeElementNotFocusable(registerVal2, "contractChallenges", arg1)
					MakeElementFocusable(registerVal2, "item", arg1)
					SetFocusToElement(registerVal2, "item", arg1)
				else
					registerVal2 = IsSelfInState(registerVal2, "DefaultState")
					if registerVal2 then
						MakeElementNotFocusable(registerVal2, "back", arg1)
						MakeElementNotFocusable(registerVal2, "contractChallenges", arg1)
						MakeElementFocusable(registerVal2, "item", arg1)
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_EC23_)
	registerVal3.id = "item"
	registerVal5.id = "back"
	local function __FUNC_EF3D_(arg0, arg1)
		local registerVal2 = arg0.item:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_EF3D_)
	local function __FUNC_F03C_(arg0)
		arg0.item:close()
		arg0.contractChallenges:close()
		arg0.back:close()
		arg0.FocusBarB0:close()
		arg0.FocusBarB00:close()
		arg0.Frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F03C_)
	if __FUNC_469_ then
		__FUNC_469_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseContractCharacterLoadoutCarouselItem.new = __FUNC_5EE_
