-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileshareNoContentGraphic")
require("ui.uieditor.widgets.Leaderboard.LeaderboardRow")
require("ui.uieditor.widgets.Leaderboard.LeaderboardHeader")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_VerticalCounter")
local function __FUNC_2EC_(arg0, arg1)
	local function __FUNC_3AD_(arg0, arg2)
		if not arg2.grid.activeWidget then
			return 
		end
		local registerVal5 = arg2.grid:getDataSource()
		local registerVal6 = registerVal5.getCustomPropertiesForItem(arg2.grid, arg2.grid.activeWidget.gridInfoTable.gridRowIndex)
		if CoD.perController[arg1].leaderboardTopOrBottom == CoD.LeaderboardUtility.TOP then
		else
			if CoD.perController[arg1].leaderboardTopOrBottom == CoD.LeaderboardUtility.BOTTOM then
			else
				local registerVal11 = arg2.grid.activeWidget:getModel()
				local registerVal9 = Engine.GetModelValue(Engine.GetModel(registerVal11, "xuid"))
				local registerVal10 = Engine.GetXUID64(arg1)
				if registerVal9 == registerVal10 then
				end
			end
		end
		registerVal9 = arg2.grid:getItemAtPosition((arg2.grid.activeWidget.gridInfoTable.gridRowIndex + (arg2.grid.vCount - CoD.LeaderboardUtility.PLAYER_POSITION_IN_LEADERBOARD)), 1.000000, true)
		if registerVal9 then
			arg2.grid:setActiveItem(registerVal9)
			arg2.grid:setActiveItem(arg2.grid.activeWidget)
		end
	end

	arg0:registerEventHandler("grid_updated", __FUNC_3AD_)
	local function __FUNC_785_(arg2)
		if arg2.requestedRowCount <= arg2.vCount then
		else
			if arg2.activeWidget then
				local registerVal5 = arg2.activeWidget:getModel()
				local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "counterPosition"))
				local registerVal6 = Engine.GetGlobalModel()
				local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "leaderboard.totalResults"))
				if registerVal3 == 1.000000 then
				else
					if registerVal3 == registerVal4 then
					end
				end
			end
		end
		SetElementState(arg0, arg0.VerticalCounter, arg1, "AtBottom")
	end

	arg0.LeaderboardRows.updateCounters = __FUNC_785_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Leaderboard = registerVal2
local function __FUNC_A09_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard)
	registerVal2.id = "Leaderboard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 470.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 35.870000)
	registerVal3:setAlpha(0.080000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.FileshareNoContentGraphic.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, 5.000000)
	registerVal4:setTopBottom(true, true, 39.870000, -24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FileshareNoContentGraphic = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal5:setTopBottom(true, false, 38.000000, 470.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setWidgetType(CoD.LeaderboardRow)
	registerVal5:setVerticalCount(18.000000)
	registerVal5:setSpacing(0.000000)
	registerVal5:setDataSource("LeaderboardRows")
	local function __FUNC_1DA9_(arg0, arg2)
		LeaderboardEnablePCacheBuffer(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1DA9_)
	local function __FUNC_1E17_(arg0, arg2)
		LeaderboardDisablePCacheBuffer(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_lose_focus", __FUNC_1E17_)
	local function __FUNC_1E84_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_UP)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1E84_)
	local function __FUNC_21F5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_21F5_)
	local function __FUNC_22C6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		registerVal4 = IsRepeatButtonPress(arg3)
		if registerVal4 and not registerVal4 then
			Leaderboard_PageUp(registerVal2, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_23DF_(arg0, arg1, arg2)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		registerVal4 = IsRepeatButtonPress(nil)
		if registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "MENU_LB_PAGE_UP")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PGUP", __FUNC_22C6_, __FUNC_23DF_, false)
	local function __FUNC_255A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		registerVal4 = IsRepeatButtonPress(arg3)
		if registerVal4 and not registerVal4 then
			Leaderboard_PageDown(registerVal2, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_2675_(arg0, arg1, arg2)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		registerVal4 = IsRepeatButtonPress(nil)
		if registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "MENU_LB_PAGE_DOWN")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_RTRIG, "PGDN", __FUNC_255A_, __FUNC_2675_, false)
	local function __FUNC_27F4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			Leaderboard_GoToTopOfList(registerVal2, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_28E5_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_LB_TOP_OF_LIST")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "T", __FUNC_27F4_, __FUNC_28E5_, false)
	local function __FUNC_2A38_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			Leaderboard_OpenPlayerDetails(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2AEC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2A38_, __FUNC_2AEC_, false)
	local function __FUNC_2C37_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			Leaderboard_MoveUp(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2CDD_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_UP, "UPARROW", __FUNC_2C37_, __FUNC_2CDD_, false)
	local function __FUNC_2E13_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal4 then
			Leaderboard_MoveDown(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2EBB_(arg0, arg1, arg2)
		local registerVal3 = IsSelfInState(registerVal2, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_DOWN, "DOWNARROW", __FUNC_2E13_, __FUNC_2EBB_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Freerun"
	local function __FUNC_2FF1_(arg0, arg2, arg3)
		return IsFreerunLeaderboard(arg1)
	end

	registerVal9.condition = __FUNC_2FF1_
	local registerVal10 = {}
	registerVal10.stateName = "DOA"
	local function __FUNC_304A_(arg0, arg2, arg3)
		return IsDOALeaderboard(arg1)
	end

	registerVal10.condition = __FUNC_304A_
	local registerVal11 = {}
	registerVal11.stateName = "Rankless"
	local function __FUNC_309E_(arg0, arg2, arg3)
		return IsCustomLeaderboard(arg1)
	end

	registerVal11.condition = __FUNC_309E_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.LeaderboardRows = registerVal5
	local registerVal6 = CoD.LeaderboardHeader.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -1.000000, 779.000000)
	registerVal6:setTopBottom(true, false, 9.000000, 29.000000)
	local function __FUNC_30F5_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "LeaderboardHeader", nil, __FUNC_30F5_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Freerun"
	local function __FUNC_3146_(arg0, arg2, arg3)
		local registerVal3 = IsFreerunLeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_3146_
	registerVal11 = {}
	registerVal11.stateName = "DefaultStateArabic"
	local function __FUNC_31D3_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentLanguageArabic()
		if registerVal3 then
			registerVal3 = IsFreerunLeaderboard(arg1)
			if not registerVal3 then
				registerVal3 = IsDOALeaderboard(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_31D3_
	local registerVal12 = {}
	registerVal12.stateName = "FreerunArabic"
	local function __FUNC_3299_(arg0, arg2, arg3)
		local registerVal3 = IsFreerunLeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_3299_
	local registerVal13 = {}
	registerVal13.stateName = "DOA"
	local function __FUNC_3323_(arg0, arg2, arg3)
		local registerVal3 = IsDOALeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_3323_
	local registerVal14 = {}
	registerVal14.stateName = "DOAArabic"
	local function __FUNC_33AB_(arg0, arg2, arg3)
		local registerVal3 = IsDOALeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_33AB_
	local registerVal15 = {}
	registerVal15.stateName = "Rankless"
	local function __FUNC_342F_(arg0, arg2, arg3)
		local registerVal3 = IsCustomLeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_342F_
	local registerVal16 = {}
	registerVal16.stateName = "RanklessArabic"
	local function __FUNC_34BA_(arg0, arg2, arg3)
		local registerVal3 = IsCustomLeaderboard(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_34BA_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.LeaderboardHeader = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 326.000000, 436.000000)
	registerVal7:setTopBottom(true, false, 181.000000, 201.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_LB_LOADING"))
	registerVal7:setTTF("fonts/UnitedSansRgMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.LoadingText = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 172.500000, 613.500000)
	registerVal8:setTopBottom(true, false, 225.000000, 245.000000)
	registerVal8:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal8:setText(Engine.Localize("GROUPS_LEADERBOARD_EMPTY"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.LeaderboardEmptyText = registerVal8
	registerVal9 = CoD.Leaderboard_VerticalCounter.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 289.500000, 489.500000)
	registerVal9:setTopBottom(true, false, 475.500000, 500.500000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_3542_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Leaderboard", "totalResults", __FUNC_3542_)
	registerVal2:addElement(registerVal9)
	registerVal2.VerticalCounter = registerVal9
	local function __FUNC_3615_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.currentItem:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal5, "counterPosition", true, __FUNC_3615_)
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_36EF_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeaderboardRows:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LeaderboardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LoadingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LeaderboardEmptyText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VerticalCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_36EF_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_39D6_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeaderboardRows:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LeaderboardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LoadingText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LeaderboardEmptyText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VerticalCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_39D6_
	registerVal10.UpdatingLeaderboard = registerVal11
	registerVal11 = {}
	local function __FUNC_3CBE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setLeftRight(true, true, 1.000000, 5.000000)
		registerVal2.FileshareNoContentGraphic:setTopBottom(true, true, 39.870000, -24.000000)
		registerVal2.FileshareNoContentGraphic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeaderboardRows:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LeaderboardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LoadingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LeaderboardEmptyText:setLeftRight(true, false, 172.500000, 613.500000)
		registerVal2.LeaderboardEmptyText:setTopBottom(true, false, 225.000000, 245.000000)
		registerVal2.LeaderboardEmptyText:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.LeaderboardEmptyText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VerticalCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3CBE_
	registerVal10.EmptyLeaderboard = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "UpdatingLeaderboard"
	local function __FUNC_4154_(arg0, arg1, arg2)
		return IsLeaderboardUpdating()
	end

	registerVal13.condition = __FUNC_4154_
	registerVal14 = {}
	registerVal14.stateName = "EmptyLeaderboard"
	local function __FUNC_41AB_(arg0, arg1, arg2)
		return IsLeaderboardEmpty()
	end

	registerVal14.condition = __FUNC_41AB_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "leaderboard.isUpdating")
	local function __FUNC_41FC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.isUpdating"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_41FC_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "leaderboard.totalResults")
	local function __FUNC_4328_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboard.totalResults"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_4328_)
	local function __FUNC_4456_(arg2, arg3)
		local registerVal2 = IsInDefaultState(arg2)
		if registerVal2 then
			UpdateElementDataSource(registerVal2, "LeaderboardRows")
			Leaderboard_UpdateHeaderModel(registerVal2, arg1)
			UpdateAllMenuButtonPrompts(arg0, arg1)
		else
			UpdateAllMenuButtonPrompts(arg0, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_4456_)
	registerVal5.id = "LeaderboardRows"
	local function __FUNC_4577_(arg0, arg1)
		local registerVal2 = arg0.LeaderboardRows:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4577_)
	local function __FUNC_467F_(arg0)
		arg0.FileshareNoContentGraphic:close()
		arg0.LeaderboardRows:close()
		arg0.LeaderboardHeader:close()
		arg0.VerticalCounter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_467F_)
	if __FUNC_2EC_ then
		__FUNC_2EC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Leaderboard.new = __FUNC_A09_
