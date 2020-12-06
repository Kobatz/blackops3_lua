-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_Numbers")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_BeginsIn")
require("ui.uieditor.widgets.Effects.fxGlitch1_Main")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_2xpBadge")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_2xpWeaponBadge")
require("ui.uieditor.widgets.BlackMarket.DoubleLoot")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_2xpWeaponLabel")
local function __FUNC_487_(arg0, arg1, arg2)
	arg0.PrematchCountdownNumbers.Numbers.Numbers:setupPrematchTimer(arg1)
	if arg1 then
		local registerVal3 = Engine.CurrentGameTime()
		if 5000.000000 < (arg1 - registerVal3) then
			local function __FUNC_746_(arg0)
				local registerVal1 = CoD.IsShoutcaster(arg2)
				if registerVal1 then
					arg0:playClip("ShowOnlyCodcasterFactionInfo")
				else
					arg0:playClip("Start")
				end
				arg0.Glitch:playClip("GlitchSmall2Slow")
				return true
			end

			arg0:registerEventHandler("faction_start", __FUNC_746_)
			arg0:addElement(LUI.UITimer.new(((arg1 - registerVal3) - 5000.000000), "faction_start", true))
		else
			local registerVal4 = CoD.IsShoutcaster(arg2)
			if registerVal4 then
				arg0:playClip("ShowOnlyCodcasterFactionInfo")
			else
				arg0:playClip("Start")
			end
			arg0.Glitch:playClip("GlitchSmall2Slow")
		end
	end
	arg0.PrematchCountdownNumbers:playClip("Start")
end

local function __FUNC_861_(arg0, arg1)
	local registerVal2 = ShouldDisplayFactionIconAtPrematchCountdown(arg1)
	if not registerVal2 then
		arg0.FactionIcon:setAlpha(0.000000)
		arg0.FactionIcon0:setAlpha(0.000000)
		arg0.FactionName:setAlpha(0.000000)
		arg0.FactionIcon.setAlpha = CoD.NullFunction
		arg0.FactionIcon0.setAlpha = CoD.NullFunction
		arg0.FactionName.setAlpha = CoD.NullFunction
	end
	local function __FUNC_C44_(arg0, arg2)
		arg0.Glitch:playClip("GlitchSmall3")
		arg0:playClip("ShowObjectiveHint")
		local function __FUNC_D2C_(arg0, arg2)
			local registerVal2 = Engine.GetRoundsPlayed(arg1)
			if registerVal2 ~= nil and registerVal2 ~= 0.000000 then
			end
			local registerVal4 = IsDoubleXP(arg1)
			registerVal4 = IsDoubleWeaponXP(arg1)
			if true and registerVal4 and registerVal4 then
				arg0:playClip("ShowDoubleXPandWeaponXP")
				arg0.Glitch:playClip("GlitchSmall1")
				local function __FUNC_1058_(arg0, arg1)
					arg0:close()
				end

				arg0:registerEventHandler("clip_over", __FUNC_1058_)
			else
				registerVal4 = IsDoubleXP(arg1)
				if true and registerVal4 then
					arg0:playClip("ShowDoubleXPIcon")
					arg0.Glitch:playClip("GlitchSmall1")
					local function __FUNC_109B_(arg0, arg1)
						arg0:close()
					end

					arg0:registerEventHandler("clip_over", __FUNC_109B_)
				else
					registerVal4 = IsDoubleWeaponXP(arg1)
					if true and registerVal4 then
						arg0:playClip("ShowDoubleWeaponXPIcon")
						arg0.Glitch:playClip("GlitchSmall1")
						local function __FUNC_10DB_(arg0, arg1)
							arg0:close()
						end

						arg0:registerEventHandler("clip_over", __FUNC_10DB_)
					else
						registerVal4 = IsDoubleLootXP(arg1)
						if true and registerVal4 then
							arg0:playClip("ShowDoubleLootIcon")
							arg0.Glitch:playClip("GlitchSmall1")
							local function __FUNC_111B_(arg0, arg1)
								arg0:close()
							end

							arg0:registerEventHandler("clip_over", __FUNC_111B_)
						else
							arg0:close()
						end
					end
				end
			end
		end

		arg0:registerEventHandler("clip_over", __FUNC_D2C_)
	end

	local function __FUNC_115B_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == "show_gametype_objective_hint" then
			local registerVal2 = {}
			registerVal2.controller = arg1
			registerVal2.name = registerVal1
			local registerVal3 = CoD.GetScriptNotifyData(arg2)
			registerVal2.data = registerVal3
			arg0:setAlpha(1.000000)
			arg0.GameTypeHintText.MatchText:setText(Engine.Localize(Engine.GetIString(registerVal2.data[1.000000], "CS_LOCALIZED_STRINGS")))
			arg0.GameTypeIcon:setImage(RegisterImage(CoD.GetLoadingScreenGameTypeIconName()))
			registerVal3 = CoDShared.IsGametypeTeamBased()
			if arg0.playFactionInfoAnimation and registerVal3 then
				arg0:playClip("ShowOnlyFactionInfo")
				arg0.Glitch:playClip("GlitchSmall3")
				arg0:registerEventHandler("clip_over", __FUNC_C44_)
			else
				__FUNC_C44_(arg0, registerVal2)
			else
				if registerVal1 == "prematch_timer_ended" then
					registerVal2 = CoD.IsShoutcaster(arg1)
					if not registerVal2 then
						arg0:playClip("Stop")
					end
					arg0.Glitch:playClip("GlitchSmall2")
					arg0.PrematchCountdownNumbers:playClip("Stop")
					local function __FUNC_173C_(arg0, arg1)
						arg0:setAlpha(0.000000)
						local registerVal2 = IsDemoPlaying()
						if registerVal2 then
							arg0:close()
						end
					end

					arg0:registerEventHandler("clip_over", __FUNC_173C_)
					local registerVal4 = Engine.GetModelForController(arg1)
					registerVal3 = Engine.CreateModel(registerVal4, "isInPrematchPeriod")
					Engine.SetModelValue(registerVal3, 0.000000)
				end
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_115B_)
	local function __FUNC_17C9_(arg0)
		local registerVal1 = IsInPrematchPeriod()
		if not registerVal1 then
			arg0.playFactionInfoAnimation = true
		end
	end

	arg0.onPlayerSpawned = __FUNC_17C9_
	arg0.setupCountdown = __FUNC_487_
	arg0:setState("DefaultState")
	arg0.Glitch:playClip("DefaultClip")
	local registerVal3 = Engine.GetGametypeSetting("prematchperiod")
	local registerVal4 = Engine.CurrentGameTime()
	if registerVal4 < (registerVal3 * 1000.000000) then
	end
	local function __FUNC_1848_(arg0)
		local registerVal1 = arg0:getParent()
		registerVal1.PrematchCountdown = nil
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_1848_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown = registerVal3
local function __FUNC_18AF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown)
	registerVal2.id = "PrematchCountdown"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 495.500000, 788.000000)
	registerVal3:setTopBottom(true, false, -24.500000, 268.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GlowPanel = registerVal3
	local registerVal4 = CoD.PrematchCountdown_Numbers.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -30.000000, 20.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.MatchText.MatchText:setText(Engine.Localize("MP_MATCH_STARTING_IN"))
	local function __FUNC_3103_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "PrematchCountdownNumbers"
		registerVal5.clipName = "Start"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_opened", __FUNC_3103_)
	registerVal2:addElement(registerVal4)
	registerVal2.PrematchCountdownNumbers = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 577.000000, 705.000000)
	registerVal5:setTopBottom(true, false, 36.000000, 164.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_31FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_31FC_)
	registerVal2:addElement(registerVal5)
	registerVal2.FactionIcon0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 577.000000, 705.000000)
	registerVal6:setTopBottom(true, false, 36.000000, 164.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_32B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_32B0_)
	registerVal2:addElement(registerVal6)
	registerVal2.FactionIcon = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 541.760000, 745.240000)
	registerVal7:setTopBottom(true, false, 36.000000, 164.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_3364_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_3364_)
	registerVal2:addElement(registerVal7)
	registerVal2.CodcasterFactionIcon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 541.760000, 745.240000)
	registerVal8:setTopBottom(true, false, 36.000000, 164.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_3418_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Factions", "playerFactionIcon", __FUNC_3418_)
	registerVal2:addElement(registerVal8)
	registerVal2.CodcasterFactionIconAdd = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 576.000000, 704.000000)
	registerVal9:setTopBottom(true, false, 48.500000, 176.500000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.GameTypeIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -727.670000, -692.330000)
	registerVal10:setTopBottom(true, true, 106.750000, -601.750000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_tick"))
	registerVal2:addElement(registerVal10)
	registerVal2.DoubleXPTickLeft = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -578.670000, -543.330000)
	registerVal11:setTopBottom(true, true, 106.750000, -601.750000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_tick"))
	registerVal2:addElement(registerVal11)
	registerVal2.DoubleXPTickRight = registerVal11
	local registerVal12 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -207.000000, 207.000000)
	registerVal12:setTopBottom(true, false, 186.000000, 218.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12.MatchText:setText(Engine.Localize("OBJECTIVES_TDM_HINT"))
	registerVal12.MatchText:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal12.MatchText:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.GameTypeHintText = registerVal12
	local registerVal13 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -138.500000, 145.500000)
	registerVal13:setTopBottom(true, false, 186.290000, 218.500000)
	registerVal13:setAlpha(0.000000)
	registerVal13.MatchText:setText(Engine.Localize("MENU_DOUBLE_XP"))
	registerVal13.MatchText:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal13.MatchText:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.DoubleXPText = registerVal13
	local registerVal14 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal14:setTopBottom(true, false, 186.290000, 218.500000)
	registerVal14:setAlpha(0.000000)
	registerVal14.MatchText:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal14.MatchText:setLetterSpacing(1.000000)
	local function __FUNC_34CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.MatchText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "Factions", "playerFactionDisplayName", __FUNC_34CC_)
	registerVal2:addElement(registerVal14)
	registerVal2.FactionName = registerVal14
	local registerVal15 = CoD.fxGlitch1_Main.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 405.750000, 889.750000)
	registerVal15:setTopBottom(true, false, 36.000000, 318.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Glitch = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -58.000000, -10.000000)
	registerVal16:setTopBottom(true, false, 48.500000, 94.500000)
	registerVal2:addElement(registerVal16)
	registerVal2.Sound = registerVal16
	local registerVal17 = CoD.PrematchCountdown_2xpBadge.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -214.000000, -86.000000)
	registerVal17:setTopBottom(true, false, 48.500000, 176.500000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.PrematchCountdown2xpBadge = registerVal17
	local registerVal18 = CoD.PrematchCountdown_2xpWeaponBadge.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, 86.000000, 214.000000)
	registerVal18:setTopBottom(true, false, 48.500000, 176.500000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.PrematchCountdown2xpWeaponBadge = registerVal18
	local registerVal19 = CoD.DoubleLoot.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 604.670000, 684.670000)
	registerVal19:setTopBottom(true, false, 72.500000, 152.500000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setScale(1.500000)
	registerVal2:addElement(registerVal19)
	registerVal2.DoubleLoot = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -433.330000, -398.000000)
	registerVal20:setTopBottom(true, true, 106.750000, -601.750000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_tick"))
	registerVal2:addElement(registerVal20)
	registerVal2.DoubleWeaponXPTickRight = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, true, -582.330000, -547.000000)
	registerVal21:setTopBottom(true, true, 106.750000, -601.750000)
	registerVal21:setRGB(0.000000, 0.000000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setZRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_tick"))
	registerVal2:addElement(registerVal21)
	registerVal2.DoubleWeaponXPTickLeft = registerVal21
	local registerVal22 = CoD.PrematchCountdown_2xpWeaponLabel.new(arg0, arg1)
	registerVal22:setLeftRight(false, false, 34.000000, 266.000000)
	registerVal22:setTopBottom(true, false, 186.290000, 218.500000)
	registerVal22:setAlpha(0.000000)
	registerVal22.MatchText:setText(Engine.Localize("MENU_DOUBLE_WEAPON_XP"))
	registerVal22.MatchText:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal22.MatchText:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.DoubleWeaponXPLabel = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_35A5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.PrematchCountdownNumbers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 408.000000, 880.000000)
		registerVal2.Glitch:setTopBottom(true, false, 218.000000, 474.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.DefaultClip = __FUNC_35A5_
	local function __FUNC_37E8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3C35_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.PrematchCountdownNumbers:setAlpha(1.000000)
		__FUNC_3C35_(registerVal4, {})
		local function __FUNC_3DE9_(arg0, arg1)
			local function __FUNC_3F40_(arg0, arg1)
				local function __FUNC_40BB_(arg0, arg1)
					local function __FUNC_4233_(arg0, arg1)
						local function __FUNC_4388_(arg0, arg1)
							local function __FUNC_4503_(arg0, arg1)
								local function __FUNC_467B_(arg0, arg1)
									local function __FUNC_47F3_(arg0, arg1)
										local function __FUNC_4948_(arg0, arg1)
											local function __FUNC_4AC3_(arg0, arg1)
												local function __FUNC_4C18_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_4C18_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C18_)
											end

											if arg1.interrupted then
												__FUNC_4AC3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.410000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AC3_)
										end

										if arg1.interrupted then
											__FUNC_4948_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4948_)
									end

									if arg1.interrupted then
										__FUNC_47F3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47F3_)
								end

								if arg1.interrupted then
									__FUNC_467B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.480000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_467B_)
							end

							if arg1.interrupted then
								__FUNC_4503_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.420000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4503_)
						end

						if arg1.interrupted then
							__FUNC_4388_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4388_)
					end

					if arg1.interrupted then
						__FUNC_4233_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4233_)
				end

				if arg1.interrupted then
					__FUNC_40BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40BB_)
			end

			if arg1.interrupted then
				__FUNC_3F40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F40_)
		end

		registerVal5:completeAnimation()
		registerVal2.FactionIcon0:setAlpha(0.000000)
		__FUNC_3DE9_(registerVal5, {})
		local function __FUNC_4DCD_(arg0, arg1)
			local function __FUNC_4F24_(arg0, arg1)
				local function __FUNC_509F_(arg0, arg1)
					local function __FUNC_5217_(arg0, arg1)
						local function __FUNC_536C_(arg0, arg1)
							local function __FUNC_54E7_(arg0, arg1)
								local function __FUNC_563C_(arg0, arg1)
									local function __FUNC_57B7_(arg0, arg1)
										local function __FUNC_590C_(arg0, arg1)
											local function __FUNC_5A87_(arg0, arg1)
												local function __FUNC_5BDC_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_5BDC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BDC_)
											end

											if arg1.interrupted then
												__FUNC_5A87_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.720000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A87_)
										end

										if arg1.interrupted then
											__FUNC_590C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_590C_)
									end

									if arg1.interrupted then
										__FUNC_57B7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57B7_)
								end

								if arg1.interrupted then
									__FUNC_563C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_563C_)
							end

							if arg1.interrupted then
								__FUNC_54E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.460000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54E7_)
						end

						if arg1.interrupted then
							__FUNC_536C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_536C_)
					end

					if arg1.interrupted then
						__FUNC_5217_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5217_)
				end

				if arg1.interrupted then
					__FUNC_509F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.520000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_509F_)
			end

			if arg1.interrupted then
				__FUNC_4F24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F24_)
		end

		registerVal6:completeAnimation()
		registerVal2.FactionIcon:setAlpha(0.000000)
		__FUNC_4DCD_(registerVal6, {})
		local function __FUNC_5D91_(arg0, arg1)
			local function __FUNC_5EE8_(arg0, arg1)
				local function __FUNC_6063_(arg0, arg1)
					local function __FUNC_61DB_(arg0, arg1)
						local function __FUNC_6330_(arg0, arg1)
							local function __FUNC_64AB_(arg0, arg1)
								local function __FUNC_6600_(arg0, arg1)
									local function __FUNC_677B_(arg0, arg1)
										local function __FUNC_68D0_(arg0, arg1)
											local function __FUNC_6A4B_(arg0, arg1)
												local function __FUNC_6BA0_(arg0, arg1)
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
													__FUNC_6BA0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BA0_)
											end

											if arg1.interrupted then
												__FUNC_6A4B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.730000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A4B_)
										end

										if arg1.interrupted then
											__FUNC_68D0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68D0_)
									end

									if arg1.interrupted then
										__FUNC_677B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_677B_)
								end

								if arg1.interrupted then
									__FUNC_6600_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6600_)
							end

							if arg1.interrupted then
								__FUNC_64AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.430000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64AB_)
						end

						if arg1.interrupted then
							__FUNC_6330_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6330_)
					end

					if arg1.interrupted then
						__FUNC_61DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61DB_)
				end

				if arg1.interrupted then
					__FUNC_6063_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6063_)
			end

			if arg1.interrupted then
				__FUNC_5EE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EE8_)
		end

		registerVal14:completeAnimation()
		registerVal2.FactionName:setAlpha(0.000000)
		__FUNC_5D91_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 408.000000, 880.000000)
		registerVal2.Glitch:setTopBottom(true, false, 218.000000, 474.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(false)
		registerVal2.Sound:playSound("faction_in", arg1)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.Start = __FUNC_37E8_
	local function __FUNC_6D55_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_71A2_(arg0, arg1)
			local function __FUNC_72F8_(arg0, arg1)
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
				__FUNC_72F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72F8_)
		end

		registerVal4:completeAnimation()
		registerVal2.PrematchCountdownNumbers:setAlpha(1.000000)
		__FUNC_71A2_(registerVal4, {})
		local function __FUNC_74AD_(arg0, arg1)
			local function __FUNC_7627_(arg0, arg1)
				local function __FUNC_779F_(arg0, arg1)
					local function __FUNC_7917_(arg0, arg1)
						local function __FUNC_7A8F_(arg0, arg1)
							local function __FUNC_7C07_(arg0, arg1)
								local function __FUNC_7D7F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7D7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D7F_)
							end

							if arg1.interrupted then
								__FUNC_7C07_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.150000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C07_)
						end

						if arg1.interrupted then
							__FUNC_7A8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A8F_)
					end

					if arg1.interrupted then
						__FUNC_7917_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7917_)
				end

				if arg1.interrupted then
					__FUNC_779F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_779F_)
			end

			if arg1.interrupted then
				__FUNC_7627_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7627_)
		end

		registerVal5:completeAnimation()
		registerVal2.FactionIcon0:setAlpha(1.000000)
		__FUNC_74AD_(registerVal5, {})
		local function __FUNC_7F31_(arg0, arg1)
			local function __FUNC_80AB_(arg0, arg1)
				local function __FUNC_8223_(arg0, arg1)
					local function __FUNC_839B_(arg0, arg1)
						local function __FUNC_8513_(arg0, arg1)
							local function __FUNC_868B_(arg0, arg1)
								local function __FUNC_8803_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8803_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8803_)
							end

							if arg1.interrupted then
								__FUNC_868B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.250000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868B_)
						end

						if arg1.interrupted then
							__FUNC_8513_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8513_)
					end

					if arg1.interrupted then
						__FUNC_839B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_839B_)
				end

				if arg1.interrupted then
					__FUNC_8223_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8223_)
			end

			if arg1.interrupted then
				__FUNC_80AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.770000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80AB_)
		end

		registerVal6:completeAnimation()
		registerVal2.FactionIcon:setAlpha(1.000000)
		__FUNC_7F31_(registerVal6, {})
		local function __FUNC_89B5_(arg0, arg1)
			local function __FUNC_8B0C_(arg0, arg1)
				local function __FUNC_8C87_(arg0, arg1)
					local function __FUNC_8DFF_(arg0, arg1)
						local function __FUNC_8F77_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_8F77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.420000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F77_)
					end

					if arg1.interrupted then
						__FUNC_8DFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DFF_)
				end

				if arg1.interrupted then
					__FUNC_8C87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.630000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C87_)
			end

			if arg1.interrupted then
				__FUNC_8B0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B0C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FactionName:setAlpha(1.000000)
		__FUNC_89B5_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 408.000000, 880.000000)
		registerVal2.Glitch:setTopBottom(true, false, 218.000000, 474.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(false)
		registerVal2.Sound:playSound("faction_out", arg1)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.Stop = __FUNC_6D55_
	local function __FUNC_9129_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrematchCountdownNumbers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FactionIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FactionIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_959B_(arg0, arg1)
			local function __FUNC_9713_(arg0, arg1)
				local function __FUNC_988B_(arg0, arg1)
					local function __FUNC_99E0_(arg0, arg1)
						local function __FUNC_9B5B_(arg0, arg1)
							local function __FUNC_9CB0_(arg0, arg1)
								local function __FUNC_9E2B_(arg0, arg1)
									local function __FUNC_9F80_(arg0, arg1)
										local function __FUNC_A0FB_(arg0, arg1)
											local function __FUNC_A250_(arg0, arg1)
												local function __FUNC_A3CB_(arg0, arg1)
													local function __FUNC_A543_(arg0, arg1)
														local function __FUNC_A6BB_(arg0, arg1)
															local function __FUNC_A833_(arg0, arg1)
																local function __FUNC_A9AB_(arg0, arg1)
																	local function __FUNC_AB23_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(0.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_AB23_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.390000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB23_)
																end

																if arg1.interrupted then
																	__FUNC_A9AB_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.180000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9AB_)
															end

															if arg1.interrupted then
																__FUNC_A833_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.450000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A833_)
														end

														if arg1.interrupted then
															__FUNC_A6BB_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.520000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6BB_)
													end

													if arg1.interrupted then
														__FUNC_A543_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.280000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A543_)
												end

												if arg1.interrupted then
													__FUNC_A3CB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.590000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3CB_)
											end

											if arg1.interrupted then
												__FUNC_A250_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 3009.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A250_)
										end

										if arg1.interrupted then
											__FUNC_A0FB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0FB_)
									end

									if arg1.interrupted then
										__FUNC_9F80_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F80_)
								end

								if arg1.interrupted then
									__FUNC_9E2B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.680000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E2B_)
							end

							if arg1.interrupted then
								__FUNC_9CB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CB0_)
						end

						if arg1.interrupted then
							__FUNC_9B5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B5B_)
					end

					if arg1.interrupted then
						__FUNC_99E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99E0_)
				end

				if arg1.interrupted then
					__FUNC_988B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_988B_)
			end

			if arg1.interrupted then
				__FUNC_9713_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.490000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9713_)
		end

		registerVal9:completeAnimation()
		registerVal2.GameTypeIcon:setAlpha(0.000000)
		__FUNC_959B_(registerVal9, {})
		local function __FUNC_ACD5_(arg0, arg1)
			local function __FUNC_AE2C_(arg0, arg1)
				local function __FUNC_AFA7_(arg0, arg1)
					local function __FUNC_B11F_(arg0, arg1)
						local function __FUNC_B274_(arg0, arg1)
							local function __FUNC_B3EF_(arg0, arg1)
								local function __FUNC_B544_(arg0, arg1)
									local function __FUNC_B6BF_(arg0, arg1)
										local function __FUNC_B814_(arg0, arg1)
											local function __FUNC_B98F_(arg0, arg1)
												local function __FUNC_BAE4_(arg0, arg1)
													local function __FUNC_BC5F_(arg0, arg1)
														local function __FUNC_BDB4_(arg0, arg1)
															local function __FUNC_BF2F_(arg0, arg1)
																local function __FUNC_C0A7_(arg0, arg1)
																	local function __FUNC_C21F_(arg0, arg1)
																		local function __FUNC_C397_(arg0, arg1)
																			local function __FUNC_C50F_(arg0, arg1)
																				local function __FUNC_C687_(arg0, arg1)
																					local function __FUNC_C7FF_(arg0, arg1)
																						local function __FUNC_C977_(arg0, arg1)
																							local function __FUNC_CAEF_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0:setAlpha(0.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_CAEF_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																							arg0:setAlpha(0.320000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAEF_)
																						end

																						if arg1.interrupted then
																							__FUNC_C977_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.130000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C977_)
																					end

																					if arg1.interrupted then
																						__FUNC_C7FF_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.390000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7FF_)
																				end

																				if arg1.interrupted then
																					__FUNC_C687_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.640000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C687_)
																			end

																			if arg1.interrupted then
																				__FUNC_C50F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.350000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C50F_)
																		end

																		if arg1.interrupted then
																			__FUNC_C397_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.700000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C397_)
																	end

																	if arg1.interrupted then
																		__FUNC_C21F_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.830000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C21F_)
																end

																if arg1.interrupted then
																	__FUNC_C0A7_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.450000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0A7_)
															end

															if arg1.interrupted then
																__FUNC_BF2F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.880000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF2F_)
														end

														if arg1.interrupted then
															__FUNC_BDB4_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 3269.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDB4_)
													end

													if arg1.interrupted then
														__FUNC_BC5F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(1.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC5F_)
												end

												if arg1.interrupted then
													__FUNC_BAE4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAE4_)
											end

											if arg1.interrupted then
												__FUNC_B98F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.700000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B98F_)
										end

										if arg1.interrupted then
											__FUNC_B814_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B814_)
									end

									if arg1.interrupted then
										__FUNC_B6BF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6BF_)
								end

								if arg1.interrupted then
									__FUNC_B544_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B544_)
							end

							if arg1.interrupted then
								__FUNC_B3EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3EF_)
						end

						if arg1.interrupted then
							__FUNC_B274_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B274_)
					end

					if arg1.interrupted then
						__FUNC_B11F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B11F_)
				end

				if arg1.interrupted then
					__FUNC_AFA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFA7_)
			end

			if arg1.interrupted then
				__FUNC_AE2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE2C_)
		end

		registerVal12:completeAnimation()
		registerVal2.GameTypeHintText:setAlpha(0.000000)
		__FUNC_ACD5_(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_CCA1_(arg0, arg2)
			local function __FUNC_CE2A_(arg0, arg2)
				local function __FUNC_CFB8_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("0", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_CFB8_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("obj_out", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFB8_)
			end

			if arg2.interrupted then
				__FUNC_CE2A_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 3950.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE2A_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("obj_in", arg1)
		__FUNC_CCA1_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.ShowObjectiveHint = __FUNC_9129_
	local function __FUNC_D178_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_D72F_(arg0, arg1)
			local function __FUNC_D884_(arg0, arg1)
				local function __FUNC_DA37_(arg0, arg1)
					local function __FUNC_DBC4_(arg0, arg1)
						local function __FUNC_DD54_(arg0, arg1)
							local function __FUNC_DEAC_(arg0, arg1)
								local function __FUNC_E027_(arg0, arg1)
									local function __FUNC_E19F_(arg0, arg1)
										local function __FUNC_E317_(arg0, arg1)
											local function __FUNC_E48F_(arg0, arg1)
												local function __FUNC_E607_(arg0, arg1)
													local function __FUNC_E77F_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -731.000000, -695.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														arg0:setScale(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_E77F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E77F_)
												end

												if arg1.interrupted then
													__FUNC_E607_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E607_)
											end

											if arg1.interrupted then
												__FUNC_E48F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E48F_)
										end

										if arg1.interrupted then
											__FUNC_E317_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E317_)
									end

									if arg1.interrupted then
										__FUNC_E19F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E19F_)
								end

								if arg1.interrupted then
									__FUNC_E027_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E027_)
							end

							if arg1.interrupted then
								__FUNC_DEAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEAC_)
						end

						if arg1.interrupted then
							__FUNC_DD54_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -731.000000, -695.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD54_)
					end

					if arg1.interrupted then
						__FUNC_DBC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -753.000000, -717.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC4_)
				end

				if arg1.interrupted then
					__FUNC_DA37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -728.000000, -692.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA37_)
			end

			if arg1.interrupted then
				__FUNC_D884_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D884_)
		end

		registerVal10:completeAnimation()
		registerVal2.DoubleXPTickLeft:setLeftRight(false, true, -992.000000, -956.670000)
		registerVal2.DoubleXPTickLeft:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickLeft:setAlpha(0.000000)
		registerVal2.DoubleXPTickLeft:setScale(1.000000)
		__FUNC_D72F_(registerVal10, {})
		local function __FUNC_E9C4_(arg0, arg1)
			local function __FUNC_EB1C_(arg0, arg1)
				local function __FUNC_ECCF_(arg0, arg1)
					local function __FUNC_EE5C_(arg0, arg1)
						local function __FUNC_EFEC_(arg0, arg1)
							local function __FUNC_F144_(arg0, arg1)
								local function __FUNC_F2BF_(arg0, arg1)
									local function __FUNC_F437_(arg0, arg1)
										local function __FUNC_F5AF_(arg0, arg1)
											local function __FUNC_F727_(arg0, arg1)
												local function __FUNC_F89F_(arg0, arg1)
													local function __FUNC_FA17_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -582.000000, -546.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_FA17_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA17_)
												end

												if arg1.interrupted then
													__FUNC_F89F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F89F_)
											end

											if arg1.interrupted then
												__FUNC_F727_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F727_)
										end

										if arg1.interrupted then
											__FUNC_F5AF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5AF_)
									end

									if arg1.interrupted then
										__FUNC_F437_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F437_)
								end

								if arg1.interrupted then
									__FUNC_F2BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2BF_)
							end

							if arg1.interrupted then
								__FUNC_F144_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F144_)
						end

						if arg1.interrupted then
							__FUNC_EFEC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -582.000000, -546.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFEC_)
					end

					if arg1.interrupted then
						__FUNC_EE5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -564.000000, -528.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE5C_)
				end

				if arg1.interrupted then
					__FUNC_ECCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -579.000000, -543.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECCF_)
			end

			if arg1.interrupted then
				__FUNC_EB1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB1C_)
		end

		registerVal11:completeAnimation()
		registerVal2.DoubleXPTickRight:setLeftRight(false, true, -323.330000, -288.000000)
		registerVal2.DoubleXPTickRight:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickRight:setAlpha(0.000000)
		__FUNC_E9C4_(registerVal11, {})
		local function __FUNC_FC39_(arg0, arg1)
			local function __FUNC_FD90_(arg0, arg1)
				local function __FUNC_FF0B_(arg0, arg1)
					local function __FUNC_10083_(arg0, arg1)
						local function __FUNC_101D8_(arg0, arg1)
							local function __FUNC_10353_(arg0, arg1)
								local function __FUNC_104A8_(arg0, arg1)
									local function __FUNC_10623_(arg0, arg1)
										local function __FUNC_10778_(arg0, arg1)
											local function __FUNC_108F3_(arg0, arg1)
												local function __FUNC_10A48_(arg0, arg1)
													local function __FUNC_10BC3_(arg0, arg1)
														local function __FUNC_10D3B_(arg0, arg1)
															local function __FUNC_10EB3_(arg0, arg1)
																local function __FUNC_1102B_(arg0, arg1)
																	local function __FUNC_111A3_(arg0, arg1)
																		local function __FUNC_1131B_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																				arg0.MatchText:beginAnimation("subkeyframe", 189.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setAlpha(0.000000)
																			arg0.MatchText:setText(Engine.Localize("MENU_DOUBLE_XP"))
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_1131B_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.450000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1131B_)
																	end

																	if arg1.interrupted then
																		__FUNC_111A3_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.340000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111A3_)
																end

																if arg1.interrupted then
																	__FUNC_1102B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.550000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1102B_)
															end

															if arg1.interrupted then
																__FUNC_10EB3_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.710000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EB3_)
														end

														if arg1.interrupted then
															__FUNC_10D3B_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.440000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D3B_)
													end

													if arg1.interrupted then
														__FUNC_10BC3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.830000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BC3_)
												end

												if arg1.interrupted then
													__FUNC_10A48_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1149.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A48_)
											end

											if arg1.interrupted then
												__FUNC_108F3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108F3_)
										end

										if arg1.interrupted then
											__FUNC_10778_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10778_)
									end

									if arg1.interrupted then
										__FUNC_10623_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.760000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10623_)
								end

								if arg1.interrupted then
									__FUNC_104A8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104A8_)
							end

							if arg1.interrupted then
								__FUNC_10353_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10353_)
						end

						if arg1.interrupted then
							__FUNC_101D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101D8_)
					end

					if arg1.interrupted then
						__FUNC_10083_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10083_)
				end

				if arg1.interrupted then
					__FUNC_FF0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF0B_)
			end

			if arg1.interrupted then
				__FUNC_FD90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD90_)
		end

		registerVal13:completeAnimation()
		registerVal13.MatchText:completeAnimation()
		registerVal2.DoubleXPText:setAlpha(0.000000)
		registerVal2.DoubleXPText.MatchText:setText(Engine.Localize("MENU_DOUBLE_XP"))
		__FUNC_FC39_(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_115AC_(arg0, arg2)
			local function __FUNC_11736_(arg0, arg2)
				local function __FUNC_118C3_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("0", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_118C3_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("xp_out", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118C3_)
			end

			if arg2.interrupted then
				__FUNC_11736_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11736_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("xp_in", arg1)
		__FUNC_115AC_(registerVal16, {})
		local function __FUNC_11A80_(arg0, arg1)
			local function __FUNC_11BFB_(arg0, arg1)
				local function __FUNC_11D73_(arg0, arg1)
					local function __FUNC_11EEB_(arg0, arg1)
						local function __FUNC_12063_(arg0, arg1)
							local function __FUNC_121DB_(arg0, arg1)
								local function __FUNC_12330_(arg0, arg1)
									local function __FUNC_124AB_(arg0, arg1)
										local function __FUNC_12623_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
											end
											arg0:setLeftRight(false, false, -64.000000, 64.000000)
											arg0:setTopBottom(true, false, 48.500000, 176.500000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_12623_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12623_)
									end

									if arg1.interrupted then
										__FUNC_124AB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_124AB_)
								end

								if arg1.interrupted then
									__FUNC_12330_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12330_)
							end

							if arg1.interrupted then
								__FUNC_121DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, true, CoD.TweenType.Bounce)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121DB_)
						end

						if arg1.interrupted then
							__FUNC_12063_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12063_)
					end

					if arg1.interrupted then
						__FUNC_11EEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EEB_)
				end

				if arg1.interrupted then
					__FUNC_11D73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D73_)
			end

			if arg1.interrupted then
				__FUNC_11BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BFB_)
		end

		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.PrematchCountdown2xpBadge:setTopBottom(true, false, 48.500000, 176.500000)
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		__FUNC_11A80_(registerVal17, {})
	end

	registerVal24.ShowDoubleXPIcon = __FUNC_D178_
	local function __FUNC_12845_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_12DF0_(arg0, arg1)
			local function __FUNC_12F48_(arg0, arg1)
				local function __FUNC_130FB_(arg0, arg1)
					local function __FUNC_13288_(arg0, arg1)
						local function __FUNC_133E0_(arg0, arg1)
							local function __FUNC_13538_(arg0, arg1)
								local function __FUNC_13690_(arg0, arg1)
									local function __FUNC_1380B_(arg0, arg1)
										local function __FUNC_13983_(arg0, arg1)
											local function __FUNC_13AFB_(arg0, arg1)
												local function __FUNC_13C73_(arg0, arg1)
													local function __FUNC_13DEB_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -727.000000, -691.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														arg0:setScale(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_13DEB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13DEB_)
												end

												if arg1.interrupted then
													__FUNC_13C73_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C73_)
											end

											if arg1.interrupted then
												__FUNC_13AFB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AFB_)
										end

										if arg1.interrupted then
											__FUNC_13983_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13983_)
									end

									if arg1.interrupted then
										__FUNC_1380B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1380B_)
								end

								if arg1.interrupted then
									__FUNC_13690_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13690_)
							end

							if arg1.interrupted then
								__FUNC_13538_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13538_)
						end

						if arg1.interrupted then
							__FUNC_133E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133E0_)
					end

					if arg1.interrupted then
						__FUNC_13288_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -727.000000, -691.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13288_)
				end

				if arg1.interrupted then
					__FUNC_130FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -728.000000, -692.670000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130FB_)
			end

			if arg1.interrupted then
				__FUNC_12F48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F48_)
		end

		registerVal10:completeAnimation()
		registerVal2.DoubleXPTickLeft:setLeftRight(false, true, -992.000000, -956.670000)
		registerVal2.DoubleXPTickLeft:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickLeft:setAlpha(0.000000)
		registerVal2.DoubleXPTickLeft:setScale(1.000000)
		__FUNC_12DF0_(registerVal10, {})
		local function __FUNC_14030_(arg0, arg1)
			local function __FUNC_14188_(arg0, arg1)
				local function __FUNC_1433B_(arg0, arg1)
					local function __FUNC_14490_(arg0, arg1)
						local function __FUNC_145E8_(arg0, arg1)
							local function __FUNC_14740_(arg0, arg1)
								local function __FUNC_14898_(arg0, arg1)
									local function __FUNC_14A13_(arg0, arg1)
										local function __FUNC_14B8B_(arg0, arg1)
											local function __FUNC_14D03_(arg0, arg1)
												local function __FUNC_14E7B_(arg0, arg1)
													local function __FUNC_14FF3_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -579.000000, -543.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_14FF3_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FF3_)
												end

												if arg1.interrupted then
													__FUNC_14E7B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E7B_)
											end

											if arg1.interrupted then
												__FUNC_14D03_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D03_)
										end

										if arg1.interrupted then
											__FUNC_14B8B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B8B_)
									end

									if arg1.interrupted then
										__FUNC_14A13_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A13_)
								end

								if arg1.interrupted then
									__FUNC_14898_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14898_)
							end

							if arg1.interrupted then
								__FUNC_14740_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14740_)
						end

						if arg1.interrupted then
							__FUNC_145E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145E8_)
					end

					if arg1.interrupted then
						__FUNC_14490_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14490_)
				end

				if arg1.interrupted then
					__FUNC_1433B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -579.000000, -543.670000)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1433B_)
			end

			if arg1.interrupted then
				__FUNC_14188_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14188_)
		end

		registerVal11:completeAnimation()
		registerVal2.DoubleXPTickRight:setLeftRight(false, true, -323.330000, -288.000000)
		registerVal2.DoubleXPTickRight:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickRight:setAlpha(0.000000)
		__FUNC_14030_(registerVal11, {})
		local function __FUNC_15215_(arg0, arg1)
			local function __FUNC_1536C_(arg0, arg1)
				local function __FUNC_154E7_(arg0, arg1)
					local function __FUNC_1565F_(arg0, arg1)
						local function __FUNC_157B4_(arg0, arg1)
							local function __FUNC_1592F_(arg0, arg1)
								local function __FUNC_15A84_(arg0, arg1)
									local function __FUNC_15BFF_(arg0, arg1)
										local function __FUNC_15D54_(arg0, arg1)
											local function __FUNC_15ECF_(arg0, arg1)
												local function __FUNC_16024_(arg0, arg1)
													local function __FUNC_1619F_(arg0, arg1)
														local function __FUNC_16317_(arg0, arg1)
															local function __FUNC_1648F_(arg0, arg1)
																local function __FUNC_16607_(arg0, arg1)
																	local function __FUNC_1677F_(arg0, arg1)
																		local function __FUNC_168F7_(arg0, arg1)
																			local function __FUNC_16A6F_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																					arg0.MatchText:beginAnimation("subkeyframe", 189.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setAlpha(0.000000)
																				arg0.MatchText:setText(Engine.Localize("MENU_DOUBLELOOT"))
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_16A6F_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.450000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A6F_)
																		end

																		if arg1.interrupted then
																			__FUNC_168F7_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.340000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168F7_)
																	end

																	if arg1.interrupted then
																		__FUNC_1677F_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.550000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1677F_)
																end

																if arg1.interrupted then
																	__FUNC_16607_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.710000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16607_)
															end

															if arg1.interrupted then
																__FUNC_1648F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.440000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1648F_)
														end

														if arg1.interrupted then
															__FUNC_16317_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.830000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16317_)
													end

													if arg1.interrupted then
														__FUNC_1619F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.980000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1619F_)
												end

												if arg1.interrupted then
													__FUNC_16024_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1149.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16024_)
											end

											if arg1.interrupted then
												__FUNC_15ECF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15ECF_)
										end

										if arg1.interrupted then
											__FUNC_15D54_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D54_)
									end

									if arg1.interrupted then
										__FUNC_15BFF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.760000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BFF_)
								end

								if arg1.interrupted then
									__FUNC_15A84_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A84_)
							end

							if arg1.interrupted then
								__FUNC_1592F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1592F_)
						end

						if arg1.interrupted then
							__FUNC_157B4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157B4_)
					end

					if arg1.interrupted then
						__FUNC_1565F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1565F_)
				end

				if arg1.interrupted then
					__FUNC_154E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154E7_)
			end

			if arg1.interrupted then
				__FUNC_1536C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1536C_)
		end

		registerVal13:completeAnimation()
		registerVal13.MatchText:completeAnimation()
		registerVal2.DoubleXPText:setAlpha(0.000000)
		registerVal2.DoubleXPText.MatchText:setText(Engine.Localize("MENU_DOUBLELOOT"))
		__FUNC_15215_(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_16D01_(arg0, arg2)
			local function __FUNC_16E8A_(arg0, arg2)
				local function __FUNC_17017_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("0", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_17017_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("xp_out", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17017_)
			end

			if arg2.interrupted then
				__FUNC_16E8A_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E8A_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("xp_in", arg1)
		__FUNC_16D01_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_171D4_(arg0, arg1)
			local function __FUNC_1734F_(arg0, arg1)
				local function __FUNC_174C7_(arg0, arg1)
					local function __FUNC_1763F_(arg0, arg1)
						local function __FUNC_177B7_(arg0, arg1)
							local function __FUNC_1792F_(arg0, arg1)
								local function __FUNC_17A84_(arg0, arg1)
									local function __FUNC_17BFF_(arg0, arg1)
										local function __FUNC_17D77_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_17D77_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
										arg0:setAlpha(0.920000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D77_)
									end

									if arg1.interrupted then
										__FUNC_17BFF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
									arg0:setAlpha(0.130000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BFF_)
								end

								if arg1.interrupted then
									__FUNC_17A84_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A84_)
							end

							if arg1.interrupted then
								__FUNC_1792F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, true, CoD.TweenType.Bounce)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1792F_)
						end

						if arg1.interrupted then
							__FUNC_177B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.250000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177B7_)
					end

					if arg1.interrupted then
						__FUNC_1763F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1763F_)
				end

				if arg1.interrupted then
					__FUNC_174C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174C7_)
			end

			if arg1.interrupted then
				__FUNC_1734F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1734F_)
		end

		registerVal19:completeAnimation()
		registerVal2.DoubleLoot:setAlpha(0.000000)
		__FUNC_171D4_(registerVal19, {})
	end

	registerVal24.ShowDoubleLootIcon = __FUNC_12845_
	local function __FUNC_17F29_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_182CD_(arg0, arg1)
			local function __FUNC_18447_(arg0, arg1)
				local function __FUNC_1859C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1859C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1859C_)
			end

			if arg1.interrupted then
				__FUNC_18447_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18447_)
		end

		registerVal5:completeAnimation()
		registerVal2.FactionIcon0:setAlpha(0.000000)
		__FUNC_182CD_(registerVal5, {})
		local function __FUNC_18751_(arg0, arg1)
			local function __FUNC_188CB_(arg0, arg1)
				local function __FUNC_18A43_(arg0, arg1)
					local function __FUNC_18BBB_(arg0, arg1)
						local function __FUNC_18D33_(arg0, arg1)
							local function __FUNC_18EAB_(arg0, arg1)
								local function __FUNC_19000_(arg0, arg1)
									local function __FUNC_1917B_(arg0, arg1)
										local function __FUNC_192D0_(arg0, arg1)
											local function __FUNC_1944B_(arg0, arg1)
												local function __FUNC_195A0_(arg0, arg1)
													local function __FUNC_1971B_(arg0, arg1)
														local function __FUNC_19893_(arg0, arg1)
															local function __FUNC_19A0B_(arg0, arg1)
																local function __FUNC_19B83_(arg0, arg1)
																	local function __FUNC_19CFB_(arg0, arg1)
																		local function __FUNC_19E73_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setAlpha(0.000000)
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_19E73_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.340000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E73_)
																	end

																	if arg1.interrupted then
																		__FUNC_19CFB_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.190000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CFB_)
																end

																if arg1.interrupted then
																	__FUNC_19B83_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.440000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B83_)
															end

															if arg1.interrupted then
																__FUNC_19A0B_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.580000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A0B_)
														end

														if arg1.interrupted then
															__FUNC_19893_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.350000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19893_)
													end

													if arg1.interrupted then
														__FUNC_1971B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.680000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1971B_)
												end

												if arg1.interrupted then
													__FUNC_195A0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_195A0_)
											end

											if arg1.interrupted then
												__FUNC_1944B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1944B_)
										end

										if arg1.interrupted then
											__FUNC_192D0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192D0_)
									end

									if arg1.interrupted then
										__FUNC_1917B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.760000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1917B_)
								end

								if arg1.interrupted then
									__FUNC_19000_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19000_)
							end

							if arg1.interrupted then
								__FUNC_18EAB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EAB_)
						end

						if arg1.interrupted then
							__FUNC_18D33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.410000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D33_)
					end

					if arg1.interrupted then
						__FUNC_18BBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18BBB_)
				end

				if arg1.interrupted then
					__FUNC_18A43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.870000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A43_)
			end

			if arg1.interrupted then
				__FUNC_188CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188CB_)
		end

		registerVal6:completeAnimation()
		registerVal2.FactionIcon:setAlpha(0.000000)
		__FUNC_18751_(registerVal6, {})
		local function __FUNC_1A025_(arg0, arg1)
			local function __FUNC_1A19F_(arg0, arg1)
				local function __FUNC_1A317_(arg0, arg1)
					local function __FUNC_1A48F_(arg0, arg1)
						local function __FUNC_1A5E4_(arg0, arg1)
							local function __FUNC_1A75F_(arg0, arg1)
								local function __FUNC_1A8B4_(arg0, arg1)
									local function __FUNC_1AA2F_(arg0, arg1)
										local function __FUNC_1ABA7_(arg0, arg1)
											local function __FUNC_1AD1F_(arg0, arg1)
												local function __FUNC_1AE97_(arg0, arg1)
													local function __FUNC_1B00F_(arg0, arg1)
														local function __FUNC_1B187_(arg0, arg1)
															local function __FUNC_1B2FF_(arg0, arg1)
																local function __FUNC_1B477_(arg0, arg1)
																	local function __FUNC_1B5EF_(arg0, arg1)
																		local function __FUNC_1B767_(arg0, arg1)
																			local function __FUNC_1B8DF_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setAlpha(0.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_1B8DF_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.210000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B8DF_)
																		end

																		if arg1.interrupted then
																			__FUNC_1B767_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.020000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B767_)
																	end

																	if arg1.interrupted then
																		__FUNC_1B5EF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.280000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5EF_)
																end

																if arg1.interrupted then
																	__FUNC_1B477_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.630000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B477_)
															end

															if arg1.interrupted then
																__FUNC_1B2FF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.360000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B2FF_)
														end

														if arg1.interrupted then
															__FUNC_1B187_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.700000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B187_)
													end

													if arg1.interrupted then
														__FUNC_1B00F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.940000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B00F_)
												end

												if arg1.interrupted then
													__FUNC_1AE97_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1769.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AE97_)
											end

											if arg1.interrupted then
												__FUNC_1AD1F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.640000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD1F_)
										end

										if arg1.interrupted then
											__FUNC_1ABA7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABA7_)
									end

									if arg1.interrupted then
										__FUNC_1AA2F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.640000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA2F_)
								end

								if arg1.interrupted then
									__FUNC_1A8B4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8B4_)
							end

							if arg1.interrupted then
								__FUNC_1A75F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.980000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A75F_)
						end

						if arg1.interrupted then
							__FUNC_1A5E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A5E4_)
					end

					if arg1.interrupted then
						__FUNC_1A48F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.410000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A48F_)
				end

				if arg1.interrupted then
					__FUNC_1A317_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.850000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A317_)
			end

			if arg1.interrupted then
				__FUNC_1A19F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A19F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FactionName:setAlpha(0.000000)
		__FUNC_1A025_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_1BA91_(arg0, arg2)
			local function __FUNC_1BC23_(arg0, arg2)
				local function __FUNC_1BDAA_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("faction_out", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_1BDAA_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 2319.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("0", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDAA_)
			end

			if arg2.interrupted then
				__FUNC_1BC23_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("faction_in", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC23_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("0", arg1)
		__FUNC_1BA91_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.ShowOnlyFactionInfo = __FUNC_17F29_
	local function __FUNC_1BF72_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1C598_(arg0, arg1)
			local function __FUNC_1C6F0_(arg0, arg1)
				local function __FUNC_1C8A3_(arg0, arg1)
					local function __FUNC_1CA30_(arg0, arg1)
						local function __FUNC_1CBC0_(arg0, arg1)
							local function __FUNC_1CD18_(arg0, arg1)
								local function __FUNC_1CE93_(arg0, arg1)
									local function __FUNC_1D00B_(arg0, arg1)
										local function __FUNC_1D183_(arg0, arg1)
											local function __FUNC_1D2FB_(arg0, arg1)
												local function __FUNC_1D473_(arg0, arg1)
													local function __FUNC_1D5EB_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -733.000000, -697.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														arg0:setScale(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_1D5EB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D5EB_)
												end

												if arg1.interrupted then
													__FUNC_1D473_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D473_)
											end

											if arg1.interrupted then
												__FUNC_1D2FB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2FB_)
										end

										if arg1.interrupted then
											__FUNC_1D183_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D183_)
									end

									if arg1.interrupted then
										__FUNC_1D00B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D00B_)
								end

								if arg1.interrupted then
									__FUNC_1CE93_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE93_)
							end

							if arg1.interrupted then
								__FUNC_1CD18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD18_)
						end

						if arg1.interrupted then
							__FUNC_1CBC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -733.000000, -697.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CBC0_)
					end

					if arg1.interrupted then
						__FUNC_1CA30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -753.000000, -717.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CA30_)
				end

				if arg1.interrupted then
					__FUNC_1C8A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -733.000000, -697.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C8A3_)
			end

			if arg1.interrupted then
				__FUNC_1C6F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C6F0_)
		end

		registerVal10:completeAnimation()
		registerVal2.DoubleXPTickLeft:setLeftRight(false, true, -992.000000, -956.670000)
		registerVal2.DoubleXPTickLeft:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickLeft:setAlpha(0.000000)
		registerVal2.DoubleXPTickLeft:setScale(1.000000)
		__FUNC_1C598_(registerVal10, {})
		local function __FUNC_1D830_(arg0, arg1)
			local function __FUNC_1D988_(arg0, arg1)
				local function __FUNC_1DB3B_(arg0, arg1)
					local function __FUNC_1DCC8_(arg0, arg1)
						local function __FUNC_1DE58_(arg0, arg1)
							local function __FUNC_1DFB0_(arg0, arg1)
								local function __FUNC_1E12B_(arg0, arg1)
									local function __FUNC_1E2A3_(arg0, arg1)
										local function __FUNC_1E41B_(arg0, arg1)
											local function __FUNC_1E593_(arg0, arg1)
												local function __FUNC_1E70B_(arg0, arg1)
													local function __FUNC_1E883_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -584.000000, -548.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_1E883_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E883_)
												end

												if arg1.interrupted then
													__FUNC_1E70B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E70B_)
											end

											if arg1.interrupted then
												__FUNC_1E593_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E593_)
										end

										if arg1.interrupted then
											__FUNC_1E41B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E41B_)
									end

									if arg1.interrupted then
										__FUNC_1E2A3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E2A3_)
								end

								if arg1.interrupted then
									__FUNC_1E12B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E12B_)
							end

							if arg1.interrupted then
								__FUNC_1DFB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DFB0_)
						end

						if arg1.interrupted then
							__FUNC_1DE58_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -584.000000, -548.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE58_)
					end

					if arg1.interrupted then
						__FUNC_1DCC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -564.000000, -528.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCC8_)
				end

				if arg1.interrupted then
					__FUNC_1DB3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -584.000000, -548.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB3B_)
			end

			if arg1.interrupted then
				__FUNC_1D988_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D988_)
		end

		registerVal11:completeAnimation()
		registerVal2.DoubleXPTickRight:setLeftRight(false, true, -323.330000, -288.000000)
		registerVal2.DoubleXPTickRight:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickRight:setAlpha(0.000000)
		__FUNC_1D830_(registerVal11, {})
		local function __FUNC_1EAA5_(arg0, arg1)
			local function __FUNC_1EBFC_(arg0, arg1)
				local function __FUNC_1ED77_(arg0, arg1)
					local function __FUNC_1EEEF_(arg0, arg1)
						local function __FUNC_1F044_(arg0, arg1)
							local function __FUNC_1F1BF_(arg0, arg1)
								local function __FUNC_1F314_(arg0, arg1)
									local function __FUNC_1F48F_(arg0, arg1)
										local function __FUNC_1F5E4_(arg0, arg1)
											local function __FUNC_1F75F_(arg0, arg1)
												local function __FUNC_1F8B4_(arg0, arg1)
													local function __FUNC_1FA2F_(arg0, arg1)
														local function __FUNC_1FBA7_(arg0, arg1)
															local function __FUNC_1FD1F_(arg0, arg1)
																local function __FUNC_1FE97_(arg0, arg1)
																	local function __FUNC_2000F_(arg0, arg1)
																		local function __FUNC_20187_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																				arg0.MatchText:beginAnimation("subkeyframe", 189.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setLeftRight(false, false, -142.000000, 142.000000)
																			arg0:setTopBottom(true, false, 186.290000, 218.500000)
																			arg0:setAlpha(0.000000)
																			arg0.MatchText:setText(Engine.Localize("MENU_DOUBLE_WEAPON_XP"))
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_20187_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.450000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20187_)
																	end

																	if arg1.interrupted then
																		__FUNC_2000F_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.340000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2000F_)
																end

																if arg1.interrupted then
																	__FUNC_1FE97_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.550000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE97_)
															end

															if arg1.interrupted then
																__FUNC_1FD1F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.710000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD1F_)
														end

														if arg1.interrupted then
															__FUNC_1FBA7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.440000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FBA7_)
													end

													if arg1.interrupted then
														__FUNC_1FA2F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.830000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA2F_)
												end

												if arg1.interrupted then
													__FUNC_1F8B4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1149.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F8B4_)
											end

											if arg1.interrupted then
												__FUNC_1F75F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F75F_)
										end

										if arg1.interrupted then
											__FUNC_1F5E4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F5E4_)
									end

									if arg1.interrupted then
										__FUNC_1F48F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.760000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F48F_)
								end

								if arg1.interrupted then
									__FUNC_1F314_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F314_)
							end

							if arg1.interrupted then
								__FUNC_1F1BF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1BF_)
						end

						if arg1.interrupted then
							__FUNC_1F044_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F044_)
					end

					if arg1.interrupted then
						__FUNC_1EEEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EEEF_)
				end

				if arg1.interrupted then
					__FUNC_1ED77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED77_)
			end

			if arg1.interrupted then
				__FUNC_1EBFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EBFC_)
		end

		registerVal13:completeAnimation()
		registerVal13.MatchText:completeAnimation()
		registerVal2.DoubleXPText:setLeftRight(false, false, -142.000000, 142.000000)
		registerVal2.DoubleXPText:setTopBottom(true, false, 186.290000, 218.500000)
		registerVal2.DoubleXPText:setAlpha(0.000000)
		registerVal2.DoubleXPText.MatchText:setText(Engine.Localize("MENU_DOUBLE_WEAPON_XP"))
		__FUNC_1EAA5_(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_2048F_(arg0, arg2)
			local function __FUNC_20616_(arg0, arg2)
				local function __FUNC_207A3_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("0", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_207A3_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("xp_out", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207A3_)
			end

			if arg2.interrupted then
				__FUNC_20616_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20616_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("xp_in", arg1)
		__FUNC_2048F_(registerVal16, {})
		local function __FUNC_20960_(arg0, arg1)
			local function __FUNC_20ADB_(arg0, arg1)
				local function __FUNC_20C53_(arg0, arg1)
					local function __FUNC_20DCB_(arg0, arg1)
						local function __FUNC_20F43_(arg0, arg1)
							local function __FUNC_210BB_(arg0, arg1)
								local function __FUNC_21210_(arg0, arg1)
									local function __FUNC_2138B_(arg0, arg1)
										local function __FUNC_21503_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Back)
											end
											arg0:setLeftRight(false, false, -64.000000, 64.000000)
											arg0:setTopBottom(true, false, 48.500000, 176.500000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_21503_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21503_)
									end

									if arg1.interrupted then
										__FUNC_2138B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2138B_)
								end

								if arg1.interrupted then
									__FUNC_21210_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21210_)
							end

							if arg1.interrupted then
								__FUNC_210BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, true, CoD.TweenType.Bounce)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_210BB_)
						end

						if arg1.interrupted then
							__FUNC_20F43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F43_)
					end

					if arg1.interrupted then
						__FUNC_20DCB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20DCB_)
				end

				if arg1.interrupted then
					__FUNC_20C53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C53_)
			end

			if arg1.interrupted then
				__FUNC_20ADB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20ADB_)
		end

		registerVal18:completeAnimation()
		registerVal2.PrematchCountdown2xpWeaponBadge:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.PrematchCountdown2xpWeaponBadge:setTopBottom(true, false, 48.500000, 176.500000)
		registerVal2.PrematchCountdown2xpWeaponBadge:setAlpha(0.000000)
		__FUNC_20960_(registerVal18, {})
	end

	registerVal24.ShowDoubleWeaponXPIcon = __FUNC_1BF72_
	local function __FUNC_21723_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_22039_(arg0, arg1)
			local function __FUNC_22190_(arg0, arg1)
				local function __FUNC_22343_(arg0, arg1)
					local function __FUNC_224D0_(arg0, arg1)
						local function __FUNC_22660_(arg0, arg1)
							local function __FUNC_227B8_(arg0, arg1)
								local function __FUNC_22933_(arg0, arg1)
									local function __FUNC_22AAB_(arg0, arg1)
										local function __FUNC_22C23_(arg0, arg1)
											local function __FUNC_22D9B_(arg0, arg1)
												local function __FUNC_22F13_(arg0, arg1)
													local function __FUNC_2308B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -883.000000, -847.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														arg0:setScale(1.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_2308B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2308B_)
												end

												if arg1.interrupted then
													__FUNC_22F13_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22F13_)
											end

											if arg1.interrupted then
												__FUNC_22D9B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D9B_)
										end

										if arg1.interrupted then
											__FUNC_22C23_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C23_)
									end

									if arg1.interrupted then
										__FUNC_22AAB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22AAB_)
								end

								if arg1.interrupted then
									__FUNC_22933_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22933_)
							end

							if arg1.interrupted then
								__FUNC_227B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227B8_)
						end

						if arg1.interrupted then
							__FUNC_22660_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -883.000000, -847.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22660_)
					end

					if arg1.interrupted then
						__FUNC_224D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -903.000000, -867.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_224D0_)
				end

				if arg1.interrupted then
					__FUNC_22343_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -883.000000, -847.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22343_)
			end

			if arg1.interrupted then
				__FUNC_22190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22190_)
		end

		registerVal10:completeAnimation()
		registerVal2.DoubleXPTickLeft:setLeftRight(false, true, -1142.000000, -1106.670000)
		registerVal2.DoubleXPTickLeft:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickLeft:setAlpha(0.000000)
		registerVal2.DoubleXPTickLeft:setScale(1.000000)
		__FUNC_22039_(registerVal10, {})
		local function __FUNC_232D0_(arg0, arg1)
			local function __FUNC_23428_(arg0, arg1)
				local function __FUNC_235DB_(arg0, arg1)
					local function __FUNC_23768_(arg0, arg1)
						local function __FUNC_238F8_(arg0, arg1)
							local function __FUNC_23A50_(arg0, arg1)
								local function __FUNC_23BCB_(arg0, arg1)
									local function __FUNC_23D43_(arg0, arg1)
										local function __FUNC_23EBB_(arg0, arg1)
											local function __FUNC_24033_(arg0, arg1)
												local function __FUNC_241AB_(arg0, arg1)
													local function __FUNC_24323_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -734.000000, -698.670000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_24323_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24323_)
												end

												if arg1.interrupted then
													__FUNC_241AB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.200000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_241AB_)
											end

											if arg1.interrupted then
												__FUNC_24033_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24033_)
										end

										if arg1.interrupted then
											__FUNC_23EBB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23EBB_)
									end

									if arg1.interrupted then
										__FUNC_23D43_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D43_)
								end

								if arg1.interrupted then
									__FUNC_23BCB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BCB_)
							end

							if arg1.interrupted then
								__FUNC_23A50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A50_)
						end

						if arg1.interrupted then
							__FUNC_238F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -734.000000, -698.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238F8_)
					end

					if arg1.interrupted then
						__FUNC_23768_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -714.000000, -678.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23768_)
				end

				if arg1.interrupted then
					__FUNC_235DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Bounce)
				arg0:setLeftRight(false, true, -734.000000, -698.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235DB_)
			end

			if arg1.interrupted then
				__FUNC_23428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23428_)
		end

		registerVal11:completeAnimation()
		registerVal2.DoubleXPTickRight:setLeftRight(false, true, -473.330000, -438.000000)
		registerVal2.DoubleXPTickRight:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal2.DoubleXPTickRight:setAlpha(0.000000)
		__FUNC_232D0_(registerVal11, {})
		local function __FUNC_24545_(arg0, arg1)
			local function __FUNC_2469C_(arg0, arg1)
				local function __FUNC_24817_(arg0, arg1)
					local function __FUNC_2498F_(arg0, arg1)
						local function __FUNC_24AE4_(arg0, arg1)
							local function __FUNC_24C5F_(arg0, arg1)
								local function __FUNC_24DB4_(arg0, arg1)
									local function __FUNC_24F2F_(arg0, arg1)
										local function __FUNC_25084_(arg0, arg1)
											local function __FUNC_251FF_(arg0, arg1)
												local function __FUNC_25354_(arg0, arg1)
													local function __FUNC_254CF_(arg0, arg1)
														local function __FUNC_25647_(arg0, arg1)
															local function __FUNC_257BF_(arg0, arg1)
																local function __FUNC_25937_(arg0, arg1)
																	local function __FUNC_25AAF_(arg0, arg1)
																		local function __FUNC_25C27_(arg0, arg1)
																			if not arg1.interrupted then
																				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																				arg0.MatchText:beginAnimation("subkeyframe", 189.000000, false, false, CoD.TweenType.Linear)
																			end
																			arg0:setLeftRight(false, false, -292.000000, -8.000000)
																			arg0:setTopBottom(true, false, 186.290000, 218.500000)
																			arg0:setAlpha(0.000000)
																			arg0.MatchText:setText(Engine.Localize("MENU_DOUBLE_XP"))
																			if arg1.interrupted then
																				registerVal2.clipFinished(arg0, arg1)
																			else
																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																			end
																		end

																		if arg1.interrupted then
																			__FUNC_25C27_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.450000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C27_)
																	end

																	if arg1.interrupted then
																		__FUNC_25AAF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.340000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25AAF_)
																end

																if arg1.interrupted then
																	__FUNC_25937_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.550000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25937_)
															end

															if arg1.interrupted then
																__FUNC_257BF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.710000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_257BF_)
														end

														if arg1.interrupted then
															__FUNC_25647_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.440000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25647_)
													end

													if arg1.interrupted then
														__FUNC_254CF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.830000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_254CF_)
												end

												if arg1.interrupted then
													__FUNC_25354_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1149.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25354_)
											end

											if arg1.interrupted then
												__FUNC_251FF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_251FF_)
										end

										if arg1.interrupted then
											__FUNC_25084_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25084_)
									end

									if arg1.interrupted then
										__FUNC_24F2F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.760000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F2F_)
								end

								if arg1.interrupted then
									__FUNC_24DB4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DB4_)
							end

							if arg1.interrupted then
								__FUNC_24C5F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C5F_)
						end

						if arg1.interrupted then
							__FUNC_24AE4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24AE4_)
					end

					if arg1.interrupted then
						__FUNC_2498F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2498F_)
				end

				if arg1.interrupted then
					__FUNC_24817_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24817_)
			end

			if arg1.interrupted then
				__FUNC_2469C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2469C_)
		end

		registerVal13:completeAnimation()
		registerVal13.MatchText:completeAnimation()
		registerVal2.DoubleXPText:setLeftRight(false, false, -292.000000, -8.000000)
		registerVal2.DoubleXPText:setTopBottom(true, false, 186.290000, 218.500000)
		registerVal2.DoubleXPText:setAlpha(0.000000)
		registerVal2.DoubleXPText.MatchText:setText(Engine.Localize("MENU_DOUBLE_XP"))
		__FUNC_24545_(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_25F28_(arg0, arg2)
			local function __FUNC_260B2_(arg0, arg2)
				local function __FUNC_2623F_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("0", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_2623F_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("xp_out", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2623F_)
			end

			if arg2.interrupted then
				__FUNC_260B2_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("0", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260B2_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("xp_in", arg1)
		__FUNC_25F28_(registerVal16, {})
		local function __FUNC_263FC_(arg0, arg1)
			local function __FUNC_26577_(arg0, arg1)
				local function __FUNC_266EF_(arg0, arg1)
					local function __FUNC_26867_(arg0, arg1)
						local function __FUNC_269DF_(arg0, arg1)
							local function __FUNC_26B57_(arg0, arg1)
								local function __FUNC_26CAC_(arg0, arg1)
									local function __FUNC_26E27_(arg0, arg1)
										local function __FUNC_26F9F_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Bounce)
											end
											arg0:setLeftRight(false, false, -214.000000, -86.000000)
											arg0:setTopBottom(true, false, 48.500000, 176.500000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_26F9F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F9F_)
									end

									if arg1.interrupted then
										__FUNC_26E27_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Bounce)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26E27_)
								end

								if arg1.interrupted then
									__FUNC_26CAC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26CAC_)
							end

							if arg1.interrupted then
								__FUNC_26B57_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, true, CoD.TweenType.Bounce)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B57_)
						end

						if arg1.interrupted then
							__FUNC_269DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_269DF_)
					end

					if arg1.interrupted then
						__FUNC_26867_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26867_)
				end

				if arg1.interrupted then
					__FUNC_266EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_266EF_)
			end

			if arg1.interrupted then
				__FUNC_26577_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26577_)
		end

		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setLeftRight(false, false, -214.000000, -86.000000)
		registerVal2.PrematchCountdown2xpBadge:setTopBottom(true, false, 48.500000, 176.500000)
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		__FUNC_263FC_(registerVal17, {})
		local function __FUNC_271C1_(arg0, arg1)
			local function __FUNC_2733B_(arg0, arg1)
				local function __FUNC_274B3_(arg0, arg1)
					local function __FUNC_2762B_(arg0, arg1)
						local function __FUNC_277A3_(arg0, arg1)
							local function __FUNC_2791B_(arg0, arg1)
								local function __FUNC_27A70_(arg0, arg1)
									local function __FUNC_27BEB_(arg0, arg1)
										local function __FUNC_27D63_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
											end
											arg0:setLeftRight(false, false, 86.000000, 214.000000)
											arg0:setTopBottom(true, false, 48.500000, 176.500000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_27D63_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Bounce)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D63_)
									end

									if arg1.interrupted then
										__FUNC_27BEB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Bounce)
									arg0:setAlpha(0.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27BEB_)
								end

								if arg1.interrupted then
									__FUNC_27A70_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1160.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A70_)
							end

							if arg1.interrupted then
								__FUNC_2791B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2791B_)
						end

						if arg1.interrupted then
							__FUNC_277A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277A3_)
					end

					if arg1.interrupted then
						__FUNC_2762B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2762B_)
				end

				if arg1.interrupted then
					__FUNC_274B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_274B3_)
			end

			if arg1.interrupted then
				__FUNC_2733B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2733B_)
		end

		registerVal18:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setLeftRight(false, false, 86.000000, 214.000000)
		registerVal18:setTopBottom(true, false, 48.500000, 176.500000)
		registerVal18:setAlpha(0.000000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_271C1_)
		local function __FUNC_27F85_(arg0, arg1)
			local function __FUNC_280DC_(arg0, arg1)
				local function __FUNC_2828F_(arg0, arg1)
					local function __FUNC_2841C_(arg0, arg1)
						local function __FUNC_285AC_(arg0, arg1)
							local function __FUNC_28704_(arg0, arg1)
								local function __FUNC_2887F_(arg0, arg1)
									local function __FUNC_289F7_(arg0, arg1)
										local function __FUNC_28B6F_(arg0, arg1)
											local function __FUNC_28CE7_(arg0, arg1)
												local function __FUNC_28E5F_(arg0, arg1)
													local function __FUNC_28FD7_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -433.330000, -398.000000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_28FD7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.300000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28FD7_)
												end

												if arg1.interrupted then
													__FUNC_28E5F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E5F_)
											end

											if arg1.interrupted then
												__FUNC_28CE7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28CE7_)
										end

										if arg1.interrupted then
											__FUNC_28B6F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B6F_)
									end

									if arg1.interrupted then
										__FUNC_289F7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_289F7_)
								end

								if arg1.interrupted then
									__FUNC_2887F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2887F_)
							end

							if arg1.interrupted then
								__FUNC_28704_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28704_)
						end

						if arg1.interrupted then
							__FUNC_285AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -433.330000, -398.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285AC_)
					end

					if arg1.interrupted then
						__FUNC_2841C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -414.000000, -378.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2841C_)
				end

				if arg1.interrupted then
					__FUNC_2828F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, true, -434.000000, -398.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2828F_)
			end

			if arg1.interrupted then
				__FUNC_280DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280DC_)
		end

		registerVal20:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setLeftRight(false, true, -183.330000, -148.000000)
		registerVal20:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal20:setAlpha(0.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_27F85_)
		local function __FUNC_291F9_(arg0, arg1)
			local function __FUNC_29350_(arg0, arg1)
				local function __FUNC_29503_(arg0, arg1)
					local function __FUNC_29690_(arg0, arg1)
						local function __FUNC_29820_(arg0, arg1)
							local function __FUNC_29978_(arg0, arg1)
								local function __FUNC_29AF3_(arg0, arg1)
									local function __FUNC_29C6B_(arg0, arg1)
										local function __FUNC_29DE3_(arg0, arg1)
											local function __FUNC_29F5B_(arg0, arg1)
												local function __FUNC_2A0D3_(arg0, arg1)
													local function __FUNC_2A24B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(false, true, -582.330000, -547.000000)
														arg0:setTopBottom(true, true, 106.750000, -601.750000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_2A24B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.500000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A24B_)
												end

												if arg1.interrupted then
													__FUNC_2A0D3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.300000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A0D3_)
											end

											if arg1.interrupted then
												__FUNC_29F5B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29F5B_)
										end

										if arg1.interrupted then
											__FUNC_29DE3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29DE3_)
									end

									if arg1.interrupted then
										__FUNC_29C6B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29C6B_)
								end

								if arg1.interrupted then
									__FUNC_29AF3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29AF3_)
							end

							if arg1.interrupted then
								__FUNC_29978_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29978_)
						end

						if arg1.interrupted then
							__FUNC_29820_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, true, -582.330000, -547.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29820_)
					end

					if arg1.interrupted then
						__FUNC_29690_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, true, -603.000000, -567.670000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29690_)
				end

				if arg1.interrupted then
					__FUNC_29503_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, true, -583.000000, -547.670000)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29503_)
			end

			if arg1.interrupted then
				__FUNC_29350_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29350_)
		end

		registerVal21:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setLeftRight(false, true, -852.000000, -816.670000)
		registerVal21:setTopBottom(true, true, 106.750000, -601.750000)
		registerVal21:setAlpha(0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_291F9_)
		local function __FUNC_2A46D_(arg0, arg1)
			local function __FUNC_2A5E7_(arg0, arg1)
				local function __FUNC_2A75F_(arg0, arg1)
					local function __FUNC_2A8B4_(arg0, arg1)
						local function __FUNC_2AA2F_(arg0, arg1)
							local function __FUNC_2ABA7_(arg0, arg1)
								local function __FUNC_2AD1F_(arg0, arg1)
									local function __FUNC_2AE74_(arg0, arg1)
										local function __FUNC_2AFEF_(arg0, arg1)
											local function __FUNC_2B144_(arg0, arg1)
												local function __FUNC_2B2BF_(arg0, arg1)
													local function __FUNC_2B437_(arg0, arg1)
														local function __FUNC_2B5AF_(arg0, arg1)
															local function __FUNC_2B727_(arg0, arg1)
																local function __FUNC_2B89F_(arg0, arg1)
																	local function __FUNC_2BA17_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(0.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_2BA17_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.450000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA17_)
																end

																if arg1.interrupted then
																	__FUNC_2B89F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.340000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B89F_)
															end

															if arg1.interrupted then
																__FUNC_2B727_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.550000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B727_)
														end

														if arg1.interrupted then
															__FUNC_2B5AF_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.710000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B5AF_)
													end

													if arg1.interrupted then
														__FUNC_2B437_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.440000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B437_)
												end

												if arg1.interrupted then
													__FUNC_2B2BF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.830000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B2BF_)
											end

											if arg1.interrupted then
												__FUNC_2B144_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 1149.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B144_)
										end

										if arg1.interrupted then
											__FUNC_2AFEF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AFEF_)
									end

									if arg1.interrupted then
										__FUNC_2AE74_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AE74_)
								end

								if arg1.interrupted then
									__FUNC_2AD1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.760000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD1F_)
							end

							if arg1.interrupted then
								__FUNC_2ABA7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ABA7_)
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
						__FUNC_2A8B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A8B4_)
				end

				if arg1.interrupted then
					__FUNC_2A75F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A75F_)
			end

			if arg1.interrupted then
				__FUNC_2A5E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A5E7_)
		end

		registerVal22:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setAlpha(0.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_2A46D_)
	end

	registerVal24.ShowDoubleXPandWeaponXP = __FUNC_21723_
	local function __FUNC_2BBC9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2BF81_(arg0, arg1)
			local function __FUNC_2C0FB_(arg0, arg1)
				local function __FUNC_2C250_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2C250_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C250_)
			end

			if arg1.interrupted then
				__FUNC_2C0FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0FB_)
		end

		registerVal7:completeAnimation()
		registerVal2.CodcasterFactionIcon:setAlpha(0.000000)
		__FUNC_2BF81_(registerVal7, {})
		local function __FUNC_2C405_(arg0, arg1)
			local function __FUNC_2C57F_(arg0, arg1)
				local function __FUNC_2C6F7_(arg0, arg1)
					local function __FUNC_2C86F_(arg0, arg1)
						local function __FUNC_2C9E7_(arg0, arg1)
							local function __FUNC_2CB5F_(arg0, arg1)
								local function __FUNC_2CCD7_(arg0, arg1)
									local function __FUNC_2CE2C_(arg0, arg1)
										local function __FUNC_2CFA7_(arg0, arg1)
											local function __FUNC_2D0FC_(arg0, arg1)
												local function __FUNC_2D277_(arg0, arg1)
													local function __FUNC_2D3EF_(arg0, arg1)
														local function __FUNC_2D567_(arg0, arg1)
															local function __FUNC_2D6DF_(arg0, arg1)
																local function __FUNC_2D857_(arg0, arg1)
																	local function __FUNC_2D9CF_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																		end
																		arg0:setAlpha(0.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_2D9CF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.340000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9CF_)
																end

																if arg1.interrupted then
																	__FUNC_2D857_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.240000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D857_)
															end

															if arg1.interrupted then
																__FUNC_2D6DF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.440000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6DF_)
														end

														if arg1.interrupted then
															__FUNC_2D567_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.570000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D567_)
													end

													if arg1.interrupted then
														__FUNC_2D3EF_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.350000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D3EF_)
												end

												if arg1.interrupted then
													__FUNC_2D277_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.680000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D277_)
											end

											if arg1.interrupted then
												__FUNC_2D0FC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D0FC_)
										end

										if arg1.interrupted then
											__FUNC_2CFA7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CFA7_)
									end

									if arg1.interrupted then
										__FUNC_2CE2C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE2C_)
								end

								if arg1.interrupted then
									__FUNC_2CCD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.760000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CCD7_)
							end

							if arg1.interrupted then
								__FUNC_2CB5F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CB5F_)
						end

						if arg1.interrupted then
							__FUNC_2C9E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.410000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C9E7_)
					end

					if arg1.interrupted then
						__FUNC_2C86F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C86F_)
				end

				if arg1.interrupted then
					__FUNC_2C6F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.870000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6F7_)
			end

			if arg1.interrupted then
				__FUNC_2C57F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.560000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C57F_)
		end

		registerVal8:completeAnimation()
		registerVal2.CodcasterFactionIconAdd:setAlpha(0.000000)
		__FUNC_2C405_(registerVal8, {})
		local function __FUNC_2DB81_(arg0, arg1)
			local function __FUNC_2DCFB_(arg0, arg1)
				local function __FUNC_2DE73_(arg0, arg1)
					local function __FUNC_2DFEB_(arg0, arg1)
						local function __FUNC_2E140_(arg0, arg1)
							local function __FUNC_2E2BB_(arg0, arg1)
								local function __FUNC_2E410_(arg0, arg1)
									local function __FUNC_2E58B_(arg0, arg1)
										local function __FUNC_2E703_(arg0, arg1)
											local function __FUNC_2E87B_(arg0, arg1)
												local function __FUNC_2E9F3_(arg0, arg1)
													local function __FUNC_2EB6B_(arg0, arg1)
														local function __FUNC_2ECE3_(arg0, arg1)
															local function __FUNC_2EE5B_(arg0, arg1)
																local function __FUNC_2EFD3_(arg0, arg1)
																	local function __FUNC_2F14B_(arg0, arg1)
																		local function __FUNC_2F2C3_(arg0, arg1)
																			local function __FUNC_2F43B_(arg0, arg1)
																				if not arg1.interrupted then
																					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																				end
																				arg0:setAlpha(0.000000)
																				if arg1.interrupted then
																					registerVal2.clipFinished(arg0, arg1)
																				else
																					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																				end
																			end

																			if arg1.interrupted then
																				__FUNC_2F43B_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																			arg0:setAlpha(0.210000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F43B_)
																		end

																		if arg1.interrupted then
																			__FUNC_2F2C3_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.020000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F2C3_)
																	end

																	if arg1.interrupted then
																		__FUNC_2F14B_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(0.280000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F14B_)
																end

																if arg1.interrupted then
																	__FUNC_2EFD3_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.630000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFD3_)
															end

															if arg1.interrupted then
																__FUNC_2EE5B_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.360000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE5B_)
														end

														if arg1.interrupted then
															__FUNC_2ECE3_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.700000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ECE3_)
													end

													if arg1.interrupted then
														__FUNC_2EB6B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.940000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EB6B_)
												end

												if arg1.interrupted then
													__FUNC_2E9F3_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1769.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9F3_)
											end

											if arg1.interrupted then
												__FUNC_2E87B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.640000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E87B_)
										end

										if arg1.interrupted then
											__FUNC_2E703_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E703_)
									end

									if arg1.interrupted then
										__FUNC_2E58B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.640000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E58B_)
								end

								if arg1.interrupted then
									__FUNC_2E410_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E410_)
							end

							if arg1.interrupted then
								__FUNC_2E2BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.980000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E2BB_)
						end

						if arg1.interrupted then
							__FUNC_2E140_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E140_)
					end

					if arg1.interrupted then
						__FUNC_2DFEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.410000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFEB_)
				end

				if arg1.interrupted then
					__FUNC_2DE73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.850000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE73_)
			end

			if arg1.interrupted then
				__FUNC_2DCFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DCFB_)
		end

		registerVal14:completeAnimation()
		registerVal2.FactionName:setAlpha(0.000000)
		__FUNC_2DB81_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Glitch:setLeftRight(true, false, 405.750000, 889.750000)
		registerVal2.Glitch:setTopBottom(true, false, 36.000000, 318.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_2F5ED_(arg0, arg2)
			local function __FUNC_2F77F_(arg0, arg2)
				local function __FUNC_2F906_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:playSound("faction_out", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_2F906_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 2319.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("0", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F906_)
			end

			if arg2.interrupted then
				__FUNC_2F77F_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("faction_in", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F77F_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:playSound("0", arg1)
		__FUNC_2F5ED_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.PrematchCountdown2xpBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal24.ShowOnlyCodcasterFactionInfo = __FUNC_2BBC9_
	registerVal23.DefaultState = registerVal24
	registerVal2.clipsPerState = registerVal23
	local function __FUNC_2FACE_(arg0)
		arg0.GlowPanel:close()
		arg0.PrematchCountdownNumbers:close()
		arg0.GameTypeHintText:close()
		arg0.DoubleXPText:close()
		arg0.FactionName:close()
		arg0.Glitch:close()
		arg0.PrematchCountdown2xpBadge:close()
		arg0.PrematchCountdown2xpWeaponBadge:close()
		arg0.DoubleLoot:close()
		arg0.DoubleWeaponXPLabel:close()
		arg0.FactionIcon0:close()
		arg0.FactionIcon:close()
		arg0.CodcasterFactionIcon:close()
		arg0.CodcasterFactionIconAdd:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2FACE_)
	if __FUNC_861_ then
		__FUNC_861_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PrematchCountdown.new = __FUNC_18AF_
