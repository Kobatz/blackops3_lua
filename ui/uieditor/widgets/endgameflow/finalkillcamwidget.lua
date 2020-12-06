-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Killcam.KillcamHeader")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnPnl")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetVignetteTop")
require("ui.uieditor.widgets.HUD.Outcome.WinnerFactionInfo")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard")
local function __FUNC_343_(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting("teamCount")
	if registerVal2 == 1.000000 then
		arg0.WinnerFactionInfo:close()
	end
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "gameScore")
	local registerVal5 = Engine.GetModel(registerVal3, "draw")
	if registerVal5 then
		registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "draw"))
	end
	if registerVal5 then
		arg0.WinnerFactionInfo:close()
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FinalKillcamWidget = registerVal2
local function __FUNC_51F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FinalKillcamWidget)
	registerVal2.id = "FinalKillcamWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.KillcamHeader.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Header = registerVal3
	local registerVal4 = CoD.KillcamWidgetFctnPnl.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal4:setRGB(0.440000, 0.440000, 0.440000)
	registerVal2:addElement(registerVal4)
	registerVal2.KillcamWidgetFctnPnl0 = registerVal4
	local registerVal5 = CoD.KillcamWidgetVignetteTop.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, 268.000000, 380.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setXRot(180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Footer = registerVal5
	local registerVal6 = CoD.WinnerFactionInfo.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 390.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal6.KillcamWidgetTitleStatus0.SubTitle:setText(Engine.Localize("MENU_WINNERS_CAPS"))
	local function __FUNC_122D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.WeaponNameWidget0.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionDisplayName", __FUNC_122D_)
	local function __FUNC_1332_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_1332_)
	local function __FUNC_1465_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.OutcomeFactionIcon.OutcomeFactionIconItem.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_1465_)
	local function __FUNC_1598_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_1598_)
	local function __FUNC_16D9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.OutcomeFactionIcon.OutcomeFactionIconItemForCodCaster.WinningTeamFactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FactionsGlobal", "winnersFactionIcon", __FUNC_16D9_)
	registerVal2:addElement(registerVal6)
	registerVal2.WinnerFactionInfo = registerVal6
	local registerVal7 = CoD.PlayerCard.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 67.000000, 375.000000)
	registerVal7:setTopBottom(false, true, -79.000000, -20.000000)
	local function __FUNC_1818_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "Attacker", nil, __FUNC_1818_)
	local function __FUNC_186A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "heading", true, __FUNC_186A_)
	registerVal2:addElement(registerVal7)
	registerVal2.PlayerCard = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BlackForeground = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -302.400000, 57.600000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.TransitionImageBottom = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, -57.600000, 302.400000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.TransitionImageTop = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1946_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.KillcamWidgetFctnPnl0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Footer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BlackForeground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_1946_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1C0D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_217D_(arg0, arg1)
			local function __FUNC_232F_(arg0, arg1)
				local function __FUNC_24A7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -640.000000, 640.000000)
					arg0:setTopBottom(true, false, 0.000000, 128.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_24A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.510000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A7_)
			end

			if arg1.interrupted then
				__FUNC_232F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 0.000000, 128.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Header:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.Header:setTopBottom(true, false, -40.000000, 88.000000)
		registerVal2.Header:setAlpha(0.000000)
		__FUNC_217D_(registerVal3, {})
		local function __FUNC_26C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.KillcamWidgetFctnPnl0:setAlpha(0.000000)
		__FUNC_26C9_(registerVal4, {})
		local function __FUNC_287D_(arg0, arg1)
			local function __FUNC_2A2F_(arg0, arg1)
				local function __FUNC_2BA7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -640.000000, 640.000000)
					arg0:setTopBottom(false, false, 268.000000, 380.000000)
					arg0:setAlpha(0.700000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2BA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA7_)
			end

			if arg1.interrupted then
				__FUNC_2A2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 268.000000, 380.000000)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A2F_)
		end

		registerVal5:completeAnimation()
		registerVal2.Footer:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2.Footer:setTopBottom(false, false, 316.500000, 428.500000)
		registerVal2.Footer:setAlpha(0.000000)
		__FUNC_287D_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2DC9_(arg0, arg1)
			local function __FUNC_2FB3_(arg0, arg1)
				local function __FUNC_312B_(arg0, arg1)
					local function __FUNC_32A3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setLeftRight(true, false, 67.000000, 375.000000)
						arg0:setTopBottom(false, true, -93.000000, -34.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_32A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
					arg0:setAlpha(0.440000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A3_)
				end

				if arg1.interrupted then
					__FUNC_312B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_312B_)
			end

			if arg1.interrupted then
				__FUNC_2FB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 67.000000, 375.000000)
			arg0:setTopBottom(false, true, -93.000000, -34.000000)
			arg0:setAlpha(0.960000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB3_)
		end

		registerVal7:completeAnimation()
		registerVal2.PlayerCard:setLeftRight(true, false, 64.000000, 372.000000)
		registerVal2.PlayerCard:setTopBottom(false, true, 12.500000, 71.500000)
		registerVal2.PlayerCard:setAlpha(0.000000)
		__FUNC_2DC9_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BlackForeground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_34C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, 0.000000, 360.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.TransitionImageBottom:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageBottom:setTopBottom(false, true, -360.000000, 0.000000)
		registerVal2.TransitionImageBottom:setAlpha(1.000000)
		__FUNC_34C5_(registerVal9, {})
		local function __FUNC_36DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, false, -360.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.TransitionImageTop:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TransitionImageTop:setTopBottom(true, false, 0.000000, 360.000000)
		registerVal2.TransitionImageTop:setAlpha(1.000000)
		__FUNC_36DA_(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1C0D_
	local function __FUNC_38EE_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_3B91_(arg0, arg1)
			local function __FUNC_3CE8_(arg0, arg1)
				local function __FUNC_3E63_(arg0, arg1)
					local function __FUNC_3FDB_(arg0, arg1)
						local function __FUNC_4153_(arg0, arg1)
							local function __FUNC_42CB_(arg0, arg1)
								local function __FUNC_4443_(arg0, arg1)
									local function __FUNC_45BB_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_45BB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.150000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45BB_)
								end

								if arg1.interrupted then
									__FUNC_4443_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.100000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4443_)
							end

							if arg1.interrupted then
								__FUNC_42CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.300000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42CB_)
						end

						if arg1.interrupted then
							__FUNC_4153_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.550000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4153_)
					end

					if arg1.interrupted then
						__FUNC_3FDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.140000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FDB_)
				end

				if arg1.interrupted then
					__FUNC_3E63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E63_)
			end

			if arg1.interrupted then
				__FUNC_3CE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE8_)
		end

		registerVal3:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		__FUNC_3B91_(registerVal3, {})
		local function __FUNC_476D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.KillcamWidgetFctnPnl0:setAlpha(1.000000)
		__FUNC_476D_(registerVal4, {})
		local function __FUNC_4921_(arg0, arg1)
			local function __FUNC_4A78_(arg0, arg1)
				local function __FUNC_4BF3_(arg0, arg1)
					local function __FUNC_4D6B_(arg0, arg1)
						local function __FUNC_4EE3_(arg0, arg1)
							local function __FUNC_505B_(arg0, arg1)
								local function __FUNC_51D3_(arg0, arg1)
									local function __FUNC_534B_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_534B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.250000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_534B_)
								end

								if arg1.interrupted then
									__FUNC_51D3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.090000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51D3_)
							end

							if arg1.interrupted then
								__FUNC_505B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_505B_)
						end

						if arg1.interrupted then
							__FUNC_4EE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EE3_)
					end

					if arg1.interrupted then
						__FUNC_4D6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.140000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D6B_)
				end

				if arg1.interrupted then
					__FUNC_4BF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BF3_)
			end

			if arg1.interrupted then
				__FUNC_4A78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A78_)
		end

		registerVal5:completeAnimation()
		registerVal2.Footer:setAlpha(0.700000)
		__FUNC_4921_(registerVal5, {})
		local function __FUNC_54FD_(arg0, arg1)
			local function __FUNC_5677_(arg0, arg1)
				local function __FUNC_57EF_(arg0, arg1)
					local function __FUNC_5967_(arg0, arg1)
						local function __FUNC_5ADF_(arg0, arg1)
							local function __FUNC_5C57_(arg0, arg1)
								local function __FUNC_5DCF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_5DCF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.110000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DCF_)
							end

							if arg1.interrupted then
								__FUNC_5C57_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C57_)
						end

						if arg1.interrupted then
							__FUNC_5ADF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ADF_)
					end

					if arg1.interrupted then
						__FUNC_5967_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.410000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5967_)
				end

				if arg1.interrupted then
					__FUNC_57EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.040000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57EF_)
			end

			if arg1.interrupted then
				__FUNC_5677_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5677_)
		end

		registerVal6:completeAnimation()
		registerVal2.WinnerFactionInfo:setAlpha(1.000000)
		__FUNC_54FD_(registerVal6, {})
		local function __FUNC_5F81_(arg0, arg1)
			local function __FUNC_60D8_(arg0, arg1)
				local function __FUNC_6253_(arg0, arg1)
					local function __FUNC_63CB_(arg0, arg1)
						local function __FUNC_6543_(arg0, arg1)
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
							__FUNC_6543_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6543_)
					end

					if arg1.interrupted then
						__FUNC_63CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.090000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63CB_)
				end

				if arg1.interrupted then
					__FUNC_6253_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6253_)
			end

			if arg1.interrupted then
				__FUNC_60D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60D8_)
		end

		registerVal7:completeAnimation()
		registerVal2.PlayerCard:setAlpha(1.000000)
		__FUNC_5F81_(registerVal7, {})
		local function __FUNC_66F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.BlackForeground:setAlpha(0.000000)
		__FUNC_66F5_(registerVal8, {})
	end

	registerVal12.End = __FUNC_38EE_
	registerVal11.FinalKillcam = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "FinalKillcam"
	local function __FUNC_68A9_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		if not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_68A9_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_69D5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_69D5_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_6B60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_6B60_)
	registerVal3.id = "Header"
	local function __FUNC_6CF0_(arg0)
		arg0.Header:close()
		arg0.KillcamWidgetFctnPnl0:close()
		arg0.Footer:close()
		arg0.WinnerFactionInfo:close()
		arg0.PlayerCard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6CF0_)
	if __FUNC_343_ then
		__FUNC_343_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FinalKillcamWidget.new = __FUNC_51F_
