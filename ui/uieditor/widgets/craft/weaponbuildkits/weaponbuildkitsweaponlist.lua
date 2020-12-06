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
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsWeaponList = registerVal1
function CoD.WeaponBuildKitsWeaponList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsWeaponList)
	registerVal2.id = "WeaponBuildKitsWeaponList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
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
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1ED2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_1ED2_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.300000)
	local function __FUNC_1F84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_1F84_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 63.000000, 67.000000)
	registerVal8:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.itemImageLine = registerVal8
	local registerVal9 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -263.500000, -231.500000)
	registerVal9:setTopBottom(false, false, -15.000000, 17.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_2038_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCACItemPurchased(arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_2038_
	local registerVal14 = {}
	registerVal14.stateName = "VisibleCP"
	local function __FUNC_20FD_(arg0, arg2, arg3)
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

	registerVal14.condition = __FUNC_20FD_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_21C1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_21C1_)
	local function __FUNC_22E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemIndex", true, __FUNC_22E8_)
	registerVal2:addElement(registerVal9)
	registerVal2.tokenUnlock = registerVal9
	local registerVal10 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 82.000000, 168.000000)
	registerVal10:setTopBottom(false, false, -9.500000, 10.500000)
	local function __FUNC_2407_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "name", true, __FUNC_2407_)
	registerVal2:addElement(registerVal10)
	registerVal2.LabelButton0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -16.000000, -2.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal11:setRGB(0.560000, 0.680000, 0.270000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal11)
	registerVal2.equippedIcon = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal12:setRGB(1.000000, 0.410000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal12)
	registerVal2.alertIcon = registerVal12
	registerVal13 = CoD.cac_lock.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 20.000000, 44.000000)
	registerVal13:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.lockedIcon = registerVal13
	registerVal14 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 197.000000, 262.000000)
	registerVal14:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal2:addElement(registerVal14)
	registerVal2.IconNew = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal17:setRGB(1.000000, 0.300000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBorder = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal18:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal18:setRGB(1.000000, 0.090000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.glitch = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal19:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal19:setRGB(1.000000, 0.150000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch2 = registerVal19
	local registerVal20 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal20:setTopBottom(true, false, 4.930000, 61.070000)
	local function __FUNC_24DC_(arg0)
		registerVal20:setModel(arg0, arg1)
	end

	registerVal20:linkToElementModel(registerVal2, nil, false, __FUNC_24DC_)
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Visible"
	local function __FUNC_252E_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal24.condition = __FUNC_252E_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "lobbyRoot.Pregame.Update")
	local function __FUNC_2586_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_2586_)
	registerVal2:addElement(registerVal20)
	registerVal2.RestrictedItemWarning = registerVal20
	local registerVal21 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 256.000000, 276.000000)
	registerVal21:setTopBottom(true, false, 23.500000, 43.500000)
	registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Visible"
	local function __FUNC_26B2_(arg0, arg2, arg3)
		return Gunsmith_AnyNewItemsForWeapon(arg2, arg1)
	end

	registerVal25.condition = __FUNC_26B2_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal2:addElement(registerVal21)
	registerVal2.NewBreadcrumb0 = registerVal21
	local registerVal22 = {}
	registerVal23 = {}
	local function __FUNC_2717_()
		registerVal2:setupElementClipCounter(15.000000)
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
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_2717_
	local function __FUNC_2D0F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2FF7_(arg0, arg1)
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
		__FUNC_2FF7_(registerVal4, {})
		local function __FUNC_31A9_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_31A9_(registerVal7, {})
		local function __FUNC_335D_(arg0, arg1)
			local function __FUNC_34B4_(arg0, arg1)
				local function __FUNC_362F_(arg0, arg1)
					local function __FUNC_3784_(arg0, arg1)
						local function __FUNC_38FF_(arg0, arg1)
							local function __FUNC_3A54_(arg0, arg1)
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
								__FUNC_3A54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A54_)
						end

						if arg1.interrupted then
							__FUNC_38FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FF_)
					end

					if arg1.interrupted then
						__FUNC_3784_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3784_)
				end

				if arg1.interrupted then
					__FUNC_362F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_362F_)
			end

			if arg1.interrupted then
				__FUNC_34B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34B4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_335D_(registerVal15, {})
		local function __FUNC_3C09_(arg0, arg1)
			local function __FUNC_3D60_(arg0, arg1)
				local function __FUNC_3EDB_(arg0, arg1)
					local function __FUNC_4030_(arg0, arg1)
						local function __FUNC_41AB_(arg0, arg1)
							local function __FUNC_4300_(arg0, arg1)
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
								__FUNC_4300_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4300_)
						end

						if arg1.interrupted then
							__FUNC_41AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41AB_)
					end

					if arg1.interrupted then
						__FUNC_4030_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4030_)
				end

				if arg1.interrupted then
					__FUNC_3EDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EDB_)
			end

			if arg1.interrupted then
				__FUNC_3D60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D60_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3C09_(registerVal16, {})
		local function __FUNC_44B5_(arg0, arg1)
			local function __FUNC_460C_(arg0, arg1)
				local function __FUNC_4787_(arg0, arg1)
					local function __FUNC_48FF_(arg0, arg1)
						local function __FUNC_4A77_(arg0, arg1)
							local function __FUNC_4BCC_(arg0, arg1)
								local function __FUNC_4D47_(arg0, arg1)
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
									__FUNC_4D47_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D47_)
							end

							if arg1.interrupted then
								__FUNC_4BCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BCC_)
						end

						if arg1.interrupted then
							__FUNC_4A77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A77_)
					end

					if arg1.interrupted then
						__FUNC_48FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48FF_)
				end

				if arg1.interrupted then
					__FUNC_4787_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4787_)
			end

			if arg1.interrupted then
				__FUNC_460C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_460C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_44B5_(registerVal17, {})
		local function __FUNC_4EF9_(arg0, arg1)
			local function __FUNC_5050_(arg0, arg1)
				local function __FUNC_51CB_(arg0, arg1)
					local function __FUNC_5320_(arg0, arg1)
						local function __FUNC_549B_(arg0, arg1)
							local function __FUNC_55F0_(arg0, arg1)
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
								__FUNC_55F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55F0_)
						end

						if arg1.interrupted then
							__FUNC_549B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_549B_)
					end

					if arg1.interrupted then
						__FUNC_5320_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5320_)
				end

				if arg1.interrupted then
					__FUNC_51CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51CB_)
			end

			if arg1.interrupted then
				__FUNC_5050_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5050_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4EF9_(registerVal18, {})
		local function __FUNC_57A5_(arg0, arg1)
			local function __FUNC_58FC_(arg0, arg1)
				local function __FUNC_5A77_(arg0, arg1)
					local function __FUNC_5BCC_(arg0, arg1)
						local function __FUNC_5D47_(arg0, arg1)
							local function __FUNC_5E9C_(arg0, arg1)
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
								__FUNC_5E9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E9C_)
						end

						if arg1.interrupted then
							__FUNC_5D47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D47_)
					end

					if arg1.interrupted then
						__FUNC_5BCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BCC_)
				end

				if arg1.interrupted then
					__FUNC_5A77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A77_)
			end

			if arg1.interrupted then
				__FUNC_58FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58FC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_57A5_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_2D0F_
	local function __FUNC_6051_()
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
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_6051_
	local function __FUNC_637F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_6662_(arg0, arg1)
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
		__FUNC_6662_(registerVal4, {})
		local function __FUNC_6815_(arg0, arg1)
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
		__FUNC_6815_(registerVal7, {})
		local function __FUNC_69C9_(arg0, arg1)
			local function __FUNC_6B43_(arg0, arg1)
				local function __FUNC_6CBB_(arg0, arg1)
					local function __FUNC_6E33_(arg0, arg1)
						local function __FUNC_6F88_(arg0, arg1)
							local function __FUNC_7103_(arg0, arg1)
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
								__FUNC_7103_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7103_)
						end

						if arg1.interrupted then
							__FUNC_6F88_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F88_)
					end

					if arg1.interrupted then
						__FUNC_6E33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E33_)
				end

				if arg1.interrupted then
					__FUNC_6CBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CBB_)
			end

			if arg1.interrupted then
				__FUNC_6B43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B43_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_69C9_(registerVal15, {})
		local function __FUNC_72B5_(arg0, arg1)
			local function __FUNC_742F_(arg0, arg1)
				local function __FUNC_75A7_(arg0, arg1)
					local function __FUNC_771F_(arg0, arg1)
						local function __FUNC_7874_(arg0, arg1)
							local function __FUNC_79EF_(arg0, arg1)
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
								__FUNC_79EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79EF_)
						end

						if arg1.interrupted then
							__FUNC_7874_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7874_)
					end

					if arg1.interrupted then
						__FUNC_771F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_771F_)
				end

				if arg1.interrupted then
					__FUNC_75A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75A7_)
			end

			if arg1.interrupted then
				__FUNC_742F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_742F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_72B5_(registerVal16, {})
		local function __FUNC_7BA1_(arg0, arg1)
			local function __FUNC_7CF8_(arg0, arg1)
				local function __FUNC_7E73_(arg0, arg1)
					local function __FUNC_7FEB_(arg0, arg1)
						local function __FUNC_8163_(arg0, arg1)
							local function __FUNC_82B8_(arg0, arg1)
								local function __FUNC_8433_(arg0, arg1)
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
									__FUNC_8433_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8433_)
							end

							if arg1.interrupted then
								__FUNC_82B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82B8_)
						end

						if arg1.interrupted then
							__FUNC_8163_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8163_)
					end

					if arg1.interrupted then
						__FUNC_7FEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FEB_)
				end

				if arg1.interrupted then
					__FUNC_7E73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E73_)
			end

			if arg1.interrupted then
				__FUNC_7CF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CF8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_7BA1_(registerVal17, {})
		local function __FUNC_85E5_(arg0, arg1)
			local function __FUNC_873C_(arg0, arg1)
				local function __FUNC_88B7_(arg0, arg1)
					local function __FUNC_8A0C_(arg0, arg1)
						local function __FUNC_8B87_(arg0, arg1)
							local function __FUNC_8CDC_(arg0, arg1)
								local function __FUNC_8E57_(arg0, arg1)
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
									__FUNC_8E57_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E57_)
							end

							if arg1.interrupted then
								__FUNC_8CDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CDC_)
						end

						if arg1.interrupted then
							__FUNC_8B87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B87_)
					end

					if arg1.interrupted then
						__FUNC_8A0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A0C_)
				end

				if arg1.interrupted then
					__FUNC_88B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88B7_)
			end

			if arg1.interrupted then
				__FUNC_873C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_873C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_85E5_(registerVal18, {})
		local function __FUNC_9009_(arg0, arg1)
			local function __FUNC_9160_(arg0, arg1)
				local function __FUNC_92DB_(arg0, arg1)
					local function __FUNC_9430_(arg0, arg1)
						local function __FUNC_95AB_(arg0, arg1)
							local function __FUNC_9700_(arg0, arg1)
								local function __FUNC_987B_(arg0, arg1)
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
									__FUNC_987B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_987B_)
							end

							if arg1.interrupted then
								__FUNC_9700_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9700_)
						end

						if arg1.interrupted then
							__FUNC_95AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95AB_)
					end

					if arg1.interrupted then
						__FUNC_9430_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9430_)
				end

				if arg1.interrupted then
					__FUNC_92DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92DB_)
			end

			if arg1.interrupted then
				__FUNC_9160_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9160_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_9009_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_637F_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_9A2D_()
		registerVal2:setupElementClipCounter(15.000000)
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
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_9A2D_
	local function __FUNC_A027_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_A30F_(arg0, arg1)
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
		__FUNC_A30F_(registerVal4, {})
		local function __FUNC_A4C1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_A4C1_(registerVal7, {})
		local function __FUNC_A675_(arg0, arg1)
			local function __FUNC_A7CC_(arg0, arg1)
				local function __FUNC_A947_(arg0, arg1)
					local function __FUNC_AA9C_(arg0, arg1)
						local function __FUNC_AC17_(arg0, arg1)
							local function __FUNC_AD6C_(arg0, arg1)
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
								__FUNC_AD6C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD6C_)
						end

						if arg1.interrupted then
							__FUNC_AC17_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC17_)
					end

					if arg1.interrupted then
						__FUNC_AA9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA9C_)
				end

				if arg1.interrupted then
					__FUNC_A947_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A947_)
			end

			if arg1.interrupted then
				__FUNC_A7CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7CC_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A675_(registerVal15, {})
		local function __FUNC_AF21_(arg0, arg1)
			local function __FUNC_B078_(arg0, arg1)
				local function __FUNC_B1F3_(arg0, arg1)
					local function __FUNC_B348_(arg0, arg1)
						local function __FUNC_B4C3_(arg0, arg1)
							local function __FUNC_B618_(arg0, arg1)
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
								__FUNC_B618_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B618_)
						end

						if arg1.interrupted then
							__FUNC_B4C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4C3_)
					end

					if arg1.interrupted then
						__FUNC_B348_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B348_)
				end

				if arg1.interrupted then
					__FUNC_B1F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1F3_)
			end

			if arg1.interrupted then
				__FUNC_B078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B078_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AF21_(registerVal16, {})
		local function __FUNC_B7CD_(arg0, arg1)
			local function __FUNC_B924_(arg0, arg1)
				local function __FUNC_BA9F_(arg0, arg1)
					local function __FUNC_BC17_(arg0, arg1)
						local function __FUNC_BD8F_(arg0, arg1)
							local function __FUNC_BEE4_(arg0, arg1)
								local function __FUNC_C05F_(arg0, arg1)
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
									__FUNC_C05F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C05F_)
							end

							if arg1.interrupted then
								__FUNC_BEE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEE4_)
						end

						if arg1.interrupted then
							__FUNC_BD8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD8F_)
					end

					if arg1.interrupted then
						__FUNC_BC17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC17_)
				end

				if arg1.interrupted then
					__FUNC_BA9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA9F_)
			end

			if arg1.interrupted then
				__FUNC_B924_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B924_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B7CD_(registerVal17, {})
		local function __FUNC_C211_(arg0, arg1)
			local function __FUNC_C368_(arg0, arg1)
				local function __FUNC_C4E3_(arg0, arg1)
					local function __FUNC_C638_(arg0, arg1)
						local function __FUNC_C7B3_(arg0, arg1)
							local function __FUNC_C908_(arg0, arg1)
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
								__FUNC_C908_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C908_)
						end

						if arg1.interrupted then
							__FUNC_C7B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7B3_)
					end

					if arg1.interrupted then
						__FUNC_C638_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C638_)
				end

				if arg1.interrupted then
					__FUNC_C4E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4E3_)
			end

			if arg1.interrupted then
				__FUNC_C368_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C368_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_C211_(registerVal18, {})
		local function __FUNC_CABD_(arg0, arg1)
			local function __FUNC_CC14_(arg0, arg1)
				local function __FUNC_CD8F_(arg0, arg1)
					local function __FUNC_CEE4_(arg0, arg1)
						local function __FUNC_D05F_(arg0, arg1)
							local function __FUNC_D1B4_(arg0, arg1)
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
								__FUNC_D1B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1B4_)
						end

						if arg1.interrupted then
							__FUNC_D05F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D05F_)
					end

					if arg1.interrupted then
						__FUNC_CEE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEE4_)
				end

				if arg1.interrupted then
					__FUNC_CD8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD8F_)
			end

			if arg1.interrupted then
				__FUNC_CC14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC14_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_CABD_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_A027_
	local function __FUNC_D369_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_D369_
	local function __FUNC_D579_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_D863_(arg0, arg1)
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
		__FUNC_D863_(registerVal4, {})
		local function __FUNC_DA15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_DA15_(registerVal7, {})
		local function __FUNC_DBC9_(arg0, arg1)
			local function __FUNC_DD43_(arg0, arg1)
				local function __FUNC_DEBB_(arg0, arg1)
					local function __FUNC_E033_(arg0, arg1)
						local function __FUNC_E188_(arg0, arg1)
							local function __FUNC_E303_(arg0, arg1)
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
								__FUNC_E303_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E303_)
						end

						if arg1.interrupted then
							__FUNC_E188_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E188_)
					end

					if arg1.interrupted then
						__FUNC_E033_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E033_)
				end

				if arg1.interrupted then
					__FUNC_DEBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEBB_)
			end

			if arg1.interrupted then
				__FUNC_DD43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD43_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DBC9_(registerVal15, {})
		local function __FUNC_E4B5_(arg0, arg1)
			local function __FUNC_E62F_(arg0, arg1)
				local function __FUNC_E7A7_(arg0, arg1)
					local function __FUNC_E91F_(arg0, arg1)
						local function __FUNC_EA74_(arg0, arg1)
							local function __FUNC_EBEF_(arg0, arg1)
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
								__FUNC_EBEF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBEF_)
						end

						if arg1.interrupted then
							__FUNC_EA74_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA74_)
					end

					if arg1.interrupted then
						__FUNC_E91F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E91F_)
				end

				if arg1.interrupted then
					__FUNC_E7A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7A7_)
			end

			if arg1.interrupted then
				__FUNC_E62F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E62F_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E4B5_(registerVal16, {})
		local function __FUNC_EDA1_(arg0, arg1)
			local function __FUNC_EF1B_(arg0, arg1)
				local function __FUNC_F093_(arg0, arg1)
					local function __FUNC_F20B_(arg0, arg1)
						local function __FUNC_F383_(arg0, arg1)
							local function __FUNC_F4D8_(arg0, arg1)
								local function __FUNC_F653_(arg0, arg1)
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
									__FUNC_F653_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F653_)
							end

							if arg1.interrupted then
								__FUNC_F4D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4D8_)
						end

						if arg1.interrupted then
							__FUNC_F383_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F383_)
					end

					if arg1.interrupted then
						__FUNC_F20B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F20B_)
				end

				if arg1.interrupted then
					__FUNC_F093_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F093_)
			end

			if arg1.interrupted then
				__FUNC_EF1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF1B_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.700000)
		__FUNC_EDA1_(registerVal17, {})
		local function __FUNC_F805_(arg0, arg1)
			local function __FUNC_F95C_(arg0, arg1)
				local function __FUNC_FAD7_(arg0, arg1)
					local function __FUNC_FC2C_(arg0, arg1)
						local function __FUNC_FDA7_(arg0, arg1)
							local function __FUNC_FEFC_(arg0, arg1)
								local function __FUNC_10077_(arg0, arg1)
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
									__FUNC_10077_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10077_)
							end

							if arg1.interrupted then
								__FUNC_FEFC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEFC_)
						end

						if arg1.interrupted then
							__FUNC_FDA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDA7_)
					end

					if arg1.interrupted then
						__FUNC_FC2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC2C_)
				end

				if arg1.interrupted then
					__FUNC_FAD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAD7_)
			end

			if arg1.interrupted then
				__FUNC_F95C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F95C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F805_(registerVal18, {})
		local function __FUNC_10229_(arg0, arg1)
			local function __FUNC_10380_(arg0, arg1)
				local function __FUNC_104FB_(arg0, arg1)
					local function __FUNC_10650_(arg0, arg1)
						local function __FUNC_107CB_(arg0, arg1)
							local function __FUNC_10920_(arg0, arg1)
								local function __FUNC_10A9B_(arg0, arg1)
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
									__FUNC_10A9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A9B_)
							end

							if arg1.interrupted then
								__FUNC_10920_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10920_)
						end

						if arg1.interrupted then
							__FUNC_107CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107CB_)
					end

					if arg1.interrupted then
						__FUNC_10650_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10650_)
				end

				if arg1.interrupted then
					__FUNC_104FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104FB_)
			end

			if arg1.interrupted then
				__FUNC_10380_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10380_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10229_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_D579_
	registerVal22.Equipped = registerVal23
	registerVal23 = {}
	local function __FUNC_10C4D_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_10C4D_
	local function __FUNC_11338_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_115CB_(arg0, arg1)
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
		__FUNC_115CB_(registerVal4, {})
		local function __FUNC_1177D_(arg0, arg1)
			local function __FUNC_118D4_(arg0, arg1)
				local function __FUNC_11A4F_(arg0, arg1)
					local function __FUNC_11BA4_(arg0, arg1)
						local function __FUNC_11D1F_(arg0, arg1)
							local function __FUNC_11E74_(arg0, arg1)
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
								__FUNC_11E74_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E74_)
						end

						if arg1.interrupted then
							__FUNC_11D1F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D1F_)
					end

					if arg1.interrupted then
						__FUNC_11BA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BA4_)
				end

				if arg1.interrupted then
					__FUNC_11A4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A4F_)
			end

			if arg1.interrupted then
				__FUNC_118D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118D4_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1177D_(registerVal15, {})
		local function __FUNC_12029_(arg0, arg1)
			local function __FUNC_12180_(arg0, arg1)
				local function __FUNC_122FB_(arg0, arg1)
					local function __FUNC_12450_(arg0, arg1)
						local function __FUNC_125CB_(arg0, arg1)
							local function __FUNC_12720_(arg0, arg1)
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
								__FUNC_12720_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12720_)
						end

						if arg1.interrupted then
							__FUNC_125CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125CB_)
					end

					if arg1.interrupted then
						__FUNC_12450_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12450_)
				end

				if arg1.interrupted then
					__FUNC_122FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122FB_)
			end

			if arg1.interrupted then
				__FUNC_12180_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12180_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_12029_(registerVal16, {})
		local function __FUNC_128D5_(arg0, arg1)
			local function __FUNC_12A2C_(arg0, arg1)
				local function __FUNC_12BA7_(arg0, arg1)
					local function __FUNC_12D1F_(arg0, arg1)
						local function __FUNC_12E97_(arg0, arg1)
							local function __FUNC_12FEC_(arg0, arg1)
								local function __FUNC_13167_(arg0, arg1)
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
									__FUNC_13167_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13167_)
							end

							if arg1.interrupted then
								__FUNC_12FEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FEC_)
						end

						if arg1.interrupted then
							__FUNC_12E97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E97_)
					end

					if arg1.interrupted then
						__FUNC_12D1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D1F_)
				end

				if arg1.interrupted then
					__FUNC_12BA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BA7_)
			end

			if arg1.interrupted then
				__FUNC_12A2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A2C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_128D5_(registerVal17, {})
		local function __FUNC_13319_(arg0, arg1)
			local function __FUNC_13470_(arg0, arg1)
				local function __FUNC_135EB_(arg0, arg1)
					local function __FUNC_13740_(arg0, arg1)
						local function __FUNC_138BB_(arg0, arg1)
							local function __FUNC_13A10_(arg0, arg1)
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
								__FUNC_13A10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A10_)
						end

						if arg1.interrupted then
							__FUNC_138BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138BB_)
					end

					if arg1.interrupted then
						__FUNC_13740_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13740_)
				end

				if arg1.interrupted then
					__FUNC_135EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135EB_)
			end

			if arg1.interrupted then
				__FUNC_13470_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13470_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_13319_(registerVal18, {})
		local function __FUNC_13BC5_(arg0, arg1)
			local function __FUNC_13D1C_(arg0, arg1)
				local function __FUNC_13E97_(arg0, arg1)
					local function __FUNC_13FEC_(arg0, arg1)
						local function __FUNC_14167_(arg0, arg1)
							local function __FUNC_142BC_(arg0, arg1)
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
								__FUNC_142BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142BC_)
						end

						if arg1.interrupted then
							__FUNC_14167_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14167_)
					end

					if arg1.interrupted then
						__FUNC_13FEC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FEC_)
				end

				if arg1.interrupted then
					__FUNC_13E97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E97_)
			end

			if arg1.interrupted then
				__FUNC_13D1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D1C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_13BC5_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_11338_
	local function __FUNC_14471_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_14471_
	local function __FUNC_1462A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_148BB_(arg0, arg1)
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
		__FUNC_148BB_(registerVal4, {})
		local function __FUNC_14A6D_(arg0, arg1)
			local function __FUNC_14BE7_(arg0, arg1)
				local function __FUNC_14D5F_(arg0, arg1)
					local function __FUNC_14ED7_(arg0, arg1)
						local function __FUNC_1502C_(arg0, arg1)
							local function __FUNC_151A7_(arg0, arg1)
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
								__FUNC_151A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_151A7_)
						end

						if arg1.interrupted then
							__FUNC_1502C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1502C_)
					end

					if arg1.interrupted then
						__FUNC_14ED7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14ED7_)
				end

				if arg1.interrupted then
					__FUNC_14D5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D5F_)
			end

			if arg1.interrupted then
				__FUNC_14BE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BE7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_14A6D_(registerVal15, {})
		local function __FUNC_15359_(arg0, arg1)
			local function __FUNC_154D3_(arg0, arg1)
				local function __FUNC_1564B_(arg0, arg1)
					local function __FUNC_157C3_(arg0, arg1)
						local function __FUNC_15918_(arg0, arg1)
							local function __FUNC_15A93_(arg0, arg1)
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
								__FUNC_15A93_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A93_)
						end

						if arg1.interrupted then
							__FUNC_15918_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15918_)
					end

					if arg1.interrupted then
						__FUNC_157C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157C3_)
				end

				if arg1.interrupted then
					__FUNC_1564B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1564B_)
			end

			if arg1.interrupted then
				__FUNC_154D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154D3_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_15359_(registerVal16, {})
		local function __FUNC_15C45_(arg0, arg1)
			local function __FUNC_15D9C_(arg0, arg1)
				local function __FUNC_15F17_(arg0, arg1)
					local function __FUNC_1608F_(arg0, arg1)
						local function __FUNC_16207_(arg0, arg1)
							local function __FUNC_1635C_(arg0, arg1)
								local function __FUNC_164D7_(arg0, arg1)
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
									__FUNC_164D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164D7_)
							end

							if arg1.interrupted then
								__FUNC_1635C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1635C_)
						end

						if arg1.interrupted then
							__FUNC_16207_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16207_)
					end

					if arg1.interrupted then
						__FUNC_1608F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1608F_)
				end

				if arg1.interrupted then
					__FUNC_15F17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F17_)
			end

			if arg1.interrupted then
				__FUNC_15D9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D9C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_15C45_(registerVal17, {})
		local function __FUNC_16689_(arg0, arg1)
			local function __FUNC_167E0_(arg0, arg1)
				local function __FUNC_1695B_(arg0, arg1)
					local function __FUNC_16AB0_(arg0, arg1)
						local function __FUNC_16C2B_(arg0, arg1)
							local function __FUNC_16D80_(arg0, arg1)
								local function __FUNC_16EFB_(arg0, arg1)
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
									__FUNC_16EFB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EFB_)
							end

							if arg1.interrupted then
								__FUNC_16D80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D80_)
						end

						if arg1.interrupted then
							__FUNC_16C2B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C2B_)
					end

					if arg1.interrupted then
						__FUNC_16AB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AB0_)
				end

				if arg1.interrupted then
					__FUNC_1695B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1695B_)
			end

			if arg1.interrupted then
				__FUNC_167E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167E0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_16689_(registerVal18, {})
		local function __FUNC_170AD_(arg0, arg1)
			local function __FUNC_17204_(arg0, arg1)
				local function __FUNC_1737F_(arg0, arg1)
					local function __FUNC_174D4_(arg0, arg1)
						local function __FUNC_1764F_(arg0, arg1)
							local function __FUNC_177A4_(arg0, arg1)
								local function __FUNC_1791F_(arg0, arg1)
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
									__FUNC_1791F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1791F_)
							end

							if arg1.interrupted then
								__FUNC_177A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177A4_)
						end

						if arg1.interrupted then
							__FUNC_1764F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1764F_)
					end

					if arg1.interrupted then
						__FUNC_174D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174D4_)
				end

				if arg1.interrupted then
					__FUNC_1737F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1737F_)
			end

			if arg1.interrupted then
				__FUNC_17204_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17204_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_170AD_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_1462A_
	registerVal22.New = registerVal23
	registerVal23 = {}
	local function __FUNC_17AD1_()
		registerVal2:setupElementClipCounter(15.000000)
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
		registerVal2.itemImageLine:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_17AD1_
	local function __FUNC_180CB_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_183B5_(arg0, arg1)
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
		__FUNC_183B5_(registerVal4, {})
		local function __FUNC_18569_(arg0, arg1)
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
		__FUNC_18569_(registerVal5, {})
		local function __FUNC_1871D_(arg0, arg1)
			local function __FUNC_18874_(arg0, arg1)
				local function __FUNC_189EF_(arg0, arg1)
					local function __FUNC_18B44_(arg0, arg1)
						local function __FUNC_18CBF_(arg0, arg1)
							local function __FUNC_18E14_(arg0, arg1)
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
								__FUNC_18E14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E14_)
						end

						if arg1.interrupted then
							__FUNC_18CBF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CBF_)
					end

					if arg1.interrupted then
						__FUNC_18B44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B44_)
				end

				if arg1.interrupted then
					__FUNC_189EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189EF_)
			end

			if arg1.interrupted then
				__FUNC_18874_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18874_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1871D_(registerVal15, {})
		local function __FUNC_18FC9_(arg0, arg1)
			local function __FUNC_19120_(arg0, arg1)
				local function __FUNC_1929B_(arg0, arg1)
					local function __FUNC_193F0_(arg0, arg1)
						local function __FUNC_1956B_(arg0, arg1)
							local function __FUNC_196C0_(arg0, arg1)
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
								__FUNC_196C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196C0_)
						end

						if arg1.interrupted then
							__FUNC_1956B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1956B_)
					end

					if arg1.interrupted then
						__FUNC_193F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193F0_)
				end

				if arg1.interrupted then
					__FUNC_1929B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1929B_)
			end

			if arg1.interrupted then
				__FUNC_19120_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19120_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_18FC9_(registerVal16, {})
		local function __FUNC_19875_(arg0, arg1)
			local function __FUNC_199CC_(arg0, arg1)
				local function __FUNC_19B47_(arg0, arg1)
					local function __FUNC_19CBF_(arg0, arg1)
						local function __FUNC_19E37_(arg0, arg1)
							local function __FUNC_19F8C_(arg0, arg1)
								local function __FUNC_1A107_(arg0, arg1)
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
									__FUNC_1A107_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A107_)
							end

							if arg1.interrupted then
								__FUNC_19F8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F8C_)
						end

						if arg1.interrupted then
							__FUNC_19E37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E37_)
					end

					if arg1.interrupted then
						__FUNC_19CBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CBF_)
				end

				if arg1.interrupted then
					__FUNC_19B47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B47_)
			end

			if arg1.interrupted then
				__FUNC_199CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199CC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_19875_(registerVal17, {})
		local function __FUNC_1A2B9_(arg0, arg1)
			local function __FUNC_1A410_(arg0, arg1)
				local function __FUNC_1A58B_(arg0, arg1)
					local function __FUNC_1A6E0_(arg0, arg1)
						local function __FUNC_1A85B_(arg0, arg1)
							local function __FUNC_1A9B0_(arg0, arg1)
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
								__FUNC_1A9B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A9B0_)
						end

						if arg1.interrupted then
							__FUNC_1A85B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A85B_)
					end

					if arg1.interrupted then
						__FUNC_1A6E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A6E0_)
				end

				if arg1.interrupted then
					__FUNC_1A58B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A58B_)
			end

			if arg1.interrupted then
				__FUNC_1A410_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A410_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1A2B9_(registerVal18, {})
		local function __FUNC_1AB65_(arg0, arg1)
			local function __FUNC_1ACBC_(arg0, arg1)
				local function __FUNC_1AE37_(arg0, arg1)
					local function __FUNC_1AF8C_(arg0, arg1)
						local function __FUNC_1B107_(arg0, arg1)
							local function __FUNC_1B25C_(arg0, arg1)
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
								__FUNC_1B25C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B25C_)
						end

						if arg1.interrupted then
							__FUNC_1B107_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B107_)
					end

					if arg1.interrupted then
						__FUNC_1AF8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF8C_)
				end

				if arg1.interrupted then
					__FUNC_1AE37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AE37_)
			end

			if arg1.interrupted then
				__FUNC_1ACBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ACBC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1AB65_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_180CB_
	local function __FUNC_1B411_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_1B411_
	local function __FUNC_1B628_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1B915_(arg0, arg1)
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
		__FUNC_1B915_(registerVal4, {})
		local function __FUNC_1BAC9_(arg0, arg1)
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
		__FUNC_1BAC9_(registerVal5, {})
		local function __FUNC_1BC7D_(arg0, arg1)
			local function __FUNC_1BDF7_(arg0, arg1)
				local function __FUNC_1BF6F_(arg0, arg1)
					local function __FUNC_1C0E7_(arg0, arg1)
						local function __FUNC_1C23C_(arg0, arg1)
							local function __FUNC_1C3B7_(arg0, arg1)
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
								__FUNC_1C3B7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C3B7_)
						end

						if arg1.interrupted then
							__FUNC_1C23C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C23C_)
					end

					if arg1.interrupted then
						__FUNC_1C0E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0E7_)
				end

				if arg1.interrupted then
					__FUNC_1BF6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BF6F_)
			end

			if arg1.interrupted then
				__FUNC_1BDF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDF7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1BC7D_(registerVal15, {})
		local function __FUNC_1C569_(arg0, arg1)
			local function __FUNC_1C6E3_(arg0, arg1)
				local function __FUNC_1C85B_(arg0, arg1)
					local function __FUNC_1C9D3_(arg0, arg1)
						local function __FUNC_1CB28_(arg0, arg1)
							local function __FUNC_1CCA3_(arg0, arg1)
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
								__FUNC_1CCA3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCA3_)
						end

						if arg1.interrupted then
							__FUNC_1CB28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB28_)
					end

					if arg1.interrupted then
						__FUNC_1C9D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C9D3_)
				end

				if arg1.interrupted then
					__FUNC_1C85B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C85B_)
			end

			if arg1.interrupted then
				__FUNC_1C6E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C6E3_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1C569_(registerVal16, {})
		local function __FUNC_1CE55_(arg0, arg1)
			local function __FUNC_1CFAC_(arg0, arg1)
				local function __FUNC_1D127_(arg0, arg1)
					local function __FUNC_1D29F_(arg0, arg1)
						local function __FUNC_1D417_(arg0, arg1)
							local function __FUNC_1D56C_(arg0, arg1)
								local function __FUNC_1D6E7_(arg0, arg1)
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
									__FUNC_1D6E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D6E7_)
							end

							if arg1.interrupted then
								__FUNC_1D56C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D56C_)
						end

						if arg1.interrupted then
							__FUNC_1D417_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D417_)
					end

					if arg1.interrupted then
						__FUNC_1D29F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D29F_)
				end

				if arg1.interrupted then
					__FUNC_1D127_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D127_)
			end

			if arg1.interrupted then
				__FUNC_1CFAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CFAC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1CE55_(registerVal17, {})
		local function __FUNC_1D899_(arg0, arg1)
			local function __FUNC_1D9F0_(arg0, arg1)
				local function __FUNC_1DB6B_(arg0, arg1)
					local function __FUNC_1DCC0_(arg0, arg1)
						local function __FUNC_1DE3B_(arg0, arg1)
							local function __FUNC_1DF90_(arg0, arg1)
								local function __FUNC_1E10B_(arg0, arg1)
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
									__FUNC_1E10B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E10B_)
							end

							if arg1.interrupted then
								__FUNC_1DF90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF90_)
						end

						if arg1.interrupted then
							__FUNC_1DE3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE3B_)
					end

					if arg1.interrupted then
						__FUNC_1DCC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCC0_)
				end

				if arg1.interrupted then
					__FUNC_1DB6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB6B_)
			end

			if arg1.interrupted then
				__FUNC_1D9F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D9F0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1D899_(registerVal18, {})
		local function __FUNC_1E2BD_(arg0, arg1)
			local function __FUNC_1E414_(arg0, arg1)
				local function __FUNC_1E58F_(arg0, arg1)
					local function __FUNC_1E6E4_(arg0, arg1)
						local function __FUNC_1E85F_(arg0, arg1)
							local function __FUNC_1E9B4_(arg0, arg1)
								local function __FUNC_1EB2F_(arg0, arg1)
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
									__FUNC_1EB2F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB2F_)
							end

							if arg1.interrupted then
								__FUNC_1E9B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E9B4_)
						end

						if arg1.interrupted then
							__FUNC_1E85F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E85F_)
					end

					if arg1.interrupted then
						__FUNC_1E6E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E6E4_)
				end

				if arg1.interrupted then
					__FUNC_1E58F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E58F_)
			end

			if arg1.interrupted then
				__FUNC_1E414_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E414_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1E2BD_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_1B628_
	registerVal22.Locked = registerVal23
	registerVal23 = {}
	local function __FUNC_1ECE1_()
		registerVal2:setupElementClipCounter(16.000000)
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
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tokenUnlock:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_1ECE1_
	local function __FUNC_1F334_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1F63B_(arg0, arg1)
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
		__FUNC_1F63B_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1F7ED_(arg0, arg1)
			local function __FUNC_1F944_(arg0, arg1)
				local function __FUNC_1FABF_(arg0, arg1)
					local function __FUNC_1FC14_(arg0, arg1)
						local function __FUNC_1FD8F_(arg0, arg1)
							local function __FUNC_1FEE4_(arg0, arg1)
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
								__FUNC_1FEE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FEE4_)
						end

						if arg1.interrupted then
							__FUNC_1FD8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD8F_)
					end

					if arg1.interrupted then
						__FUNC_1FC14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC14_)
				end

				if arg1.interrupted then
					__FUNC_1FABF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FABF_)
			end

			if arg1.interrupted then
				__FUNC_1F944_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F944_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1F7ED_(registerVal15, {})
		local function __FUNC_20099_(arg0, arg1)
			local function __FUNC_201F0_(arg0, arg1)
				local function __FUNC_2036B_(arg0, arg1)
					local function __FUNC_204C0_(arg0, arg1)
						local function __FUNC_2063B_(arg0, arg1)
							local function __FUNC_20790_(arg0, arg1)
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
								__FUNC_20790_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20790_)
						end

						if arg1.interrupted then
							__FUNC_2063B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2063B_)
					end

					if arg1.interrupted then
						__FUNC_204C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_204C0_)
				end

				if arg1.interrupted then
					__FUNC_2036B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2036B_)
			end

			if arg1.interrupted then
				__FUNC_201F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_201F0_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_20099_(registerVal16, {})
		local function __FUNC_20945_(arg0, arg1)
			local function __FUNC_20A9C_(arg0, arg1)
				local function __FUNC_20C17_(arg0, arg1)
					local function __FUNC_20D8F_(arg0, arg1)
						local function __FUNC_20F07_(arg0, arg1)
							local function __FUNC_2105C_(arg0, arg1)
								local function __FUNC_211D7_(arg0, arg1)
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
									__FUNC_211D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211D7_)
							end

							if arg1.interrupted then
								__FUNC_2105C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2105C_)
						end

						if arg1.interrupted then
							__FUNC_20F07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F07_)
					end

					if arg1.interrupted then
						__FUNC_20D8F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D8F_)
				end

				if arg1.interrupted then
					__FUNC_20C17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C17_)
			end

			if arg1.interrupted then
				__FUNC_20A9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A9C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_20945_(registerVal17, {})
		local function __FUNC_21389_(arg0, arg1)
			local function __FUNC_214E0_(arg0, arg1)
				local function __FUNC_2165B_(arg0, arg1)
					local function __FUNC_217B0_(arg0, arg1)
						local function __FUNC_2192B_(arg0, arg1)
							local function __FUNC_21A80_(arg0, arg1)
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
								__FUNC_21A80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A80_)
						end

						if arg1.interrupted then
							__FUNC_2192B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2192B_)
					end

					if arg1.interrupted then
						__FUNC_217B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217B0_)
				end

				if arg1.interrupted then
					__FUNC_2165B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2165B_)
			end

			if arg1.interrupted then
				__FUNC_214E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_214E0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_21389_(registerVal18, {})
		local function __FUNC_21C35_(arg0, arg1)
			local function __FUNC_21D8C_(arg0, arg1)
				local function __FUNC_21F07_(arg0, arg1)
					local function __FUNC_2205C_(arg0, arg1)
						local function __FUNC_221D7_(arg0, arg1)
							local function __FUNC_2232C_(arg0, arg1)
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
								__FUNC_2232C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2232C_)
						end

						if arg1.interrupted then
							__FUNC_221D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221D7_)
					end

					if arg1.interrupted then
						__FUNC_2205C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2205C_)
				end

				if arg1.interrupted then
					__FUNC_21F07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F07_)
			end

			if arg1.interrupted then
				__FUNC_21D8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D8C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_21C35_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_1F334_
	local function __FUNC_224E1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_224E1_
	local function __FUNC_226F6_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_229E1_(arg0, arg1)
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
		__FUNC_229E1_(registerVal4, {})
		local function __FUNC_22B95_(arg0, arg1)
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
		__FUNC_22B95_(registerVal5, {})
		local function __FUNC_22D49_(arg0, arg1)
			local function __FUNC_22EC3_(arg0, arg1)
				local function __FUNC_2303B_(arg0, arg1)
					local function __FUNC_231B3_(arg0, arg1)
						local function __FUNC_23308_(arg0, arg1)
							local function __FUNC_23483_(arg0, arg1)
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
								__FUNC_23483_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23483_)
						end

						if arg1.interrupted then
							__FUNC_23308_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23308_)
					end

					if arg1.interrupted then
						__FUNC_231B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_231B3_)
				end

				if arg1.interrupted then
					__FUNC_2303B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2303B_)
			end

			if arg1.interrupted then
				__FUNC_22EC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EC3_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_22D49_(registerVal15, {})
		local function __FUNC_23635_(arg0, arg1)
			local function __FUNC_237AF_(arg0, arg1)
				local function __FUNC_23927_(arg0, arg1)
					local function __FUNC_23A9F_(arg0, arg1)
						local function __FUNC_23BF4_(arg0, arg1)
							local function __FUNC_23D6F_(arg0, arg1)
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
								__FUNC_23D6F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D6F_)
						end

						if arg1.interrupted then
							__FUNC_23BF4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BF4_)
					end

					if arg1.interrupted then
						__FUNC_23A9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A9F_)
				end

				if arg1.interrupted then
					__FUNC_23927_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23927_)
			end

			if arg1.interrupted then
				__FUNC_237AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237AF_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_23635_(registerVal16, {})
		local function __FUNC_23F21_(arg0, arg1)
			local function __FUNC_24078_(arg0, arg1)
				local function __FUNC_241F3_(arg0, arg1)
					local function __FUNC_2436B_(arg0, arg1)
						local function __FUNC_244E3_(arg0, arg1)
							local function __FUNC_24638_(arg0, arg1)
								local function __FUNC_247B3_(arg0, arg1)
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
									__FUNC_247B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_247B3_)
							end

							if arg1.interrupted then
								__FUNC_24638_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24638_)
						end

						if arg1.interrupted then
							__FUNC_244E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244E3_)
					end

					if arg1.interrupted then
						__FUNC_2436B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2436B_)
				end

				if arg1.interrupted then
					__FUNC_241F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_241F3_)
			end

			if arg1.interrupted then
				__FUNC_24078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24078_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_23F21_(registerVal17, {})
		local function __FUNC_24965_(arg0, arg1)
			local function __FUNC_24ABC_(arg0, arg1)
				local function __FUNC_24C37_(arg0, arg1)
					local function __FUNC_24D8C_(arg0, arg1)
						local function __FUNC_24F07_(arg0, arg1)
							local function __FUNC_2505C_(arg0, arg1)
								local function __FUNC_251D7_(arg0, arg1)
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
									__FUNC_251D7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_251D7_)
							end

							if arg1.interrupted then
								__FUNC_2505C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2505C_)
						end

						if arg1.interrupted then
							__FUNC_24F07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F07_)
					end

					if arg1.interrupted then
						__FUNC_24D8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D8C_)
				end

				if arg1.interrupted then
					__FUNC_24C37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C37_)
			end

			if arg1.interrupted then
				__FUNC_24ABC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24ABC_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_24965_(registerVal18, {})
		local function __FUNC_25389_(arg0, arg1)
			local function __FUNC_254E0_(arg0, arg1)
				local function __FUNC_2565B_(arg0, arg1)
					local function __FUNC_257B0_(arg0, arg1)
						local function __FUNC_2592B_(arg0, arg1)
							local function __FUNC_25A80_(arg0, arg1)
								local function __FUNC_25BFB_(arg0, arg1)
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
									__FUNC_25BFB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25BFB_)
							end

							if arg1.interrupted then
								__FUNC_25A80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A80_)
						end

						if arg1.interrupted then
							__FUNC_2592B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2592B_)
					end

					if arg1.interrupted then
						__FUNC_257B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_257B0_)
				end

				if arg1.interrupted then
					__FUNC_2565B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2565B_)
			end

			if arg1.interrupted then
				__FUNC_254E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254E0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_25389_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_226F6_
	registerVal22.NotAvailable = registerVal23
	registerVal23 = {}
	local function __FUNC_25DAD_()
		registerVal2:setupElementClipCounter(15.000000)
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
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal23.DefaultClip = __FUNC_25DAD_
	local function __FUNC_263A7_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2668F_(arg0, arg1)
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
		__FUNC_2668F_(registerVal4, {})
		local function __FUNC_26841_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_26841_(registerVal7, {})
		local function __FUNC_269F5_(arg0, arg1)
			local function __FUNC_26B4C_(arg0, arg1)
				local function __FUNC_26CC7_(arg0, arg1)
					local function __FUNC_26E1C_(arg0, arg1)
						local function __FUNC_26F97_(arg0, arg1)
							local function __FUNC_270EC_(arg0, arg1)
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
								__FUNC_270EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_270EC_)
						end

						if arg1.interrupted then
							__FUNC_26F97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F97_)
					end

					if arg1.interrupted then
						__FUNC_26E1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26E1C_)
				end

				if arg1.interrupted then
					__FUNC_26CC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26CC7_)
			end

			if arg1.interrupted then
				__FUNC_26B4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B4C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_269F5_(registerVal15, {})
		local function __FUNC_272A1_(arg0, arg1)
			local function __FUNC_273F8_(arg0, arg1)
				local function __FUNC_27573_(arg0, arg1)
					local function __FUNC_276C8_(arg0, arg1)
						local function __FUNC_27843_(arg0, arg1)
							local function __FUNC_27998_(arg0, arg1)
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
								__FUNC_27998_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27998_)
						end

						if arg1.interrupted then
							__FUNC_27843_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27843_)
					end

					if arg1.interrupted then
						__FUNC_276C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_276C8_)
				end

				if arg1.interrupted then
					__FUNC_27573_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27573_)
			end

			if arg1.interrupted then
				__FUNC_273F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273F8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_272A1_(registerVal16, {})
		local function __FUNC_27B4D_(arg0, arg1)
			local function __FUNC_27CA4_(arg0, arg1)
				local function __FUNC_27E1F_(arg0, arg1)
					local function __FUNC_27F97_(arg0, arg1)
						local function __FUNC_2810F_(arg0, arg1)
							local function __FUNC_28264_(arg0, arg1)
								local function __FUNC_283DF_(arg0, arg1)
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
									__FUNC_283DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_283DF_)
							end

							if arg1.interrupted then
								__FUNC_28264_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28264_)
						end

						if arg1.interrupted then
							__FUNC_2810F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2810F_)
					end

					if arg1.interrupted then
						__FUNC_27F97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F97_)
				end

				if arg1.interrupted then
					__FUNC_27E1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E1F_)
			end

			if arg1.interrupted then
				__FUNC_27CA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CA4_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_27B4D_(registerVal17, {})
		local function __FUNC_28591_(arg0, arg1)
			local function __FUNC_286E8_(arg0, arg1)
				local function __FUNC_28863_(arg0, arg1)
					local function __FUNC_289B8_(arg0, arg1)
						local function __FUNC_28B33_(arg0, arg1)
							local function __FUNC_28C88_(arg0, arg1)
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
								__FUNC_28C88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C88_)
						end

						if arg1.interrupted then
							__FUNC_28B33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B33_)
					end

					if arg1.interrupted then
						__FUNC_289B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_289B8_)
				end

				if arg1.interrupted then
					__FUNC_28863_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28863_)
			end

			if arg1.interrupted then
				__FUNC_286E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_286E8_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_28591_(registerVal18, {})
		local function __FUNC_28E3D_(arg0, arg1)
			local function __FUNC_28F94_(arg0, arg1)
				local function __FUNC_2910F_(arg0, arg1)
					local function __FUNC_29264_(arg0, arg1)
						local function __FUNC_293DF_(arg0, arg1)
							local function __FUNC_29534_(arg0, arg1)
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
								__FUNC_29534_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29534_)
						end

						if arg1.interrupted then
							__FUNC_293DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_293DF_)
					end

					if arg1.interrupted then
						__FUNC_29264_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29264_)
				end

				if arg1.interrupted then
					__FUNC_2910F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2910F_)
			end

			if arg1.interrupted then
				__FUNC_28F94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F94_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_28E3D_(registerVal19, {})
	end

	registerVal23.GainFocus = __FUNC_263A7_
	local function __FUNC_296E9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal23.Focus = __FUNC_296E9_
	local function __FUNC_298F9_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_29BDE_(arg0, arg1)
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
		__FUNC_29BDE_(registerVal4, {})
		local function __FUNC_29D91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_29D91_(registerVal7, {})
		local function __FUNC_29F45_(arg0, arg1)
			local function __FUNC_2A0BF_(arg0, arg1)
				local function __FUNC_2A237_(arg0, arg1)
					local function __FUNC_2A3AF_(arg0, arg1)
						local function __FUNC_2A504_(arg0, arg1)
							local function __FUNC_2A67F_(arg0, arg1)
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
								__FUNC_2A67F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A67F_)
						end

						if arg1.interrupted then
							__FUNC_2A504_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A504_)
					end

					if arg1.interrupted then
						__FUNC_2A3AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A3AF_)
				end

				if arg1.interrupted then
					__FUNC_2A237_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A237_)
			end

			if arg1.interrupted then
				__FUNC_2A0BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A0BF_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_29F45_(registerVal15, {})
		local function __FUNC_2A831_(arg0, arg1)
			local function __FUNC_2A9AB_(arg0, arg1)
				local function __FUNC_2AB23_(arg0, arg1)
					local function __FUNC_2AC9B_(arg0, arg1)
						local function __FUNC_2ADF0_(arg0, arg1)
							local function __FUNC_2AF6B_(arg0, arg1)
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
								__FUNC_2AF6B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF6B_)
						end

						if arg1.interrupted then
							__FUNC_2ADF0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ADF0_)
					end

					if arg1.interrupted then
						__FUNC_2AC9B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC9B_)
				end

				if arg1.interrupted then
					__FUNC_2AB23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB23_)
			end

			if arg1.interrupted then
				__FUNC_2A9AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9AB_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2A831_(registerVal16, {})
		local function __FUNC_2B11D_(arg0, arg1)
			local function __FUNC_2B274_(arg0, arg1)
				local function __FUNC_2B3EF_(arg0, arg1)
					local function __FUNC_2B567_(arg0, arg1)
						local function __FUNC_2B6DF_(arg0, arg1)
							local function __FUNC_2B834_(arg0, arg1)
								local function __FUNC_2B9AF_(arg0, arg1)
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
									__FUNC_2B9AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9AF_)
							end

							if arg1.interrupted then
								__FUNC_2B834_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B834_)
						end

						if arg1.interrupted then
							__FUNC_2B6DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B6DF_)
					end

					if arg1.interrupted then
						__FUNC_2B567_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B567_)
				end

				if arg1.interrupted then
					__FUNC_2B3EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B3EF_)
			end

			if arg1.interrupted then
				__FUNC_2B274_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B274_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2B11D_(registerVal17, {})
		local function __FUNC_2BB61_(arg0, arg1)
			local function __FUNC_2BCB8_(arg0, arg1)
				local function __FUNC_2BE33_(arg0, arg1)
					local function __FUNC_2BF88_(arg0, arg1)
						local function __FUNC_2C103_(arg0, arg1)
							local function __FUNC_2C258_(arg0, arg1)
								local function __FUNC_2C3D3_(arg0, arg1)
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
									__FUNC_2C3D3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3D3_)
							end

							if arg1.interrupted then
								__FUNC_2C258_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C258_)
						end

						if arg1.interrupted then
							__FUNC_2C103_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C103_)
					end

					if arg1.interrupted then
						__FUNC_2BF88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF88_)
				end

				if arg1.interrupted then
					__FUNC_2BE33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BE33_)
			end

			if arg1.interrupted then
				__FUNC_2BCB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BCB8_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2BB61_(registerVal18, {})
		local function __FUNC_2C585_(arg0, arg1)
			local function __FUNC_2C6DC_(arg0, arg1)
				local function __FUNC_2C857_(arg0, arg1)
					local function __FUNC_2C9AC_(arg0, arg1)
						local function __FUNC_2CB27_(arg0, arg1)
							local function __FUNC_2CC7C_(arg0, arg1)
								local function __FUNC_2CDF7_(arg0, arg1)
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
									__FUNC_2CDF7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDF7_)
							end

							if arg1.interrupted then
								__FUNC_2CC7C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC7C_)
						end

						if arg1.interrupted then
							__FUNC_2CB27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CB27_)
					end

					if arg1.interrupted then
						__FUNC_2C9AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C9AC_)
				end

				if arg1.interrupted then
					__FUNC_2C857_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C857_)
			end

			if arg1.interrupted then
				__FUNC_2C6DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6DC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2C585_(registerVal19, {})
	end

	registerVal23.LoseFocus = __FUNC_298F9_
	registerVal22.MutuallyExclusive = registerVal23
	registerVal2.clipsPerState = registerVal22
	registerVal24 = {}
	registerVal25 = {}
	registerVal25.stateName = "Equipped"
	local function __FUNC_2CFA9_(arg0, arg2, arg3)
		return IsCACItemEquipped(arg0, arg2, arg1)
	end

	registerVal25.condition = __FUNC_2CFA9_
	local registerVal26 = {}
	registerVal26.stateName = "New"
	local function __FUNC_2D007_(arg0, arg2, arg3)
		return IsCACItemNew(arg2, arg1)
	end

	registerVal26.condition = __FUNC_2D007_
	local registerVal27 = {}
	registerVal27.stateName = "Locked"
	local function __FUNC_2D05A_(arg0, arg2, arg3)
		return IsCACItemLockedForBeta(arg0, arg2, arg1)
	end

	registerVal27.condition = __FUNC_2D05A_
	local registerVal28 = {}
	registerVal28.stateName = "NotAvailable"
	local function __FUNC_2D0BC_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal28.condition = __FUNC_2D0BC_
	local registerVal29 = {}
	registerVal29.stateName = "MutuallyExclusive"
	local function __FUNC_2D11C_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal29.condition = __FUNC_2D11C_
	registerVal24 = {registerVal25, registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal2:mergeStateConditions(registerVal24)
	local function __FUNC_2D18D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2D18D_)
	local function __FUNC_2D2AB_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.tokenUnlock:close()
		arg0.LabelButton0:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.RestrictedItemWarning:close()
		arg0.NewBreadcrumb0:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D2AB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

