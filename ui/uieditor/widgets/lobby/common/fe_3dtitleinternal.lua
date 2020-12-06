-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.BackgroundFrames.Header_Kicker")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleFeatureIcon")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
local function __FUNC_2F2_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.lobbyTitle")
	registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyPlaylist.name")
	registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.lobbyNav")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleInternal = registerVal2
local function __FUNC_433_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2F2_ then
		__FUNC_2F2_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitleInternal)
	registerVal2.id = "FE_3dTitleInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 739.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 63.330000, 1193.950000)
	registerVal3:setTopBottom(true, false, 7.000000, 47.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-2.200000)
	local function __FUNC_14F1_(arg2, arg3)
		local registerVal2 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.lobbyTitle")
		registerVal2 = IsCurrentLanguageArabic()
		registerVal2 = IsSelfInState(registerVal2, "Playlist")
		if registerVal2 and not registerVal2 and not registerVal2 then
			ScaleParentWidgetToLabel(registerVal2, arg2, 10.000000)
		else
			registerVal2 = IsCurrentMenu(arg0, "Lobby")
			registerVal2 = IsCurrentLanguageArabic()
			registerVal2 = IsSelfInState(registerVal2, "Playlist")
			if not registerVal2 and not registerVal2 and not registerVal2 then
				ScaleParentWidgetToLabel(registerVal2, arg2, 10.000000)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_14F1_)
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 734.620000)
	registerVal4:setTopBottom(true, false, 0.000000, 58.000000)
	registerVal4:setRGB(0.870000, 0.900000, 0.900000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setLetterSpacing(-2.200000)
	local function __FUNC_16AB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(PrependArenaToPlaylist(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "LobbyPlaylistName", "name", __FUNC_16AB_)
	local function __FUNC_1764_(arg0, arg1)
		local registerVal2 = IsSelfInState(registerVal2, "Playlist")
		registerVal2 = IsCurrentLanguageArabic()
		if registerVal2 and not registerVal2 then
			ScaleParentWidgetToLabel(registerVal2, arg0, 10.000000)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_1764_)
	registerVal2:addElement(registerVal4)
	registerVal2.playlistName0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 14.830000, 330.230000)
	registerVal5:setTopBottom(true, false, 10.300000, 40.450000)
	registerVal5:setRGB(0.870000, 0.900000, 0.900000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_bo3logo"))
	registerVal2:addElement(registerVal5)
	registerVal2.bo3logo = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 16.070000, 61.350000)
	registerVal6:setTopBottom(true, false, 3.250000, 47.750000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG0 = registerVal6
	local registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 16.070000, 61.350000)
	registerVal7:setTopBottom(true, false, 3.250000, 47.750000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG00 = registerVal7
	local registerVal8 = CoD.Header_Kicker.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 66.000000, 186.000000)
	registerVal8:setTopBottom(true, false, 4.250000, 20.250000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_183D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Kickertxt:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "LobbyRoot", "headingKickerText", __FUNC_183D_)
	registerVal2:addElement(registerVal8)
	registerVal2.HeaderKicker = registerVal8
	local registerVal9 = CoD.FE_3dTitleFeatureIcon.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 21.200000, 56.200000)
	registerVal9:setTopBottom(true, false, 7.000000, 44.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FeatureIcon = registerVal9
	local registerVal10 = CoD.Header_Kicker.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 88.000000, 208.000000)
	registerVal10:setTopBottom(true, false, 4.250000, 20.250000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_18EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Kickertxt:setText(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "LobbyRoot", "headingKickerText", __FUNC_18EF_)
	registerVal2:addElement(registerVal10)
	registerVal2.HeaderKickerGroupHQ = registerVal10
	local registerVal11 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 16.000000, 82.630000)
	registerVal11:setTopBottom(true, false, 4.250000, 45.750000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_199F_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:subscribeToGlobalModel(arg1, "SelectedGroup", nil, __FUNC_199F_)
	local function __FUNC_19EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "SelectedGroup", "groupId", __FUNC_19EE_)
	registerVal2:addElement(registerVal11)
	registerVal2.GroupEmblemWidget = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1AAA_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 9.200000, 742.820000)
		registerVal2.Label0:setTopBottom(true, false, -1.500000, 53.500000)
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setLeftRight(true, false, -0.620000, 741.820000)
		registerVal2.playlistName0:setTopBottom(true, false, 0.000000, 51.000000)
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(0.030000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1AAA_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1F85_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1F85_
	registerVal12.LogoVisible = registerVal13
	registerVal13 = {}
	local function __FUNC_23FD_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 7.200000, 741.820000)
		registerVal2.Label0:setTopBottom(true, false, 7.000000, 47.000000)
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.Label0:setXRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_23FD_
	registerVal12.Playlist = registerVal13
	registerVal13 = {}
	local function __FUNC_2906_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 63.000000, 797.620000)
		registerVal2.Label0:setTopBottom(true, false, 17.000000, 57.000000)
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.Label0:setXRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_2906_
	registerVal12.ArenaPlaylist = registerVal13
	registerVal13 = {}
	local function __FUNC_2E0E_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 88.330000, 822.950000)
		registerVal2.Label0:setTopBottom(true, false, 17.000000, 57.000000)
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setLeftRight(true, false, 15.000000, 84.840000)
		registerVal2.GroupEmblemWidget:setTopBottom(true, false, 4.250000, 47.750000)
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_2E0E_
	registerVal12.GroupHQ_Header = registerVal13
	registerVal13 = {}
	local function __FUNC_3348_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 63.330000, 797.950000)
		registerVal2.Label0:setTopBottom(true, false, 17.000000, 57.000000)
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_3348_
	registerVal12.Updated_Header = registerVal13
	registerVal13 = {}
	local function __FUNC_3825_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 63.330000, 797.950000)
		registerVal2.Label0:setTopBottom(true, false, 7.000000, 47.000000)
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.playlistName0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bo3logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, 16.070000, 61.350000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, 3.250000, 47.750000)
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.HeaderKicker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.HeaderKickerGroupHQ:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_3825_
	registerVal12.Updated_HeaderNoKicker = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "LogoVisible"
	local function __FUNC_3D01_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.lobbyTitle")
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_3D01_
	local registerVal16 = {}
	registerVal16.stateName = "Playlist"
	local function __FUNC_3D90_(arg0, arg1, arg2)
		return ShouldShowPlaylistName()
	end

	registerVal16.condition = __FUNC_3D90_
	local registerVal17 = {}
	registerVal17.stateName = "ArenaPlaylist"
	local function __FUNC_3DE8_(arg0, arg1, arg2)
		local registerVal3 = IsArenaMode()
		registerVal3 = ShowHeaderKicker(arg0)
		if registerVal3 and registerVal3 then
			registerVal3 = ShowHeaderIcon(arg0)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_3DE8_
	local registerVal18 = {}
	registerVal18.stateName = "GroupHQ_Header"
	local function __FUNC_3E8F_(arg0, arg1, arg2)
		local registerVal3 = ShowHeaderIcon(arg0)
		registerVal3 = ShowHeaderKicker(arg0)
		if registerVal3 and registerVal3 then
			registerVal3 = ShowHeaderEmblem(arg0)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_3E8F_
	local registerVal19 = {}
	registerVal19.stateName = "Updated_Header"
	local function __FUNC_3F3C_(arg0, arg1, arg2)
		local registerVal3 = ShowHeaderIcon(arg0)
		if registerVal3 then
			registerVal3 = ShowHeaderKicker(arg0)
		end
		return registerVal3
	end

	registerVal19.condition = __FUNC_3F3C_
	local registerVal20 = {}
	registerVal20.stateName = "Updated_HeaderNoKicker"
	local function __FUNC_3FBE_(arg0, arg1, arg2)
		return ShowHeaderIcon(arg0)
	end

	registerVal20.condition = __FUNC_3FBE_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyTitle")
	local function __FUNC_4010_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyTitle"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_4010_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "lobbyRoot.lobbyNav")
	local function __FUNC_413A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_413A_)
	if registerVal2.m_eventHandlers.menu_loaded then
		local function __FUNC_4260_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.menu_loaded(arg1, arg2)
		end

		registerVal2:registerEventHandler("menu_loaded", __FUNC_4260_)
	else
		registerVal2:registerEventHandler("menu_loaded", LUI.UIElement.updateState)
	end
	local function __FUNC_42EB_(arg0, arg1)
		local registerVal2 = IsSelfInState(registerVal2, "Playlist")
		registerVal2 = IsCurrentLanguageArabic()
		if registerVal2 and not registerVal2 then
			ScaleParentWidgetToElementLabel(registerVal2, "playlistName0", 10.000000)
		else
			registerVal2 = IsSelfInState(registerVal2, "DefaultState")
			registerVal2 = IsCurrentLanguageArabic()
			if registerVal2 and not registerVal2 then
				ScaleParentWidgetToElementLabel(registerVal2, "Label0", 10.000000)
			else
				registerVal2 = IsSelfInState(registerVal2, "LogoVisible")
				registerVal2 = IsCurrentLanguageArabic()
				if registerVal2 and not registerVal2 then
					RestoreParentToOriginalWidth(registerVal2)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_42EB_)
	local function __FUNC_44B8_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG00:close()
		arg0.HeaderKicker:close()
		arg0.FeatureIcon:close()
		arg0.HeaderKickerGroupHQ:close()
		arg0.GroupEmblemWidget:close()
		arg0.playlistName0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_44B8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_3dTitleInternal.new = __FUNC_433_
