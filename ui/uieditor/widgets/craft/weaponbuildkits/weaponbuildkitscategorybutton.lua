-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.StartMenu.StartMenu_ImageContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsCategoryButton = registerVal1
function CoD.WeaponBuildKitsCategoryButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsCategoryButton)
	registerVal2.id = "WeaponBuildKitsCategoryButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 338.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 206.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal5:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.StartMenu_ImageContainer.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -103.000000, 103.000000)
	registerVal6:setTopBottom(false, false, -103.000000, 103.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ImageContainer = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 11.730000, 217.730000)
	registerVal7:setTopBottom(false, true, -51.000000, -29.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 5.000000, 257.000000)
	registerVal8:setTopBottom(false, true, -32.000000, -6.000000)
	registerVal8.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal10:setText(Engine.Localize(""))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ImageText = registerVal10
	local registerVal11 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -263.500000, -231.500000)
	registerVal11:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal11:setAlpha(0.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_225A_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCACItemPurchased(arg2, arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_225A_
	local registerVal16 = {}
	registerVal16.stateName = "VisibleCP"
	local function __FUNC_231D_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
			if not registerVal3 then
				registerVal3 = IsCACItemPurchased(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal16.condition = __FUNC_231D_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNav")
	local function __FUNC_23E1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_23E1_)
	local function __FUNC_2508_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "itemIndex", true, __FUNC_2508_)
	registerVal2:addElement(registerVal11)
	registerVal2.tokenUnlock = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarT = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	registerVal14 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal14:setRGB(1.000000, 0.300000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBorder = registerVal14
	registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal15:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal15:setRGB(0.560000, 0.680000, 0.270000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal15)
	registerVal2.equippedIcon = registerVal15
	registerVal16 = CoD.cac_lock.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal16:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.lockedIcon = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal17:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal17:setRGB(1.000000, 0.410000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal17)
	registerVal2.alertIcon = registerVal17
	local registerVal18 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 136.500000, 201.500000)
	registerVal18:setTopBottom(false, false, 10.500000, 34.500000)
	registerVal2:addElement(registerVal18)
	registerVal2.IconNew = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal19:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal19:setRGB(1.000000, 0.090000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal20:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal20:setRGB(1.000000, 0.150000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.glitch2 = registerVal20
	local registerVal21 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal21:setTopBottom(true, false, 4.930000, 61.070000)
	local function __FUNC_2627_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_2627_)
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Visible"
	local function __FUNC_2676_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal25.condition = __FUNC_2676_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.Pregame.Update")
	local function __FUNC_26CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_26CE_)
	registerVal2:addElement(registerVal21)
	registerVal2.RestrictedItemWarning = registerVal21
	local registerVal22 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal22:setLeftRight(false, true, -132.000000, -114.000000)
	registerVal22:setTopBottom(true, false, 69.000000, 87.000000)
	local function __FUNC_27FA_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_27FA_)
	local function __FUNC_284A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "breadcrumbCount", true, __FUNC_284A_)
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Visible"
	local function __FUNC_2921_(arg0, arg2, arg3)
		return ShouldDisplayWeaponGroupBreadcrumbCount(registerVal2, arg1)
	end

	registerVal26.condition = __FUNC_2921_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	local function __FUNC_2991_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "breadcrumbCount"
		arg0:updateElementState(registerVal22, registerVal4)
	end

	registerVal22:linkToElementModel(registerVal22, "breadcrumbCount", true, __FUNC_2991_)
	registerVal2:addElement(registerVal22)
	registerVal2.breadcrumbCount = registerVal22
	local function __FUNC_2AB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ImageContainer:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.ImageContainer:linkToElementModel(registerVal2, "categoryImage", true, __FUNC_2AB5_)
	local function __FUNC_2B8C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.StartMenuIdentitySubTitle0:linkToElementModel(registerVal2, "categoryName", true, __FUNC_2B8C_)
	local registerVal23 = {}
	registerVal24 = {}
	local function __FUNC_2C64_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2C64_
	local function __FUNC_31A4_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_3437_(arg0, arg1)
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
		__FUNC_3437_(registerVal4, {})
		local function __FUNC_35E9_(arg0, arg1)
			local function __FUNC_3740_(arg0, arg1)
				local function __FUNC_38BB_(arg0, arg1)
					local function __FUNC_3A10_(arg0, arg1)
						local function __FUNC_3B8B_(arg0, arg1)
							local function __FUNC_3CE0_(arg0, arg1)
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
								__FUNC_3CE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE0_)
						end

						if arg1.interrupted then
							__FUNC_3B8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B8B_)
					end

					if arg1.interrupted then
						__FUNC_3A10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A10_)
				end

				if arg1.interrupted then
					__FUNC_38BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BB_)
			end

			if arg1.interrupted then
				__FUNC_3740_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3740_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_35E9_(registerVal12, {})
		local function __FUNC_3E95_(arg0, arg1)
			local function __FUNC_3FEC_(arg0, arg1)
				local function __FUNC_4167_(arg0, arg1)
					local function __FUNC_42BC_(arg0, arg1)
						local function __FUNC_4437_(arg0, arg1)
							local function __FUNC_458C_(arg0, arg1)
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
								__FUNC_458C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458C_)
						end

						if arg1.interrupted then
							__FUNC_4437_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4437_)
					end

					if arg1.interrupted then
						__FUNC_42BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42BC_)
				end

				if arg1.interrupted then
					__FUNC_4167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4167_)
			end

			if arg1.interrupted then
				__FUNC_3FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FEC_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3E95_(registerVal13, {})
		local function __FUNC_4741_(arg0, arg1)
			local function __FUNC_4898_(arg0, arg1)
				local function __FUNC_4A13_(arg0, arg1)
					local function __FUNC_4B8B_(arg0, arg1)
						local function __FUNC_4D03_(arg0, arg1)
							local function __FUNC_4E58_(arg0, arg1)
								local function __FUNC_4FD3_(arg0, arg1)
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
									__FUNC_4FD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD3_)
							end

							if arg1.interrupted then
								__FUNC_4E58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E58_)
						end

						if arg1.interrupted then
							__FUNC_4D03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D03_)
					end

					if arg1.interrupted then
						__FUNC_4B8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8B_)
				end

				if arg1.interrupted then
					__FUNC_4A13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A13_)
			end

			if arg1.interrupted then
				__FUNC_4898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4898_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4741_(registerVal14, {})
		local function __FUNC_5185_(arg0, arg1)
			local function __FUNC_52DC_(arg0, arg1)
				local function __FUNC_5457_(arg0, arg1)
					local function __FUNC_55AC_(arg0, arg1)
						local function __FUNC_5727_(arg0, arg1)
							local function __FUNC_587C_(arg0, arg1)
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
								__FUNC_587C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_587C_)
						end

						if arg1.interrupted then
							__FUNC_5727_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5727_)
					end

					if arg1.interrupted then
						__FUNC_55AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55AC_)
				end

				if arg1.interrupted then
					__FUNC_5457_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5457_)
			end

			if arg1.interrupted then
				__FUNC_52DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52DC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_5185_(registerVal19, {})
		local function __FUNC_5A31_(arg0, arg1)
			local function __FUNC_5B88_(arg0, arg1)
				local function __FUNC_5D03_(arg0, arg1)
					local function __FUNC_5E58_(arg0, arg1)
						local function __FUNC_5FD3_(arg0, arg1)
							local function __FUNC_6128_(arg0, arg1)
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
								__FUNC_6128_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6128_)
						end

						if arg1.interrupted then
							__FUNC_5FD3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FD3_)
					end

					if arg1.interrupted then
						__FUNC_5E58_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E58_)
				end

				if arg1.interrupted then
					__FUNC_5D03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D03_)
			end

			if arg1.interrupted then
				__FUNC_5B88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B88_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_5A31_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_31A4_
	local function __FUNC_62DD_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setLeftRight(true, true, -2.000000, 0.000000)
		registerVal2.BoxButtonLrgInactive:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal24.Focus = __FUNC_62DD_
	local function __FUNC_663A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_68CB_(arg0, arg1)
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
		__FUNC_68CB_(registerVal4, {})
		local function __FUNC_6A7D_(arg0, arg1)
			local function __FUNC_6BF7_(arg0, arg1)
				local function __FUNC_6D6F_(arg0, arg1)
					local function __FUNC_6EE7_(arg0, arg1)
						local function __FUNC_703C_(arg0, arg1)
							local function __FUNC_71B7_(arg0, arg1)
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
								__FUNC_71B7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71B7_)
						end

						if arg1.interrupted then
							__FUNC_703C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_703C_)
					end

					if arg1.interrupted then
						__FUNC_6EE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EE7_)
				end

				if arg1.interrupted then
					__FUNC_6D6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D6F_)
			end

			if arg1.interrupted then
				__FUNC_6BF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6A7D_(registerVal12, {})
		local function __FUNC_7369_(arg0, arg1)
			local function __FUNC_74E3_(arg0, arg1)
				local function __FUNC_765B_(arg0, arg1)
					local function __FUNC_77D3_(arg0, arg1)
						local function __FUNC_7928_(arg0, arg1)
							local function __FUNC_7AA3_(arg0, arg1)
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
								__FUNC_7AA3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AA3_)
						end

						if arg1.interrupted then
							__FUNC_7928_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7928_)
					end

					if arg1.interrupted then
						__FUNC_77D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77D3_)
				end

				if arg1.interrupted then
					__FUNC_765B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_765B_)
			end

			if arg1.interrupted then
				__FUNC_74E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74E3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7369_(registerVal13, {})
		local function __FUNC_7C55_(arg0, arg1)
			local function __FUNC_7DAC_(arg0, arg1)
				local function __FUNC_7F27_(arg0, arg1)
					local function __FUNC_809F_(arg0, arg1)
						local function __FUNC_8217_(arg0, arg1)
							local function __FUNC_836C_(arg0, arg1)
								local function __FUNC_84E7_(arg0, arg1)
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
									__FUNC_84E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84E7_)
							end

							if arg1.interrupted then
								__FUNC_836C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_836C_)
						end

						if arg1.interrupted then
							__FUNC_8217_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8217_)
					end

					if arg1.interrupted then
						__FUNC_809F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_809F_)
				end

				if arg1.interrupted then
					__FUNC_7F27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F27_)
			end

			if arg1.interrupted then
				__FUNC_7DAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DAC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_7C55_(registerVal14, {})
		local function __FUNC_8699_(arg0, arg1)
			local function __FUNC_87F0_(arg0, arg1)
				local function __FUNC_896B_(arg0, arg1)
					local function __FUNC_8AC0_(arg0, arg1)
						local function __FUNC_8C3B_(arg0, arg1)
							local function __FUNC_8D90_(arg0, arg1)
								local function __FUNC_8F0B_(arg0, arg1)
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
									__FUNC_8F0B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F0B_)
							end

							if arg1.interrupted then
								__FUNC_8D90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D90_)
						end

						if arg1.interrupted then
							__FUNC_8C3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C3B_)
					end

					if arg1.interrupted then
						__FUNC_8AC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AC0_)
				end

				if arg1.interrupted then
					__FUNC_896B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_896B_)
			end

			if arg1.interrupted then
				__FUNC_87F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87F0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_8699_(registerVal19, {})
		local function __FUNC_90BD_(arg0, arg1)
			local function __FUNC_9214_(arg0, arg1)
				local function __FUNC_938F_(arg0, arg1)
					local function __FUNC_94E4_(arg0, arg1)
						local function __FUNC_965F_(arg0, arg1)
							local function __FUNC_97B4_(arg0, arg1)
								local function __FUNC_992F_(arg0, arg1)
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
									__FUNC_992F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_992F_)
							end

							if arg1.interrupted then
								__FUNC_97B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97B4_)
						end

						if arg1.interrupted then
							__FUNC_965F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_965F_)
					end

					if arg1.interrupted then
						__FUNC_94E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94E4_)
				end

				if arg1.interrupted then
					__FUNC_938F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_938F_)
			end

			if arg1.interrupted then
				__FUNC_9214_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9214_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_90BD_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_663A_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_9AE1_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_9AE1_
	local function __FUNC_A020_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_A2B3_(arg0, arg1)
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
		__FUNC_A2B3_(registerVal4, {})
		local function __FUNC_A465_(arg0, arg1)
			local function __FUNC_A5BC_(arg0, arg1)
				local function __FUNC_A737_(arg0, arg1)
					local function __FUNC_A88C_(arg0, arg1)
						local function __FUNC_AA07_(arg0, arg1)
							local function __FUNC_AB5C_(arg0, arg1)
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
								__FUNC_AB5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB5C_)
						end

						if arg1.interrupted then
							__FUNC_AA07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA07_)
					end

					if arg1.interrupted then
						__FUNC_A88C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A88C_)
				end

				if arg1.interrupted then
					__FUNC_A737_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A737_)
			end

			if arg1.interrupted then
				__FUNC_A5BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5BC_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A465_(registerVal12, {})
		local function __FUNC_AD11_(arg0, arg1)
			local function __FUNC_AE68_(arg0, arg1)
				local function __FUNC_AFE3_(arg0, arg1)
					local function __FUNC_B138_(arg0, arg1)
						local function __FUNC_B2B3_(arg0, arg1)
							local function __FUNC_B408_(arg0, arg1)
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
								__FUNC_B408_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B408_)
						end

						if arg1.interrupted then
							__FUNC_B2B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2B3_)
					end

					if arg1.interrupted then
						__FUNC_B138_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B138_)
				end

				if arg1.interrupted then
					__FUNC_AFE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFE3_)
			end

			if arg1.interrupted then
				__FUNC_AE68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE68_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AD11_(registerVal13, {})
		local function __FUNC_B5BD_(arg0, arg1)
			local function __FUNC_B714_(arg0, arg1)
				local function __FUNC_B88F_(arg0, arg1)
					local function __FUNC_BA07_(arg0, arg1)
						local function __FUNC_BB7F_(arg0, arg1)
							local function __FUNC_BCD4_(arg0, arg1)
								local function __FUNC_BE4F_(arg0, arg1)
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
									__FUNC_BE4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE4F_)
							end

							if arg1.interrupted then
								__FUNC_BCD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCD4_)
						end

						if arg1.interrupted then
							__FUNC_BB7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB7F_)
					end

					if arg1.interrupted then
						__FUNC_BA07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA07_)
				end

				if arg1.interrupted then
					__FUNC_B88F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B88F_)
			end

			if arg1.interrupted then
				__FUNC_B714_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B714_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B5BD_(registerVal14, {})
		local function __FUNC_C001_(arg0, arg1)
			local function __FUNC_C158_(arg0, arg1)
				local function __FUNC_C2D3_(arg0, arg1)
					local function __FUNC_C428_(arg0, arg1)
						local function __FUNC_C5A3_(arg0, arg1)
							local function __FUNC_C6F8_(arg0, arg1)
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
								__FUNC_C6F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6F8_)
						end

						if arg1.interrupted then
							__FUNC_C5A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5A3_)
					end

					if arg1.interrupted then
						__FUNC_C428_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C428_)
				end

				if arg1.interrupted then
					__FUNC_C2D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2D3_)
			end

			if arg1.interrupted then
				__FUNC_C158_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C158_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_C001_(registerVal19, {})
		local function __FUNC_C8AD_(arg0, arg1)
			local function __FUNC_CA04_(arg0, arg1)
				local function __FUNC_CB7F_(arg0, arg1)
					local function __FUNC_CCD4_(arg0, arg1)
						local function __FUNC_CE4F_(arg0, arg1)
							local function __FUNC_CFA4_(arg0, arg1)
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
								__FUNC_CFA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFA4_)
						end

						if arg1.interrupted then
							__FUNC_CE4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE4F_)
					end

					if arg1.interrupted then
						__FUNC_CCD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCD4_)
				end

				if arg1.interrupted then
					__FUNC_CB7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB7F_)
			end

			if arg1.interrupted then
				__FUNC_CA04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA04_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C8AD_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_A020_
	local function __FUNC_D159_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal24.Focus = __FUNC_D159_
	local function __FUNC_D312_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_D5A8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_D5A8_(registerVal4, {})
		local function __FUNC_D75D_(arg0, arg1)
			local function __FUNC_D8D7_(arg0, arg1)
				local function __FUNC_DA4F_(arg0, arg1)
					local function __FUNC_DBC7_(arg0, arg1)
						local function __FUNC_DD1C_(arg0, arg1)
							local function __FUNC_DE97_(arg0, arg1)
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
								__FUNC_DE97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE97_)
						end

						if arg1.interrupted then
							__FUNC_DD1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD1C_)
					end

					if arg1.interrupted then
						__FUNC_DBC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC7_)
				end

				if arg1.interrupted then
					__FUNC_DA4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA4F_)
			end

			if arg1.interrupted then
				__FUNC_D8D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8D7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_D75D_(registerVal12, {})
		local function __FUNC_E049_(arg0, arg1)
			local function __FUNC_E1C3_(arg0, arg1)
				local function __FUNC_E33B_(arg0, arg1)
					local function __FUNC_E4B3_(arg0, arg1)
						local function __FUNC_E608_(arg0, arg1)
							local function __FUNC_E783_(arg0, arg1)
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
								__FUNC_E783_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E783_)
						end

						if arg1.interrupted then
							__FUNC_E608_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E608_)
					end

					if arg1.interrupted then
						__FUNC_E4B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4B3_)
				end

				if arg1.interrupted then
					__FUNC_E33B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E33B_)
			end

			if arg1.interrupted then
				__FUNC_E1C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1C3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E049_(registerVal13, {})
		local function __FUNC_E935_(arg0, arg1)
			local function __FUNC_EAAF_(arg0, arg1)
				local function __FUNC_EC27_(arg0, arg1)
					local function __FUNC_ED9F_(arg0, arg1)
						local function __FUNC_EF17_(arg0, arg1)
							local function __FUNC_F06C_(arg0, arg1)
								local function __FUNC_F1E7_(arg0, arg1)
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
									__FUNC_F1E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1E7_)
							end

							if arg1.interrupted then
								__FUNC_F06C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F06C_)
						end

						if arg1.interrupted then
							__FUNC_EF17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF17_)
					end

					if arg1.interrupted then
						__FUNC_ED9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED9F_)
				end

				if arg1.interrupted then
					__FUNC_EC27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC27_)
			end

			if arg1.interrupted then
				__FUNC_EAAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAAF_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.700000)
		__FUNC_E935_(registerVal14, {})
		local function __FUNC_F399_(arg0, arg1)
			local function __FUNC_F4F0_(arg0, arg1)
				local function __FUNC_F66B_(arg0, arg1)
					local function __FUNC_F7C0_(arg0, arg1)
						local function __FUNC_F93B_(arg0, arg1)
							local function __FUNC_FA90_(arg0, arg1)
								local function __FUNC_FC0B_(arg0, arg1)
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
									__FUNC_FC0B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC0B_)
							end

							if arg1.interrupted then
								__FUNC_FA90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA90_)
						end

						if arg1.interrupted then
							__FUNC_F93B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F93B_)
					end

					if arg1.interrupted then
						__FUNC_F7C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7C0_)
				end

				if arg1.interrupted then
					__FUNC_F66B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F66B_)
			end

			if arg1.interrupted then
				__FUNC_F4F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4F0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F399_(registerVal19, {})
		local function __FUNC_FDBD_(arg0, arg1)
			local function __FUNC_FF14_(arg0, arg1)
				local function __FUNC_1008F_(arg0, arg1)
					local function __FUNC_101E4_(arg0, arg1)
						local function __FUNC_1035F_(arg0, arg1)
							local function __FUNC_104B4_(arg0, arg1)
								local function __FUNC_1062F_(arg0, arg1)
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
									__FUNC_1062F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1062F_)
							end

							if arg1.interrupted then
								__FUNC_104B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104B4_)
						end

						if arg1.interrupted then
							__FUNC_1035F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1035F_)
					end

					if arg1.interrupted then
						__FUNC_101E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101E4_)
				end

				if arg1.interrupted then
					__FUNC_1008F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1008F_)
			end

			if arg1.interrupted then
				__FUNC_FF14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF14_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_FDBD_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_D312_
	registerVal23.Equipped = registerVal24
	registerVal24 = {}
	local function __FUNC_107E1_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_107E1_
	local function __FUNC_10D79_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1100B_(arg0, arg1)
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
		__FUNC_1100B_(registerVal4, {})
		local function __FUNC_111BD_(arg0, arg1)
			local function __FUNC_11314_(arg0, arg1)
				local function __FUNC_1148F_(arg0, arg1)
					local function __FUNC_115E4_(arg0, arg1)
						local function __FUNC_1175F_(arg0, arg1)
							local function __FUNC_118B4_(arg0, arg1)
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
								__FUNC_118B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118B4_)
						end

						if arg1.interrupted then
							__FUNC_1175F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1175F_)
					end

					if arg1.interrupted then
						__FUNC_115E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115E4_)
				end

				if arg1.interrupted then
					__FUNC_1148F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1148F_)
			end

			if arg1.interrupted then
				__FUNC_11314_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11314_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_111BD_(registerVal12, {})
		local function __FUNC_11A69_(arg0, arg1)
			local function __FUNC_11BC0_(arg0, arg1)
				local function __FUNC_11D3B_(arg0, arg1)
					local function __FUNC_11E90_(arg0, arg1)
						local function __FUNC_1200B_(arg0, arg1)
							local function __FUNC_12160_(arg0, arg1)
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
								__FUNC_12160_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12160_)
						end

						if arg1.interrupted then
							__FUNC_1200B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1200B_)
					end

					if arg1.interrupted then
						__FUNC_11E90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E90_)
				end

				if arg1.interrupted then
					__FUNC_11D3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D3B_)
			end

			if arg1.interrupted then
				__FUNC_11BC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BC0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_11A69_(registerVal13, {})
		local function __FUNC_12315_(arg0, arg1)
			local function __FUNC_1246C_(arg0, arg1)
				local function __FUNC_125E7_(arg0, arg1)
					local function __FUNC_1275F_(arg0, arg1)
						local function __FUNC_128D7_(arg0, arg1)
							local function __FUNC_12A2C_(arg0, arg1)
								local function __FUNC_12BA7_(arg0, arg1)
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
									__FUNC_12BA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BA7_)
							end

							if arg1.interrupted then
								__FUNC_12A2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A2C_)
						end

						if arg1.interrupted then
							__FUNC_128D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128D7_)
					end

					if arg1.interrupted then
						__FUNC_1275F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1275F_)
				end

				if arg1.interrupted then
					__FUNC_125E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125E7_)
			end

			if arg1.interrupted then
				__FUNC_1246C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1246C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_12315_(registerVal14, {})
		local function __FUNC_12D59_(arg0, arg1)
			local function __FUNC_12EB0_(arg0, arg1)
				local function __FUNC_1302B_(arg0, arg1)
					local function __FUNC_13180_(arg0, arg1)
						local function __FUNC_132FB_(arg0, arg1)
							local function __FUNC_13450_(arg0, arg1)
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
								__FUNC_13450_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13450_)
						end

						if arg1.interrupted then
							__FUNC_132FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132FB_)
					end

					if arg1.interrupted then
						__FUNC_13180_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13180_)
				end

				if arg1.interrupted then
					__FUNC_1302B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1302B_)
			end

			if arg1.interrupted then
				__FUNC_12EB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EB0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_12D59_(registerVal19, {})
		local function __FUNC_13605_(arg0, arg1)
			local function __FUNC_1375C_(arg0, arg1)
				local function __FUNC_138D7_(arg0, arg1)
					local function __FUNC_13A2C_(arg0, arg1)
						local function __FUNC_13BA7_(arg0, arg1)
							local function __FUNC_13CFC_(arg0, arg1)
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
								__FUNC_13CFC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CFC_)
						end

						if arg1.interrupted then
							__FUNC_13BA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BA7_)
					end

					if arg1.interrupted then
						__FUNC_13A2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A2C_)
				end

				if arg1.interrupted then
					__FUNC_138D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138D7_)
			end

			if arg1.interrupted then
				__FUNC_1375C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1375C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_13605_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_10D79_
	local function __FUNC_13EB1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal24.Focus = __FUNC_13EB1_
	local function __FUNC_1406A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_142FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_142FB_(registerVal4, {})
		local function __FUNC_144AD_(arg0, arg1)
			local function __FUNC_14627_(arg0, arg1)
				local function __FUNC_1479F_(arg0, arg1)
					local function __FUNC_14917_(arg0, arg1)
						local function __FUNC_14A6C_(arg0, arg1)
							local function __FUNC_14BE7_(arg0, arg1)
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
								__FUNC_14BE7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BE7_)
						end

						if arg1.interrupted then
							__FUNC_14A6C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A6C_)
					end

					if arg1.interrupted then
						__FUNC_14917_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14917_)
				end

				if arg1.interrupted then
					__FUNC_1479F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1479F_)
			end

			if arg1.interrupted then
				__FUNC_14627_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14627_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_144AD_(registerVal12, {})
		local function __FUNC_14D99_(arg0, arg1)
			local function __FUNC_14F13_(arg0, arg1)
				local function __FUNC_1508B_(arg0, arg1)
					local function __FUNC_15203_(arg0, arg1)
						local function __FUNC_15358_(arg0, arg1)
							local function __FUNC_154D3_(arg0, arg1)
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
								__FUNC_154D3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154D3_)
						end

						if arg1.interrupted then
							__FUNC_15358_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15358_)
					end

					if arg1.interrupted then
						__FUNC_15203_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15203_)
				end

				if arg1.interrupted then
					__FUNC_1508B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1508B_)
			end

			if arg1.interrupted then
				__FUNC_14F13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F13_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_14D99_(registerVal13, {})
		local function __FUNC_15685_(arg0, arg1)
			local function __FUNC_157DC_(arg0, arg1)
				local function __FUNC_15957_(arg0, arg1)
					local function __FUNC_15ACF_(arg0, arg1)
						local function __FUNC_15C47_(arg0, arg1)
							local function __FUNC_15D9C_(arg0, arg1)
								local function __FUNC_15F17_(arg0, arg1)
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
									__FUNC_15F17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F17_)
							end

							if arg1.interrupted then
								__FUNC_15D9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D9C_)
						end

						if arg1.interrupted then
							__FUNC_15C47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C47_)
					end

					if arg1.interrupted then
						__FUNC_15ACF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15ACF_)
				end

				if arg1.interrupted then
					__FUNC_15957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15957_)
			end

			if arg1.interrupted then
				__FUNC_157DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157DC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_15685_(registerVal14, {})
		local function __FUNC_160C9_(arg0, arg1)
			local function __FUNC_16220_(arg0, arg1)
				local function __FUNC_1639B_(arg0, arg1)
					local function __FUNC_164F0_(arg0, arg1)
						local function __FUNC_1666B_(arg0, arg1)
							local function __FUNC_167C0_(arg0, arg1)
								local function __FUNC_1693B_(arg0, arg1)
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
									__FUNC_1693B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1693B_)
							end

							if arg1.interrupted then
								__FUNC_167C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167C0_)
						end

						if arg1.interrupted then
							__FUNC_1666B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1666B_)
					end

					if arg1.interrupted then
						__FUNC_164F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164F0_)
				end

				if arg1.interrupted then
					__FUNC_1639B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1639B_)
			end

			if arg1.interrupted then
				__FUNC_16220_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16220_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_160C9_(registerVal19, {})
		local function __FUNC_16AED_(arg0, arg1)
			local function __FUNC_16C44_(arg0, arg1)
				local function __FUNC_16DBF_(arg0, arg1)
					local function __FUNC_16F14_(arg0, arg1)
						local function __FUNC_1708F_(arg0, arg1)
							local function __FUNC_171E4_(arg0, arg1)
								local function __FUNC_1735F_(arg0, arg1)
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
									__FUNC_1735F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1735F_)
							end

							if arg1.interrupted then
								__FUNC_171E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171E4_)
						end

						if arg1.interrupted then
							__FUNC_1708F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1708F_)
					end

					if arg1.interrupted then
						__FUNC_16F14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F14_)
				end

				if arg1.interrupted then
					__FUNC_16DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DBF_)
			end

			if arg1.interrupted then
				__FUNC_16C44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C44_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_16AED_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_1406A_
	registerVal23.New = registerVal24
	registerVal24 = {}
	local function __FUNC_17511_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_17511_
	local function __FUNC_17A55_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_17D41_(arg0, arg1)
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
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_17D41_(registerVal4, {})
		local function __FUNC_17EF5_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		__FUNC_17EF5_(registerVal5, {})
		local function __FUNC_180A9_(arg0, arg1)
			local function __FUNC_18200_(arg0, arg1)
				local function __FUNC_1837B_(arg0, arg1)
					local function __FUNC_184D0_(arg0, arg1)
						local function __FUNC_1864B_(arg0, arg1)
							local function __FUNC_187A0_(arg0, arg1)
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
								__FUNC_187A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187A0_)
						end

						if arg1.interrupted then
							__FUNC_1864B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1864B_)
					end

					if arg1.interrupted then
						__FUNC_184D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184D0_)
				end

				if arg1.interrupted then
					__FUNC_1837B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1837B_)
			end

			if arg1.interrupted then
				__FUNC_18200_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18200_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_180A9_(registerVal12, {})
		local function __FUNC_18955_(arg0, arg1)
			local function __FUNC_18AAC_(arg0, arg1)
				local function __FUNC_18C27_(arg0, arg1)
					local function __FUNC_18D7C_(arg0, arg1)
						local function __FUNC_18EF7_(arg0, arg1)
							local function __FUNC_1904C_(arg0, arg1)
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
								__FUNC_1904C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1904C_)
						end

						if arg1.interrupted then
							__FUNC_18EF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EF7_)
					end

					if arg1.interrupted then
						__FUNC_18D7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D7C_)
				end

				if arg1.interrupted then
					__FUNC_18C27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C27_)
			end

			if arg1.interrupted then
				__FUNC_18AAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18AAC_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_18955_(registerVal13, {})
		local function __FUNC_19201_(arg0, arg1)
			local function __FUNC_19358_(arg0, arg1)
				local function __FUNC_194D3_(arg0, arg1)
					local function __FUNC_1964B_(arg0, arg1)
						local function __FUNC_197C3_(arg0, arg1)
							local function __FUNC_19918_(arg0, arg1)
								local function __FUNC_19A93_(arg0, arg1)
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
									__FUNC_19A93_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A93_)
							end

							if arg1.interrupted then
								__FUNC_19918_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19918_)
						end

						if arg1.interrupted then
							__FUNC_197C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197C3_)
					end

					if arg1.interrupted then
						__FUNC_1964B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1964B_)
				end

				if arg1.interrupted then
					__FUNC_194D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_194D3_)
			end

			if arg1.interrupted then
				__FUNC_19358_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19358_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_19201_(registerVal14, {})
		local function __FUNC_19C45_(arg0, arg1)
			local function __FUNC_19D9C_(arg0, arg1)
				local function __FUNC_19F17_(arg0, arg1)
					local function __FUNC_1A06C_(arg0, arg1)
						local function __FUNC_1A1E7_(arg0, arg1)
							local function __FUNC_1A33C_(arg0, arg1)
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
								__FUNC_1A33C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A33C_)
						end

						if arg1.interrupted then
							__FUNC_1A1E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A1E7_)
					end

					if arg1.interrupted then
						__FUNC_1A06C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A06C_)
				end

				if arg1.interrupted then
					__FUNC_19F17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F17_)
			end

			if arg1.interrupted then
				__FUNC_19D9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D9C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_19C45_(registerVal19, {})
		local function __FUNC_1A4F1_(arg0, arg1)
			local function __FUNC_1A648_(arg0, arg1)
				local function __FUNC_1A7C3_(arg0, arg1)
					local function __FUNC_1A918_(arg0, arg1)
						local function __FUNC_1AA93_(arg0, arg1)
							local function __FUNC_1ABE8_(arg0, arg1)
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
								__FUNC_1ABE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABE8_)
						end

						if arg1.interrupted then
							__FUNC_1AA93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA93_)
					end

					if arg1.interrupted then
						__FUNC_1A918_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A918_)
				end

				if arg1.interrupted then
					__FUNC_1A7C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7C3_)
			end

			if arg1.interrupted then
				__FUNC_1A648_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A648_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1A4F1_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_17A55_
	local function __FUNC_1AD9D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal24.Focus = __FUNC_1AD9D_
	local function __FUNC_1AFB4_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1B2A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_1B2A1_(registerVal4, {})
		local function __FUNC_1B455_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		__FUNC_1B455_(registerVal5, {})
		local function __FUNC_1B609_(arg0, arg1)
			local function __FUNC_1B783_(arg0, arg1)
				local function __FUNC_1B8FB_(arg0, arg1)
					local function __FUNC_1BA73_(arg0, arg1)
						local function __FUNC_1BBC8_(arg0, arg1)
							local function __FUNC_1BD43_(arg0, arg1)
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
								__FUNC_1BD43_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD43_)
						end

						if arg1.interrupted then
							__FUNC_1BBC8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BBC8_)
					end

					if arg1.interrupted then
						__FUNC_1BA73_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA73_)
				end

				if arg1.interrupted then
					__FUNC_1B8FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8FB_)
			end

			if arg1.interrupted then
				__FUNC_1B783_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B783_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1B609_(registerVal12, {})
		local function __FUNC_1BEF5_(arg0, arg1)
			local function __FUNC_1C06F_(arg0, arg1)
				local function __FUNC_1C1E7_(arg0, arg1)
					local function __FUNC_1C35F_(arg0, arg1)
						local function __FUNC_1C4B4_(arg0, arg1)
							local function __FUNC_1C62F_(arg0, arg1)
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
								__FUNC_1C62F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C62F_)
						end

						if arg1.interrupted then
							__FUNC_1C4B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C4B4_)
					end

					if arg1.interrupted then
						__FUNC_1C35F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C35F_)
				end

				if arg1.interrupted then
					__FUNC_1C1E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1E7_)
			end

			if arg1.interrupted then
				__FUNC_1C06F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C06F_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1BEF5_(registerVal13, {})
		local function __FUNC_1C7E1_(arg0, arg1)
			local function __FUNC_1C938_(arg0, arg1)
				local function __FUNC_1CAB3_(arg0, arg1)
					local function __FUNC_1CC2B_(arg0, arg1)
						local function __FUNC_1CDA3_(arg0, arg1)
							local function __FUNC_1CEF8_(arg0, arg1)
								local function __FUNC_1D073_(arg0, arg1)
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
									__FUNC_1D073_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D073_)
							end

							if arg1.interrupted then
								__FUNC_1CEF8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CEF8_)
						end

						if arg1.interrupted then
							__FUNC_1CDA3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CDA3_)
					end

					if arg1.interrupted then
						__FUNC_1CC2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC2B_)
				end

				if arg1.interrupted then
					__FUNC_1CAB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CAB3_)
			end

			if arg1.interrupted then
				__FUNC_1C938_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C938_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1C7E1_(registerVal14, {})
		local function __FUNC_1D225_(arg0, arg1)
			local function __FUNC_1D37C_(arg0, arg1)
				local function __FUNC_1D4F7_(arg0, arg1)
					local function __FUNC_1D64C_(arg0, arg1)
						local function __FUNC_1D7C7_(arg0, arg1)
							local function __FUNC_1D91C_(arg0, arg1)
								local function __FUNC_1DA97_(arg0, arg1)
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
									__FUNC_1DA97_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA97_)
							end

							if arg1.interrupted then
								__FUNC_1D91C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D91C_)
						end

						if arg1.interrupted then
							__FUNC_1D7C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7C7_)
					end

					if arg1.interrupted then
						__FUNC_1D64C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D64C_)
				end

				if arg1.interrupted then
					__FUNC_1D4F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4F7_)
			end

			if arg1.interrupted then
				__FUNC_1D37C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D37C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1D225_(registerVal19, {})
		local function __FUNC_1DC49_(arg0, arg1)
			local function __FUNC_1DDA0_(arg0, arg1)
				local function __FUNC_1DF1B_(arg0, arg1)
					local function __FUNC_1E070_(arg0, arg1)
						local function __FUNC_1E1EB_(arg0, arg1)
							local function __FUNC_1E340_(arg0, arg1)
								local function __FUNC_1E4BB_(arg0, arg1)
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
									__FUNC_1E4BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4BB_)
							end

							if arg1.interrupted then
								__FUNC_1E340_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E340_)
						end

						if arg1.interrupted then
							__FUNC_1E1EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1EB_)
					end

					if arg1.interrupted then
						__FUNC_1E070_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E070_)
				end

				if arg1.interrupted then
					__FUNC_1DF1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF1B_)
			end

			if arg1.interrupted then
				__FUNC_1DDA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDA0_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1DC49_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_1AFB4_
	registerVal23.Locked = registerVal24
	registerVal24 = {}
	local function __FUNC_1E66D_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_1E66D_
	local function __FUNC_1EC05_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1EF0B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_1EF0B_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1F0BD_(arg0, arg1)
			local function __FUNC_1F214_(arg0, arg1)
				local function __FUNC_1F38F_(arg0, arg1)
					local function __FUNC_1F4E4_(arg0, arg1)
						local function __FUNC_1F65F_(arg0, arg1)
							local function __FUNC_1F7B4_(arg0, arg1)
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
								__FUNC_1F7B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7B4_)
						end

						if arg1.interrupted then
							__FUNC_1F65F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F65F_)
					end

					if arg1.interrupted then
						__FUNC_1F4E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4E4_)
				end

				if arg1.interrupted then
					__FUNC_1F38F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F38F_)
			end

			if arg1.interrupted then
				__FUNC_1F214_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F214_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1F0BD_(registerVal12, {})
		local function __FUNC_1F969_(arg0, arg1)
			local function __FUNC_1FAC0_(arg0, arg1)
				local function __FUNC_1FC3B_(arg0, arg1)
					local function __FUNC_1FD90_(arg0, arg1)
						local function __FUNC_1FF0B_(arg0, arg1)
							local function __FUNC_20060_(arg0, arg1)
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
								__FUNC_20060_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20060_)
						end

						if arg1.interrupted then
							__FUNC_1FF0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF0B_)
					end

					if arg1.interrupted then
						__FUNC_1FD90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD90_)
				end

				if arg1.interrupted then
					__FUNC_1FC3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC3B_)
			end

			if arg1.interrupted then
				__FUNC_1FAC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FAC0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1F969_(registerVal13, {})
		local function __FUNC_20215_(arg0, arg1)
			local function __FUNC_2036C_(arg0, arg1)
				local function __FUNC_204E7_(arg0, arg1)
					local function __FUNC_2065F_(arg0, arg1)
						local function __FUNC_207D7_(arg0, arg1)
							local function __FUNC_2092C_(arg0, arg1)
								local function __FUNC_20AA7_(arg0, arg1)
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
									__FUNC_20AA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AA7_)
							end

							if arg1.interrupted then
								__FUNC_2092C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2092C_)
						end

						if arg1.interrupted then
							__FUNC_207D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207D7_)
					end

					if arg1.interrupted then
						__FUNC_2065F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2065F_)
				end

				if arg1.interrupted then
					__FUNC_204E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_204E7_)
			end

			if arg1.interrupted then
				__FUNC_2036C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2036C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_20215_(registerVal14, {})
		local function __FUNC_20C59_(arg0, arg1)
			local function __FUNC_20DB0_(arg0, arg1)
				local function __FUNC_20F2B_(arg0, arg1)
					local function __FUNC_21080_(arg0, arg1)
						local function __FUNC_211FB_(arg0, arg1)
							local function __FUNC_21350_(arg0, arg1)
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
								__FUNC_21350_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21350_)
						end

						if arg1.interrupted then
							__FUNC_211FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211FB_)
					end

					if arg1.interrupted then
						__FUNC_21080_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21080_)
				end

				if arg1.interrupted then
					__FUNC_20F2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F2B_)
			end

			if arg1.interrupted then
				__FUNC_20DB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20DB0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_20C59_(registerVal19, {})
		local function __FUNC_21505_(arg0, arg1)
			local function __FUNC_2165C_(arg0, arg1)
				local function __FUNC_217D7_(arg0, arg1)
					local function __FUNC_2192C_(arg0, arg1)
						local function __FUNC_21AA7_(arg0, arg1)
							local function __FUNC_21BFC_(arg0, arg1)
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
								__FUNC_21BFC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BFC_)
						end

						if arg1.interrupted then
							__FUNC_21AA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AA7_)
					end

					if arg1.interrupted then
						__FUNC_2192C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2192C_)
				end

				if arg1.interrupted then
					__FUNC_217D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217D7_)
			end

			if arg1.interrupted then
				__FUNC_2165C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2165C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_21505_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_1EC05_
	local function __FUNC_21DB1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal24.Focus = __FUNC_21DB1_
	local function __FUNC_21F6A_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_22255_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_22255_(registerVal4, {})
		local function __FUNC_22409_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		__FUNC_22409_(registerVal5, {})
		local function __FUNC_225BD_(arg0, arg1)
			local function __FUNC_22737_(arg0, arg1)
				local function __FUNC_228AF_(arg0, arg1)
					local function __FUNC_22A27_(arg0, arg1)
						local function __FUNC_22B7C_(arg0, arg1)
							local function __FUNC_22CF7_(arg0, arg1)
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
								__FUNC_22CF7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22CF7_)
						end

						if arg1.interrupted then
							__FUNC_22B7C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22B7C_)
					end

					if arg1.interrupted then
						__FUNC_22A27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A27_)
				end

				if arg1.interrupted then
					__FUNC_228AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_228AF_)
			end

			if arg1.interrupted then
				__FUNC_22737_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22737_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_225BD_(registerVal12, {})
		local function __FUNC_22EA9_(arg0, arg1)
			local function __FUNC_23023_(arg0, arg1)
				local function __FUNC_2319B_(arg0, arg1)
					local function __FUNC_23313_(arg0, arg1)
						local function __FUNC_23468_(arg0, arg1)
							local function __FUNC_235E3_(arg0, arg1)
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
								__FUNC_235E3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235E3_)
						end

						if arg1.interrupted then
							__FUNC_23468_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23468_)
					end

					if arg1.interrupted then
						__FUNC_23313_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23313_)
				end

				if arg1.interrupted then
					__FUNC_2319B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2319B_)
			end

			if arg1.interrupted then
				__FUNC_23023_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23023_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_22EA9_(registerVal13, {})
		local function __FUNC_23795_(arg0, arg1)
			local function __FUNC_238EC_(arg0, arg1)
				local function __FUNC_23A67_(arg0, arg1)
					local function __FUNC_23BDF_(arg0, arg1)
						local function __FUNC_23D57_(arg0, arg1)
							local function __FUNC_23EAC_(arg0, arg1)
								local function __FUNC_24027_(arg0, arg1)
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
									__FUNC_24027_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24027_)
							end

							if arg1.interrupted then
								__FUNC_23EAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23EAC_)
						end

						if arg1.interrupted then
							__FUNC_23D57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D57_)
					end

					if arg1.interrupted then
						__FUNC_23BDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BDF_)
				end

				if arg1.interrupted then
					__FUNC_23A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A67_)
			end

			if arg1.interrupted then
				__FUNC_238EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238EC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_23795_(registerVal14, {})
		local function __FUNC_241D9_(arg0, arg1)
			local function __FUNC_24330_(arg0, arg1)
				local function __FUNC_244AB_(arg0, arg1)
					local function __FUNC_24600_(arg0, arg1)
						local function __FUNC_2477B_(arg0, arg1)
							local function __FUNC_248D0_(arg0, arg1)
								local function __FUNC_24A4B_(arg0, arg1)
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
									__FUNC_24A4B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A4B_)
							end

							if arg1.interrupted then
								__FUNC_248D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_248D0_)
						end

						if arg1.interrupted then
							__FUNC_2477B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2477B_)
					end

					if arg1.interrupted then
						__FUNC_24600_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24600_)
				end

				if arg1.interrupted then
					__FUNC_244AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244AB_)
			end

			if arg1.interrupted then
				__FUNC_24330_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24330_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_241D9_(registerVal19, {})
		local function __FUNC_24BFD_(arg0, arg1)
			local function __FUNC_24D54_(arg0, arg1)
				local function __FUNC_24ECF_(arg0, arg1)
					local function __FUNC_25024_(arg0, arg1)
						local function __FUNC_2519F_(arg0, arg1)
							local function __FUNC_252F4_(arg0, arg1)
								local function __FUNC_2546F_(arg0, arg1)
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
									__FUNC_2546F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2546F_)
							end

							if arg1.interrupted then
								__FUNC_252F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252F4_)
						end

						if arg1.interrupted then
							__FUNC_2519F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2519F_)
					end

					if arg1.interrupted then
						__FUNC_25024_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25024_)
				end

				if arg1.interrupted then
					__FUNC_24ECF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24ECF_)
			end

			if arg1.interrupted then
				__FUNC_24D54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D54_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_24BFD_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_21F6A_
	registerVal23.NotAvailable = registerVal24
	registerVal24 = {}
	local function __FUNC_25621_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.breadcrumbCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_25621_
	local function __FUNC_25B60_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_25DF3_(arg0, arg1)
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
		__FUNC_25DF3_(registerVal4, {})
		local function __FUNC_25FA5_(arg0, arg1)
			local function __FUNC_260FC_(arg0, arg1)
				local function __FUNC_26277_(arg0, arg1)
					local function __FUNC_263CC_(arg0, arg1)
						local function __FUNC_26547_(arg0, arg1)
							local function __FUNC_2669C_(arg0, arg1)
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
								__FUNC_2669C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2669C_)
						end

						if arg1.interrupted then
							__FUNC_26547_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26547_)
					end

					if arg1.interrupted then
						__FUNC_263CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_263CC_)
				end

				if arg1.interrupted then
					__FUNC_26277_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26277_)
			end

			if arg1.interrupted then
				__FUNC_260FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260FC_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_25FA5_(registerVal12, {})
		local function __FUNC_26851_(arg0, arg1)
			local function __FUNC_269A8_(arg0, arg1)
				local function __FUNC_26B23_(arg0, arg1)
					local function __FUNC_26C78_(arg0, arg1)
						local function __FUNC_26DF3_(arg0, arg1)
							local function __FUNC_26F48_(arg0, arg1)
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
								__FUNC_26F48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F48_)
						end

						if arg1.interrupted then
							__FUNC_26DF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26DF3_)
					end

					if arg1.interrupted then
						__FUNC_26C78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C78_)
				end

				if arg1.interrupted then
					__FUNC_26B23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B23_)
			end

			if arg1.interrupted then
				__FUNC_269A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_269A8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_26851_(registerVal13, {})
		local function __FUNC_270FD_(arg0, arg1)
			local function __FUNC_27254_(arg0, arg1)
				local function __FUNC_273CF_(arg0, arg1)
					local function __FUNC_27547_(arg0, arg1)
						local function __FUNC_276BF_(arg0, arg1)
							local function __FUNC_27814_(arg0, arg1)
								local function __FUNC_2798F_(arg0, arg1)
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
									__FUNC_2798F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2798F_)
							end

							if arg1.interrupted then
								__FUNC_27814_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27814_)
						end

						if arg1.interrupted then
							__FUNC_276BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_276BF_)
					end

					if arg1.interrupted then
						__FUNC_27547_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27547_)
				end

				if arg1.interrupted then
					__FUNC_273CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273CF_)
			end

			if arg1.interrupted then
				__FUNC_27254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27254_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_270FD_(registerVal14, {})
		local function __FUNC_27B41_(arg0, arg1)
			local function __FUNC_27C98_(arg0, arg1)
				local function __FUNC_27E13_(arg0, arg1)
					local function __FUNC_27F68_(arg0, arg1)
						local function __FUNC_280E3_(arg0, arg1)
							local function __FUNC_28238_(arg0, arg1)
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
								__FUNC_28238_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28238_)
						end

						if arg1.interrupted then
							__FUNC_280E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280E3_)
					end

					if arg1.interrupted then
						__FUNC_27F68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F68_)
				end

				if arg1.interrupted then
					__FUNC_27E13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E13_)
			end

			if arg1.interrupted then
				__FUNC_27C98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C98_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_27B41_(registerVal19, {})
		local function __FUNC_283ED_(arg0, arg1)
			local function __FUNC_28544_(arg0, arg1)
				local function __FUNC_286BF_(arg0, arg1)
					local function __FUNC_28814_(arg0, arg1)
						local function __FUNC_2898F_(arg0, arg1)
							local function __FUNC_28AE4_(arg0, arg1)
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
								__FUNC_28AE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28AE4_)
						end

						if arg1.interrupted then
							__FUNC_2898F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2898F_)
					end

					if arg1.interrupted then
						__FUNC_28814_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28814_)
				end

				if arg1.interrupted then
					__FUNC_286BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_286BF_)
			end

			if arg1.interrupted then
				__FUNC_28544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28544_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_283ED_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_25B60_
	local function __FUNC_28C99_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal24.Focus = __FUNC_28C99_
	local function __FUNC_28E52_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_290E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_290E3_(registerVal4, {})
		local function __FUNC_29295_(arg0, arg1)
			local function __FUNC_2940F_(arg0, arg1)
				local function __FUNC_29587_(arg0, arg1)
					local function __FUNC_296FF_(arg0, arg1)
						local function __FUNC_29854_(arg0, arg1)
							local function __FUNC_299CF_(arg0, arg1)
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
								__FUNC_299CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_299CF_)
						end

						if arg1.interrupted then
							__FUNC_29854_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29854_)
					end

					if arg1.interrupted then
						__FUNC_296FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_296FF_)
				end

				if arg1.interrupted then
					__FUNC_29587_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29587_)
			end

			if arg1.interrupted then
				__FUNC_2940F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2940F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_29295_(registerVal12, {})
		local function __FUNC_29B81_(arg0, arg1)
			local function __FUNC_29CFB_(arg0, arg1)
				local function __FUNC_29E73_(arg0, arg1)
					local function __FUNC_29FEB_(arg0, arg1)
						local function __FUNC_2A140_(arg0, arg1)
							local function __FUNC_2A2BB_(arg0, arg1)
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
								__FUNC_2A2BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A2BB_)
						end

						if arg1.interrupted then
							__FUNC_2A140_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A140_)
					end

					if arg1.interrupted then
						__FUNC_29FEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29FEB_)
				end

				if arg1.interrupted then
					__FUNC_29E73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E73_)
			end

			if arg1.interrupted then
				__FUNC_29CFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29CFB_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_29B81_(registerVal13, {})
		local function __FUNC_2A46D_(arg0, arg1)
			local function __FUNC_2A5C4_(arg0, arg1)
				local function __FUNC_2A73F_(arg0, arg1)
					local function __FUNC_2A8B7_(arg0, arg1)
						local function __FUNC_2AA2F_(arg0, arg1)
							local function __FUNC_2AB84_(arg0, arg1)
								local function __FUNC_2ACFF_(arg0, arg1)
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
									__FUNC_2ACFF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ACFF_)
							end

							if arg1.interrupted then
								__FUNC_2AB84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB84_)
						end

						if arg1.interrupted then
							__FUNC_2AA2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA2F_)
					end

					if arg1.interrupted then
						__FUNC_2A8B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A8B7_)
				end

				if arg1.interrupted then
					__FUNC_2A73F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A73F_)
			end

			if arg1.interrupted then
				__FUNC_2A5C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A5C4_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2A46D_(registerVal14, {})
		local function __FUNC_2AEB1_(arg0, arg1)
			local function __FUNC_2B008_(arg0, arg1)
				local function __FUNC_2B183_(arg0, arg1)
					local function __FUNC_2B2D8_(arg0, arg1)
						local function __FUNC_2B453_(arg0, arg1)
							local function __FUNC_2B5A8_(arg0, arg1)
								local function __FUNC_2B723_(arg0, arg1)
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
									__FUNC_2B723_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B723_)
							end

							if arg1.interrupted then
								__FUNC_2B5A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B5A8_)
						end

						if arg1.interrupted then
							__FUNC_2B453_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B453_)
					end

					if arg1.interrupted then
						__FUNC_2B2D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B2D8_)
				end

				if arg1.interrupted then
					__FUNC_2B183_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B183_)
			end

			if arg1.interrupted then
				__FUNC_2B008_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B008_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2AEB1_(registerVal19, {})
		local function __FUNC_2B8D5_(arg0, arg1)
			local function __FUNC_2BA2C_(arg0, arg1)
				local function __FUNC_2BBA7_(arg0, arg1)
					local function __FUNC_2BCFC_(arg0, arg1)
						local function __FUNC_2BE77_(arg0, arg1)
							local function __FUNC_2BFCC_(arg0, arg1)
								local function __FUNC_2C147_(arg0, arg1)
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
									__FUNC_2C147_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C147_)
							end

							if arg1.interrupted then
								__FUNC_2BFCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BFCC_)
						end

						if arg1.interrupted then
							__FUNC_2BE77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BE77_)
					end

					if arg1.interrupted then
						__FUNC_2BCFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BCFC_)
				end

				if arg1.interrupted then
					__FUNC_2BBA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BBA7_)
			end

			if arg1.interrupted then
				__FUNC_2BA2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA2C_)
		end

		registerVal20:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2B8D5_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_28E52_
	registerVal23.MutuallyExclusive = registerVal24
	registerVal2.clipsPerState = registerVal23
	registerVal25 = {}
	registerVal26 = {}
	registerVal26.stateName = "Equipped"
	local function __FUNC_2C2F9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_2C2F9_
	local registerVal27 = {}
	registerVal27.stateName = "New"
	local function __FUNC_2C345_(arg0, arg2, arg3)
		return Gunsmith_AnyNewWeaponsOrAttachmentsForGroupButton(arg2, arg1)
	end

	registerVal27.condition = __FUNC_2C345_
	local registerVal28 = {}
	registerVal28.stateName = "Locked"
	local function __FUNC_2C3BF_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal28.condition = __FUNC_2C3BF_
	local registerVal29 = {}
	registerVal29.stateName = "NotAvailable"
	local function __FUNC_2C409_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal29.condition = __FUNC_2C409_
	local registerVal30 = {}
	registerVal30.stateName = "MutuallyExclusive"
	local function __FUNC_2C455_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal30.condition = __FUNC_2C455_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29, registerVal30}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_2C4A1_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.ImageContainer:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.StartMenuframenoBG0:close()
		arg0.tokenUnlock:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.RestrictedItemWarning:close()
		arg0.breadcrumbCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C4A1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

