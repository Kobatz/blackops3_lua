-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenVSCirclePnl")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidget")
require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetForCodCaster")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenFactionIcon")
require("ui.uieditor.widgets.LoadingAnimation.LoadingScreenHeaderFooter")
require("ui.uieditor.widgets.LoadingAnimation.LoadingScreenTeamPlayerList")
local function __FUNC_3E3_(arg0, arg1)
	local function __FUNC_537_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.LoadingScreenHeaderFooter.LoadingBar:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
		end
	end

	arg0.LoadingScreenHeaderFooter.LoadingBar:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "loadedFraction", __FUNC_537_)
	local function __FUNC_634_(arg0)
		arg0.LoadingScreenHeaderFooter.LoadingBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_634_)
end

local function __FUNC_6C6_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LoadingScreenOverlayForTeamGames")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LoadingScreenOverlayForTeamGames.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setImage(RegisterImage(MapNameToMapLoadingImage(GetCurrentMapID("uie_img_t7_menu_mp_loadscreen_sector"))))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.backgroundImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal1:addElement(registerVal4)
	registerVal1.BLACKfade = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -285.600000, -101.600000)
	registerVal5:setAlpha(0.440000)
	registerVal5:setXRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_menu_startflow_vignette"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal5)
	registerVal1.Team2Vignette = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 114.630000, 298.630000)
	registerVal6:setAlpha(0.440000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_menu_startflow_vignette"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal6)
	registerVal1.Team1Vignette = registerVal6
	local registerVal7 = CoD.PrematchCountdown_IconGlowPanel.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -738.490000, -308.510000)
	registerVal7:setTopBottom(false, false, -158.630000, 184.630000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.GameTypeglow = registerVal7
	local registerVal8 = CoD.PrematchCountdown_IconGlowPanel.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -247.250000, 240.250000)
	registerVal8:setTopBottom(false, false, -66.380000, 92.380000)
	registerVal8:setAlpha(0.530000)
	registerVal1:addElement(registerVal8)
	registerVal1.VSglow = registerVal8
	local registerVal9 = CoD.LoadingScreenVSCirclePnl.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -47.500000, 42.500000)
	registerVal9:setTopBottom(false, false, -38.470000, 51.400000)
	registerVal9:setAlpha(0.500000)
	registerVal1:addElement(registerVal9)
	registerVal1.LoadingScreenVSCirclePnl = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -11.000000, 11.000000)
	registerVal10:setTopBottom(false, false, 70.400000, 78.400000)
	registerVal10:setAlpha(0.200000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Team2Line = registerVal10
	local registerVal11 = CoD.TeamIconAndNameWidget.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -19.130000, 345.630000)
	registerVal11:setTopBottom(false, false, -33.500000, 51.500000)
	registerVal11.LoadingScreenFactionBoxPnl:setYRot(180.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.Team2IconAndNameWidget = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -609.500000, 59.000000)
	registerVal12:setTopBottom(false, false, 2.530000, 10.530000)
	registerVal12:setAlpha(0.300000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.VSlineR = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -18.000000, 605.000000)
	registerVal13:setTopBottom(false, false, 2.530000, 10.530000)
	registerVal13:setAlpha(0.300000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.VSlineL = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -36.500000, 33.500000)
	registerVal14:setTopBottom(false, false, -27.500000, 40.560000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.VScircle = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -82.500000, 77.500000)
	registerVal15:setTopBottom(false, false, -10.500000, 28.500000)
	registerVal15:setText(Engine.Localize("VS"))
	registerVal15:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal15)
	registerVal1.VSlabel = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -11.000000, 11.000000)
	registerVal16:setTopBottom(false, false, -64.380000, -56.380000)
	registerVal16:setAlpha(0.200000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Team1Line = registerVal16
	local registerVal17 = CoD.TeamIconAndNameWidget.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, false, -346.500000, 53.500000)
	registerVal17:setTopBottom(false, false, -33.500000, 51.500000)
	registerVal1:addElement(registerVal17)
	registerVal1.Team1IconAndNameWidget = registerVal17
	local registerVal18 = CoD.TeamIconAndNameWidgetForCodCaster.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 622.500000, 1087.500000)
	registerVal18:setTopBottom(true, false, 326.400000, 411.400000)
	registerVal18:setAlpha(0.000000)
	registerVal18.PanelLine:setYRot(180.000000)
	local function __FUNC_2803_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.ColorPanelLine1:setRGB(registerVal1)
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "Factions", "axisFactionColor", __FUNC_2803_)
	registerVal1:addElement(registerVal18)
	registerVal1.FrameForCodCasterRight = registerVal18
	local registerVal19 = CoD.TeamIconAndNameWidgetForCodCaster.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 194.500000, 659.500000)
	registerVal19:setTopBottom(true, false, 325.500000, 410.500000)
	registerVal19:setAlpha(0.000000)
	local function __FUNC_28B8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.ColorPanelLine1:setRGB(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "Factions", "alliesFactionColor", __FUNC_28B8_)
	registerVal1:addElement(registerVal19)
	registerVal1.FrameForCodCasterLeft = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 675.380000, 1067.380000)
	registerVal20:setTopBottom(true, false, 348.500000, 350.750000)
	registerVal20:setAlpha(0.000000)
	local function __FUNC_2970_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setRGB(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "Factions", "axisFactionColor", __FUNC_2970_)
	registerVal1:addElement(registerVal20)
	registerVal1.CodcasterColorLine2 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 208.500000, 600.500000)
	registerVal21:setTopBottom(true, false, 348.500000, 350.750000)
	registerVal21:setAlpha(0.000000)
	local function __FUNC_2A03_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setRGB(registerVal1)
		end
	end

	registerVal21:subscribeToGlobalModel(arg0, "Factions", "alliesFactionColor", __FUNC_2A03_)
	registerVal1:addElement(registerVal21)
	registerVal1.CodcasterColorLine1 = registerVal21
	local registerVal22 = CoD.LoadingScreenFactionIcon.new(registerVal1, arg0)
	registerVal22:setLeftRight(false, false, -170.630000, -32.880000)
	registerVal22:setTopBottom(false, false, -62.350000, 75.400000)
	local function __FUNC_2A93_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2A93_)
	local function __FUNC_2B6A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionIcon", __FUNC_2B6A_)
	registerVal1:addElement(registerVal22)
	registerVal1.LoadingScreenFactionIcon = registerVal22
	local registerVal23 = CoD.LoadingScreenFactionIcon.new(registerVal1, arg0)
	registerVal23:setLeftRight(false, false, 30.500000, 168.250000)
	registerVal23:setTopBottom(false, false, -62.350000, 75.400000)
	local function __FUNC_2C3D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.FactionIconSolid:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2C3D_)
	local function __FUNC_2D16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.FactionIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionIcon", __FUNC_2D16_)
	registerVal1:addElement(registerVal23)
	registerVal1.LoadingScreenFactionIcon0 = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(false, false, 77.500000, 369.880000)
	registerVal24:setTopBottom(false, false, -3.470000, 16.530000)
	registerVal24:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal24:setLetterSpacing(2.500000)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2DE9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_2DE9_)
	registerVal1:addElement(registerVal24)
	registerVal1.FactionNameCDP = registerVal24
	local registerVal25 = LUI.UIText.new()
	registerVal25:setLeftRight(false, false, -373.880000, -81.500000)
	registerVal25:setTopBottom(false, false, -3.470000, 16.530000)
	registerVal25:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal25:setLetterSpacing(2.500000)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2EA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal25:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal25:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_2EA2_)
	registerVal1:addElement(registerVal25)
	registerVal1.FactionNameBlackOps = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(false, false, 123.500000, 443.500000)
	registerVal26:setTopBottom(true, false, 355.970000, 374.970000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal26:setLetterSpacing(2.500000)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2F5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team2FactionName", __FUNC_2F5A_)
	registerVal1:addElement(registerVal26)
	registerVal1.FactionNameRightCodCaster = registerVal26
	local registerVal27 = LUI.UIText.new()
	registerVal27:setLeftRight(false, false, -438.500000, -118.500000)
	registerVal27:setTopBottom(true, false, 356.970000, 375.970000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal27:setLetterSpacing(2.500000)
	registerVal27:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal27:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3012_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal27:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal27:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "team1FactionName", __FUNC_3012_)
	registerVal1:addElement(registerVal27)
	registerVal1.FactionNameLeftCodCaster = registerVal27
	local registerVal28 = CoD.LoadingScreenHeaderFooter.new(registerVal1, arg0)
	registerVal28:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal28:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_30CA_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		local registerVal5 = {}
		registerVal5.elementName = "LoadingScreenHeaderFooter"
		registerVal5.clipName = "StartLoading"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal28:registerEventHandler("menu_loaded", __FUNC_30CA_)
	registerVal1:addElement(registerVal28)
	registerVal1.LoadingScreenHeaderFooter = registerVal28
	local registerVal29 = CoD.LoadingScreenTeamPlayerList.new(registerVal1, arg0)
	registerVal29:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal29:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_31F4_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		local registerVal5 = {}
		registerVal5.elementName = "LoadingScreenTeamPlayerList"
		registerVal5.clipName = "StartLoading"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal29:registerEventHandler("menu_loaded", __FUNC_31F4_)
	registerVal1:addElement(registerVal29)
	registerVal1.LoadingScreenTeamPlayerList = registerVal29
	local registerVal30 = {}
	local registerVal31 = {}
	local function __FUNC_3322_()
		registerVal1:setupElementClipCounter(17.000000)
		registerVal4:completeAnimation()
		registerVal1.BLACKfade:setAlpha(0.300000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal1.LoadingScreenVSCirclePnl:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.Team2IconAndNameWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal1.VScircle:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.VSlabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.Team1IconAndNameWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.FrameForCodCasterRight:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.FrameForCodCasterLeft:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.CodcasterColorLine2:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.CodcasterColorLine1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.LoadingScreenFactionIcon:setLeftRight(false, false, -170.630000, -32.880000)
		registerVal1.LoadingScreenFactionIcon:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.LoadingScreenFactionIcon0:setLeftRight(false, false, 30.500000, 168.250000)
		registerVal1.LoadingScreenFactionIcon0:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.FactionNameCDP:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal1.FactionNameBlackOps:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal1.FactionNameRightCodCaster:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.FactionNameLeftCodCaster:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal29:completeAnimation()
		registerVal1.LoadingScreenTeamPlayerList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_3322_
	local function __FUNC_3B3C_()
		registerVal1:setupElementClipCounter(24.000000)
		local function __FUNC_4729_(arg0, arg1)
			local function __FUNC_48A3_(arg0, arg1)
				local function __FUNC_49F8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1130.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
					arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_49F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49F8_)
			end

			if arg1.interrupted then
				__FUNC_48A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A3_)
		end

		registerVal3:completeAnimation()
		registerVal1.backgroundImage:setAlpha(0.000000)
		registerVal1.backgroundImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
		registerVal1.backgroundImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal1.backgroundImage:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_4729_(registerVal3, {})
		local function __FUNC_4C9E_(arg0, arg1)
			local function __FUNC_4DF4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1529.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4DF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DF4_)
		end

		registerVal4:completeAnimation()
		registerVal1.BLACKfade:setAlpha(0.000000)
		__FUNC_4C9E_(registerVal4, {})
		local function __FUNC_4FA9_(arg0, arg1)
			local function __FUNC_5100_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.440000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5100_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1799.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5100_)
		end

		registerVal5:completeAnimation()
		registerVal1.Team2Vignette:setAlpha(0.000000)
		__FUNC_4FA9_(registerVal5, {})
		local function __FUNC_52B5_(arg0, arg1)
			local function __FUNC_540C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.440000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_540C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_540C_)
		end

		registerVal6:completeAnimation()
		registerVal1.Team1Vignette:setAlpha(0.000000)
		__FUNC_52B5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.GameTypeglow:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		local function __FUNC_55C1_(arg0, arg1)
			local function __FUNC_5718_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.530000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5718_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5718_)
		end

		registerVal8:completeAnimation()
		registerVal1.VSglow:setAlpha(0.000000)
		__FUNC_55C1_(registerVal8, {})
		local function __FUNC_58CD_(arg0, arg1)
			local function __FUNC_5A24_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5A24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A24_)
		end

		registerVal9:completeAnimation()
		registerVal1.LoadingScreenVSCirclePnl:setAlpha(0.000000)
		__FUNC_58CD_(registerVal9, {})
		local function __FUNC_5BD9_(arg0, arg1)
			local function __FUNC_5D30_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5D30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D30_)
		end

		registerVal10:completeAnimation()
		registerVal1.Team2Line:setAlpha(0.000000)
		__FUNC_5BD9_(registerVal10, {})
		local function __FUNC_5EE5_(arg0, arg1)
			local function __FUNC_603C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_603C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_603C_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team2IconAndNameWidget:setAlpha(0.000000)
		__FUNC_5EE5_(registerVal11, {})
		local function __FUNC_61F1_(arg0, arg1)
			local function __FUNC_6348_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, true, -609.500000, 59.000000)
				arg0:setTopBottom(false, false, 2.530000, 10.530000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6348_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6348_)
		end

		registerVal12:completeAnimation()
		registerVal1.VSlineR:setLeftRight(false, true, -609.500000, 59.000000)
		registerVal1.VSlineR:setTopBottom(false, false, 2.530000, 10.530000)
		registerVal1.VSlineR:setAlpha(0.000000)
		__FUNC_61F1_(registerVal12, {})
		local function __FUNC_656D_(arg0, arg1)
			local function __FUNC_66C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -18.000000, 605.000000)
				arg0:setTopBottom(false, false, 2.530000, 10.530000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_66C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C4_)
		end

		registerVal13:completeAnimation()
		registerVal1.VSlineL:setLeftRight(true, false, -18.000000, 605.000000)
		registerVal1.VSlineL:setTopBottom(false, false, 2.530000, 10.530000)
		registerVal1.VSlineL:setAlpha(0.000000)
		__FUNC_656D_(registerVal13, {})
		local function __FUNC_68E9_(arg0, arg1)
			local function __FUNC_6A40_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6A40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A40_)
		end

		registerVal14:completeAnimation()
		registerVal1.VScircle:setAlpha(0.000000)
		__FUNC_68E9_(registerVal14, {})
		local function __FUNC_6BF5_(arg0, arg1)
			local function __FUNC_6D4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6D4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D4C_)
		end

		registerVal15:completeAnimation()
		registerVal1.VSlabel:setAlpha(0.000000)
		__FUNC_6BF5_(registerVal15, {})
		local function __FUNC_6F01_(arg0, arg1)
			local function __FUNC_7058_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7058_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7058_)
		end

		registerVal16:completeAnimation()
		registerVal1.Team1Line:setAlpha(0.000000)
		__FUNC_6F01_(registerVal16, {})
		local function __FUNC_720D_(arg0, arg1)
			local function __FUNC_7364_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7364_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7364_)
		end

		registerVal17:completeAnimation()
		registerVal1.Team1IconAndNameWidget:setAlpha(0.000000)
		__FUNC_720D_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.FrameForCodCasterRight:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.FrameForCodCasterLeft:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.CodcasterColorLine2:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.CodcasterColorLine1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		local function __FUNC_7519_(arg0, arg1)
			local function __FUNC_7670_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, -170.630000, -32.880000)
				arg0:setTopBottom(false, false, -62.350000, 75.400000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7670_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7670_)
		end

		registerVal22:completeAnimation()
		registerVal1.LoadingScreenFactionIcon:setLeftRight(false, false, -170.630000, -32.880000)
		registerVal1.LoadingScreenFactionIcon:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon:setAlpha(0.000000)
		__FUNC_7519_(registerVal22, {})
		local function __FUNC_7895_(arg0, arg1)
			local function __FUNC_79EC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, 30.500000, 168.250000)
				arg0:setTopBottom(false, false, -62.350000, 75.400000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_79EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1700.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79EC_)
		end

		registerVal23:completeAnimation()
		registerVal1.LoadingScreenFactionIcon0:setLeftRight(false, false, 30.500000, 168.250000)
		registerVal1.LoadingScreenFactionIcon0:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon0:setAlpha(0.000000)
		__FUNC_7895_(registerVal23, {})
		local function __FUNC_7C11_(arg0, arg1)
			local function __FUNC_7D68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7D68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D68_)
		end

		registerVal24:completeAnimation()
		registerVal1.FactionNameCDP:setAlpha(0.000000)
		__FUNC_7C11_(registerVal24, {})
		local function __FUNC_7F1D_(arg0, arg1)
			local function __FUNC_8074_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8074_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8074_)
		end

		registerVal25:completeAnimation()
		registerVal1.FactionNameBlackOps:setAlpha(0.000000)
		__FUNC_7F1D_(registerVal25, {})
		registerVal27:completeAnimation()
		registerVal1.FactionNameLeftCodCaster:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
	end

	registerVal31.StartLoading = __FUNC_3B3C_
	registerVal30.DefaultState = registerVal31
	registerVal31 = {}
	local function __FUNC_8229_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal11:completeAnimation()
		registerVal11.LoadingScreenFactionBoxPnl:completeAnimation()
		registerVal1.Team2IconAndNameWidget:setAlpha(0.000000)
		registerVal1.Team2IconAndNameWidget.LoadingScreenFactionBoxPnl:setXRot(0.000000)
		registerVal1.Team2IconAndNameWidget.LoadingScreenFactionBoxPnl:setYRot(180.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal17:completeAnimation()
		registerVal1.Team1IconAndNameWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal18.ColorPanelLine1:completeAnimation()
		registerVal1.FrameForCodCasterRight:setAlpha(1.000000)
		registerVal1.FrameForCodCasterRight.ColorPanelLine1:setAlpha(0.400000)
		registerVal1.FrameForCodCasterRight.ColorPanelLine1:setYRot(180.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.ColorPanelLine1:completeAnimation()
		registerVal1.FrameForCodCasterLeft:setAlpha(1.000000)
		registerVal1.FrameForCodCasterLeft.ColorPanelLine1:setAlpha(0.400000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.CodcasterColorLine2:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.CodcasterColorLine1:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.LoadingScreenFactionIcon:setLeftRight(false, false, -191.050000, -10.130000)
		registerVal1.LoadingScreenFactionIcon:setTopBottom(false, false, -60.160000, 74.400000)
		registerVal1.LoadingScreenFactionIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.LoadingScreenFactionIcon0:setLeftRight(false, false, 7.130000, 193.050000)
		registerVal1.LoadingScreenFactionIcon0:setTopBottom(false, false, -60.160000, 74.400000)
		registerVal1.LoadingScreenFactionIcon0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.FactionNameCDP:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal1.FactionNameBlackOps:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal1.FactionNameRightCodCaster:setLeftRight(false, false, 123.500000, 443.500000)
		registerVal1.FactionNameRightCodCaster:setTopBottom(true, false, 357.970000, 376.970000)
		registerVal1.FactionNameRightCodCaster:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.FactionNameLeftCodCaster:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal29:completeAnimation()
		registerVal1.LoadingScreenTeamPlayerList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_8229_
	registerVal30.CodCaster = registerVal31
	registerVal31 = {}
	local function __FUNC_8AAF_()
		registerVal1:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal1.BLACKfade:setAlpha(0.300000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal1.LoadingScreenVSCirclePnl:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.Team2IconAndNameWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal1.VScircle:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.VSlabel:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal1.Team1IconAndNameWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal1.FrameForCodCasterRight:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.FrameForCodCasterLeft:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal22:completeAnimation()
		registerVal1.LoadingScreenFactionIcon:setLeftRight(false, false, -170.630000, -32.880000)
		registerVal1.LoadingScreenFactionIcon:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.LoadingScreenFactionIcon0:setLeftRight(false, false, 30.500000, 168.250000)
		registerVal1.LoadingScreenFactionIcon0:setTopBottom(false, false, -62.350000, 75.400000)
		registerVal1.LoadingScreenFactionIcon0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.FactionNameCDP:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal1.FactionNameBlackOps:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal1.FactionNameRightCodCaster:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.FactionNameLeftCodCaster:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal29:completeAnimation()
		registerVal1.LoadingScreenTeamPlayerList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal29, {})
	end

	registerVal31.DefaultClip = __FUNC_8AAF_
	registerVal30.Demo = registerVal31
	registerVal1.clipsPerState = registerVal30
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "CodCaster"
	local function __FUNC_9206_(arg1, arg2, arg3)
		return IsCodCaster(arg0)
	end

	registerVal33.condition = __FUNC_9206_
	local registerVal34 = {}
	registerVal34.stateName = "Demo"
	local function __FUNC_9255_(arg0, arg1, arg2)
		return IsDemoPlaying()
	end

	registerVal34.condition = __FUNC_9255_
	registerVal32 = {registerVal33, registerVal34}
	registerVal1:mergeStateConditions(registerVal32)
	registerVal33 = Engine.GetModelForController(arg0)
	registerVal32 = Engine.GetModel(registerVal33, "factions.isCoDCaster")
	local function __FUNC_92A3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal32, __FUNC_92A3_)
	registerVal32 = {}
	registerVal32.name = "menu_loaded"
	registerVal32.controller = arg0
	registerVal1:processEvent(registerVal32)
	registerVal32 = {}
	registerVal32.name = "update_state"
	registerVal32.menu = registerVal1
	registerVal1:processEvent(registerVal32)
	local function __FUNC_93CA_(arg1)
		arg1.GameTypeglow:close()
		arg1.VSglow:close()
		arg1.LoadingScreenVSCirclePnl:close()
		arg1.Team2IconAndNameWidget:close()
		arg1.Team1IconAndNameWidget:close()
		arg1.FrameForCodCasterRight:close()
		arg1.FrameForCodCasterLeft:close()
		arg1.LoadingScreenFactionIcon:close()
		arg1.LoadingScreenFactionIcon0:close()
		arg1.LoadingScreenHeaderFooter:close()
		arg1.LoadingScreenTeamPlayerList:close()
		arg1.CodcasterColorLine2:close()
		arg1.CodcasterColorLine1:close()
		arg1.FactionNameCDP:close()
		arg1.FactionNameBlackOps:close()
		arg1.FactionNameRightCodCaster:close()
		arg1.FactionNameLeftCodCaster:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LoadingScreenOverlayForTeamGames.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_93CA_)
	if __FUNC_3E3_ then
		__FUNC_3E3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LoadingScreenOverlayForTeamGames = __FUNC_6C6_
