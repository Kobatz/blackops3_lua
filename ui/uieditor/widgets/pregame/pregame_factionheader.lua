-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidget")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetForCodCaster")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenVSCirclePnl")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenFactionIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_FactionHeader = registerVal1
function CoD.Pregame_FactionHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_FactionHeader)
	registerVal2.id = "Pregame_FactionHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1357.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 159.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -267.750000, 219.750000)
	registerVal3:setTopBottom(false, false, -79.380000, 79.380000)
	registerVal3:setAlpha(0.530000)
	registerVal2:addElement(registerVal3)
	registerVal2.VSglow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 7.000000, -48.000000)
	registerVal4:setTopBottom(false, false, 40.400000, 48.400000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Team2Line = registerVal4
	local registerVal5 = CoD.TeamIconAndNameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -39.630000, 325.130000)
	registerVal5:setTopBottom(true, false, 32.880000, 117.880000)
	registerVal5.LoadingScreenFactionBoxPnl:setYRot(180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Team2IconAndNameWidget = registerVal5
	local registerVal6 = CoD.TeamIconAndNameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -367.000000, 33.000000)
	registerVal6:setTopBottom(true, false, 32.880000, 117.880000)
	registerVal2:addElement(registerVal6)
	registerVal2.Team1IconAndNameWidget = registerVal6
	local registerVal7 = CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 212.500000, 677.500000)
	registerVal7:setTopBottom(true, false, 31.880000, 116.880000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FrameForCodCasterLeft = registerVal7
	local registerVal8 = CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 640.500000, 1105.500000)
	registerVal8:setTopBottom(true, false, 32.780000, 117.780000)
	registerVal8:setAlpha(0.000000)
	registerVal8.PanelLine:setYRot(180.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FrameForCodCasterRight = registerVal8
	local registerVal9 = CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 211.630000, 676.630000)
	registerVal9:setTopBottom(true, false, 30.970000, 115.970000)
	registerVal9:setAlpha(0.000000)
	registerVal9.ColorPanelLine1:setAlpha(0.400000)
	local function __FUNC_1EA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ColorPanelLine1:setRGB(registerVal1)
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionColor", __FUNC_1EA4_)
	registerVal2:addElement(registerVal9)
	registerVal2.FrameForCodCasterLeft0 = registerVal9
	local registerVal10 = CoD.TeamIconAndNameWidgetForCodCaster.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 640.630000, 1105.630000)
	registerVal10:setTopBottom(true, false, 31.880000, 116.880000)
	registerVal10:setAlpha(0.000000)
	registerVal10.PanelLine:setYRot(180.000000)
	registerVal10.ColorPanelLine1:setAlpha(0.400000)
	registerVal10.ColorPanelLine1:setYRot(180.000000)
	local function __FUNC_1F5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.ColorPanelLine1:setRGB(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionColor", __FUNC_1F5C_)
	registerVal2:addElement(registerVal10)
	registerVal2.FrameForCodCasterRight0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 689.500000, 993.250000)
	registerVal11:setTopBottom(true, false, 52.900000, 55.340000)
	local function __FUNC_2014_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionColor", __FUNC_2014_)
	registerVal2:addElement(registerVal11)
	registerVal2.AxisColors = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 321.250000, 623.000000)
	registerVal12:setTopBottom(true, false, 52.900000, 55.340000)
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal12:setShaderVector(0.000000, 0.150000, 0.240000, 0.000000, 0.000000)
	local function __FUNC_20A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionColor", __FUNC_20A7_)
	registerVal2:addElement(registerVal12)
	registerVal2.AlliesColors = registerVal12
	local registerVal13 = CoD.LoadingScreenVSCirclePnl.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 610.500000, 700.500000)
	registerVal13:setTopBottom(true, false, 27.900000, 117.780000)
	registerVal13:setAlpha(0.500000)
	registerVal2:addElement(registerVal13)
	registerVal2.LoadingScreenVSCirclePnl = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -668.500000, 0.000000)
	registerVal14:setTopBottom(false, false, -10.470000, -2.470000)
	registerVal14:setAlpha(0.300000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.VSlineR = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 623.000000)
	registerVal15:setTopBottom(false, false, -10.470000, -2.470000)
	registerVal15:setAlpha(0.300000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.VSlineL = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -57.000000, 13.000000)
	registerVal16:setTopBottom(false, false, -40.500000, 27.560000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.VScircle = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(false, false, -103.000000, 57.000000)
	registerVal17:setTopBottom(true, false, 55.880000, 94.880000)
	registerVal17:setText(Engine.Localize("VS"))
	registerVal17:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.VSlabel = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, 7.000000, -48.000000)
	registerVal18:setTopBottom(false, false, -59.370000, -51.370000)
	registerVal18:setAlpha(0.200000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Team1Line = registerVal18
	local registerVal19 = CoD.LoadingScreenFactionIcon.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, 10.000000, 147.750000)
	registerVal19:setTopBottom(false, false, -75.470000, 62.280000)
	local function __FUNC_2137_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2137_)
	local function __FUNC_220E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_220E_)
	registerVal2:addElement(registerVal19)
	registerVal2.LoadingScreenFactionIcon0 = registerVal19
	local registerVal20 = CoD.LoadingScreenFactionIcon.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -191.130000, -53.380000)
	registerVal20:setTopBottom(false, false, -75.470000, 62.280000)
	local function __FUNC_22E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_22E1_)
	local function __FUNC_23BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_23BA_)
	registerVal2:addElement(registerVal20)
	registerVal2.LoadingScreenFactionIcon = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(false, false, 57.000000, 349.380000)
	registerVal21:setTopBottom(true, false, 62.900000, 82.900000)
	registerVal21:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal21:setLetterSpacing(2.500000)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_248D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_248D_)
	registerVal2:addElement(registerVal21)
	registerVal2.FactionNameCDP = registerVal21
	local registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(false, false, -394.380000, -102.000000)
	registerVal22:setTopBottom(true, false, 62.900000, 82.900000)
	registerVal22:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal22:setLetterSpacing(2.500000)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2546_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_2546_)
	registerVal2:addElement(registerVal22)
	registerVal2.FactionNameBlackOps = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(false, false, 103.000000, 423.000000)
	registerVal23:setTopBottom(true, false, 62.340000, 81.340000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal23:setLetterSpacing(2.500000)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_25FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_25FE_)
	registerVal2:addElement(registerVal23)
	registerVal2.FactionNameRightCodCaster = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(false, false, -459.000000, -139.000000)
	registerVal24:setTopBottom(true, false, 63.340000, 82.340000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal24:setLetterSpacing(2.500000)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_26B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_26B6_)
	registerVal2:addElement(registerVal24)
	registerVal2.FactionNameLeftCodCaster = registerVal24
	local registerVal25 = {}
	local registerVal26 = {}
	local function __FUNC_276E_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal5:completeAnimation()
		registerVal2.Team2IconAndNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Team1IconAndNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FrameForCodCasterLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FrameForCodCasterRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FrameForCodCasterLeft0:setLeftRight(true, false, 314.500000, 640.500000)
		registerVal2.FrameForCodCasterLeft0:setTopBottom(true, false, 31.970000, 116.970000)
		registerVal2.FrameForCodCasterLeft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FrameForCodCasterRight0:setLeftRight(true, false, 654.500000, 1008.500000)
		registerVal2.FrameForCodCasterRight0:setTopBottom(true, false, 32.780000, 117.780000)
		registerVal2.FrameForCodCasterRight0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AxisColors:setLeftRight(true, false, 689.500000, 993.250000)
		registerVal2.AxisColors:setTopBottom(true, false, 52.900000, 55.340000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AlliesColors:setLeftRight(true, false, 321.250000, 623.000000)
		registerVal2.AlliesColors:setTopBottom(true, false, 52.900000, 55.340000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LoadingScreenVSCirclePnl:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.VScircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.VSlabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.LoadingScreenFactionIcon0:setLeftRight(false, false, 10.000000, 147.750000)
		registerVal2.LoadingScreenFactionIcon0:setTopBottom(false, false, -75.470000, 62.280000)
		registerVal2.LoadingScreenFactionIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LoadingScreenFactionIcon:setLeftRight(false, false, -191.130000, -53.380000)
		registerVal2.LoadingScreenFactionIcon:setTopBottom(false, false, -75.470000, 62.280000)
		registerVal2.LoadingScreenFactionIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.FactionNameCDP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.FactionNameBlackOps:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.FactionNameRightCodCaster:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.FactionNameLeftCodCaster:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_276E_
	local function __FUNC_30CA_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_391E_(arg0, arg1)
			local function __FUNC_3A74_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.530000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3A74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A74_)
		end

		registerVal3:completeAnimation()
		registerVal2.VSglow:setAlpha(0.000000)
		__FUNC_391E_(registerVal3, {})
		local function __FUNC_3C29_(arg0, arg1)
			local function __FUNC_3D80_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3D80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D80_)
		end

		registerVal4:completeAnimation()
		registerVal2.Team2Line:setAlpha(0.000000)
		__FUNC_3C29_(registerVal4, {})
		local function __FUNC_3F35_(arg0, arg1)
			local function __FUNC_408C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_408C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Team2IconAndNameWidget:setAlpha(0.000000)
		__FUNC_3F35_(registerVal5, {})
		local function __FUNC_4241_(arg0, arg1)
			local function __FUNC_4398_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4398_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4398_)
		end

		registerVal6:completeAnimation()
		registerVal2.Team1IconAndNameWidget:setAlpha(0.000000)
		__FUNC_4241_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FrameForCodCasterLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FrameForCodCasterRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_454D_(arg0, arg1)
			local function __FUNC_46A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_46A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46A4_)
		end

		registerVal13:completeAnimation()
		registerVal2.LoadingScreenVSCirclePnl:setAlpha(0.000000)
		__FUNC_454D_(registerVal13, {})
		local function __FUNC_4859_(arg0, arg1)
			local function __FUNC_49B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -609.500000, 59.000000)
				arg0:setTopBottom(false, false, 2.530000, 10.530000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_49B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49B0_)
		end

		registerVal14:completeAnimation()
		registerVal2.VSlineR:setLeftRight(false, true, -609.500000, 59.000000)
		registerVal2.VSlineR:setTopBottom(false, false, 2.530000, 10.530000)
		registerVal2.VSlineR:setAlpha(0.000000)
		__FUNC_4859_(registerVal14, {})
		local function __FUNC_4BD5_(arg0, arg1)
			local function __FUNC_4D2C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -18.000000, 605.000000)
				arg0:setTopBottom(false, false, 2.530000, 10.530000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D2C_)
		end

		registerVal15:completeAnimation()
		registerVal2.VSlineL:setLeftRight(true, false, -18.000000, 605.000000)
		registerVal2.VSlineL:setTopBottom(false, false, 2.530000, 10.530000)
		registerVal2.VSlineL:setAlpha(0.000000)
		__FUNC_4BD5_(registerVal15, {})
		local function __FUNC_4F51_(arg0, arg1)
			local function __FUNC_50A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_50A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50A8_)
		end

		registerVal16:completeAnimation()
		registerVal2.VScircle:setAlpha(0.000000)
		__FUNC_4F51_(registerVal16, {})
		local function __FUNC_525D_(arg0, arg1)
			local function __FUNC_53B4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_53B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53B4_)
		end

		registerVal17:completeAnimation()
		registerVal2.VSlabel:setAlpha(0.000000)
		__FUNC_525D_(registerVal17, {})
		local function __FUNC_5569_(arg0, arg1)
			local function __FUNC_56C0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_56C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56C0_)
		end

		registerVal18:completeAnimation()
		registerVal2.Team1Line:setAlpha(0.000000)
		__FUNC_5569_(registerVal18, {})
		local function __FUNC_5875_(arg0, arg1)
			local function __FUNC_59CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, 30.500000, 168.250000)
				arg0:setTopBottom(false, false, -62.350000, 75.400000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_59CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59CC_)
		end

		registerVal19:completeAnimation()
		registerVal2.LoadingScreenFactionIcon0:setLeftRight(false, false, 30.500000, 168.250000)
		registerVal2.LoadingScreenFactionIcon0:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal2.LoadingScreenFactionIcon0:setAlpha(0.000000)
		__FUNC_5875_(registerVal19, {})
		local function __FUNC_5BF1_(arg0, arg1)
			local function __FUNC_5D48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, -170.630000, -32.880000)
				arg0:setTopBottom(false, false, -62.350000, 75.400000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5D48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D48_)
		end

		registerVal20:completeAnimation()
		registerVal2.LoadingScreenFactionIcon:setLeftRight(false, false, -170.630000, -32.880000)
		registerVal2.LoadingScreenFactionIcon:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal2.LoadingScreenFactionIcon:setAlpha(0.000000)
		__FUNC_5BF1_(registerVal20, {})
		local function __FUNC_5F6D_(arg0, arg1)
			local function __FUNC_60C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_60C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60C4_)
		end

		registerVal21:completeAnimation()
		registerVal2.FactionNameCDP:setAlpha(0.000000)
		__FUNC_5F6D_(registerVal21, {})
		local function __FUNC_6279_(arg0, arg1)
			local function __FUNC_63D0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_63D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63D0_)
		end

		registerVal22:completeAnimation()
		registerVal2.FactionNameBlackOps:setAlpha(0.000000)
		__FUNC_6279_(registerVal22, {})
		registerVal24:completeAnimation()
		registerVal2.FactionNameLeftCodCaster:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.StartLoading = __FUNC_30CA_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_6585_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal5:completeAnimation()
		registerVal2.Team2IconAndNameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Team1IconAndNameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FrameForCodCasterLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FrameForCodCasterRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FrameForCodCasterLeft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FrameForCodCasterRight0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AxisColors:setLeftRight(true, false, 689.500000, 1086.250000)
		registerVal2.AxisColors:setTopBottom(true, false, 52.900000, 55.340000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AlliesColors:setLeftRight(true, false, 226.250000, 621.500000)
		registerVal2.AlliesColors:setTopBottom(true, false, 52.900000, 55.340000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal19:completeAnimation()
		registerVal2.LoadingScreenFactionIcon0:setLeftRight(false, false, 7.130000, 193.050000)
		registerVal2.LoadingScreenFactionIcon0:setTopBottom(false, false, -75.470000, 62.280000)
		registerVal2.LoadingScreenFactionIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LoadingScreenFactionIcon:setLeftRight(false, false, -231.050000, -50.130000)
		registerVal2.LoadingScreenFactionIcon:setTopBottom(false, false, -75.470000, 62.280000)
		registerVal2.LoadingScreenFactionIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.FactionNameCDP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.FactionNameBlackOps:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.FactionNameRightCodCaster:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.FactionNameLeftCodCaster:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_6585_
	registerVal25.CodCaster = registerVal26
	registerVal2.clipsPerState = registerVal25
	local registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "CodCaster"
	local function __FUNC_6D04_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal28.condition = __FUNC_6D04_
	registerVal27 = {registerVal28}
	registerVal2:mergeStateConditions(registerVal27)
	registerVal28 = Engine.GetModelForController(arg1)
	registerVal27 = Engine.GetModel(registerVal28, "factions.isCoDCaster")
	local function __FUNC_6D55_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal27, __FUNC_6D55_)
	local function __FUNC_6E7E_(arg0)
		arg0.VSglow:close()
		arg0.Team2IconAndNameWidget:close()
		arg0.Team1IconAndNameWidget:close()
		arg0.FrameForCodCasterLeft:close()
		arg0.FrameForCodCasterRight:close()
		arg0.FrameForCodCasterLeft0:close()
		arg0.FrameForCodCasterRight0:close()
		arg0.LoadingScreenVSCirclePnl:close()
		arg0.LoadingScreenFactionIcon0:close()
		arg0.LoadingScreenFactionIcon:close()
		arg0.AxisColors:close()
		arg0.AlliesColors:close()
		arg0.FactionNameCDP:close()
		arg0.FactionNameBlackOps:close()
		arg0.FactionNameRightCodCaster:close()
		arg0.FactionNameLeftCodCaster:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6E7E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

