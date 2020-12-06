-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Leaderboard.Leaderboard")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_PlayerProfileInfoWidget")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_RankAndStatsWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_GameModeFrame = registerVal1
function CoD.Leaderboard_GameModeFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_GameModeFrame)
	registerVal2.id = "Leaderboard_GameModeFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Leaderboard.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 20.500000, 800.500000)
	registerVal3:setTopBottom(true, false, 15.500000, 520.000000)
	registerVal3.LeaderboardRows:setDataSource("LeaderboardRows")
	registerVal3.LeaderboardEmptyText:setText(Engine.Localize("MENU_LB_EMPTY"))
	local function __FUNC_141C_(arg0)
		registerVal3.LeaderboardHeader:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "LeaderboardHeader", nil, __FUNC_141C_)
	registerVal2:addElement(registerVal3)
	registerVal2.Leaderboard = registerVal3
	local registerVal4 = CoD.Leaderboard_PlayerProfileInfoWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -341.000000, -21.000000)
	registerVal4:setTopBottom(true, false, 15.500000, 297.500000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_1495_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1495_
	local registerVal9 = {}
	registerVal9.stateName = "PCacheBuffer"
	local function __FUNC_14E1_(arg0, arg1, arg2)
		local registerVal3 = IsLeaderboardUpdating()
		if not registerVal3 then
			registerVal3 = IsLeaderboardEmpty()
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_14E1_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "leaderboard.isUpdating")
	local function __FUNC_1573_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1573_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "leaderboard.totalResults")
	local function __FUNC_169C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_169C_)
	registerVal2:addElement(registerVal4)
	registerVal2.PlayerProfileInfoWidget = registerVal4
	local registerVal5 = CoD.Leaderboard_RankAndStatsWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -340.500000, -20.500000)
	registerVal5:setTopBottom(false, true, -215.500000, -15.500000)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_17CA_(arg0, arg2, arg3)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		registerVal3 = IsFreerunLeaderboard(arg1)
		registerVal3 = IsDOALeaderboard(arg1)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsCustomLeaderboard(arg1)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_17CA_
	local registerVal10 = {}
	registerVal10.stateName = "Freerun"
	local function __FUNC_18EC_(arg0, arg2, arg3)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsFreerunLeaderboard(arg1)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_18EC_
	local registerVal11 = {}
	registerVal11.stateName = "DOA"
	local function __FUNC_19AD_(arg0, arg2, arg3)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsDOALeaderboard(arg1)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_19AD_
	local registerVal12 = {}
	registerVal12.stateName = "Rankless"
	local function __FUNC_1A69_(arg0, arg2, arg3)
		local registerVal3 = IsLeaderboardUpdating()
		registerVal3 = IsLeaderboardEmpty()
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsCustomLeaderboard(arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_1A69_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "leaderboard.isUpdating")
	local function __FUNC_1B28_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1B28_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "leaderboard.totalResults")
	local function __FUNC_1C54_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1C54_)
	registerVal2:addElement(registerVal5)
	registerVal2.RankAndStatsWidget = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 236.500000, 561.500000)
	registerVal6:setTopBottom(false, false, -246.500000, 236.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuframenoBG0 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 979.000000, 983.000000)
	registerVal7:setTopBottom(true, false, 132.000000, 465.000000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.featlineleft0 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 979.000000, 983.000000)
	registerVal8:setTopBottom(true, false, 234.000000, 567.000000)
	registerVal8:setZRot(-90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.featlineleft00 = registerVal8
	local function __FUNC_1D82_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.emblem:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal3.LeaderboardRows, "xuid", true, __FUNC_1D82_)
	local function __FUNC_1E40_(arg0)
		registerVal4.GamerCard:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3.LeaderboardRows, nil, false, __FUNC_1E40_)
	local function __FUNC_1EB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.GamerTag.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3.LeaderboardRows, "name", true, __FUNC_1EB1_)
	local function __FUNC_1FA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.rankIcon.imgSolid:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "rankIcon", true, __FUNC_1FA4_)
	local function __FUNC_20B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.rankIcon.imgAdd:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "rankIcon", true, __FUNC_20B6_)
	local function __FUNC_21C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.rankText:setRGB(SetToParagonColorIfPrestigeMasterForLeaderboard(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "plevel", true, __FUNC_21C4_)
	local function __FUNC_22C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.rankText.FELabelSubHeadingD0.Label0:setText(Engine.Localize(PrependLocalizedStringWithSeparator("MENU_LEVEL_CAPS", " ", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "rank", true, __FUNC_22C7_)
	local function __FUNC_2442_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ListHeader0:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "rankString", true, __FUNC_2442_)
	local function __FUNC_2519_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ListHeader0.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "rankString", true, __FUNC_2519_)
	local function __FUNC_261D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget1.StatText:setRGB(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat0color", true, __FUNC_261D_)
	local function __FUNC_26EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget1.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat0", true, __FUNC_26EE_)
	local function __FUNC_27E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget1.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat0label", true, __FUNC_27E5_)
	local function __FUNC_28E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget2.StatText:setRGB(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat1color", true, __FUNC_28E9_)
	local function __FUNC_29BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget2.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat1", true, __FUNC_29BA_)
	local function __FUNC_2AB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget2.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat1label", true, __FUNC_2AB1_)
	local function __FUNC_2BB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget3.StatText:setRGB(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat2color", true, __FUNC_2BB5_)
	local function __FUNC_2C86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget3.StatText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat2", true, __FUNC_2C86_)
	local function __FUNC_2D7D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.StatWidget3.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3.LeaderboardRows, "stat2label", true, __FUNC_2D7D_)
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_2E81_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.PlayerProfileInfoWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RankAndStatsWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal10.DefaultClip = __FUNC_2E81_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_2FEF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.PlayerProfileInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RankAndStatsWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal10.DefaultClip = __FUNC_2FEF_
	registerVal9.ShowInfo = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "ShowInfo"
	local function __FUNC_315B_(arg0, arg1, arg2)
		local registerVal3 = IsLeaderboardUpdating()
		if not registerVal3 then
			registerVal3 = IsLeaderboardEmpty()
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_315B_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "leaderboard.isUpdating")
	local function __FUNC_31EB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_31EB_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "leaderboard.totalResults")
	local function __FUNC_3314_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_3314_)
	registerVal3.id = "Leaderboard"
	local function __FUNC_3442_(arg0, arg1)
		local registerVal2 = arg0.Leaderboard:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3442_)
	local function __FUNC_3547_(arg0)
		arg0.Leaderboard:close()
		arg0.PlayerProfileInfoWidget:close()
		arg0.RankAndStatsWidget:close()
		arg0.StartMenuframenoBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3547_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

