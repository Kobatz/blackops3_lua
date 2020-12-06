-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetPnlRT")
require("ui.uieditor.widgets.playercard.YouAndKiller_Widget")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetNumbers")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Effects.fxGlitch1_Main")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamPlayerInfo = registerVal1
function CoD.KillcamPlayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamPlayerInfo)
	registerVal2.id = "KillcamPlayerInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 493.000000, 787.000000)
	registerVal3:setTopBottom(true, false, -123.000000, 64.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.230000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.NemesisShadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -686.780000, -60.000000)
	registerVal4:setTopBottom(false, false, -71.000000, -47.000000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_weakpoint_newreddash"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal4:setShaderVector(0.000000, 200.000000, 4.830000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 6.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.NemesisLine2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 578.220000, 701.780000)
	registerVal5:setTopBottom(true, false, -71.000000, 9.000000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_nemesis"))
	registerVal2:addElement(registerVal5)
	registerVal2.NemesisImageNormal = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 578.220000, 701.780000)
	registerVal6:setTopBottom(true, false, -71.000000, 9.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_nemesis"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.NemesisImageAdd = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 546.000000, 740.000000)
	registerVal7:setTopBottom(true, false, -97.000000, 31.000000)
	registerVal7:setRGB(0.290000, 0.010000, 0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.NemesisGlow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 59.000000, 649.500000)
	registerVal8:setTopBottom(false, false, -71.000000, -47.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_weakpoint_newreddash"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal8:setShaderVector(0.000000, 200.000000, 4.830000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 6.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.NemesLine1 = registerVal8
	local registerVal9 = CoD.KillcamWidgetPnlRT.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -35.000000, 640.000000)
	registerVal9:setTopBottom(true, false, -12.000000, 68.000000)
	registerVal9:setRGB(0.500000, 0.500000, 0.500000)
	registerVal9.KillcamWidgetPnlRTInt0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.LeftPanelR = registerVal9
	local registerVal10 = CoD.KillcamWidgetPnlRT.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 640.000000, 1315.000000)
	registerVal10:setTopBottom(true, false, -12.000000, 68.000000)
	registerVal10:setRGB(0.500000, 0.500000, 0.500000)
	registerVal10:setYRot(180.000000)
	registerVal10.KillcamWidgetPnlRTInt0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.LeftPanelR0 = registerVal10
	local registerVal11 = CoD.YouAndKiller_Widget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 864.000000, 1088.000000)
	registerVal11:setTopBottom(true, false, -15.000000, 11.000000)
	registerVal11.KillerYouLabels:setText(Engine.Localize("MENU_YOU_CAPS"))
	registerVal2:addElement(registerVal11)
	registerVal2.YouAndKillerWidget0 = registerVal11
	local registerVal12 = CoD.YouAndKiller_Widget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 287.000000, 505.000000)
	registerVal12:setTopBottom(true, false, -15.000000, 11.000000)
	registerVal12.KillerYouLabels:setText(Engine.Localize(LocalizeToUpperString("MPUI_KILLER")))
	registerVal2:addElement(registerVal12)
	registerVal2.YouAndKillerWidget00 = registerVal12
	local registerVal13 = CoD.PlayerCard.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 779.000000, 1098.000000)
	registerVal13:setTopBottom(true, false, 3.000000, 62.000000)
	local function __FUNC_1F32_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:subscribeToGlobalModel(arg1, "Victim", nil, __FUNC_1F32_)
	local function __FUNC_1F82_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.TeamColor:setRGB(registerVal1)
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "KillcamInfo", "victimFactionColor", __FUNC_1F82_)
	local function __FUNC_2032_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "heading", true, __FUNC_2032_)
	registerVal2:addElement(registerVal13)
	registerVal2.VictimPlayerCard = registerVal13
	local registerVal14 = CoD.PlayerCard.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 198.000000, 521.000000)
	registerVal14:setTopBottom(true, false, 3.000000, 62.000000)
	local function __FUNC_210E_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:subscribeToGlobalModel(arg1, "Attacker", nil, __FUNC_210E_)
	local function __FUNC_215E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "heading", true, __FUNC_215E_)
	registerVal2:addElement(registerVal14)
	registerVal2.AttackerPlayerCard = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 689.000000, 736.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal15:setRGB(0.830000, 0.870000, 0.950000)
	registerVal15:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal15:setTTF("fonts/escom.ttf")
	registerVal15:setLetterSpacing(1.000000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.KillsLabel2 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 546.720000, 593.720000)
	registerVal16:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal16:setRGB(0.830000, 0.870000, 0.950000)
	registerVal16:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setLetterSpacing(1.000000)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal16)
	registerVal2.KillsLabel1 = registerVal16
	local registerVal17 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -130.780000, -10.780000)
	registerVal17:setTopBottom(false, false, -17.000000, 37.000000)
	local function __FUNC_223A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "Attacker", "kills", __FUNC_223A_)
	registerVal2:addElement(registerVal17)
	registerVal2.AttackerKillsNew = registerVal17
	local registerVal18 = CoD.KillcamWidgetNumbers.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, 12.220000, 132.220000)
	registerVal18:setTopBottom(false, false, -17.000000, 37.000000)
	local function __FUNC_230F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg1, "Victim", "kills", __FUNC_230F_)
	registerVal2:addElement(registerVal18)
	registerVal2.VictimKillsNew = registerVal18
	local registerVal19 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 619.500000, 660.500000)
	registerVal19:setTopBottom(true, false, 14.000000, 42.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.VSBanner = registerVal19
	local registerVal20 = LUI.UITightText.new()
	registerVal20:setLeftRight(false, false, -13.500000, 17.500000)
	registerVal20:setTopBottom(true, false, 16.000000, 41.000000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setText(Engine.Localize("MP_VERSUS"))
	registerVal20:setTTF("fonts/escom.ttf")
	registerVal20:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.VSLabel = registerVal20
	local registerVal21 = CoD.fxGlitch1_Main.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 159.000000, 1127.000000)
	registerVal21:setTopBottom(true, false, -83.500000, 138.500000)
	registerVal2:addElement(registerVal21)
	registerVal2.Glitch = registerVal21
	local registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(true, false, 578.220000, 697.720000)
	registerVal22:setTopBottom(true, false, -39.000000, -23.000000)
	registerVal22:setRGB(0.000000, 0.000000, 0.000000)
	registerVal22:setText(Engine.Localize("MPUI_NEMESIS_TITLE_CAPS"))
	registerVal22:setTTF("fonts/escom.ttf")
	registerVal22:setLetterSpacing(1.000000)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal22)
	registerVal2.KillsLabel20 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_23E3_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.NemesisShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NemesisLine2:setLeftRight(false, false, -63.780000, -60.000000)
		registerVal2.NemesisLine2:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesisLine2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NemesisImageNormal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NemesisImageAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NemesisGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NemesLine1:setLeftRight(false, false, 59.000000, 79.500000)
		registerVal2.NemesLine1:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesLine1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LeftPanelR:setLeftRight(true, false, 356.000000, 500.000000)
		registerVal2.LeftPanelR:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftPanelR0:setLeftRight(true, false, 790.000000, 934.000000)
		registerVal2.LeftPanelR0:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.YouAndKillerWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.YouAndKillerWidget00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.VictimPlayerCard:setLeftRight(true, false, 929.000000, 1205.000000)
		registerVal2.VictimPlayerCard:setTopBottom(true, false, -2.000000, 57.000000)
		registerVal2.VictimPlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.AttackerPlayerCard:setLeftRight(true, false, 93.360000, 360.360000)
		registerVal2.AttackerPlayerCard:setTopBottom(true, false, -2.000000, 57.000000)
		registerVal2.AttackerPlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.KillsLabel2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.KillsLabel1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AttackerKillsNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.VictimKillsNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.VSBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.VSLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.KillsLabel20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_23E3_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_2DB6_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.NemesisShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NemesisLine2:setLeftRight(false, false, -63.780000, -60.000000)
		registerVal2.NemesisLine2:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesisLine2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NemesisImageNormal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NemesisImageAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NemesisGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NemesLine1:setLeftRight(false, false, 59.000000, 79.500000)
		registerVal2.NemesLine1:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesLine1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_3818_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, -35.000000, 640.000000)
			arg0:setTopBottom(true, false, -12.000000, 68.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LeftPanelR:setLeftRight(true, false, -31.000000, 500.000000)
		registerVal2.LeftPanelR:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR:setAlpha(0.000000)
		__FUNC_3818_(registerVal9, {})
		local function __FUNC_3A3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 640.000000, 1315.000000)
			arg0:setTopBottom(true, false, -12.000000, 68.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LeftPanelR0:setLeftRight(true, false, 790.000000, 1311.000000)
		registerVal2.LeftPanelR0:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR0:setAlpha(0.000000)
		__FUNC_3A3D_(registerVal10, {})
		local function __FUNC_3C61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 863.000000, 1087.000000)
			arg0:setTopBottom(true, false, -13.000000, 13.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.YouAndKillerWidget0:setLeftRight(true, false, 1020.000000, 1237.000000)
		registerVal2.YouAndKillerWidget0:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.YouAndKillerWidget0:setAlpha(0.000000)
		__FUNC_3C61_(registerVal11, {})
		local function __FUNC_3E85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 283.000000, 506.000000)
			arg0:setTopBottom(true, false, -13.000000, 13.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.YouAndKillerWidget00:setLeftRight(true, false, 184.000000, 401.000000)
		registerVal2.YouAndKillerWidget00:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.YouAndKillerWidget00:setAlpha(0.000000)
		__FUNC_3E85_(registerVal12, {})
		local function __FUNC_40A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 779.000000, 1098.000000)
			arg0:setTopBottom(true, false, 6.000000, 65.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.VictimPlayerCard:setLeftRight(true, false, 929.000000, 1205.000000)
		registerVal2.VictimPlayerCard:setTopBottom(true, false, 6.000000, 65.000000)
		registerVal2.VictimPlayerCard:setAlpha(0.000000)
		__FUNC_40A9_(registerVal13, {})
		local function __FUNC_42CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 198.000000, 521.000000)
			arg0:setTopBottom(true, false, 6.000000, 65.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.AttackerPlayerCard:setLeftRight(true, false, 93.000000, 360.000000)
		registerVal2.AttackerPlayerCard:setTopBottom(true, false, 6.000000, 65.000000)
		registerVal2.AttackerPlayerCard:setAlpha(0.000000)
		__FUNC_42CD_(registerVal14, {})
		local function __FUNC_44F1_(arg0, arg1)
			local function __FUNC_4648_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4648_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4648_)
		end

		registerVal15:completeAnimation()
		registerVal2.KillsLabel2:setAlpha(0.000000)
		__FUNC_44F1_(registerVal15, {})
		local function __FUNC_47FD_(arg0, arg1)
			local function __FUNC_4954_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4954_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4954_)
		end

		registerVal16:completeAnimation()
		registerVal2.KillsLabel1:setAlpha(0.000000)
		__FUNC_47FD_(registerVal16, {})
		local function __FUNC_4B09_(arg0, arg1)
			local function __FUNC_4C60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4C60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C60_)
		end

		registerVal17:completeAnimation()
		registerVal2.AttackerKillsNew:setAlpha(0.000000)
		__FUNC_4B09_(registerVal17, {})
		local function __FUNC_4E15_(arg0, arg1)
			local function __FUNC_4F6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4F6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F6C_)
		end

		registerVal18:completeAnimation()
		registerVal2.VictimKillsNew:setAlpha(0.000000)
		__FUNC_4E15_(registerVal18, {})
		local function __FUNC_5121_(arg0, arg1)
			local function __FUNC_5278_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5278_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5278_)
		end

		registerVal19:completeAnimation()
		registerVal2.VSBanner:setAlpha(0.000000)
		__FUNC_5121_(registerVal19, {})
		local function __FUNC_542D_(arg0, arg1)
			local function __FUNC_5584_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5584_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5584_)
		end

		registerVal20:completeAnimation()
		registerVal2.VSLabel:setAlpha(0.000000)
		__FUNC_542D_(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.KillsLabel20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2DB6_
	registerVal23.Killcam = registerVal24
	registerVal24 = {}
	local function __FUNC_5739_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_6114_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.230000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.NemesisShadow:setAlpha(0.000000)
		__FUNC_6114_(registerVal3, {})
		local function __FUNC_62C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -686.780000, -60.000000)
			arg0:setTopBottom(false, false, -71.000000, -47.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.NemesisLine2:setLeftRight(false, false, -63.780000, -60.000000)
		registerVal2.NemesisLine2:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesisLine2:setAlpha(0.000000)
		__FUNC_62C9_(registerVal4, {})
		local function __FUNC_64ED_(arg0, arg1)
			local function __FUNC_6644_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6644_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6644_)
		end

		registerVal5:completeAnimation()
		registerVal2.NemesisImageNormal:setAlpha(0.000000)
		__FUNC_64ED_(registerVal5, {})
		local function __FUNC_67F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.NemesisImageAdd:setAlpha(0.000000)
		__FUNC_67F9_(registerVal6, {})
		local function __FUNC_69AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.NemesisGlow:setAlpha(0.000000)
		__FUNC_69AD_(registerVal7, {})
		local function __FUNC_6B61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 59.000000, 649.500000)
			arg0:setTopBottom(false, false, -71.000000, -47.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.NemesLine1:setLeftRight(false, false, 59.000000, 79.500000)
		registerVal2.NemesLine1:setTopBottom(false, false, -71.000000, -47.000000)
		registerVal2.NemesLine1:setAlpha(0.000000)
		__FUNC_6B61_(registerVal8, {})
		local function __FUNC_6D85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, -35.000000, 640.000000)
			arg0:setTopBottom(true, false, -12.000000, 68.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.LeftPanelR:setLeftRight(true, false, -31.000000, 500.000000)
		registerVal2.LeftPanelR:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR:setAlpha(0.000000)
		__FUNC_6D85_(registerVal9, {})
		local function __FUNC_6FA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 640.000000, 1315.000000)
			arg0:setTopBottom(true, false, -12.000000, 68.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.LeftPanelR0:setLeftRight(true, false, 790.000000, 1311.000000)
		registerVal2.LeftPanelR0:setTopBottom(true, false, -12.000000, 68.000000)
		registerVal2.LeftPanelR0:setAlpha(0.000000)
		__FUNC_6FA9_(registerVal10, {})
		local function __FUNC_71CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 867.000000, 1087.000000)
			arg0:setTopBottom(true, false, -13.000000, 13.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.YouAndKillerWidget0:setLeftRight(true, false, 1020.000000, 1237.000000)
		registerVal2.YouAndKillerWidget0:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.YouAndKillerWidget0:setAlpha(0.000000)
		__FUNC_71CD_(registerVal11, {})
		local function __FUNC_73F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 287.000000, 505.000000)
			arg0:setTopBottom(true, false, -13.000000, 13.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.YouAndKillerWidget00:setLeftRight(true, false, 184.000000, 401.000000)
		registerVal2.YouAndKillerWidget00:setTopBottom(true, false, -13.000000, 13.000000)
		registerVal2.YouAndKillerWidget00:setAlpha(0.000000)
		__FUNC_73F1_(registerVal12, {})
		local function __FUNC_7615_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 779.000000, 1098.000000)
			arg0:setTopBottom(true, false, 6.000000, 65.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.VictimPlayerCard:setLeftRight(true, false, 929.000000, 1205.000000)
		registerVal2.VictimPlayerCard:setTopBottom(true, false, 6.000000, 65.000000)
		registerVal2.VictimPlayerCard:setAlpha(0.000000)
		__FUNC_7615_(registerVal13, {})
		local function __FUNC_7839_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 198.000000, 521.000000)
			arg0:setTopBottom(true, false, 6.000000, 65.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.AttackerPlayerCard:setLeftRight(true, false, 93.000000, 360.000000)
		registerVal2.AttackerPlayerCard:setTopBottom(true, false, 6.000000, 65.000000)
		registerVal2.AttackerPlayerCard:setAlpha(0.000000)
		__FUNC_7839_(registerVal14, {})
		local function __FUNC_7A5D_(arg0, arg1)
			local function __FUNC_7BB4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7BB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BB4_)
		end

		registerVal15:completeAnimation()
		registerVal2.KillsLabel2:setAlpha(0.000000)
		__FUNC_7A5D_(registerVal15, {})
		local function __FUNC_7D69_(arg0, arg1)
			local function __FUNC_7EC0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EC0_)
		end

		registerVal16:completeAnimation()
		registerVal2.KillsLabel1:setAlpha(0.000000)
		__FUNC_7D69_(registerVal16, {})
		local function __FUNC_8075_(arg0, arg1)
			local function __FUNC_81CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_81CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81CC_)
		end

		registerVal17:completeAnimation()
		registerVal2.AttackerKillsNew:setAlpha(0.000000)
		__FUNC_8075_(registerVal17, {})
		local function __FUNC_8381_(arg0, arg1)
			local function __FUNC_84D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_84D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84D8_)
		end

		registerVal18:completeAnimation()
		registerVal2.VictimKillsNew:setAlpha(0.000000)
		__FUNC_8381_(registerVal18, {})
		local function __FUNC_868D_(arg0, arg1)
			local function __FUNC_87E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_87E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87E4_)
		end

		registerVal19:completeAnimation()
		registerVal2.VSBanner:setAlpha(0.000000)
		__FUNC_868D_(registerVal19, {})
		local function __FUNC_8999_(arg0, arg1)
			local function __FUNC_8AF0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8AF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AF0_)
		end

		registerVal20:completeAnimation()
		registerVal2.VSLabel:setAlpha(0.000000)
		__FUNC_8999_(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_5739_
	registerVal23.NemesisKillcam = registerVal24
	registerVal2.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Killcam"
	local function __FUNC_8CA5_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_8CA5_
	local registerVal27 = {}
	registerVal27.stateName = "NemesisKillcam"
	local function __FUNC_8DD0_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		return registerVal3
	end

	registerVal27.condition = __FUNC_8DD0_
	registerVal25 = {registerVal26, registerVal27}
	registerVal2:mergeStateConditions(registerVal25)
	registerVal26 = Engine.GetModelForController(arg1)
	registerVal25 = Engine.GetModel(registerVal26, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_8EA4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal25, __FUNC_8EA4_)
	registerVal26 = Engine.GetModelForController(arg1)
	registerVal25 = Engine.GetModel(registerVal26, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM))
	local function __FUNC_902D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal25, __FUNC_902D_)
	local function __FUNC_91BA_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Killcam")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "Glitch"
			registerVal4.clipName = "GlitchSmall1"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		else
			registerVal2 = IsElementInState(arg0, "NemesisKillcam")
			if registerVal2 then
				registerVal4 = {}
				registerVal4.elementName = "Glitch"
				registerVal4.clipName = "GlitchSmall2"
				PlayClipOnElement(registerVal2, registerVal4, arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_91BA_)
	local function __FUNC_9311_(arg0)
		arg0.LeftPanelR:close()
		arg0.LeftPanelR0:close()
		arg0.YouAndKillerWidget0:close()
		arg0.YouAndKillerWidget00:close()
		arg0.VictimPlayerCard:close()
		arg0.AttackerPlayerCard:close()
		arg0.AttackerKillsNew:close()
		arg0.VictimKillsNew:close()
		arg0.VSBanner:close()
		arg0.Glitch:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9311_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

