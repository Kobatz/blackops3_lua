-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_StateIcon_Right")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_StateIcon")
require("ui.uieditor.widgets.Pregame.Pregame_PlayerName")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_CharacterSelection")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconControllerContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_Client = registerVal1
function CoD.Pregame_Client.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_Client)
	registerVal2.id = "Pregame_Client"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 425.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 114.000000, 339.790000)
	registerVal3:setTopBottom(true, false, 2.500000, 54.660000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel1 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 50.210000, 108.000000)
	registerVal4:setTopBottom(true, false, 49.000000, 70.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RankBackground = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 53.900000, 76.790000)
	registerVal5:setTopBottom(true, false, 47.050000, 71.050000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_2522_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "rank", true, __FUNC_2522_)
	registerVal2:addElement(registerVal5)
	registerVal2.Rank = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 81.000000, 103.000000)
	registerVal6:setTopBottom(true, false, 49.000000, 70.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_arena_rank_1"))
	registerVal6:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.RankIcon = registerVal6
	local registerVal7 = CoD.Competitive_CharacterDraft_StateIcon_Right.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal7:setTopBottom(true, false, 15.000000, 42.000000)
	local function __FUNC_25DA_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_25DA_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Choosing"
	local function __FUNC_262A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_262A_
	local registerVal12 = {}
	registerVal12.stateName = "Complete"
	local function __FUNC_2776_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2776_
	local registerVal13 = {}
	registerVal13.stateName = "Forced"
	local function __FUNC_28C1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_28C1_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_2A15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "clientState", true, __FUNC_2A15_)
	local function __FUNC_2B35_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "team", true, __FUNC_2B35_)
	registerVal2:addElement(registerVal7)
	registerVal2.StateLeft = registerVal7
	local registerVal8 = CoD.Competitive_CharacterDraft_StateIcon.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 378.000000, 413.000000)
	registerVal8:setTopBottom(true, false, 15.000000, 42.000000)
	local function __FUNC_2C4E_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_2C4E_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Choosing"
	local function __FUNC_2C9E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2C9E_
	registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_2DE6_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_2DE6_
	local registerVal14 = {}
	registerVal14.stateName = "Forced"
	local function __FUNC_2F2D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_2F2D_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_307D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "clientState", true, __FUNC_307D_)
	local function __FUNC_319D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "team", true, __FUNC_319D_)
	registerVal2:addElement(registerVal8)
	registerVal2.StateRight = registerVal8
	local registerVal9 = CoD.Pregame_PlayerName.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 116.000000, 337.000000)
	registerVal9:setTopBottom(true, false, 4.000000, 28.000000)
	local function __FUNC_32B6_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_32B6_)
	local function __FUNC_3306_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ListHeader.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "gamertag", true, __FUNC_3306_)
	local function __FUNC_3408_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "gamertag", true, __FUNC_3408_)
	registerVal2:addElement(registerVal9)
	registerVal2.PregamePlayerName0 = registerVal9
	registerVal10 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 50.000000, 108.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 57.660000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.700000)
	registerVal2:addElement(registerVal10)
	registerVal2.ImagePanel = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 333.000000, 369.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 2.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.pixelA0 = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 50.000000, 108.770000)
	registerVal12:setTopBottom(true, false, -0.400000, 58.370000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_slidex"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.ImageX = registerVal12
	registerVal13 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 50.000000, 108.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 57.370000)
	registerVal2:addElement(registerVal13)
	registerVal2.ImageBorder = registerVal13
	registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 41.710000, 57.710000)
	registerVal14:setTopBottom(true, false, 57.500000, 69.500000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image0 = registerVal14
	local registerVal15 = CoD.Competitive_CharacterDraft_CharacterSelection.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 47.710000, 108.500000)
	registerVal15:setTopBottom(true, false, -0.400000, 60.400000)
	local function __FUNC_34EC_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_34EC_)
	registerVal2:addElement(registerVal15)
	registerVal2.CharacterRender = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 333.000000, 369.000000)
	registerVal16:setTopBottom(true, false, 56.000000, 59.500000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.pixelA00 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 41.710000, 57.710000)
	registerVal17:setTopBottom(true, false, -11.000000, 1.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image00 = registerVal17
	local registerVal18 = LUI.UITightText.new()
	registerVal18:setLeftRight(true, false, 121.000000, 187.000000)
	registerVal18:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal18:setAlpha(0.700000)
	registerVal18:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal18:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setLetterSpacing(0.200000)
	local function __FUNC_353E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "characterName", true, __FUNC_353E_)
	registerVal2:addElement(registerVal18)
	registerVal2.CharacterName = registerVal18
	local registerVal19 = LUI.UITightText.new()
	registerVal19:setLeftRight(true, false, 185.210000, 337.000000)
	registerVal19:setTopBottom(true, false, 30.000000, 50.000000)
	registerVal19:setAlpha(0.700000)
	registerVal19:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal19:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal19:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal19:setLetterSpacing(0.200000)
	local function __FUNC_35F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "characterLoadoutName", true, __FUNC_35F6_)
	registerVal2:addElement(registerVal19)
	registerVal2.CharacterLoadout = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 110.000000, 346.000000)
	registerVal20:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.LineB1 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 110.000000, 346.000000)
	registerVal21:setTopBottom(true, false, 56.000000, 60.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.LineB00 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 84.000000, 120.000000)
	registerVal22:setTopBottom(true, false, 14.000000, 17.500000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.pixelA01 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 84.000000, 120.000000)
	registerVal23:setTopBottom(true, false, 40.000000, 43.500000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setZRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.pixelA000 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 297.000000, 425.000000)
	registerVal24:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal24:setAlpha(0.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.SizeElement = registerVal24
	local registerVal25 = CoD.IconControllerContainer.new(arg0, arg1)
	registerVal25:setLeftRight(true, false, -3.000000, 54.000000)
	registerVal25:setTopBottom(true, false, 12.500000, 44.500000)
	registerVal25:setRGB(0.740000, 0.780000, 0.790000)
	local function __FUNC_36AE_(arg0)
		registerVal25:setModel(arg0, arg1)
	end

	registerVal25:linkToElementModel(registerVal2, nil, false, __FUNC_36AE_)
	registerVal2:addElement(registerVal25)
	registerVal2.IconControllerContainer = registerVal25
	local registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_36FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal27.DefaultClip = __FUNC_36FE_
	registerVal26.DefaultState = registerVal27
	registerVal27 = {}
	local function __FUNC_375E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal27.DefaultClip = __FUNC_375E_
	local function __FUNC_37BE_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_4216_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 339.790000)
			arg0:setTopBottom(true, false, 15.750000, 43.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 72.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 15.750000, 43.000000)
		__FUNC_4216_(registerVal3, {})
		local function __FUNC_4416_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankBackground:setAlpha(0.000000)
		__FUNC_4416_(registerVal4, {})
		local function __FUNC_45C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 46.000000, 74.900000)
			arg0:setTopBottom(true, false, 23.270000, 47.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 46.000000, 74.900000)
		registerVal2.Rank:setTopBottom(true, false, 23.270000, 47.250000)
		__FUNC_45C9_(registerVal5, {})
		local function __FUNC_47CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 78.900000, 102.400000)
			arg0:setTopBottom(true, false, 23.750000, 47.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 78.900000, 102.400000)
		registerVal2.RankIcon:setTopBottom(true, false, 23.750000, 47.250000)
		__FUNC_47CA_(registerVal6, {})
		local function __FUNC_49CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 78.100000, 337.000000)
			arg0:setTopBottom(true, false, 18.000000, 38.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 78.100000, 337.000000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 18.000000, 38.000000)
		__FUNC_49CA_(registerVal9, {})
		local function __FUNC_4BCA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.ImagePanel:setAlpha(0.000000)
		__FUNC_4BCA_(registerVal10, {})
		local function __FUNC_4D7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, 14.000000, 17.500000)
		__FUNC_4D7D_(registerVal11, {})
		local function __FUNC_4F7E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.ImageX:setAlpha(0.000000)
		__FUNC_4F7E_(registerVal12, {})
		local function __FUNC_5131_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setAlpha(0.000000)
		__FUNC_5131_(registerVal13, {})
		local function __FUNC_52E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setAlpha(0.000000)
		__FUNC_52E5_(registerVal15, {})
		local function __FUNC_5499_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 41.000000, 44.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 41.000000, 44.500000)
		__FUNC_5499_(registerVal16, {})
		local function __FUNC_569A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CharacterName:setAlpha(0.000000)
		__FUNC_569A_(registerVal18, {})
		local function __FUNC_584D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		__FUNC_584D_(registerVal19, {})
		local function __FUNC_5A01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 346.000000)
			arg0:setTopBottom(true, false, 14.000000, 18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 72.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, 14.000000, 18.000000)
		__FUNC_5A01_(registerVal20, {})
		local function __FUNC_5C02_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 346.000000)
			arg0:setTopBottom(true, false, 41.000000, 45.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 72.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 41.000000, 45.000000)
		__FUNC_5C02_(registerVal21, {})
		local function __FUNC_5E02_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 44.000000, 80.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			arg0:setAlpha(1.000000)
			arg0:setXRot(0.000000)
			arg0:setYRot(0.000000)
			arg0:setZRot(180.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 44.000000, 80.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.pixelA01:setAlpha(1.000000)
		registerVal2.pixelA01:setXRot(0.000000)
		registerVal2.pixelA01:setYRot(0.000000)
		registerVal2.pixelA01:setZRot(180.000000)
		__FUNC_5E02_(registerVal22, {})
		local function __FUNC_6086_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 44.000000, 80.000000)
			arg0:setTopBottom(true, false, 40.000000, 43.500000)
			arg0:setAlpha(1.000000)
			arg0:setZRot(180.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 44.000000, 80.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.pixelA000:setAlpha(1.000000)
		registerVal2.pixelA000:setZRot(180.000000)
		__FUNC_6086_(registerVal23, {})
		local function __FUNC_62CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 425.000000)
			arg0:setTopBottom(true, false, 11.000000, 45.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 11.000000, 45.000000)
		__FUNC_62CB_(registerVal24, {})
	end

	registerVal27.CharacterDraft = __FUNC_37BE_
	registerVal26.ItemRestriction = registerVal27
	registerVal27 = {}
	local function __FUNC_64CA_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.080000, 38.580000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ImageX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.DefaultClip = __FUNC_64CA_
	local function __FUNC_711F_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_7EFB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 114.000000, 339.790000)
			arg0:setTopBottom(true, false, 2.500000, 54.660000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		__FUNC_7EFB_(registerVal3, {})
		local function __FUNC_80FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 50.210000, 108.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_80FA_(registerVal4, {})
		local function __FUNC_82FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 53.900000, 76.790000)
			arg0:setTopBottom(true, false, 47.050000, 71.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		__FUNC_82FA_(registerVal5, {})
		local function __FUNC_84FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 81.000000, 103.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_84FA_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StateLeft:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.StateLeft:setTopBottom(true, false, 15.000000, 42.000000)
		registerVal2.StateLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StateRight:setLeftRight(true, false, 378.000000, 405.000000)
		registerVal2.StateRight:setTopBottom(true, false, 14.490000, 41.490000)
		registerVal2.StateRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_86FA_(arg0, arg1)
			local function __FUNC_8888_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 120.000000, 339.790000)
				arg0:setTopBottom(true, false, 8.000000, 32.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8888_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 13.000000, 37.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8888_)
		end

		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.000000, 39.000000)
		__FUNC_86FA_(registerVal9, {})
		local function __FUNC_8A8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, -1.000000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		__FUNC_8A8A_(registerVal11, {})
		local function __FUNC_8C8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 48.000000, 106.770000)
			arg0:setTopBottom(true, false, -1.400000, 57.370000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.ImageX:setLeftRight(true, false, 48.000000, 106.770000)
		registerVal2.ImageX:setTopBottom(true, false, -1.400000, 57.370000)
		registerVal2.ImageX:setAlpha(1.000000)
		__FUNC_8C8A_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_8EAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, 57.500000, 69.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		__FUNC_8EAD_(registerVal14, {})
		local function __FUNC_90AE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 47.710000, 108.500000)
			arg0:setTopBottom(true, false, -0.400000, 60.400000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		__FUNC_90AE_(registerVal15, {})
		local function __FUNC_92D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 56.000000, 59.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		__FUNC_92D1_(registerVal16, {})
		local function __FUNC_94D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, -11.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		__FUNC_94D2_(registerVal17, {})
		local function __FUNC_96D2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 125.000000, 220.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		__FUNC_96D2_(registerVal18, {})
		local function __FUNC_98F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 228.000000, 323.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		__FUNC_98F5_(registerVal19, {})
		local function __FUNC_9B19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, -1.000000, 3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		__FUNC_9B19_(registerVal20, {})
		local function __FUNC_9D1A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, 56.000000, 60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		__FUNC_9D1A_(registerVal21, {})
		local function __FUNC_9F1A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		__FUNC_9F1A_(registerVal22, {})
		local function __FUNC_A11A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 40.000000, 43.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		__FUNC_A11A_(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.CharacterDraftSelected = __FUNC_711F_
	local function __FUNC_A31A_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_B0F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 114.000000, 339.790000)
			arg0:setTopBottom(true, false, 2.500000, 54.660000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		__FUNC_B0F7_(registerVal3, {})
		local function __FUNC_B2F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 50.210000, 108.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_B2F6_(registerVal4, {})
		local function __FUNC_B4F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 53.900000, 76.790000)
			arg0:setTopBottom(true, false, 47.050000, 71.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		__FUNC_B4F6_(registerVal5, {})
		local function __FUNC_B6F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 81.000000, 103.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_B6F6_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StateLeft:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.StateLeft:setTopBottom(true, false, 15.000000, 42.000000)
		registerVal2.StateLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StateRight:setLeftRight(true, false, 378.000000, 405.000000)
		registerVal2.StateRight:setTopBottom(true, false, 14.490000, 41.490000)
		registerVal2.StateRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_B8F6_(arg0, arg1)
			local function __FUNC_BA84_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 120.000000, 339.790000)
				arg0:setTopBottom(true, false, 8.000000, 32.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BA84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 13.000000, 37.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA84_)
		end

		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.000000, 39.000000)
		__FUNC_B8F6_(registerVal9, {})
		local function __FUNC_BC86_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, -1.000000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		__FUNC_BC86_(registerVal11, {})
		local function __FUNC_BE86_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 48.000000, 106.770000)
			arg0:setTopBottom(true, false, -1.400000, 57.370000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.ImageX:setLeftRight(true, false, 48.000000, 106.770000)
		registerVal2.ImageX:setTopBottom(true, false, -1.400000, 57.370000)
		registerVal2.ImageX:setAlpha(1.000000)
		__FUNC_BE86_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_C0A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, 57.500000, 69.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		__FUNC_C0A9_(registerVal14, {})
		local function __FUNC_C2AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 47.710000, 108.500000)
			arg0:setTopBottom(true, false, -0.400000, 60.400000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		__FUNC_C2AA_(registerVal15, {})
		local function __FUNC_C4CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 56.000000, 59.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		__FUNC_C4CD_(registerVal16, {})
		local function __FUNC_C6CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, -11.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		__FUNC_C6CE_(registerVal17, {})
		local function __FUNC_C8CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 125.000000, 220.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		__FUNC_C8CE_(registerVal18, {})
		local function __FUNC_CAF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 228.000000, 323.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		__FUNC_CAF1_(registerVal19, {})
		local function __FUNC_CD15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, -1.000000, 3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		__FUNC_CD15_(registerVal20, {})
		local function __FUNC_CF16_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, 56.000000, 60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		__FUNC_CF16_(registerVal21, {})
		local function __FUNC_D116_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		__FUNC_D116_(registerVal22, {})
		local function __FUNC_D316_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 40.000000, 43.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		__FUNC_D316_(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.CharacterDraftForced = __FUNC_A31A_
	registerVal26.CharacterDraft = registerVal27
	registerVal27 = {}
	local function __FUNC_D516_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.080000, 38.580000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ImageX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.DefaultClip = __FUNC_D516_
	local function __FUNC_E16B_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_EF47_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 114.000000, 339.790000)
			arg0:setTopBottom(true, false, 2.500000, 54.660000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		__FUNC_EF47_(registerVal3, {})
		local function __FUNC_F146_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 50.210000, 108.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_F146_(registerVal4, {})
		local function __FUNC_F346_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 53.900000, 76.790000)
			arg0:setTopBottom(true, false, 47.050000, 71.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		__FUNC_F346_(registerVal5, {})
		local function __FUNC_F546_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 81.000000, 103.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_F546_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StateLeft:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.StateLeft:setTopBottom(true, false, 15.000000, 42.000000)
		registerVal2.StateLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StateRight:setLeftRight(true, false, 378.000000, 405.000000)
		registerVal2.StateRight:setTopBottom(true, false, 14.490000, 41.490000)
		registerVal2.StateRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_F746_(arg0, arg1)
			local function __FUNC_F8D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 120.000000, 339.790000)
				arg0:setTopBottom(true, false, 8.000000, 32.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F8D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 13.000000, 37.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8D4_)
		end

		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.000000, 39.000000)
		__FUNC_F746_(registerVal9, {})
		local function __FUNC_FAD6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, -1.000000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		__FUNC_FAD6_(registerVal11, {})
		local function __FUNC_FCD6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 48.000000, 106.770000)
			arg0:setTopBottom(true, false, -1.400000, 57.370000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.ImageX:setLeftRight(true, false, 48.000000, 106.770000)
		registerVal2.ImageX:setTopBottom(true, false, -1.400000, 57.370000)
		registerVal2.ImageX:setAlpha(1.000000)
		__FUNC_FCD6_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_FEF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, 57.500000, 69.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		__FUNC_FEF9_(registerVal14, {})
		local function __FUNC_100FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 47.710000, 108.500000)
			arg0:setTopBottom(true, false, -0.400000, 60.400000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		__FUNC_100FA_(registerVal15, {})
		local function __FUNC_1031D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 56.000000, 59.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		__FUNC_1031D_(registerVal16, {})
		local function __FUNC_1051E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, -11.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		__FUNC_1051E_(registerVal17, {})
		local function __FUNC_1071E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 125.000000, 220.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		__FUNC_1071E_(registerVal18, {})
		local function __FUNC_10941_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 228.000000, 323.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		__FUNC_10941_(registerVal19, {})
		local function __FUNC_10B65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, -1.000000, 3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		__FUNC_10B65_(registerVal20, {})
		local function __FUNC_10D66_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, 56.000000, 60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		__FUNC_10D66_(registerVal21, {})
		local function __FUNC_10F66_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		__FUNC_10F66_(registerVal22, {})
		local function __FUNC_11166_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 40.000000, 43.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		__FUNC_11166_(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.CharacterDraftSelected = __FUNC_E16B_
	local function __FUNC_11366_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_12143_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 114.000000, 339.790000)
			arg0:setTopBottom(true, false, 2.500000, 54.660000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		__FUNC_12143_(registerVal3, {})
		local function __FUNC_12342_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 50.210000, 108.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_12342_(registerVal4, {})
		local function __FUNC_12542_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 53.900000, 76.790000)
			arg0:setTopBottom(true, false, 47.050000, 71.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		__FUNC_12542_(registerVal5, {})
		local function __FUNC_12742_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 81.000000, 103.000000)
			arg0:setTopBottom(true, false, 49.000000, 70.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		__FUNC_12742_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StateLeft:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.StateLeft:setTopBottom(true, false, 15.000000, 42.000000)
		registerVal2.StateLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StateRight:setLeftRight(true, false, 378.000000, 405.000000)
		registerVal2.StateRight:setTopBottom(true, false, 14.490000, 41.490000)
		registerVal2.StateRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_12942_(arg0, arg1)
			local function __FUNC_12AD0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 120.000000, 339.790000)
				arg0:setTopBottom(true, false, 8.000000, 32.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12AD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 13.000000, 37.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AD0_)
		end

		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 15.000000, 39.000000)
		__FUNC_12942_(registerVal9, {})
		local function __FUNC_12CD2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, -1.000000, 2.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		__FUNC_12CD2_(registerVal11, {})
		local function __FUNC_12ED2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 48.000000, 106.770000)
			arg0:setTopBottom(true, false, -1.400000, 57.370000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.ImageX:setLeftRight(true, false, 48.000000, 106.770000)
		registerVal2.ImageX:setTopBottom(true, false, -1.400000, 57.370000)
		registerVal2.ImageX:setAlpha(1.000000)
		__FUNC_12ED2_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ImageBorder:setLeftRight(true, false, 50.000000, 108.000000)
		registerVal2.ImageBorder:setTopBottom(true, false, 0.000000, 57.370000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_130F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, 57.500000, 69.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		__FUNC_130F5_(registerVal14, {})
		local function __FUNC_132F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 47.710000, 108.500000)
			arg0:setTopBottom(true, false, -0.400000, 60.400000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 47.710000, 108.500000)
		registerVal2.CharacterRender:setTopBottom(true, false, -0.400000, 60.400000)
		registerVal2.CharacterRender:setAlpha(0.000000)
		__FUNC_132F6_(registerVal15, {})
		local function __FUNC_13519_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 333.000000, 369.000000)
			arg0:setTopBottom(true, false, 56.000000, 59.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		__FUNC_13519_(registerVal16, {})
		local function __FUNC_1371A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 41.710000, 57.710000)
			arg0:setTopBottom(true, false, -11.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		__FUNC_1371A_(registerVal17, {})
		local function __FUNC_1391A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 125.000000, 220.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.000000)
		__FUNC_1391A_(registerVal18, {})
		local function __FUNC_13B3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 228.000000, 323.000000)
			arg0:setTopBottom(true, false, 33.000000, 51.000000)
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.000000)
		__FUNC_13B3D_(registerVal19, {})
		local function __FUNC_13D61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, -1.000000, 3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		__FUNC_13D61_(registerVal20, {})
		local function __FUNC_13F62_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 110.000000, 346.000000)
			arg0:setTopBottom(true, false, 56.000000, 60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		__FUNC_13F62_(registerVal21, {})
		local function __FUNC_14162_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 14.000000, 17.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		__FUNC_14162_(registerVal22, {})
		local function __FUNC_14362_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 84.000000, 120.000000)
			arg0:setTopBottom(true, false, 40.000000, 43.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		__FUNC_14362_(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.SizeElement:setLeftRight(true, false, 0.000000, 425.000000)
		registerVal2.SizeElement:setTopBottom(true, false, 0.000000, 57.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal27.CharacterDraftForced = __FUNC_11366_
	registerVal26.CharacterDraftSelecting = registerVal27
	registerVal27 = {}
	local function __FUNC_14562_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 8.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal27.DefaultClip = __FUNC_14562_
	registerVal26.CharacterDraftSelected = registerVal27
	registerVal27 = {}
	local function __FUNC_14FD1_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 8.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal27.DefaultClip = __FUNC_14FD1_
	registerVal26.CACEdit = registerVal27
	registerVal27 = {}
	local function __FUNC_15A41_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 114.000000, 339.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 2.500000, 54.660000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 53.900000, 76.790000)
		registerVal2.Rank:setTopBottom(true, false, 47.050000, 71.050000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 81.000000, 103.000000)
		registerVal2.RankIcon:setTopBottom(true, false, 49.000000, 70.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.PregamePlayerName0:setLeftRight(true, false, 120.000000, 339.790000)
		registerVal2.PregamePlayerName0:setTopBottom(true, false, 8.000000, 32.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.pixelA0:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA0:setTopBottom(true, false, -1.000000, 2.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image0:setTopBottom(true, false, 57.500000, 69.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CharacterRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.pixelA00:setLeftRight(true, false, 333.000000, 369.000000)
		registerVal2.pixelA00:setTopBottom(true, false, 56.000000, 59.500000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 41.710000, 57.710000)
		registerVal2.Image00:setTopBottom(true, false, -11.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 125.000000, 220.000000)
		registerVal2.CharacterName:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterName:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CharacterLoadout:setLeftRight(true, false, 228.000000, 323.000000)
		registerVal2.CharacterLoadout:setTopBottom(true, false, 33.000000, 51.000000)
		registerVal2.CharacterLoadout:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineB1:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB1:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.LineB00:setLeftRight(true, false, 110.000000, 346.000000)
		registerVal2.LineB00:setTopBottom(true, false, 56.000000, 60.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.pixelA01:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA01:setTopBottom(true, false, 14.000000, 17.500000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.pixelA000:setLeftRight(true, false, 84.000000, 120.000000)
		registerVal2.pixelA000:setTopBottom(true, false, 40.000000, 43.500000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal27.DefaultClip = __FUNC_15A41_
	registerVal26.StreakEdit = registerVal27
	registerVal2.clipsPerState = registerVal26
	local registerVal28 = {}
	local registerVal29 = {}
	registerVal29.stateName = "ItemRestriction"
	local function __FUNC_164B1_(arg0, arg1, arg2)
		return ItemRestrictionVoteActive()
	end

	registerVal29.condition = __FUNC_164B1_
	local registerVal30 = {}
	registerVal30.stateName = "CharacterDraft"
	local function __FUNC_1650B_(arg0, arg2, arg3)
		local registerVal3 = CharacterDraftActive()
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_IDLE)
		end
		return registerVal3
	end

	registerVal30.condition = __FUNC_1650B_
	local registerVal31 = {}
	registerVal31.stateName = "CharacterDraftSelecting"
	local function __FUNC_16628_(arg0, arg2, arg3)
		local registerVal3 = CharacterDraftActive()
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		end
		return registerVal3
	end

	registerVal31.condition = __FUNC_16628_
	local registerVal32 = {}
	registerVal32.stateName = "CharacterDraftSelected"
	local function __FUNC_1674D_(arg0, arg1, arg2)
		return CharacterDraftActive()
	end

	registerVal32.condition = __FUNC_1674D_
	local registerVal33 = {}
	registerVal33.stateName = "CACEdit"
	local function __FUNC_167A2_(arg0, arg1, arg2)
		return ItemRestrictionCACEditActive()
	end

	registerVal33.condition = __FUNC_167A2_
	local registerVal34 = {}
	registerVal34.stateName = "StreakEdit"
	local function __FUNC_167FE_(arg0, arg1, arg2)
		return ItemRestrictionScorestreakEditActive()
	end

	registerVal34.condition = __FUNC_167FE_
	registerVal28 = {registerVal29, registerVal30, registerVal31, registerVal32, registerVal33, registerVal34}
	registerVal2:mergeStateConditions(registerVal28)
	registerVal29 = Engine.GetGlobalModel()
	registerVal28 = Engine.GetModel(registerVal29, "lobbyRoot.Pregame.state")
	local function __FUNC_16862_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_16862_)
	local function __FUNC_1698D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientState", true, __FUNC_1698D_)
	local function __FUNC_16AAD_(arg0)
		arg0.FEButtonPanel1:close()
		arg0.RankBackground:close()
		arg0.StateLeft:close()
		arg0.StateRight:close()
		arg0.PregamePlayerName0:close()
		arg0.ImagePanel:close()
		arg0.ImageBorder:close()
		arg0.CharacterRender:close()
		arg0.IconControllerContainer:close()
		arg0.Rank:close()
		arg0.CharacterName:close()
		arg0.CharacterLoadout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16AAD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

