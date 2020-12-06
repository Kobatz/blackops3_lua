-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.menus.CAC.Popups.OutOfUnlockTokens")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakButton")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.equippedScoreStreaksList")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakPreview")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakRequirementLabel")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_Banned_Items")
local function __FUNC_725_(arg0)
	local registerVal2 = CoD.GetUnlockablesByGroupName("killstreak")
	table.sort(registerVal2, CoD.CACRewardComparisonFunction)
	local registerVal3, registerVal4, registerVal5 = pairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal9 = Engine.GetGlobalModel()
		local registerVal8 = Engine.GetModel(registerVal9, ("Unlockables." .. value7))
		registerVal9 = Engine.GetModelValue(Engine.GetModel(registerVal8, "unlockLevel"))
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.itemIndex = value7
		registerVal13.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
		registerVal13.unlockLevel = registerVal9
		registerVal12.models = registerVal13
		table.insert({}, registerVal12)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("ScorestreaksList", __FUNC_725_, true)
DataSources.ScorestreaksList = registerVal1
local function __FUNC_9F7_(arg0)
	local registerVal2 = CoD.CACUtility.GetClassData(arg0, 0.000000)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.rewards)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = {}
		local registerVal11 = {}
		registerVal11.itemIndex = value7.itemIndex
		registerVal11.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
		registerVal10.models = registerVal11
		table.insert({}, registerVal10)
	end
	registerVal5 = {}
	local registerVal6 = {}
	registerVal6.itemIndex = CoD.CACUtility.EmptyItemIndex
	registerVal6.itemType = Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("EquippedScorestreaksList", __FUNC_9F7_, false)
DataSources.EquippedScorestreaksList = registerVal1
local function __FUNC_C76_(arg0, arg1)
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		arg0:setModel(CoD.perController[arg1].classModel)
		CoD.perController[arg1].weaponCategory = "killstreak1"
	else
		local registerVal3 = Engine.GetModelForController(arg1)
		local registerVal2 = Engine.CreateModel(registerVal3, "ScorestreaksClass")
		CoD.CACUtility.GetCustomClassModel(arg1, 0.000000, registerVal2)
		arg0:setModel(registerVal2)
		CoD.perController[arg1].classModel = registerVal2
		CoD.perController[arg1].weaponCategory = "killstreak1"
		local function __FUNC_1077_()
			Engine.UnsubscribeAndFreeModel(registerVal2)
		end

		LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1077_)
	end
	if not CoD.UnlockablesTable then
		registerVal3 = CoD.GetUnlockablesTable(arg1)
		CoD.UnlockablesTable = registerVal3
	end
	CoD.CACUtility.CreateUnlockTokenModels(arg1)
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
end

local function __FUNC_10E9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Scorestreaks")
	if __FUNC_C76_ then
		__FUNC_C76_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MP_SpecialistsAndScorestreaks"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Scorestreaks.buttonPrompts")
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
	local function __FUNC_2BA9_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_2BA9_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_2C36_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2C36_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.scorestreakVignetteContainer = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(LocalizeToUpperString("MENU_SCORE_STREAKS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SCORE_STREAKS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_scorestreak"))
	registerVal1:addElement(registerVal6)
	registerVal1.GenericMenuFrame0 = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 76.000000, 704.000000)
	registerVal7:setTopBottom(true, false, 140.720000, 641.720000)
	registerVal7:setWidgetType(CoD.scorestreakButton)
	registerVal7:setHorizontalCount(5.000000)
	registerVal7:setVerticalCount(4.000000)
	registerVal7:setSpacing(7.000000)
	registerVal7:setDataSource("ScorestreaksList")
	local function __FUNC_2D5E_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_2D5E_)
	local function __FUNC_2F80_(arg1, arg2)
		SetCACItemAsOld(arg1, arg0)
		UpdateSelfElementState(registerVal1, arg1, arg0)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_2F80_)
	local function __FUNC_3011_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_3011_)
	local function __FUNC_3209_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3209_)
	local function __FUNC_32DA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACHaveTokens(arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			SetUnlockConfirmationInfo(arg0, arg2)
			OpenPopup(registerVal1, "OutOfUnlockTokens", arg2)
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			return true
		else
			registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal4 = IsCACItemPurchased(arg0, arg2)
			registerVal4 = IsCACHaveTokens(arg2)
			registerVal4 = IsInPermanentUnlockMenu(arg2)
			if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 then
				OpenUnlockClassItemDialog(arg1, arg0, arg2)
				UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
				UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
				return true
			else
				registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal4 = IsCACItemPurchased(arg0, arg2)
				registerVal4 = IsScorestreakEquipped(arg1, arg0, arg2)
				registerVal4 = IsInPermanentUnlockMenu(arg2)
				if not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
					EquipScorestreak(arg1, arg0, arg2)
					UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
					PlaySoundSetSound(registerVal1, "equip_item")
					UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
					return true
				else
					registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
					registerVal4 = IsCACItemPurchased(arg0, arg2)
					registerVal4 = IsInPermanentUnlockMenu(arg2)
					if not registerVal4 and registerVal4 and not registerVal4 then
						RemoveScorestreak(arg1, arg0, arg2)
						UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
						PlaySoundSetSound(registerVal1, "unequip_item")
						UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
						return true
					else
						registerVal4 = IsInPermanentUnlockMenu(arg2)
						registerVal4 = IsPermanentlyUnlocked(arg0, arg2)
						registerVal4 = HavePermanentUnlockTokens(arg2)
						if registerVal4 and not registerVal4 and registerVal4 then
							OpenPermanentUnlockClassItemDialog(arg1, arg0, arg2)
							return true
						end
					end
				end
			end
		end
	end

	local function __FUNC_392B_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACHaveTokens(arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal3 = IsCACItemPurchased(arg0, arg2)
			registerVal3 = IsCACHaveTokens(arg2)
			registerVal3 = IsInPermanentUnlockMenu(arg2)
			if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal3 = IsCACItemPurchased(arg0, arg2)
				registerVal3 = IsScorestreakEquipped(arg1, arg0, arg2)
				registerVal3 = IsInPermanentUnlockMenu(arg2)
				if not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				else
					registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
					registerVal3 = IsCACItemPurchased(arg0, arg2)
					registerVal3 = IsInPermanentUnlockMenu(arg2)
					if not registerVal3 and registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CLEAR")
						return true
					else
						registerVal3 = IsInPermanentUnlockMenu(arg2)
						registerVal3 = IsPermanentlyUnlocked(arg0, arg2)
						registerVal3 = HavePermanentUnlockTokens(arg2)
						if registerVal3 and not registerVal3 and registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
							return true
						end
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_32DA_, __FUNC_392B_, false)
	local function __FUNC_3DF6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsScorestreakEquipped(arg1, arg0, arg2)
		registerVal4 = IsInPermanentUnlockMenu(arg2)
		if not registerVal4 and registerVal4 and registerVal4 and not registerVal4 then
			RemoveScorestreak(arg1, arg0, arg2)
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			PlaySoundSetSound(registerVal1, "unequip_item")
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
			return true
		end
	end

	local function __FUNC_404E_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsScorestreakEquipped(arg1, arg0, arg2)
		registerVal3 = IsInPermanentUnlockMenu(arg2)
		if not registerVal3 and registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_3DF6_, __FUNC_404E_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.scorestreaks = registerVal7
	registerVal8 = CoD.equippedScoreStreaksList.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -543.000000, -71.000000)
	registerVal8:setTopBottom(false, true, -207.280000, -69.280000)
	registerVal8:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	registerVal1:addElement(registerVal8)
	registerVal1.equippedList = registerVal8
	local registerVal9 = CoD.scorestreaks_TitleBox.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 739.000000, 990.000000)
	registerVal9:setTopBottom(true, false, 140.720000, 175.720000)
	registerVal1:addElement(registerVal9)
	registerVal1.scorestreaksTitleBox = registerVal9
	local registerVal10 = CoD.scorestreakPreview.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 806.000000, 1128.000000)
	registerVal10:setTopBottom(true, false, 74.610000, 544.390000)
	registerVal1:addElement(registerVal10)
	registerVal1.scorestreakPreview = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, 99.000000, 473.000000)
	registerVal11:setTopBottom(false, false, -180.000000, -158.000000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setLineSpacing(0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.highlightedDescription = registerVal11
	local registerVal12 = CoD.scorestreakRequirementLabel.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 1111.000000, 1219.000000)
	registerVal12:setTopBottom(true, false, 140.720000, 195.720000)
	registerVal1:addElement(registerVal12)
	registerVal1.scorestreakRequirementLabel = registerVal12
	local registerVal13 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "ScorestreakSelect"
	local function __FUNC_4221_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal17.condition = __FUNC_4221_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.Pregame.state")
	local function __FUNC_426C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_426C_)
	registerVal1:addElement(registerVal13)
	registerVal1.PregameTimerOverlay = registerVal13
	local registerVal14 = CoD.UnlockTokensWidget.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, true, -362.000000, -123.000000)
	registerVal14:setTopBottom(true, false, 36.000000, 80.000000)
	registerVal14:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	registerVal14.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal14)
	registerVal1.UnlockTokensWidget = registerVal14
	local registerVal15 = CoD.Prestige_PermanentUnlockTokensWidget.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, true, -362.000000, -81.000000)
	registerVal15:setTopBottom(true, false, 36.000000, 80.000000)
	registerVal15:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal15.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal15)
	registerVal1.PermanentUnlockTokensWidget = registerVal15
	registerVal16 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal16:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal16)
	registerVal1.FEMenuLeftGraphics = registerVal16
	registerVal17 = CoD.scorestreaks_Banned_Items.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 998.000000, 1207.000000)
	registerVal17:setTopBottom(true, false, 470.380000, 500.380000)
	registerVal1:addElement(registerVal17)
	registerVal1.scorestreaksBannedItems = registerVal17
	local function __FUNC_4399_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal7, nil, false, __FUNC_4399_)
	local function __FUNC_43EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ScorestreaksLabel:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_43EA_)
	local function __FUNC_44EF_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal7, nil, false, __FUNC_44EF_)
	local function __FUNC_453E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(GetUnlockDescription(arg0, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_453E_)
	local function __FUNC_4620_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal7, nil, false, __FUNC_4620_)
	local function __FUNC_4672_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal7, nil, false, __FUNC_4672_)
	local registerVal18 = {}
	registerVal18.right = registerVal8
	registerVal7.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal7
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_46C2_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal19.DefaultClip = __FUNC_46C2_
	local function __FUNC_4722_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_4A0B_(arg0, arg1)
			local function __FUNC_4B60_(arg0, arg1)
				local function __FUNC_4CDB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4CDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CDB_)
			end

			if arg1.interrupted then
				__FUNC_4B60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B60_)
		end

		registerVal7:completeAnimation()
		registerVal1.scorestreaks:setAlpha(0.000000)
		__FUNC_4A0B_(registerVal7, {})
		local function __FUNC_4E8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(HideIfInPermanentUnlockMenu(0.000000))
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_4E8D_)
		local function __FUNC_506E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_506E_)
		local function __FUNC_5221_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_5221_)
	end

	registerVal19.Intro = __FUNC_4722_
	registerVal18.DefaultState = registerVal19
	registerVal1.clipsPerState = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_53D5_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "scorestreaksElementSide"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		registerVal5 = {}
		registerVal5.elementName = "scorestreaksElementBottom"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerTextToGameMode("")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_53D5_)
	local function __FUNC_5608_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SaveLoadout(registerVal1, arg2)
		ForceNotifyPregameUpdate(registerVal1, arg0, arg2)
		ClearMenuSavedState(arg1)
		SetPerControllerTableProperty(arg2, "updateNewBreadcrumbs", true)
		ForceLobbyButtonUpdate(arg2)
		return true
	end

	local function __FUNC_5765_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5608_, __FUNC_5765_, false)
	local function __FUNC_5861_(arg0, arg1, arg2, arg3)
		RemoveAllScorestreaks(arg1, arg2)
		PlaySoundSetSound(registerVal1, "unequip_item")
		UpdateAllMenuButtonPrompts(arg1, arg2)
		return true
	end

	local function __FUNC_5938_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_CLEAR_ALL")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "Y", __FUNC_5861_, __FUNC_5938_, false)
	local function __FUNC_5A3C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_5ACD_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_5A3C_, __FUNC_5ACD_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "scorestreaks"
	registerVal8.id = "equippedList"
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.scorestreaks:processEvent(registerVal20)
	end
	local function __FUNC_5C0F_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.GenericMenuFrame0:close()
		arg1.scorestreaks:close()
		arg1.equippedList:close()
		arg1.scorestreaksTitleBox:close()
		arg1.scorestreakPreview:close()
		arg1.scorestreakRequirementLabel:close()
		arg1.PregameTimerOverlay:close()
		arg1.UnlockTokensWidget:close()
		arg1.PermanentUnlockTokensWidget:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.scorestreaksBannedItems:close()
		arg1.highlightedDescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Scorestreaks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5C0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Scorestreaks = __FUNC_10E9_
