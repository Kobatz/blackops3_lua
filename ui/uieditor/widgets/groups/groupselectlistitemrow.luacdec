-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupSelectListItemRow = registerVal1
function CoD.GroupSelectListItemRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupSelectListItemRow)
	registerVal2.id = "GroupSelectListItemRow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 356.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 47.000000)
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
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive0 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -3.000000, 2.340000)
	registerVal6:setTopBottom(false, false, -11.670000, 12.330000)
	registerVal6:setRGB(0.330000, 0.330000, 0.330000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_list1l_focusline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LfocusLINE = registerVal6
	local registerVal7 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 73.500000, 218.500000)
	registerVal7:setTopBottom(false, false, -7.770000, 12.230000)
	local function __FUNC_15DF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemName:setText(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "displayText", true, __FUNC_15DF_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "HasNew"
	local function __FUNC_168E_(arg0, arg2, arg3)
		return IsCACAnyCamoNew(registerVal2, arg1)
	end

	registerVal11.condition = __FUNC_168E_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.LabelButton = registerVal7
	local registerVal8 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.500000, 2.000000)
	registerVal8:setTopBottom(false, false, 22.000000, 25.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.LobbyMemberBackingFooter0 = registerVal8
	local registerVal9 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -2.000000, 65.000000)
	registerVal9:setTopBottom(true, false, -1.000000, 47.000000)
	local function __FUNC_16E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "groupId", true, __FUNC_16E5_)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupEmblemWidget = registerVal9
	registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 236.500000, 345.500000)
	registerVal10:setTopBottom(true, false, 11.330000, 36.330000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MENU_SENT"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.SentText = registerVal10
	registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -4.250000, 2.340000)
	registerVal11:setTopBottom(true, false, -2.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -4.250000, 2.340000)
	registerVal12:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal13:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal13:setRGB(1.000000, 0.090000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal14:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal14:setRGB(1.000000, 0.150000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal15:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal15:setRGB(1.000000, 0.090000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch0 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_17A2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.SentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal17.DefaultClip = __FUNC_17A2_
	local function __FUNC_1CF1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_20B1_(arg0, arg1)
			local function __FUNC_2208_(arg0, arg1)
				local function __FUNC_2383_(arg0, arg1)
					local function __FUNC_24D8_(arg0, arg1)
						local function __FUNC_2653_(arg0, arg1)
							local function __FUNC_27A8_(arg0, arg1)
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
								__FUNC_27A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A8_)
						end

						if arg1.interrupted then
							__FUNC_2653_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2653_)
					end

					if arg1.interrupted then
						__FUNC_24D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D8_)
				end

				if arg1.interrupted then
					__FUNC_2383_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2383_)
			end

			if arg1.interrupted then
				__FUNC_2208_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2208_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_20B1_(registerVal11, {})
		local function __FUNC_295D_(arg0, arg1)
			local function __FUNC_2AB4_(arg0, arg1)
				local function __FUNC_2C2F_(arg0, arg1)
					local function __FUNC_2D84_(arg0, arg1)
						local function __FUNC_2EFF_(arg0, arg1)
							local function __FUNC_3054_(arg0, arg1)
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
								__FUNC_3054_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3054_)
						end

						if arg1.interrupted then
							__FUNC_2EFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFF_)
					end

					if arg1.interrupted then
						__FUNC_2D84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D84_)
				end

				if arg1.interrupted then
					__FUNC_2C2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C2F_)
			end

			if arg1.interrupted then
				__FUNC_2AB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB4_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_295D_(registerVal12, {})
		local function __FUNC_3209_(arg0, arg1)
			local function __FUNC_3360_(arg0, arg1)
				local function __FUNC_34DB_(arg0, arg1)
					local function __FUNC_3630_(arg0, arg1)
						local function __FUNC_37AB_(arg0, arg1)
							local function __FUNC_3900_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3900_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3900_)
						end

						if arg1.interrupted then
							__FUNC_37AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37AB_)
					end

					if arg1.interrupted then
						__FUNC_3630_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3630_)
				end

				if arg1.interrupted then
					__FUNC_34DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34DB_)
			end

			if arg1.interrupted then
				__FUNC_3360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3360_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3209_(registerVal13, {})
		local function __FUNC_3B3F_(arg0, arg1)
			local function __FUNC_3C94_(arg0, arg1)
				local function __FUNC_3E0F_(arg0, arg1)
					local function __FUNC_3F64_(arg0, arg1)
						local function __FUNC_40DF_(arg0, arg1)
							local function __FUNC_4234_(arg0, arg1)
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
								__FUNC_4234_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4234_)
						end

						if arg1.interrupted then
							__FUNC_40DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40DF_)
					end

					if arg1.interrupted then
						__FUNC_3F64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F64_)
				end

				if arg1.interrupted then
					__FUNC_3E0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E0F_)
			end

			if arg1.interrupted then
				__FUNC_3C94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C94_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3B3F_(registerVal14, {})
	end

	registerVal17.GainFocus = __FUNC_1CF1_
	local function __FUNC_43E9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal17.Focus = __FUNC_43E9_
	local function __FUNC_4671_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4850_(arg0, arg1)
			local function __FUNC_49CB_(arg0, arg1)
				local function __FUNC_4B43_(arg0, arg1)
					local function __FUNC_4CBB_(arg0, arg1)
						local function __FUNC_4E10_(arg0, arg1)
							local function __FUNC_4F8B_(arg0, arg1)
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
								__FUNC_4F8B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F8B_)
						end

						if arg1.interrupted then
							__FUNC_4E10_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E10_)
					end

					if arg1.interrupted then
						__FUNC_4CBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CBB_)
				end

				if arg1.interrupted then
					__FUNC_4B43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B43_)
			end

			if arg1.interrupted then
				__FUNC_49CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49CB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4850_(registerVal11, {})
		local function __FUNC_513D_(arg0, arg1)
			local function __FUNC_52B7_(arg0, arg1)
				local function __FUNC_542F_(arg0, arg1)
					local function __FUNC_55A7_(arg0, arg1)
						local function __FUNC_56FC_(arg0, arg1)
							local function __FUNC_5877_(arg0, arg1)
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
								__FUNC_5877_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5877_)
						end

						if arg1.interrupted then
							__FUNC_56FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56FC_)
					end

					if arg1.interrupted then
						__FUNC_55A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55A7_)
				end

				if arg1.interrupted then
					__FUNC_542F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_542F_)
			end

			if arg1.interrupted then
				__FUNC_52B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52B7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_513D_(registerVal12, {})
		local function __FUNC_5A29_(arg0, arg1)
			local function __FUNC_5B80_(arg0, arg1)
				local function __FUNC_5CFB_(arg0, arg1)
					local function __FUNC_5E50_(arg0, arg1)
						local function __FUNC_5FCB_(arg0, arg1)
							local function __FUNC_6120_(arg0, arg1)
								local function __FUNC_629B_(arg0, arg1)
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
									__FUNC_629B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_629B_)
							end

							if arg1.interrupted then
								__FUNC_6120_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6120_)
						end

						if arg1.interrupted then
							__FUNC_5FCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FCB_)
					end

					if arg1.interrupted then
						__FUNC_5E50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E50_)
				end

				if arg1.interrupted then
					__FUNC_5CFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CFB_)
			end

			if arg1.interrupted then
				__FUNC_5B80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B80_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5A29_(registerVal13, {})
		local function __FUNC_644D_(arg0, arg1)
			local function __FUNC_65A4_(arg0, arg1)
				local function __FUNC_671F_(arg0, arg1)
					local function __FUNC_6874_(arg0, arg1)
						local function __FUNC_69EF_(arg0, arg1)
							local function __FUNC_6B44_(arg0, arg1)
								local function __FUNC_6CBF_(arg0, arg1)
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
									__FUNC_6CBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CBF_)
							end

							if arg1.interrupted then
								__FUNC_6B44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B44_)
						end

						if arg1.interrupted then
							__FUNC_69EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69EF_)
					end

					if arg1.interrupted then
						__FUNC_6874_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6874_)
				end

				if arg1.interrupted then
					__FUNC_671F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_671F_)
			end

			if arg1.interrupted then
				__FUNC_65A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65A4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_644D_(registerVal14, {})
	end

	registerVal17.LoseFocus = __FUNC_4671_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_6E71_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.SentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_6E71_
	local function __FUNC_72EA_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal10:completeAnimation()
		registerVal2.SentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_75CE_(arg0, arg1)
			local function __FUNC_7724_(arg0, arg1)
				local function __FUNC_789F_(arg0, arg1)
					local function __FUNC_79F4_(arg0, arg1)
						local function __FUNC_7B6F_(arg0, arg1)
							local function __FUNC_7CC4_(arg0, arg1)
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
								__FUNC_7CC4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CC4_)
						end

						if arg1.interrupted then
							__FUNC_7B6F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B6F_)
					end

					if arg1.interrupted then
						__FUNC_79F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F4_)
				end

				if arg1.interrupted then
					__FUNC_789F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_789F_)
			end

			if arg1.interrupted then
				__FUNC_7724_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7724_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_75CE_(registerVal11, {})
		local function __FUNC_7E79_(arg0, arg1)
			local function __FUNC_7FD0_(arg0, arg1)
				local function __FUNC_814B_(arg0, arg1)
					local function __FUNC_82A0_(arg0, arg1)
						local function __FUNC_841B_(arg0, arg1)
							local function __FUNC_8570_(arg0, arg1)
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
								__FUNC_8570_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8570_)
						end

						if arg1.interrupted then
							__FUNC_841B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_841B_)
					end

					if arg1.interrupted then
						__FUNC_82A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82A0_)
				end

				if arg1.interrupted then
					__FUNC_814B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_814B_)
			end

			if arg1.interrupted then
				__FUNC_7FD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FD0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7E79_(registerVal12, {})
		local function __FUNC_8725_(arg0, arg1)
			local function __FUNC_887C_(arg0, arg1)
				local function __FUNC_89F7_(arg0, arg1)
					local function __FUNC_8B4C_(arg0, arg1)
						local function __FUNC_8CC7_(arg0, arg1)
							local function __FUNC_8E1C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_8E1C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E1C_)
						end

						if arg1.interrupted then
							__FUNC_8CC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CC7_)
					end

					if arg1.interrupted then
						__FUNC_8B4C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B4C_)
				end

				if arg1.interrupted then
					__FUNC_89F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89F7_)
			end

			if arg1.interrupted then
				__FUNC_887C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_887C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_8725_(registerVal13, {})
		local function __FUNC_905B_(arg0, arg1)
			local function __FUNC_91B0_(arg0, arg1)
				local function __FUNC_932B_(arg0, arg1)
					local function __FUNC_9480_(arg0, arg1)
						local function __FUNC_95FB_(arg0, arg1)
							local function __FUNC_9750_(arg0, arg1)
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
								__FUNC_9750_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9750_)
						end

						if arg1.interrupted then
							__FUNC_95FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95FB_)
					end

					if arg1.interrupted then
						__FUNC_9480_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9480_)
				end

				if arg1.interrupted then
					__FUNC_932B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_932B_)
			end

			if arg1.interrupted then
				__FUNC_91B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91B0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_905B_(registerVal14, {})
	end

	registerVal17.GainFocus = __FUNC_72EA_
	local function __FUNC_9905_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.SentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal17.Focus = __FUNC_9905_
	local function __FUNC_9B10_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal10:completeAnimation()
		registerVal2.SentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_9D5C_(arg0, arg1)
			local function __FUNC_9ED7_(arg0, arg1)
				local function __FUNC_A04F_(arg0, arg1)
					local function __FUNC_A1C7_(arg0, arg1)
						local function __FUNC_A31C_(arg0, arg1)
							local function __FUNC_A497_(arg0, arg1)
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
								__FUNC_A497_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A497_)
						end

						if arg1.interrupted then
							__FUNC_A31C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A31C_)
					end

					if arg1.interrupted then
						__FUNC_A1C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1C7_)
				end

				if arg1.interrupted then
					__FUNC_A04F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A04F_)
			end

			if arg1.interrupted then
				__FUNC_9ED7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9ED7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9D5C_(registerVal11, {})
		local function __FUNC_A649_(arg0, arg1)
			local function __FUNC_A7C3_(arg0, arg1)
				local function __FUNC_A93B_(arg0, arg1)
					local function __FUNC_AAB3_(arg0, arg1)
						local function __FUNC_AC08_(arg0, arg1)
							local function __FUNC_AD83_(arg0, arg1)
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
								__FUNC_AD83_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD83_)
						end

						if arg1.interrupted then
							__FUNC_AC08_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC08_)
					end

					if arg1.interrupted then
						__FUNC_AAB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAB3_)
				end

				if arg1.interrupted then
					__FUNC_A93B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A93B_)
			end

			if arg1.interrupted then
				__FUNC_A7C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7C3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_A649_(registerVal12, {})
		local function __FUNC_AF35_(arg0, arg1)
			local function __FUNC_B08C_(arg0, arg1)
				local function __FUNC_B207_(arg0, arg1)
					local function __FUNC_B35C_(arg0, arg1)
						local function __FUNC_B4D7_(arg0, arg1)
							local function __FUNC_B62C_(arg0, arg1)
								local function __FUNC_B7A7_(arg0, arg1)
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
									__FUNC_B7A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7A7_)
							end

							if arg1.interrupted then
								__FUNC_B62C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B62C_)
						end

						if arg1.interrupted then
							__FUNC_B4D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4D7_)
					end

					if arg1.interrupted then
						__FUNC_B35C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B35C_)
				end

				if arg1.interrupted then
					__FUNC_B207_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B207_)
			end

			if arg1.interrupted then
				__FUNC_B08C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B08C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_AF35_(registerVal13, {})
		local function __FUNC_B959_(arg0, arg1)
			local function __FUNC_BAB0_(arg0, arg1)
				local function __FUNC_BC2B_(arg0, arg1)
					local function __FUNC_BD80_(arg0, arg1)
						local function __FUNC_BEFB_(arg0, arg1)
							local function __FUNC_C050_(arg0, arg1)
								local function __FUNC_C1CB_(arg0, arg1)
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
									__FUNC_C1CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1CB_)
							end

							if arg1.interrupted then
								__FUNC_C050_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C050_)
						end

						if arg1.interrupted then
							__FUNC_BEFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEFB_)
					end

					if arg1.interrupted then
						__FUNC_BD80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD80_)
				end

				if arg1.interrupted then
					__FUNC_BC2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC2B_)
			end

			if arg1.interrupted then
				__FUNC_BAB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAB0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_B959_(registerVal14, {})
	end

	registerVal17.LoseFocus = __FUNC_9B10_
	registerVal16.InviteSent = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "InviteSent"
	local function __FUNC_C37D_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "inviteSent")
	end

	registerVal19.condition = __FUNC_C37D_
	registerVal18 = {registerVal19}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_C3F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "inviteSent"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "inviteSent", true, __FUNC_C3F2_)
	local function __FUNC_C510_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive0:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton:close()
		arg0.LobbyMemberBackingFooter0:close()
		arg0.GroupEmblemWidget:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C510_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

