-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsSummaryItem")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsSummaryNoRules")
require("ui.uieditor.widgets.Competitive.Competitive_LobbyWidget_Title")
local function __FUNC_324_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyPlaylist")
	Engine.CreateModel(registerVal2, "name")
	Engine.CreateModel(registerVal2, "kickerText")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot")
	registerVal4 = Engine.CreateModel(registerVal3, "playlistId")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == nil then
		Engine.SetModelValue(registerVal4, Engine.GetPlaylistID())
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Competitive_SettingsSummary = registerVal2
local function __FUNC_52B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_324_ then
		__FUNC_324_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_SettingsSummary)
	registerVal2.id = "Competitive_SettingsSummary"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 519.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 223.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 23.000000, 164.000000)
	registerVal3:setTopBottom(true, false, 34.500000, 175.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal4:setTopBottom(false, false, 59.000000, 63.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.pixelLL = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal5:setTopBottom(false, false, -77.000000, -73.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -4.000000, 28.000000)
	registerVal6:setTopBottom(false, false, -33.040000, 18.960000)
	registerVal6:setZoom(10.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelb"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.pixelMiddle = registerVal6
	local registerVal7 = CoD.FE_FeaturedFrame.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 26.000000, 162.000000)
	registerVal7:setTopBottom(true, false, 36.000000, 172.920000)
	registerVal7:setAlpha(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFeaturedFrame0 = registerVal7
	local registerVal8 = CoD.Competitive_SettingsSummaryItem.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 168.000000, 444.000000)
	registerVal8:setTopBottom(true, false, 37.500000, 102.500000)
	registerVal8.Title:setText(Engine.Localize("MENU_BAN_PROTECT_ACTIVE_CAPS"))
	registerVal8.Description:setText(Engine.Localize("MENU_BAN_PROTECT_ACTIVE_DESC"))
	registerVal2:addElement(registerVal8)
	registerVal2.Vote = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 28.000000, 160.000000)
	registerVal9:setTopBottom(true, false, 38.000000, 170.000000)
	local function __FUNC_1B04_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(GetPlaylistImage(registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "LobbyRoot", "playlistId", __FUNC_1B04_)
	registerVal2:addElement(registerVal9)
	registerVal2.GamemodeIcon = registerVal9
	local registerVal10 = CoD.Competitive_SettingsSummaryItem.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 168.000000, 444.000000)
	registerVal10:setTopBottom(true, false, 106.920000, 171.920000)
	registerVal10.Title:setText(Engine.Localize("MENU_DRAFT_ACTIVE_CAPS"))
	registerVal10.Description:setText(Engine.Localize("MENU_DRAFT_ACTIVE_DESC"))
	registerVal2:addElement(registerVal10)
	registerVal2.Draft = registerVal10
	local registerVal11 = CoD.Competitive_SettingsSummaryNoRules.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 169.000000, 444.000000)
	registerVal11:setTopBottom(true, false, 71.920000, 141.920000)
	registerVal11:setAlpha(0.000000)
	registerVal11.Description:setText(Engine.Localize("MENU_BAN_PROTECT_ACTIVE_DESC"))
	registerVal2:addElement(registerVal11)
	registerVal2.NoRules = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 437.000000, 473.000000)
	registerVal12:setTopBottom(true, false, 34.000000, 37.500000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.TickTR = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 437.000000, 473.000000)
	registerVal13:setTopBottom(true, false, 171.000000, 174.500000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.TickBR = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 157.000000, 450.000000)
	registerVal14:setTopBottom(true, false, 34.000000, 38.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.LineT = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 157.000000, 450.000000)
	registerVal15:setTopBottom(true, false, 171.000000, 175.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.LineB = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 160.000000, 176.000000)
	registerVal16:setTopBottom(true, false, 99.000000, 111.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_buttonsseparate"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.TickTL = registerVal16
	local registerVal17 = CoD.Competitive_LobbyWidget_Title.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 27.000000, 442.000000)
	registerVal17:setTopBottom(true, false, 1.500000, 31.500000)
	local function __FUNC_1BDA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg1, "LobbyPlaylistName", "name", __FUNC_1BDA_)
	registerVal2:addElement(registerVal17)
	registerVal2.CompetitiveLobbyWidgetTitle = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1CAD_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, 23.000000, 164.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, 34.500000, 175.000000)
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelLL:setLeftRight(true, false, 0.000000, 28.000000)
		registerVal2.pixelLL:setTopBottom(false, false, 59.000000, 63.000000)
		registerVal2.pixelLL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixelMiddle:setLeftRight(true, false, -4.000000, 28.000000)
		registerVal2.pixelMiddle:setTopBottom(false, false, -33.040000, 18.960000)
		registerVal2.pixelMiddle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedFrame0:setLeftRight(true, false, 26.000000, 162.000000)
		registerVal2.FEFeaturedFrame0:setTopBottom(true, false, 36.000000, 172.920000)
		registerVal2.FEFeaturedFrame0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Vote:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Vote:setTopBottom(true, false, 37.500000, 102.500000)
		registerVal2.Vote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GamemodeIcon:setLeftRight(true, false, 28.000000, 160.000000)
		registerVal2.GamemodeIcon:setTopBottom(true, false, 38.000000, 170.000000)
		registerVal2.GamemodeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Draft:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Draft:setTopBottom(true, false, 106.920000, 171.920000)
		registerVal2.Draft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NoRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TickTR:setLeftRight(true, false, 437.000000, 473.000000)
		registerVal2.TickTR:setTopBottom(true, false, 34.000000, 37.500000)
		registerVal2.TickTR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TickBR:setLeftRight(true, false, 437.000000, 473.000000)
		registerVal2.TickBR:setTopBottom(true, false, 171.000000, 174.500000)
		registerVal2.TickBR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LineT:setLeftRight(true, false, 157.000000, 450.000000)
		registerVal2.LineT:setTopBottom(true, false, 34.000000, 38.000000)
		registerVal2.LineT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LineB:setLeftRight(true, false, 157.000000, 450.000000)
		registerVal2.LineB:setTopBottom(true, false, 171.000000, 175.000000)
		registerVal2.LineB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TickTL:setLeftRight(true, false, 160.000000, 176.000000)
		registerVal2.TickTL:setTopBottom(true, false, 99.000000, 111.000000)
		registerVal2.TickTL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompetitiveLobbyWidgetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1CAD_
	local function __FUNC_2704_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal19.FadeIn = __FUNC_2704_
	local function __FUNC_2766_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal19.HideForGameStart = __FUNC_2766_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_27C6_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, 23.000000, 164.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, 34.500000, 175.000000)
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelLL:setLeftRight(true, false, 0.000000, 28.000000)
		registerVal2.pixelLL:setTopBottom(false, false, 59.000000, 63.000000)
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setLeftRight(true, false, 0.000000, 28.000000)
		registerVal2.Image1:setTopBottom(false, false, -77.000000, -73.000000)
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixelMiddle:setLeftRight(true, false, -4.000000, 28.000000)
		registerVal2.pixelMiddle:setTopBottom(false, false, -33.040000, 18.960000)
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedFrame0:setLeftRight(true, false, 26.000000, 162.000000)
		registerVal2.FEFeaturedFrame0:setTopBottom(true, false, 36.000000, 172.920000)
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Vote:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Vote:setTopBottom(true, false, 37.000000, 102.000000)
		registerVal2.Vote:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GamemodeIcon:setLeftRight(true, false, 28.000000, 160.000000)
		registerVal2.GamemodeIcon:setTopBottom(true, false, 38.000000, 170.000000)
		registerVal2.GamemodeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Draft:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Draft:setTopBottom(true, false, 106.920000, 171.920000)
		registerVal2.Draft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NoRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TickTR:setLeftRight(true, false, 437.000000, 473.000000)
		registerVal2.TickTR:setTopBottom(true, false, 34.000000, 37.500000)
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TickBR:setLeftRight(true, false, 437.000000, 473.000000)
		registerVal2.TickBR:setTopBottom(true, false, 171.000000, 174.500000)
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LineT:setLeftRight(true, false, 157.000000, 450.000000)
		registerVal2.LineT:setTopBottom(true, false, 34.000000, 38.000000)
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LineB:setLeftRight(true, false, 157.000000, 450.000000)
		registerVal2.LineB:setTopBottom(true, false, 171.000000, 175.000000)
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TickTL:setLeftRight(true, false, 160.000000, 176.000000)
		registerVal2.TickTL:setTopBottom(true, false, 99.000000, 111.000000)
		registerVal2.TickTL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompetitiveLobbyWidgetTitle:setLeftRight(true, false, 27.000000, 442.000000)
		registerVal2.CompetitiveLobbyWidgetTitle:setTopBottom(true, false, 1.500000, 31.500000)
		registerVal2.CompetitiveLobbyWidgetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_27C6_
	registerVal18.VoteAndDraftActive = registerVal19
	registerVal19 = {}
	local function __FUNC_32EE_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Vote:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Vote:setTopBottom(true, false, 37.000000, 170.000000)
		registerVal2.Vote:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GamemodeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Draft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NoRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TickTL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompetitiveLobbyWidgetTitle:setLeftRight(true, false, 27.000000, 442.000000)
		registerVal2.CompetitiveLobbyWidgetTitle:setTopBottom(true, false, 1.500000, 31.500000)
		registerVal2.CompetitiveLobbyWidgetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_32EE_
	registerVal18.VoteActive = registerVal19
	registerVal19 = {}
	local function __FUNC_39B6_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Vote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GamemodeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Draft:setLeftRight(true, false, 168.000000, 444.000000)
		registerVal2.Draft:setTopBottom(true, false, 37.000000, 170.000000)
		registerVal2.Draft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NoRules:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TickTL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompetitiveLobbyWidgetTitle:setLeftRight(true, false, 27.000000, 442.000000)
		registerVal2.CompetitiveLobbyWidgetTitle:setTopBottom(true, false, 1.500000, 31.500000)
		registerVal2.CompetitiveLobbyWidgetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_39B6_
	registerVal18.DraftActive = registerVal19
	registerVal19 = {}
	local function __FUNC_407E_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixelMiddle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedFrame0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Vote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GamemodeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Draft:setLeftRight(true, false, 130.000000, 406.000000)
		registerVal2.Draft:setTopBottom(true, false, 77.000000, 169.000000)
		registerVal2.Draft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Description:completeAnimation()
		registerVal2.NoRules:setLeftRight(true, false, 169.000000, 444.000000)
		registerVal2.NoRules:setTopBottom(true, false, 37.000000, 170.000000)
		registerVal2.NoRules:setAlpha(1.000000)
		registerVal2.NoRules.Description:setText(Engine.Localize("MENU_NO_RULES_ACTIVE"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TickTL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompetitiveLobbyWidgetTitle:setLeftRight(true, false, 27.000000, 442.000000)
		registerVal2.CompetitiveLobbyWidgetTitle:setTopBottom(true, false, 1.500000, 31.500000)
		registerVal2.CompetitiveLobbyWidgetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_407E_
	registerVal18.NoRulesActive = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "VoteAndDraftActive"
	local function __FUNC_485F_(arg0, arg1, arg2)
		local registerVal3 = ShouldShowCompetitiveSettingsSummary()
		registerVal3 = CharacterDraftEnabled()
		if registerVal3 and registerVal3 then
			registerVal3 = PregameItemVoteEnabled()
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_485F_
	local registerVal22 = {}
	registerVal22.stateName = "VoteActive"
	local function __FUNC_4921_(arg0, arg1, arg2)
		local registerVal3 = ShouldShowCompetitiveSettingsSummary()
		if registerVal3 then
			registerVal3 = PregameItemVoteEnabled()
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_4921_
	local registerVal23 = {}
	registerVal23.stateName = "DraftActive"
	local function __FUNC_49B6_(arg0, arg1, arg2)
		local registerVal3 = ShouldShowCompetitiveSettingsSummary()
		if registerVal3 then
			registerVal3 = CharacterDraftEnabled()
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_49B6_
	local registerVal24 = {}
	registerVal24.stateName = "NoRulesActive"
	local function __FUNC_4A49_(arg0, arg1, arg2)
		return ShouldShowCompetitiveSettingsSummary()
	end

	registerVal24.condition = __FUNC_4A49_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal2:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.lobbyNav")
	local function __FUNC_4AAE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_4AAE_)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "GametypeSettings.Update")
	local function __FUNC_4BD4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GametypeSettings.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_4BD4_)
	local function __FUNC_4D01_(arg0)
		arg0.FEFeaturedFrame0:close()
		arg0.Vote:close()
		arg0.Draft:close()
		arg0.NoRules:close()
		arg0.CompetitiveLobbyWidgetTitle:close()
		arg0.GamemodeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D01_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Competitive_SettingsSummary.new = __FUNC_52B_
