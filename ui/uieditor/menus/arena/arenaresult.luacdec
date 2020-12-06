-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.AAR.RewardsOverlay")
require("ui.uieditor.menus.AAR.MPAAR")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_SlideSubHeader")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Arena.ArenaStarbig")
require("ui.uieditor.widgets.Arena.ArenaRankSmall")
require("ui.uieditor.widgets.Arena.ArenaVictory")
local function __FUNC_505_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_559_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "closeAAR")
	local function __FUNC_668_(arg1)
		arg0:close()
	end

	arg0:subscribeToModel(registerVal3, __FUNC_668_, false)
end

local function __FUNC_6AF_(arg0, arg1)
	local function __FUNC_774_(arg2)
		if arg0.rank >= arg1.rank then
		end
		for index3=0.000000, (arg0.maxStars - 1.000000), 1.000000 do
			if index3 >= arg0.starsEarned then
			end
			local registerVal10 = {}
			local registerVal11 = {}
			registerVal11.earned = true
			registerVal10.models = registerVal11
			table.insert({}, registerVal10)
		end
		return {}
	end

	local registerVal4 = DataSourceHelpers.ListSetup("Arena_Result_Stars_Previous", __FUNC_774_)
	DataSources["Arena_Result_Stars_Previous"] = registerVal4
	return "Arena_Result_Stars_Previous"
end

local function __FUNC_8C2_(arg0, arg1)
	local function __FUNC_987_(arg2)
		if arg0.rank >= arg1.rank then
		end
		for index4=0.000000, (arg1.maxStars - 1.000000), 1.000000 do
			if index4 >= arg1.starsEarned then
			end
			if (arg1.starsEarned - (arg1.starsEarned - arg0.starsEarned)) > index4 then
			end
			if index4 >= arg0.starsEarned then
			end
			if not true then
			else
			end
			local registerVal14 = {}
			local registerVal15 = {}
			registerVal15.earned = true
			registerVal15.new = true
			registerVal15.lost = true
			registerVal14.models = registerVal15
			table.insert({}, registerVal14)
		end
		return {}
	end

	local registerVal4 = DataSourceHelpers.ListSetup("Arena_Result_Stars_Current", __FUNC_987_)
	DataSources["Arena_Result_Stars_Current"] = registerVal4
	return "Arena_Result_Stars_Current"
end

local registerVal5 = {}
local function __FUNC_B85_(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "arenaResult")
	registerVal2 = Engine.GetPlaylistID()
	local registerVal3 = Engine.GetPlaylistInfoByID(registerVal2)
	local registerVal4 = CoD.GetPlayerStats(arg0)
	local registerVal6 = registerVal4.arenaStats[registerVal3.playlist.arenaSlot].matchStartPoints:get()
	{}.points = registerVal6
	registerVal6 = CoD.ArenaUtility.GetRank({}.points)
	{}.rank = registerVal6
	registerVal6 = CoD.ArenaUtility.GetRankVisibleStars({}.points)
	{}.maxStars = registerVal6
	registerVal6 = CoD.ArenaUtility.GetStarCount({}.points)
	{}.starsEarned = registerVal6
	local registerVal7 = registerVal4.arenaStats[registerVal3.playlist.arenaSlot].points:get()
	{}.points = registerVal7
	registerVal7 = CoD.ArenaUtility.GetRank({}.points)
	{}.rank = registerVal7
	registerVal7 = CoD.ArenaUtility.GetRankVisibleStars({}.points)
	{}.maxStars = registerVal7
	registerVal7 = CoD.ArenaUtility.GetStarCount({}.points)
	{}.starsEarned = registerVal7
	registerVal7 = Engine.CreateModel(registerVal1, "previousPoints")
	Engine.SetModelValue(registerVal7, {}.points)
	local registerVal8 = Engine.CreateModel(registerVal1, "previousStarsDatasource")
	Engine.SetModelValue(registerVal8, __FUNC_6AF_({}, {}))
	local registerVal9 = Engine.CreateModel(registerVal1, "currentPoints")
	Engine.SetModelValue(registerVal9, {}.points)
	local registerVal10 = Engine.CreateModel(registerVal1, "currentStarsDatasource")
	Engine.SetModelValue(registerVal10, __FUNC_8C2_({}, {}))
	return registerVal1
end

registerVal5.getModel = __FUNC_B85_
DataSources.ArenaResult = registerVal5
local function __FUNC_1115_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ArenaResult")
	if __FUNC_505_ then
		__FUNC_505_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ArenaResult.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_3B0E_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_3B0E_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_3B9A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_3B9A_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.VignetteBack = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_ARENA_RANK_PROGRESS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_ARENA_RANK_PROGRESS"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -15.000000, 169.000000)
	registerVal7:setAlpha(0.440000)
	registerVal7:setXRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_menu_startflow_vignette"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal7)
	registerVal1.Team1Vignette = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -11.000000, 11.000000)
	registerVal8:setTopBottom(false, false, -19.000000, -11.000000)
	registerVal8:setAlpha(0.200000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Team1Line = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -171.000000, 172.000000)
	registerVal9:setTopBottom(true, false, 180.050000, 523.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.BoxButtonLrgIdle = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -166.000000, 166.000000)
	registerVal10:setTopBottom(true, false, 185.000000, 517.000000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.RankImageBorder = registerVal10
	local registerVal11 = CoD.FE_SlideSubHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -122.000000, 125.000000)
	registerVal11:setTopBottom(true, false, 570.130000, 606.130000)
	registerVal11.FELabelSubHeadingD0.Label0:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal11)
	registerVal1.RankFrame = registerVal11
	local registerVal12 = CoD.FE_ListHeaderGlow.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -122.000000, 125.000000)
	registerVal12:setTopBottom(true, false, 534.000000, 568.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.PlayListBG = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -120.500000, 125.000000)
	registerVal13:setTopBottom(true, false, 538.000000, 564.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal13:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setLetterSpacing(1.000000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3CC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "LobbyPlaylistName", "name", __FUNC_3CC2_)
	local function __FUNC_3D7A_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal13, "setText", __FUNC_3D7A_)
	registerVal1:addElement(registerVal13)
	registerVal1.PlayListName = registerVal13
	local registerVal14 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(false, false, -124.500000, 125.500000)
	registerVal14:setTopBottom(true, false, 608.130000, 648.130000)
	registerVal14:setWidgetType(CoD.ArenaStarbig)
	registerVal14:setHorizontalCount(6.000000)
	local function __FUNC_3DD9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setDataSource(registerVal1)
		end
	end

	registerVal14:subscribeToGlobalModel(arg0, "ArenaResult", "currentStarsDatasource", __FUNC_3DD9_)
	local function __FUNC_3E72_(arg1, arg2)
		local registerVal3 = ArenaRankIncreased(arg0)
		if registerVal3 then
			PlayClip(registerVal1, "RankedUp", arg0)
			PlayArenaChallengeToastsOnClipOver(registerVal1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("menu_loaded", __FUNC_3E72_)
	registerVal1:addElement(registerVal14)
	registerVal1.CurrentStars = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -122.000000, 125.000000)
	registerVal15:setTopBottom(true, false, 570.000000, 604.000000)
	registerVal15:setRGB(0.760000, 0.830000, 0.850000)
	registerVal15:setTTF("fonts/escom.ttf")
	registerVal15:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal15:setShaderVector(0.000000, 0.050000, 1.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setLetterSpacing(1.000000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3F81_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(LocalizeToUpperString(GetArenaRankName(registerVal1)))
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_3F81_)
	local function __FUNC_405D_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal15, "setText", __FUNC_405D_)
	registerVal1:addElement(registerVal15)
	registerVal1.CurrentRankText = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -117.000000, 116.040000)
	registerVal16:setTopBottom(true, false, 221.840000, 448.160000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZRot(108.000000)
	registerVal16:setScale(2.590000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.highlight1 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -117.000000, 116.040000)
	registerVal17:setTopBottom(true, false, 221.840000, 448.160000)
	registerVal17:setRGB(0.620000, 0.490000, 0.050000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZRot(221.000000)
	registerVal17:setScale(1.890000)
	registerVal17:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.highlight00 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -117.000000, 116.040000)
	registerVal18:setTopBottom(true, false, 221.840000, 448.160000)
	registerVal18:setRGB(0.620000, 0.490000, 0.050000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setZRot(325.000000)
	registerVal18:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal18)
	registerVal1.highlight0 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, -117.000000, 116.040000)
	registerVal19:setTopBottom(true, false, 221.840000, 448.160000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZRot(108.000000)
	registerVal19:setScale(3.300000)
	registerVal19:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal19)
	registerVal1.highlight = registerVal19
	local registerVal20 = CoD.ArenaRankSmall.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, false, -148.000000, 148.000000)
	registerVal20:setTopBottom(true, false, 208.000000, 504.000000)
	local function __FUNC_40BD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_40BD_)
	registerVal1:addElement(registerVal20)
	registerVal1.CurrentRank = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -148.000000, 148.000000)
	registerVal21:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal21:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal21:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_41B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal21:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_41B2_)
	registerVal1:addElement(registerVal21)
	registerVal1.CurrentRankADD = registerVal21
	local registerVal22 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal22:makeFocusable()
	registerVal22:setLeftRight(false, false, -124.500000, 125.500000)
	registerVal22:setTopBottom(true, false, 600.130000, 640.130000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setWidgetType(CoD.ArenaStarbig)
	registerVal22:setHorizontalCount(6.000000)
	local function __FUNC_4288_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setDataSource(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "ArenaResult", "previousStarsDatasource", __FUNC_4288_)
	registerVal1:addElement(registerVal22)
	registerVal1.PreviousStars = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, false, 518.000000, 765.000000)
	registerVal23:setTopBottom(false, true, -149.870000, -115.870000)
	registerVal23:setRGB(0.760000, 0.830000, 0.850000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setTTF("fonts/escom.ttf")
	registerVal23:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal23:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setLetterSpacing(1.000000)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_4322_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(LocalizeToUpperString(GetArenaRankName(registerVal1)))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "ArenaResult", "previousPoints", __FUNC_4322_)
	local function __FUNC_43FD_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal23, "setText", __FUNC_43FD_)
	registerVal1:addElement(registerVal23)
	registerVal1.PreviousRankText = registerVal23
	local registerVal24 = CoD.ArenaRankSmall.new(registerVal1, arg0)
	registerVal24:setLeftRight(false, false, -148.000000, 148.000000)
	registerVal24:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal24:setAlpha(0.000000)
	local function __FUNC_445D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal24:subscribeToGlobalModel(arg0, "ArenaResult", "previousPoints", __FUNC_445D_)
	registerVal1:addElement(registerVal24)
	registerVal1.PreviousRankAdd = registerVal24
	local registerVal25 = CoD.ArenaVictory.new(registerVal1, arg0)
	registerVal25:setLeftRight(false, false, -350.500000, 351.500000)
	registerVal25:setTopBottom(true, false, 117.000000, 172.000000)
	registerVal1:addElement(registerVal25)
	registerVal1.ArenaVictory = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, false, 147.520000, 443.520000)
	registerVal26:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal26:setRGB(0.490000, 0.000000, 0.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setScale(2.000000)
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal26:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_4552_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal26:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_4552_)
	registerVal1:addElement(registerVal26)
	registerVal1.CurrentRankR1 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, false, -443.500000, -147.500000)
	registerVal27:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal27:setRGB(0.060000, 0.580000, 0.000000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setScale(2.000000)
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal27:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal27:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_4628_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal27:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal27:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_4628_)
	registerVal1:addElement(registerVal27)
	registerVal1.CurrentRankL1 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, false, -148.480000, 147.520000)
	registerVal28:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal28:setRGB(0.000000, 0.030000, 0.490000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setScale(2.000000)
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal28:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal28:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_4700_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal28:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal28:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_4700_)
	registerVal1:addElement(registerVal28)
	registerVal1.CurrentRankC1 = registerVal28
	local registerVal29 = CoD.ArenaRankSmall.new(registerVal1, arg0)
	registerVal29:setLeftRight(false, false, -148.000000, 148.000000)
	registerVal29:setTopBottom(true, false, 208.000000, 504.000000)
	registerVal29:setRGB(1.000000, 0.800000, 0.000000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal29:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_47D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29.rankIcon:setImage(RegisterImage(GetArenaRankIconLG(registerVal1)))
		end
	end

	registerVal29:subscribeToGlobalModel(arg0, "ArenaResult", "currentPoints", __FUNC_47D8_)
	registerVal1:addElement(registerVal29)
	registerVal1.CurrentRankglint = registerVal29
	local registerVal30 = LUI.UIElement.new()
	registerVal30:setLeftRight(true, false, -79.290000, -31.290000)
	registerVal30:setTopBottom(true, false, 606.130000, 654.130000)
	registerVal30:setPlaySoundDirect(true)
	registerVal1:addElement(registerVal30)
	registerVal1.rankup = registerVal30
	local registerVal31 = {}
	registerVal31.up = registerVal22
	registerVal14.navigation = registerVal31
	registerVal31 = {}
	registerVal31.down = registerVal14
	registerVal22.navigation = registerVal31
	registerVal31 = {}
	local registerVal32 = {}
	local function __FUNC_48CE_()
		registerVal1:setupElementClipCounter(14.000000)
		local function __FUNC_5003_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.RankFrame:setAlpha(0.000000)
		__FUNC_5003_(registerVal11, {})
		local function __FUNC_51B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.690000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.PlayListBG:setAlpha(0.000000)
		__FUNC_51B5_(registerVal12, {})
		local function __FUNC_5369_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.PlayListName:setAlpha(0.000000)
		__FUNC_5369_(registerVal13, {})
		local function __FUNC_551D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal1.CurrentStars:setAlpha(0.000000)
		__FUNC_551D_(registerVal14, {})
		local function __FUNC_56D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.750000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.CurrentRankText:setAlpha(0.000000)
		__FUNC_56D1_(registerVal15, {})
		local function __FUNC_5885_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal1.CurrentRank:setAlpha(0.000000)
		__FUNC_5885_(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal1.CurrentRankADD:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal1.PreviousStars:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal1.PreviousRankText:setLeftRight(false, false, -122.000000, 125.000000)
		registerVal1.PreviousRankText:setTopBottom(true, false, 570.130000, 604.130000)
		registerVal1.PreviousRankText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal1.PreviousRankAdd:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal24, {})
		local function __FUNC_5A39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -350.500000, 351.500000)
			arg0:setTopBottom(true, false, 117.000000, 172.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal1.ArenaVictory:setLeftRight(false, false, -350.500000, 351.500000)
		registerVal1.ArenaVictory:setTopBottom(true, false, 117.000000, 172.000000)
		registerVal1.ArenaVictory:setAlpha(0.000000)
		__FUNC_5A39_(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal1.CurrentRankR1:setLeftRight(false, false, 147.520000, 443.520000)
		registerVal1.CurrentRankR1:setTopBottom(true, false, 208.000000, 504.000000)
		registerVal1.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal1.CurrentRankL1:setLeftRight(false, false, -443.500000, -147.500000)
		registerVal1.CurrentRankL1:setTopBottom(true, false, 208.000000, 504.000000)
		registerVal1.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal1.CurrentRankC1:setLeftRight(false, false, -148.480000, 147.520000)
		registerVal1.CurrentRankC1:setTopBottom(true, false, 208.000000, 504.000000)
		registerVal1.clipFinished(registerVal28, {})
	end

	registerVal32.DefaultClip = __FUNC_48CE_
	local function __FUNC_5C5D_()
		registerVal1:setupElementClipCounter(20.000000)
		local function __FUNC_69D9_(arg0, arg1)
			local function __FUNC_6B53_(arg0, arg1)
				local function __FUNC_6CA8_(arg0, arg1)
					local function __FUNC_6E23_(arg0, arg1)
						local function __FUNC_6F78_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6F78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F78_)
					end

					if arg1.interrupted then
						__FUNC_6E23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E23_)
				end

				if arg1.interrupted then
					__FUNC_6CA8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CA8_)
			end

			if arg1.interrupted then
				__FUNC_6B53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B53_)
		end

		registerVal11:completeAnimation()
		registerVal1.RankFrame:setAlpha(0.000000)
		__FUNC_69D9_(registerVal11, {})
		local function __FUNC_712D_(arg0, arg1)
			local function __FUNC_72A7_(arg0, arg1)
				local function __FUNC_741F_(arg0, arg1)
					local function __FUNC_7597_(arg0, arg1)
						local function __FUNC_76EC_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.950000)
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_76EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76EC_)
					end

					if arg1.interrupted then
						__FUNC_7597_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7597_)
				end

				if arg1.interrupted then
					__FUNC_741F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.690000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_741F_)
			end

			if arg1.interrupted then
				__FUNC_72A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.950000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72A7_)
		end

		registerVal12:completeAnimation()
		registerVal1.PlayListBG:setAlpha(0.000000)
		__FUNC_712D_(registerVal12, {})
		local function __FUNC_78A1_(arg0, arg1)
			local function __FUNC_7A1B_(arg0, arg1)
				local function __FUNC_7B70_(arg0, arg1)
					local function __FUNC_7CEB_(arg0, arg1)
						local function __FUNC_7E40_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_7E40_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E40_)
					end

					if arg1.interrupted then
						__FUNC_7CEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CEB_)
				end

				if arg1.interrupted then
					__FUNC_7B70_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B70_)
			end

			if arg1.interrupted then
				__FUNC_7A1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A1B_)
		end

		registerVal13:completeAnimation()
		registerVal1.PlayListName:setAlpha(0.000000)
		__FUNC_78A1_(registerVal13, {})
		local function __FUNC_7FF5_(arg0, arg1)
			local function __FUNC_814C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_814C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2440.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_814C_)
		end

		registerVal14:completeAnimation()
		registerVal1.CurrentStars:setAlpha(0.000000)
		__FUNC_7FF5_(registerVal14, {})
		local function __FUNC_8301_(arg0, arg1)
			local function __FUNC_8458_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8458_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2460.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8458_)
		end

		registerVal15:completeAnimation()
		registerVal1.CurrentRankText:setAlpha(0.000000)
		__FUNC_8301_(registerVal15, {})
		local function __FUNC_860D_(arg0, arg1)
			local function __FUNC_8764_(arg0, arg1)
				local function __FUNC_8924_(arg0, arg1)
					local function __FUNC_8AE4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setZRot(325.000000)
						arg0:setScale(2.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8AE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.780000)
					arg0:setZRot(208.000000)
					arg0:setScale(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AE4_)
				end

				if arg1.interrupted then
					__FUNC_8924_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.380000)
				arg0:setZRot(180.000000)
				arg0:setScale(1.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8924_)
			end

			if arg1.interrupted then
				__FUNC_8764_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8764_)
		end

		registerVal16:completeAnimation()
		registerVal1.highlight1:setAlpha(0.000000)
		registerVal1.highlight1:setZRot(0.000000)
		registerVal1.highlight1:setScale(1.000000)
		__FUNC_860D_(registerVal16, {})
		local function __FUNC_8CDE_(arg0, arg1)
			local function __FUNC_8E34_(arg0, arg1)
				local function __FUNC_8FF4_(arg0, arg1)
					local function __FUNC_91B4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setZRot(350.000000)
						arg0:setScale(2.100000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_91B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.310000)
					arg0:setZRot(212.990000)
					arg0:setScale(2.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91B4_)
				end

				if arg1.interrupted then
					__FUNC_8FF4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.380000)
				arg0:setZRot(180.000000)
				arg0:setScale(1.720000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FF4_)
			end

			if arg1.interrupted then
				__FUNC_8E34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E34_)
		end

		registerVal17:completeAnimation()
		registerVal1.highlight00:setAlpha(0.000000)
		registerVal1.highlight00:setZRot(0.000000)
		registerVal1.highlight00:setScale(1.000000)
		__FUNC_8CDE_(registerVal17, {})
		local function __FUNC_93AE_(arg0, arg1)
			local function __FUNC_9504_(arg0, arg1)
				local function __FUNC_96C4_(arg0, arg1)
					local function __FUNC_9884_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setZRot(325.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9884_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.780000)
					arg0:setZRot(208.000000)
					arg0:setScale(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9884_)
				end

				if arg1.interrupted then
					__FUNC_96C4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.380000)
				arg0:setZRot(108.000000)
				arg0:setScale(1.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96C4_)
			end

			if arg1.interrupted then
				__FUNC_9504_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9504_)
		end

		registerVal18:completeAnimation()
		registerVal1.highlight0:setAlpha(0.000000)
		registerVal1.highlight0:setZRot(0.000000)
		registerVal1.highlight0:setScale(1.000000)
		__FUNC_93AE_(registerVal18, {})
		local function __FUNC_9A7E_(arg0, arg1)
			local function __FUNC_9BD4_(arg0, arg1)
				local function __FUNC_9D4F_(arg0, arg1)
					local function __FUNC_9F0C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setZRot(108.000000)
						arg0:setScale(3.300000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9F0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.380000)
					arg0:setZRot(108.000000)
					arg0:setScale(2.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F0C_)
				end

				if arg1.interrupted then
					__FUNC_9D4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.720000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D4F_)
			end

			if arg1.interrupted then
				__FUNC_9BD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BD4_)
		end

		registerVal19:completeAnimation()
		registerVal1.highlight:setAlpha(0.000000)
		registerVal1.highlight:setZRot(0.000000)
		registerVal1.highlight:setScale(1.000000)
		__FUNC_9A7E_(registerVal19, {})
		local function __FUNC_A106_(arg0, arg1)
			local function __FUNC_A25C_(arg0, arg1)
				local function __FUNC_A3B4_(arg0, arg1)
					local function __FUNC_A52F_(arg0, arg1)
						local function __FUNC_A684_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal1.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_A684_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A684_)
					end

					if arg1.interrupted then
						__FUNC_A52F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A52F_)
				end

				if arg1.interrupted then
					__FUNC_A3B4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3B4_)
			end

			if arg1.interrupted then
				__FUNC_A25C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2079.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A25C_)
		end

		registerVal20:completeAnimation()
		registerVal1.CurrentRank:setAlpha(0.000000)
		__FUNC_A106_(registerVal20, {})
		local function __FUNC_A839_(arg0, arg1)
			local function __FUNC_A9B3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
				arg0:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A9B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9B3_)
		end

		registerVal21:beginAnimation("keyframe", 2339.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setAlpha(0.000000)
		registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
		registerVal21:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal21:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal21:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_A839_)
		local function __FUNC_AC76_(arg0, arg1)
			local function __FUNC_ADEF_(arg0, arg1)
				local function __FUNC_AF44_(arg0, arg1)
					local function __FUNC_B0BF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B0BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0BF_)
				end

				if arg1.interrupted then
					__FUNC_AF44_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF44_)
			end

			if arg1.interrupted then
				__FUNC_ADEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADEF_)
		end

		registerVal22:completeAnimation()
		registerVal1.PreviousStars:setAlpha(0.000000)
		__FUNC_AC76_(registerVal22, {})
		local function __FUNC_B271_(arg0, arg1)
			local function __FUNC_B3EB_(arg0, arg1)
				local function __FUNC_B540_(arg0, arg1)
					local function __FUNC_B6BB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -122.000000, 125.000000)
						arg0:setTopBottom(true, false, 570.130000, 604.130000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B6BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6BB_)
				end

				if arg1.interrupted then
					__FUNC_B540_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B540_)
			end

			if arg1.interrupted then
				__FUNC_B3EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3EB_)
		end

		registerVal23:completeAnimation()
		registerVal1.PreviousRankText:setLeftRight(false, false, -122.000000, 125.000000)
		registerVal1.PreviousRankText:setTopBottom(true, false, 570.130000, 604.130000)
		registerVal1.PreviousRankText:setAlpha(0.000000)
		__FUNC_B271_(registerVal23, {})
		local function __FUNC_B8DD_(arg0, arg1)
			local function __FUNC_BA57_(arg0, arg1)
				local function __FUNC_BBAC_(arg0, arg1)
					local function __FUNC_BD27_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BD27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD27_)
				end

				if arg1.interrupted then
					__FUNC_BBAC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBAC_)
			end

			if arg1.interrupted then
				__FUNC_BA57_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA57_)
		end

		registerVal24:completeAnimation()
		registerVal1.PreviousRankAdd:setAlpha(0.000000)
		__FUNC_B8DD_(registerVal24, {})
		local function __FUNC_BED9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -350.500000, 351.500000)
			arg0:setTopBottom(true, false, 117.000000, 172.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal1.ArenaVictory:setLeftRight(false, false, -350.500000, 351.500000)
		registerVal1.ArenaVictory:setTopBottom(true, false, 117.000000, 172.000000)
		registerVal1.ArenaVictory:setAlpha(0.000000)
		__FUNC_BED9_(registerVal25, {})
		local function __FUNC_C0FD_(arg0, arg1)
			local function __FUNC_C254_(arg0, arg1)
				local function __FUNC_C462_(arg0, arg1)
					local function __FUNC_C66E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -148.000000, 148.000000)
						arg0:setTopBottom(true, false, 201.000000, 497.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C66E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -148.500000, 147.500000)
					arg0:setTopBottom(true, false, 205.000000, 501.000000)
					arg0:setAlpha(0.540000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C66E_)
				end

				if arg1.interrupted then
					__FUNC_C462_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -8.470000, 287.530000)
				arg0:setTopBottom(true, false, 211.000000, 507.000000)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.470000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C462_)
			end

			if arg1.interrupted then
				__FUNC_C254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2190.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C254_)
		end

		registerVal26:completeAnimation()
		registerVal1.CurrentRankR1:setLeftRight(false, false, 147.000000, 443.000000)
		registerVal1.CurrentRankR1:setTopBottom(true, false, 218.000000, 514.000000)
		registerVal1.CurrentRankR1:setAlpha(0.000000)
		registerVal1.CurrentRankR1:setScale(2.000000)
		__FUNC_C0FD_(registerVal26, {})
		local function __FUNC_C8B4_(arg0, arg1)
			local function __FUNC_CA0C_(arg0, arg1)
				local function __FUNC_CC1A_(arg0, arg1)
					local function __FUNC_CE26_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -148.000000, 148.000000)
						arg0:setTopBottom(true, false, 201.000000, 497.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CE26_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -149.000000, 147.000000)
					arg0:setTopBottom(true, false, 204.000000, 500.000000)
					arg0:setAlpha(0.540000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE26_)
				end

				if arg1.interrupted then
					__FUNC_CC1A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -287.130000, 8.870000)
				arg0:setTopBottom(true, false, 211.000000, 507.000000)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.470000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC1A_)
			end

			if arg1.interrupted then
				__FUNC_CA0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2190.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA0C_)
		end

		registerVal27:completeAnimation()
		registerVal1.CurrentRankL1:setLeftRight(false, false, -445.000000, -149.000000)
		registerVal1.CurrentRankL1:setTopBottom(true, false, 218.000000, 514.000000)
		registerVal1.CurrentRankL1:setAlpha(0.000000)
		registerVal1.CurrentRankL1:setScale(2.000000)
		__FUNC_C8B4_(registerVal27, {})
		local function __FUNC_D06C_(arg0, arg1)
			local function __FUNC_D1C4_(arg0, arg1)
				local function __FUNC_D39A_(arg0, arg1)
					local function __FUNC_D5A6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -148.000000, 148.000000)
						arg0:setTopBottom(true, false, 201.000000, 497.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal1.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D5A6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -148.000000, 148.000000)
					arg0:setTopBottom(true, false, 201.000000, 497.000000)
					arg0:setAlpha(0.540000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5A6_)
				end

				if arg1.interrupted then
					__FUNC_D39A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 213.080000, 509.080000)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.470000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D39A_)
			end

			if arg1.interrupted then
				__FUNC_D1C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2190.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1C4_)
		end

		registerVal28:completeAnimation()
		registerVal1.CurrentRankC1:setLeftRight(false, false, -149.000000, 147.000000)
		registerVal1.CurrentRankC1:setTopBottom(true, false, 218.000000, 514.000000)
		registerVal1.CurrentRankC1:setAlpha(0.000000)
		registerVal1.CurrentRankC1:setScale(2.000000)
		__FUNC_D06C_(registerVal28, {})
		local function __FUNC_D7EC_(arg0, arg1)
			local function __FUNC_D967_(arg0, arg1)
				local function __FUNC_DABC_(arg0, arg1)
					local function __FUNC_DC53_(arg0, arg1)
						local function __FUNC_DDE7_(arg0, arg1)
							local function __FUNC_DF9E_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.800000, 0.000000)
								arg0:setAlpha(0.000000)
								arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
								arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal1.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_DF9E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.110000)
							arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF9E_)
						end

						if arg1.interrupted then
							__FUNC_DDE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(0.000000, 0.461539, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDE7_)
					end

					if arg1.interrupted then
						__FUNC_DC53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(0.000000, 0.051282, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC53_)
				end

				if arg1.interrupted then
					__FUNC_DABC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DABC_)
			end

			if arg1.interrupted then
				__FUNC_D967_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D967_)
		end

		registerVal29:beginAnimation("keyframe", 2470.000000, false, false, CoD.TweenType.Linear)
		registerVal29:setRGB(1.000000, 0.800000, 0.000000)
		registerVal29:setAlpha(0.000000)
		registerVal29:setRFTMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal29:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal29:registerEventHandler("transition_complete_keyframe", __FUNC_D7EC_)
		local function __FUNC_E256_(arg1, arg2)
			if not arg2.interrupted then
				arg1:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg1:playSound("uin_arena_rank_up", arg0)
			if arg2.interrupted then
				registerVal1.clipFinished(arg1, arg2)
			else
				arg1:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal30:beginAnimation("keyframe", 1990.000000, false, false, CoD.TweenType.Linear)
		registerVal30:playSound("0", arg0)
		registerVal30:registerEventHandler("transition_complete_keyframe", __FUNC_E256_)
	end

	registerVal32.RankedUp = __FUNC_5C5D_
	registerVal31.DefaultState = registerVal32
	registerVal1.clipsPerState = registerVal31
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_E424_(arg0, arg1, arg2, arg3)
		local registerVal4 = AnyRewardsEarnedDuringMatch(arg2)
		if registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "RewardsOverlay", arg2)
			return true
		else
			GoBackAndOpenOverlayOnParent(registerVal1, "MPAAR", arg2)
			return true
		end
	end

	local function __FUNC_E512_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E424_, __FUNC_E512_, false)
	local function __FUNC_E610_(arg0, arg1, arg2, arg3)
		local registerVal4 = AnyRewardsEarnedDuringMatch(arg2)
		if registerVal4 then
			GoBackAndOpenOverlayOnParent(registerVal1, "RewardsOverlay", arg2)
			return true
		else
			GoBackAndOpenOverlayOnParent(registerVal1, "MPAAR", arg2)
			return true
		end
	end

	local function __FUNC_E6FE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E610_, __FUNC_E6FE_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal14.id = "CurrentStars"
	registerVal22.id = "PreviousStars"
	local registerVal33 = {}
	registerVal33.name = "menu_loaded"
	registerVal33.controller = arg0
	registerVal1:processEvent(registerVal33)
	registerVal33 = {}
	registerVal33.name = "update_state"
	registerVal33.menu = registerVal1
	registerVal1:processEvent(registerVal33)
	registerVal31 = registerVal1:restoreState()
	if not registerVal31 then
		registerVal33 = {}
		registerVal33.name = "gain_focus"
		registerVal33.controller = arg0
		registerVal1.CurrentStars:processEvent(registerVal33)
	end
	local function __FUNC_E7F0_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.VignetteBack:close()
		arg1.MenuFrame:close()
		arg1.RankImageBorder:close()
		arg1.RankFrame:close()
		arg1.PlayListBG:close()
		arg1.CurrentStars:close()
		arg1.CurrentRank:close()
		arg1.PreviousStars:close()
		arg1.PreviousRankAdd:close()
		arg1.ArenaVictory:close()
		arg1.CurrentRankglint:close()
		arg1.PlayListName:close()
		arg1.CurrentRankText:close()
		arg1.CurrentRankADD:close()
		arg1.PreviousRankText:close()
		arg1.CurrentRankR1:close()
		arg1.CurrentRankL1:close()
		arg1.CurrentRankC1:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ArenaResult.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_E7F0_)
	if __FUNC_559_ then
		__FUNC_559_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ArenaResult = __FUNC_1115_
