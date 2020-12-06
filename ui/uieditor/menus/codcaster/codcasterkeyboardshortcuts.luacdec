-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
require("ui.uieditor.widgets.FooterButtonPromptWithPCKey")
require("ui.uieditor.widgets.CodCaster.CodCasterKeyboardButtonPromptInfo")
function LUI.createMenu.CodCasterKeyboardShortcuts(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CodCasterKeyboardShortcuts")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CodCasterKeyboardShortcuts.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -20.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.850000)
	registerVal1:addElement(registerVal3)
	registerVal1.darkbg = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 180.000000, 538.000000)
	registerVal5:setRGB(0.070000, 0.070000, 0.080000)
	registerVal5:setAlpha(0.800000)
	registerVal1:addElement(registerVal5)
	registerVal1.backing = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(true, false, 184.000000, 506.070000)
	registerVal6:setRGB(0.630000, 0.610000, 0.610000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal1:addElement(registerVal6)
	registerVal1.Smokebkg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -214.000000, -182.000000)
	registerVal7:setRGB(0.130000, 0.110000, 0.120000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.buttonBacking = registerVal7
	local registerVal8 = CoD.systemOverlay_alertStatusBar.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 180.000000, 184.000000)
	local function __FUNC_27DA_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal1, nil, false, __FUNC_27DA_)
	registerVal1:addElement(registerVal8)
	registerVal1.alertStatusBar = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -216.000000, -211.850000)
	registerVal9:setAlpha(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.LineLeft = registerVal9
	local registerVal10 = CoD.FooterButtonPromptWithPCKey.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 386.000000, 486.000000)
	registerVal10:setTopBottom(true, false, 508.150000, 540.150000)
	registerVal10.label:setText(Engine.Localize("MENU_CLOSE"))
	registerVal10.keyPrompt.keybind:setText(Engine.Localize("K"))
	local function __FUNC_282A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_282A_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_2903_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_2903_
	local registerVal15 = {}
	registerVal15.stateName = "Enabled"
	local function __FUNC_294D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_294D_
	local registerVal16 = {}
	registerVal16.stateName = "DisabledPC"
	local function __FUNC_2999_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_2999_
	local registerVal17 = {}
	registerVal17.stateName = "EnabledPC"
	local function __FUNC_29E5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_29E5_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.Close = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 399.000000, 974.000000)
	registerVal11:setTopBottom(true, false, 190.000000, 220.000000)
	registerVal11:setText(LocalizeToUpperString("CODCASTER_KEYBOARD_SHORTCUTS"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.Title = registerVal11
	local registerVal12 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal12:setTopBottom(true, false, 227.760000, 259.760000)
	registerVal12.Text:setText(Engine.Localize("MPUI_MENU"))
	registerVal12.keyPrompt.keybind:setText(Engine.Localize("ESC"))
	registerVal1:addElement(registerVal12)
	registerVal1.Esc = registerVal12
	registerVal13 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal13:setTopBottom(true, false, 265.760000, 297.760000)
	registerVal13.Text:setText(Engine.Localize("CODCASTER_QS_PLAYER_LIST"))
	registerVal13.keyPrompt.keybind:setText(Engine.Localize("F1"))
	registerVal1:addElement(registerVal13)
	registerVal1.F1 = registerVal13
	registerVal14 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal14:setTopBottom(true, false, 304.760000, 336.760000)
	registerVal14.Text:setText(Engine.Localize("CODCASTER_QS_SCORE_PANEL"))
	registerVal14.keyPrompt.keybind:setText(Engine.Localize("F2"))
	registerVal1:addElement(registerVal14)
	registerVal1.F2 = registerVal14
	registerVal15 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal15:setTopBottom(true, false, 345.040000, 377.040000)
	registerVal15.Text:setText(Engine.Localize("CODCASTER_QS_PLAYER_CARD"))
	registerVal15.keyPrompt.keybind:setText(Engine.Localize("F3"))
	registerVal1:addElement(registerVal15)
	registerVal1.F3 = registerVal15
	registerVal16 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal16:setTopBottom(true, false, 385.000000, 417.000000)
	registerVal16.Text:setText(Engine.Localize("CODCASTER_QS_PLAYER_HUD"))
	registerVal16.keyPrompt.keybind:setText(Engine.Localize("F4"))
	registerVal1:addElement(registerVal16)
	registerVal1.F4 = registerVal16
	registerVal17 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal17:setTopBottom(true, false, 425.000000, 457.000000)
	registerVal17.Text:setText(Engine.Localize("CODCASTER_TEAM1_PLAYERS"))
	registerVal17.keyPrompt.keybind:setText(Engine.Localize("1-4"))
	registerVal1:addElement(registerVal17)
	registerVal1.Team1Players = registerVal17
	local registerVal18 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 400.000000, 511.000000)
	registerVal18:setTopBottom(true, false, 465.000000, 497.000000)
	registerVal18.Text:setText(Engine.Localize("CODCASTER_TEAM2_PLAYERS"))
	registerVal18.keyPrompt.keybind:setText(Engine.Localize("5-8"))
	registerVal1:addElement(registerVal18)
	registerVal1.Team2Players = registerVal18
	local registerVal19 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal19:setTopBottom(true, false, 227.760000, 259.760000)
	registerVal19.Text:setText(Engine.Localize("CODCASTER_TOOLBAR"))
	registerVal19.keyPrompt.keybind:setText(Engine.Localize("TAB"))
	registerVal1:addElement(registerVal19)
	registerVal1.TAB = registerVal19
	local registerVal20 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal20:setTopBottom(true, false, 265.760000, 297.760000)
	registerVal20.Text:setText(Engine.Localize("CODCASTER_QUICK_SETTINGS"))
	registerVal20.keyPrompt.keybind:setText(Engine.Localize("Q"))
	registerVal1:addElement(registerVal20)
	registerVal1.Q = registerVal20
	local registerVal21 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal21:setTopBottom(true, false, 304.760000, 336.760000)
	registerVal21.Text:setText(Engine.Localize("CODCASTER_SETTINGS"))
	registerVal21.keyPrompt.keybind:setText(Engine.Localize("W"))
	registerVal1:addElement(registerVal21)
	registerVal1.W = registerVal21
	local registerVal22 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal22:setTopBottom(true, false, 345.040000, 377.040000)
	registerVal22.Text:setText(Engine.Localize("CODCASTER_LOADOUT_SETTINGS"))
	registerVal22.keyPrompt.keybind:setText(Engine.Localize("E"))
	registerVal1:addElement(registerVal22)
	registerVal1.E = registerVal22
	local registerVal23 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal23:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal23:setTopBottom(true, false, 385.000000, 417.000000)
	registerVal23.Text:setText(Engine.Localize("CODCASTER_QS_THIRD_PERSON"))
	registerVal23.keyPrompt.keybind:setText(Engine.Localize("T"))
	registerVal1:addElement(registerVal23)
	registerVal1.T = registerVal23
	local registerVal24 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal24:setTopBottom(true, false, 425.000000, 457.000000)
	registerVal24.Text:setText(Engine.Localize("CODCASTER_LS_PERKS"))
	registerVal24.keyPrompt.keybind:setText(Engine.Localize("P"))
	registerVal1:addElement(registerVal24)
	registerVal1.P = registerVal24
	local registerVal25 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal25:setLeftRight(true, false, 623.000000, 734.000000)
	registerVal25:setTopBottom(true, false, 465.000000, 497.000000)
	registerVal25.Text:setText(Engine.Localize("MENU_SCOREBOARD"))
	registerVal25.keyPrompt.keybind:setText(Engine.Localize("S"))
	registerVal1:addElement(registerVal25)
	registerVal1.S = registerVal25
	local registerVal26 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal26:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal26:setTopBottom(true, false, 227.760000, 259.760000)
	registerVal26.Text:setText(Engine.Localize("CODCASTER_LOADOUT"))
	registerVal26.keyPrompt.keybind:setText(Engine.Localize("L"))
	registerVal1:addElement(registerVal26)
	registerVal1.L = registerVal26
	local registerVal27 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal27:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal27:setTopBottom(true, false, 265.760000, 297.760000)
	registerVal27.Text:setText(Engine.Localize("CODCASTER_DS_XRAY"))
	registerVal27.keyPrompt.keybind:setText(Engine.Localize("X"))
	registerVal1:addElement(registerVal27)
	registerVal1.X = registerVal27
	local registerVal28 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal28:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal28:setTopBottom(true, false, 304.760000, 336.760000)
	registerVal28.Text:setText(Engine.Localize("CODCASTER_QS_PLAYER_NUMBERS"))
	registerVal28.keyPrompt.keybind:setText(Engine.Localize("N"))
	registerVal1:addElement(registerVal28)
	registerVal1.N = registerVal28
	local registerVal29 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal29:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal29:setTopBottom(true, false, 345.040000, 377.040000)
	registerVal29.Text:setText(Engine.Localize("MENU_MAP"))
	registerVal29.keyPrompt.keybind:setText(Engine.Localize("M"))
	registerVal1:addElement(registerVal29)
	registerVal1.M = registerVal29
	local registerVal30 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal30:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal30:setTopBottom(true, false, 385.000000, 417.000000)
	registerVal30.Text:setText(Engine.Localize("MENU_DEMO_CONTROLS_PREV_PLAYER"))
	registerVal30.keyPrompt.keybind:setText(Engine.Localize(","))
	registerVal1:addElement(registerVal30)
	registerVal1.PrevPlayer = registerVal30
	local registerVal31 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal31:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal31:setTopBottom(true, false, 425.000000, 457.000000)
	registerVal31.Text:setText(Engine.Localize("MENU_DEMO_CONTROLS_NEXT_PLAYER"))
	registerVal31.keyPrompt.keybind:setText(Engine.Localize("."))
	registerVal1:addElement(registerVal31)
	registerVal1.NextPlayer = registerVal31
	local registerVal32 = CoD.CodCasterKeyboardButtonPromptInfo.new(registerVal1, arg0)
	registerVal32:setLeftRight(true, false, 872.000000, 983.000000)
	registerVal32:setTopBottom(true, false, 465.000000, 497.000000)
	registerVal32.Text:setText(Engine.Localize("CODCASTER_JUMP_TO_NEXT_LIVE_PLAYER"))
	registerVal32.keyPrompt.keybind:setText(Engine.Localize("SPC"))
	registerVal1:addElement(registerVal32)
	registerVal1.Space = registerVal32
	local registerVal33 = {}
	local registerVal34 = {}
	local function __FUNC_2A30_()
		registerVal1:setupElementClipCounter(7.000000)
		local function __FUNC_2DFE_(arg0, arg1)
			local function __FUNC_2F77_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.850000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F77_)
		end

		registerVal3:completeAnimation()
		registerVal1.darkbg:setAlpha(0.000000)
		__FUNC_2DFE_(registerVal3, {})
		local function __FUNC_3129_(arg0, arg1)
			local function __FUNC_32A3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_32A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A3_)
		end

		registerVal4:completeAnimation()
		registerVal1.scorestreakVignetteContainer:setAlpha(0.000000)
		__FUNC_3129_(registerVal4, {})
		local function __FUNC_3455_(arg0, arg1)
			local function __FUNC_35AC_(arg0, arg1)
				local function __FUNC_3727_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, false, 180.000000, 540.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3727_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3727_)
			end

			if arg1.interrupted then
				__FUNC_35AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35AC_)
		end

		registerVal5:completeAnimation()
		registerVal1.backing:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.backing:setTopBottom(true, false, 180.000000, 540.000000)
		registerVal1.backing:setAlpha(0.000000)
		__FUNC_3455_(registerVal5, {})
		local function __FUNC_3944_(arg0, arg1)
			local function __FUNC_3ABF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.750000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3ABF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ABF_)
		end

		registerVal6:completeAnimation()
		registerVal1.Smokebkg:setAlpha(0.000000)
		__FUNC_3944_(registerVal6, {})
		local function __FUNC_3C71_(arg0, arg1)
			local function __FUNC_3DC8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3DC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC8_)
		end

		registerVal7:completeAnimation()
		registerVal1.buttonBacking:setAlpha(0.000000)
		__FUNC_3C71_(registerVal7, {})
		local function __FUNC_3F7D_(arg0, arg1)
			local function __FUNC_412F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, false, 180.000000, 184.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_412F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, true, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 180.000000, 184.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_412F_)
		end

		registerVal8:completeAnimation()
		registerVal1.alertStatusBar:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.alertStatusBar:setTopBottom(true, false, -12.000000, -8.000000)
		registerVal1.alertStatusBar:setAlpha(0.000000)
		__FUNC_3F7D_(registerVal8, {})
		local function __FUNC_434C_(arg0, arg1)
			local function __FUNC_44A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_44A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44A4_)
		end

		registerVal9:completeAnimation()
		registerVal1.LineLeft:setAlpha(0.000000)
		__FUNC_434C_(registerVal9, {})
	end

	registerVal34.DefaultClip = __FUNC_2A30_
	registerVal33.DefaultState = registerVal34
	registerVal1.clipsPerState = registerVal33
	local function __FUNC_4659_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetLuiKeyCatcher(false)
		return true
	end

	local function __FUNC_46D2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, "K", __FUNC_4659_, __FUNC_46D2_, false, true)
	local registerVal35 = {}
	registerVal35.name = "menu_loaded"
	registerVal35.controller = arg0
	registerVal1:processEvent(registerVal35)
	registerVal35 = {}
	registerVal35.name = "update_state"
	registerVal35.menu = registerVal1
	registerVal1:processEvent(registerVal35)
	local function __FUNC_47BC_(arg1)
		arg1.scorestreakVignetteContainer:close()
		arg1.alertStatusBar:close()
		arg1.Close:close()
		arg1.Esc:close()
		arg1.F1:close()
		arg1.F2:close()
		arg1.F3:close()
		arg1.F4:close()
		arg1.Team1Players:close()
		arg1.Team2Players:close()
		arg1.TAB:close()
		arg1.Q:close()
		arg1.W:close()
		arg1.E:close()
		arg1.T:close()
		arg1.P:close()
		arg1.S:close()
		arg1.L:close()
		arg1.X:close()
		arg1.N:close()
		arg1.M:close()
		arg1.PrevPlayer:close()
		arg1.NextPlayer:close()
		arg1.Space:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CodCasterKeyboardShortcuts.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_47BC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

