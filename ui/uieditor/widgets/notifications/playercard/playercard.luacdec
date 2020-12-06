-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard_Label")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerCard = registerVal1
function CoD.PlayerCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerCard)
	registerVal2.id = "PlayerCard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 308.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 92.000000, 304.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 57.000000)
	registerVal3.CardIconFrame:setScale(0.440000)
	local function __FUNC_1E4A_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_1E4A_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardsFrameWidget = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 91.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 57.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.LeftPanel = registerVal4
	local registerVal5 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 91.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 57.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal5:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 91.000000)
	registerVal6:setTopBottom(true, false, 2.000000, 57.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.VSpanel = registerVal6
	local registerVal7 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 92.410000, 136.410000)
	registerVal7:setTopBottom(true, false, 27.000000, 47.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.Panel = registerVal7
	local registerVal8 = CoD.PlayerCard_Label.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 92.410000, 300.410000)
	registerVal8:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal8.Panel:setAlpha(0.600000)
	local function __FUNC_1E9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "playerName", true, __FUNC_1E9A_)
	local function __FUNC_1F50_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1F50_)
	local function __FUNC_1FA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "playerName", true, __FUNC_1FA2_)
	local function __FUNC_2052_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_2052_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "PlayerYellow"
	local function __FUNC_20B1_(arg0, arg2, arg3)
		return IsSelfModelValueMyXuidOrAnyLocalPlayerOnGameOver(arg2, arg1, "xuid")
	end

	registerVal12.condition = __FUNC_20B1_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_213C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "xuid"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "xuid", true, __FUNC_213C_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_2256_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2256_)
	registerVal2:addElement(registerVal8)
	registerVal2.GamerTag = registerVal8
	local registerVal9 = CoD.PlayerCard_Label.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 92.410000, 139.410000)
	registerVal9:setTopBottom(true, false, 26.000000, 46.000000)
	registerVal9.Panel:setAlpha(0.600000)
	local function __FUNC_23DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "clanTag", true, __FUNC_23DD_)
	local function __FUNC_2494_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.itemName:setText(StringAsClanTag(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "clanTag", true, __FUNC_2494_)
	local function __FUNC_2567_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_2567_)
	registerVal2:addElement(registerVal9)
	registerVal2.ClanTag = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -2.000000, 62.000000)
	registerVal10:setTopBottom(true, false, -8.000000, 64.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_img_t7_hud_widget_playercard_playerbacking"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal10)
	registerVal2.HeroBacking = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 31.000000, 95.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 49.000000)
	registerVal11:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_img_t7_hud_widget_playercard_playerbackingelements"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal11)
	registerVal2.TeamColor = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 1.000000, 59.000000)
	registerVal12:setTopBottom(true, false, -9.000000, 49.000000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_25C5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupCharacterExtraCamRenderForLobbyClient(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "xuid", true, __FUNC_25C5_)
	registerVal2:addElement(registerVal12)
	registerVal2.HeroLobbyClientExtraCamRender = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 115.660000, 131.660000)
	registerVal13:setTopBottom(true, false, 29.000000, 45.000000)
	registerVal13:setAlpha(0.000000)
	local function __FUNC_267B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_267B_)
	registerVal2:addElement(registerVal13)
	registerVal2.RankIcon = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 94.410000, 114.410000)
	registerVal14:setTopBottom(true, false, 26.000000, 46.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setLetterSpacing(0.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_272C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "rank", true, __FUNC_272C_)
	registerVal2:addElement(registerVal14)
	registerVal2.Rank = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 94.410000, 322.000000)
	registerVal15:setTopBottom(true, false, -16.000000, 2.000000)
	registerVal15:setTTF("fonts/escom.ttf")
	registerVal15:setLetterSpacing(0.500000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_27E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "heading", true, __FUNC_27E6_)
	registerVal2:addElement(registerVal15)
	registerVal2.CalloutHeading = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 91.000000)
	registerVal16:setTopBottom(true, false, 2.000000, 57.000000)
	local function __FUNC_289E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal16:linkToElementModel(registerVal2, "xuid", true, __FUNC_289E_)
	registerVal2:addElement(registerVal16)
	registerVal2.PlayerEmblem = registerVal16
	local registerVal17 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, -2.590000, 93.410000)
	registerVal17:setTopBottom(true, false, 0.000000, 59.000000)
	registerVal17:setAlpha(0.600000)
	registerVal2:addElement(registerVal17)
	registerVal2.StartMenuframenoBG0 = registerVal17
	local registerVal18 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 88.410000, 306.410000)
	registerVal18:setTopBottom(true, false, 0.000000, 59.000000)
	registerVal18:setAlpha(0.600000)
	registerVal2:addElement(registerVal18)
	registerVal2.StartMenuframenoBG1 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -19.000000, -3.000000)
	registerVal19:setTopBottom(true, false, -3.000000, 5.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Image00001 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -19.000000, -3.000000)
	registerVal20:setTopBottom(true, false, 53.000000, 61.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image2 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 306.000000, 322.000000)
	registerVal21:setTopBottom(true, false, -2.000000, 6.000000)
	registerVal21:setZRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image000010 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 306.000000, 322.000000)
	registerVal22:setTopBottom(true, false, 53.000000, 61.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image20 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_2940_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setLeftRight(true, false, 92.000000, 304.000000)
		registerVal2.CallingCardsFrameWidget:setTopBottom(true, false, 2.000000, 57.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.HeroBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.HeroLobbyClientExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.CalloutHeading:setLeftRight(true, false, 93.410000, 365.000000)
		registerVal2.CalloutHeading:setTopBottom(true, false, -16.000000, 2.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PlayerEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.StartMenuframenoBG1:setLeftRight(true, false, 89.410000, 305.410000)
		registerVal2.StartMenuframenoBG1:setTopBottom(true, false, 0.000000, 59.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal21:completeAnimation()
		registerVal2.Image000010:setLeftRight(true, false, 306.000000, 322.000000)
		registerVal2.Image000010:setTopBottom(true, false, -2.000000, 6.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image20:setLeftRight(true, false, 306.000000, 322.000000)
		registerVal2.Image20:setTopBottom(true, false, 53.000000, 61.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2940_
	local function __FUNC_2E5D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal24.Side = __FUNC_2E5D_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_2EBE_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setLeftRight(true, false, 92.000000, 304.000000)
		registerVal2.CallingCardsFrameWidget:setTopBottom(true, false, 2.000000, 57.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftPanel:setLeftRight(true, false, 0.000000, 91.000000)
		registerVal2.LeftPanel:setTopBottom(true, false, 2.500000, 56.500000)
		registerVal2.LeftPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.HeroBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TeamColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroLobbyClientExtraCamRender:setLeftRight(true, false, 8.000000, 66.000000)
		registerVal2.HeroLobbyClientExtraCamRender:setTopBottom(true, false, -9.000000, 49.000000)
		registerVal2.HeroLobbyClientExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.PlayerEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.StartMenuframenoBG1:setLeftRight(true, false, 89.410000, 306.000000)
		registerVal2.StartMenuframenoBG1:setTopBottom(true, false, 0.000000, 59.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal21:completeAnimation()
		registerVal2.Image000010:setLeftRight(true, false, 306.000000, 322.000000)
		registerVal2.Image000010:setTopBottom(true, false, -2.000000, 6.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image20:setLeftRight(true, false, 306.000000, 322.000000)
		registerVal2.Image20:setTopBottom(true, false, 53.000000, 61.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_2EBE_
	registerVal23.Emblem = registerVal24
	registerVal24 = {}
	local function __FUNC_360E_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setLeftRight(true, false, 1.590000, 213.590000)
		registerVal2.CallingCardsFrameWidget:setTopBottom(true, false, 2.000000, 57.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LeftPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Panel:setLeftRight(true, false, 91.000000, 135.000000)
		registerVal2.Panel:setTopBottom(true, false, 27.000000, 47.000000)
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GamerTag:setLeftRight(true, false, 2.000000, 205.000000)
		registerVal2.GamerTag:setTopBottom(true, false, 5.000000, 25.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ClanTag:setLeftRight(true, false, 2.000000, 49.000000)
		registerVal2.ClanTag:setTopBottom(true, false, 26.000000, 46.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeroBacking:setLeftRight(true, false, -3.410000, 60.590000)
		registerVal2.HeroBacking:setTopBottom(true, false, -8.000000, 64.000000)
		registerVal2.HeroBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TeamColor:setLeftRight(true, false, 29.590000, 93.590000)
		registerVal2.TeamColor:setTopBottom(true, false, 2.000000, 49.000000)
		registerVal2.TeamColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.HeroLobbyClientExtraCamRender:setLeftRight(true, false, -0.410000, 57.590000)
		registerVal2.HeroLobbyClientExtraCamRender:setTopBottom(true, false, -9.000000, 49.000000)
		registerVal2.HeroLobbyClientExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 114.250000, 130.250000)
		registerVal2.RankIcon:setTopBottom(true, false, 29.000000, 45.000000)
		registerVal2.RankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 5.000000, 25.000000)
		registerVal2.Rank:setTopBottom(true, false, 26.000000, 46.000000)
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CalloutHeading:setLeftRight(true, false, 2.000000, 213.590000)
		registerVal2.CalloutHeading:setTopBottom(true, false, -17.000000, 1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PlayerEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, -4.000000, 92.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 0.000000, 59.000000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.StartMenuframenoBG1:setLeftRight(true, false, -1.000000, 215.590000)
		registerVal2.StartMenuframenoBG1:setTopBottom(true, false, 0.000000, 59.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Image00001:setLeftRight(true, false, -15.410000, 0.590000)
		registerVal2.Image00001:setTopBottom(true, false, -3.000000, 5.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Image2:setLeftRight(true, false, -15.410000, 0.590000)
		registerVal2.Image2:setTopBottom(true, false, 53.000000, 61.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image000010:setLeftRight(true, false, 215.590000, 231.590000)
		registerVal2.Image000010:setTopBottom(true, false, -2.000000, 6.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image20:setLeftRight(true, false, 215.590000, 231.590000)
		registerVal2.Image20:setTopBottom(true, false, 53.000000, 61.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_360E_
	registerVal23.Calingcard = registerVal24
	registerVal2.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Emblem"
	local function __FUNC_42C1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal26.condition = __FUNC_42C1_
	local registerVal27 = {}
	registerVal27.stateName = "Calingcard"
	local function __FUNC_430C_(arg0, arg1, arg2)
		return true
	end

	registerVal27.condition = __FUNC_430C_
	registerVal25 = {registerVal26, registerVal27}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_4340_(arg0)
		arg0.CallingCardsFrameWidget:close()
		arg0.LeftPanel:close()
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel:close()
		arg0.Panel:close()
		arg0.GamerTag:close()
		arg0.ClanTag:close()
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.HeroLobbyClientExtraCamRender:close()
		arg0.RankIcon:close()
		arg0.Rank:close()
		arg0.CalloutHeading:close()
		arg0.PlayerEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4340_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

