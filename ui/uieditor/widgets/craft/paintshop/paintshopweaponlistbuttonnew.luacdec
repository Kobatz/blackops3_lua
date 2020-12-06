-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabelCount")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_LockBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopWeaponListButtonNew = registerVal1
function CoD.PaintshopWeaponListButtonNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopWeaponListButtonNew)
	registerVal2.id = "PaintshopWeaponListButtonNew"
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
	local registerVal6 = CoD.BorderBakedBlur.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, -78.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.050000)
	registerVal2:addElement(registerVal6)
	registerVal2.Lblur = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -1.660000, -9.660000)
	registerVal7:setTopBottom(false, false, -10.670000, 13.330000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_list1l_focusarrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.arrowImage = registerVal7
	local registerVal8 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 78.500000, 200.500000)
	registerVal8:setTopBottom(true, false, 23.000000, 43.000000)
	local function __FUNC_1CC5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_1CC5_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemName = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1D9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "image", true, __FUNC_1D9C_)
	registerVal2:addElement(registerVal9)
	registerVal2.itemImage = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 63.000000, 67.000000)
	registerVal10:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal10:setAlpha(0.300000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.itemImageLine = registerVal10
	local registerVal11 = CoD.cac_ListButtonLabelCount.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -76.000000, -16.000000)
	registerVal11:setTopBottom(false, false, -9.500000, 10.500000)
	local function __FUNC_1E50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.ButtonLabelCount.itemName:setText(Engine.Localize(GetPaintjobCountByWeaponIndex(registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1E50_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_1F7D_(arg0, arg2, arg3)
		return Paintjobs_IsCountGreaterThanZero(arg2, arg1)
	end

	registerVal15.condition = __FUNC_1F7D_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.totalPaintjobs = registerVal11
	local registerVal12 = CoD.cac_lock.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 18.000000, 42.000000)
	registerVal12:setTopBottom(false, false, -18.000000, 14.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12.lockedIcon:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.lockedIcon = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal15:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal15:setRGB(1.000000, 0.090000, 0.000000)
	registerVal15:setAlpha(0.090000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Glitch = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal16:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal16:setRGB(1.000000, 0.090000, 0.000000)
	registerVal16:setAlpha(0.090000)
	registerVal16:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Glitch2 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal17:setRGB(0.000000, 0.000000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.blackMarketBackground = registerVal17
	local registerVal18 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -99.000000, 99.000000)
	registerVal18:setTopBottom(false, false, -6.500000, 6.500000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.BMGoldBarMed = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal19:setTopBottom(false, false, -23.000000, 23.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal19)
	registerVal2.blackMarketBrandIcon = registerVal19
	local registerVal20 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 148.800000, 251.800000)
	registerVal20:setTopBottom(true, false, 13.250000, 48.250000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.BMContractsLockBars = registerVal20
	local registerVal21 = CoD.BM_Contracts_LockBars.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 28.800000, 132.800000)
	registerVal21:setTopBottom(true, false, 13.250000, 48.250000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setYRot(180.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.BMContractsLockBars0 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 107.250000, 172.750000)
	registerVal22:setTopBottom(true, false, -0.500000, 65.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setImage(RegisterImage("uie_t7_bm_special_contracts_logo"))
	registerVal2:addElement(registerVal22)
	registerVal2.bmContractBrandIcon = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_1FE6_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgInactiveDiag:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgInactive:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Lblur:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_1FE6_
	local function __FUNC_2679_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_2AF4_(arg0, arg1)
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
		__FUNC_2AF4_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Lblur:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_2CA9_(arg0, arg1)
			local function __FUNC_2E00_(arg0, arg1)
				local function __FUNC_2F7B_(arg0, arg1)
					local function __FUNC_30F3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_30F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F3_)
				end

				if arg1.interrupted then
					__FUNC_2F7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F7B_)
			end

			if arg1.interrupted then
				__FUNC_2E00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E00_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2CA9_(registerVal13, {})
		local function __FUNC_32A5_(arg0, arg1)
			local function __FUNC_33FC_(arg0, arg1)
				local function __FUNC_3577_(arg0, arg1)
					local function __FUNC_36EF_(arg0, arg1)
						local function __FUNC_3867_(arg0, arg1)
							local function __FUNC_39BC_(arg0, arg1)
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
								__FUNC_39BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39BC_)
						end

						if arg1.interrupted then
							__FUNC_3867_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3867_)
					end

					if arg1.interrupted then
						__FUNC_36EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36EF_)
				end

				if arg1.interrupted then
					__FUNC_3577_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3577_)
			end

			if arg1.interrupted then
				__FUNC_33FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33FC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_32A5_(registerVal14, {})
		local function __FUNC_3B71_(arg0, arg1)
			local function __FUNC_3CEB_(arg0, arg1)
				local function __FUNC_3E63_(arg0, arg1)
					local function __FUNC_3FDB_(arg0, arg1)
						local function __FUNC_4153_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4153_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4153_)
					end

					if arg1.interrupted then
						__FUNC_3FDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FDB_)
				end

				if arg1.interrupted then
					__FUNC_3E63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E63_)
			end

			if arg1.interrupted then
				__FUNC_3CEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CEB_)
		end

		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		__FUNC_3B71_(registerVal15, {})
		local function __FUNC_4305_(arg0, arg1)
			local function __FUNC_447F_(arg0, arg1)
				local function __FUNC_45F7_(arg0, arg1)
					local function __FUNC_476F_(arg0, arg1)
						local function __FUNC_48E7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_48E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48E7_)
					end

					if arg1.interrupted then
						__FUNC_476F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_476F_)
				end

				if arg1.interrupted then
					__FUNC_45F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45F7_)
			end

			if arg1.interrupted then
				__FUNC_447F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_447F_)
		end

		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		__FUNC_4305_(registerVal16, {})
		registerVal2.nextClip = "GainFocus"
	end

	registerVal24.GainFocus = __FUNC_2679_
	local function __FUNC_4A99_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setLeftRight(false, true, -1.660000, -9.660000)
		registerVal2.arrowImage:setTopBottom(false, false, -10.670000, 13.330000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal24.Focus = __FUNC_4A99_
	local function __FUNC_4F91_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_5355_(arg0, arg1)
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
		__FUNC_5355_(registerVal4, {})
		local function __FUNC_5509_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -78.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Lblur:setLeftRight(true, true, 0.000000, -78.000000)
		registerVal2.Lblur:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Lblur:setZoom(0.000000)
		__FUNC_5509_(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_571D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_571D_(registerVal13, {})
		local function __FUNC_58D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_58D1_(registerVal14, {})
		local function __FUNC_5A85_(arg0, arg1)
			local function __FUNC_5BDC_(arg0, arg1)
				local function __FUNC_5D57_(arg0, arg1)
					local function __FUNC_5ECF_(arg0, arg1)
						local function __FUNC_6024_(arg0, arg1)
							local function __FUNC_617C_(arg0, arg1)
								local function __FUNC_62F7_(arg0, arg1)
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
									__FUNC_62F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.560000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62F7_)
							end

							if arg1.interrupted then
								__FUNC_617C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_617C_)
						end

						if arg1.interrupted then
							__FUNC_6024_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6024_)
					end

					if arg1.interrupted then
						__FUNC_5ECF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ECF_)
				end

				if arg1.interrupted then
					__FUNC_5D57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.280000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D57_)
			end

			if arg1.interrupted then
				__FUNC_5BDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDC_)
		end

		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		__FUNC_5A85_(registerVal15, {})
		local function __FUNC_64A9_(arg0, arg1)
			local function __FUNC_6600_(arg0, arg1)
				local function __FUNC_677B_(arg0, arg1)
					local function __FUNC_68F3_(arg0, arg1)
						local function __FUNC_6A48_(arg0, arg1)
							local function __FUNC_6BC3_(arg0, arg1)
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
								__FUNC_6BC3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BC3_)
						end

						if arg1.interrupted then
							__FUNC_6A48_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A48_)
					end

					if arg1.interrupted then
						__FUNC_68F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68F3_)
				end

				if arg1.interrupted then
					__FUNC_677B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.180000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_677B_)
			end

			if arg1.interrupted then
				__FUNC_6600_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6600_)
		end

		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		__FUNC_64A9_(registerVal16, {})
	end

	registerVal24.LoseFocus = __FUNC_4F91_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_6D75_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.totalPaintjobs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_6D75_
	local function __FUNC_754A_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.totalPaintjobs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal24.Focus = __FUNC_754A_
	registerVal23.BMClassified = registerVal24
	registerVal24 = {}
	local function __FUNC_7BFA_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.totalPaintjobs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_7BFA_
	local function __FUNC_83CE_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImageLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.totalPaintjobs:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.blackMarketBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Focus = __FUNC_83CE_
	registerVal23.ContractClassified = registerVal24
	registerVal24 = {}
	local function __FUNC_8BA2_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.130000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_8BA2_
	registerVal23.Locked = registerVal24
	registerVal24 = {}
	local function __FUNC_9081_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Lblur:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemName:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 0.000000, 65.000000)
		registerVal2.itemImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.itemImage:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.Glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsLockBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMContractsLockBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.bmContractBrandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_9081_
	registerVal23.NotListFocus = registerVal24
	registerVal2.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "BMClassified"
	local function __FUNC_9659_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal26.condition = __FUNC_9659_
	local registerVal27 = {}
	registerVal27.stateName = "ContractClassified"
	local function __FUNC_96D2_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isContractClassified")
	end

	registerVal27.condition = __FUNC_96D2_
	local registerVal28 = {}
	registerVal28.stateName = "Locked"
	local function __FUNC_9750_(arg0, arg2, arg3)
		return Gunsmith_IsLockedForDemo(arg0, arg2, arg1)
	end

	registerVal28.condition = __FUNC_9750_
	local registerVal29 = {}
	registerVal29.stateName = "NotListFocus"
	local function __FUNC_97B6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal29.condition = __FUNC_97B6_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_9801_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_9801_)
	local function __FUNC_9924_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isContractClassified", true, __FUNC_9924_)
	local function __FUNC_9A4E_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.Lblur:close()
		arg0.itemName:close()
		arg0.totalPaintjobs:close()
		arg0.lockedIcon:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.BMGoldBarMed:close()
		arg0.BMContractsLockBars:close()
		arg0.BMContractsLockBars0:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A4E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

