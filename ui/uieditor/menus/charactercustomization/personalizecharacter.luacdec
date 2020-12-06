-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_PersonalizeList")
require("ui.uieditor.widgets.Heroes.heroSelectOptionList")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeHero_InfoBlock")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_CPProgressionMessage")
require("ui.uieditor.widgets.CAC.Customization.ChallengeProgressionInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.TabbedWidgets.WeaponGroupsTabWidget")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.CAC.cac_LockBig")
local function __FUNC_553_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	if CoD.isSafehouse then
		CoD.CCUtility.customizationMode = Enum.eModes.MODE_CAMPAIGN
		Engine.SetActiveMenu(arg1, CoD.UIMENU_NONE)
	end
	if CoD.CCUtility.customizationMode == Enum.eModes.MODE_CAMPAIGN then
		CoD.CCUtility.SetEdittingHero(arg1, Engine.GetEquippedHero(arg1, CoD.CCUtility.customizationMode))
	end
	local registerVal3 = Engine.GetHeroCustomizationTable(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
	CoD.CCUtility.Heroes.heroCustomizationTable = registerVal3
	local function __FUNC_966_()
		local registerVal1 = Engine.GetEquippedInfoForHero(arg1, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
		CoD.CCUtility.Heroes.selectionTable = registerVal1
	end

	arg0.reloadSelectionList = __FUNC_966_
	arg0.reloadSelectionList()
	arg0.currentMode = CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions
end

local function __FUNC_ABA_(arg0, arg1, arg2)
	if arg1.isBlackMarket then
		arg0.optionsList.optionsList.filter = CoD.CCUtility.PersonalizeHeroData.BlackMarketFilter
	else
		arg0.optionsList.optionsList.filter = CoD.CCUtility.PersonalizeHeroData.StandardFilter
	end
	arg0.optionsList.optionsList:updateDataSource()
end

local function __FUNC_C3A_(arg0, arg1)
	arg0.tabChanged = __FUNC_ABA_
	arg0.personalizeList:clearNavigationTable()
	arg0.optionsList:clearNavigationTable()
	local function __FUNC_DCA_(arg2, arg3, arg4, arg5)
		CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex = nil
		if arg2 == CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions then
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea ~= CoD.CCUtility.TauntCategoryIndex then
				local registerVal8 = CoD.GetLocalClientAdjustedNum(arg1)
				SendClientScriptNotify(arg1, ("camera_change" .. registerVal8), "exploring")
			end
			CoD.CCUtility.PersonalizeHeroData.EdittingArea = nil
			arg0.reloadSelectionList()
			if arg3 then
				arg0.personalizeList.customizationList:updateDataSource()
				registerVal8 = {}
				registerVal8.categorySize = CoD.CCUtility.Heroes.LargeCategory
				registerVal8.customizationArea = arg3
				arg0.personalizeList.customizationList:findItem(nil, registerVal8, true)
			end
			arg0.categoryTabs.Tabs.m_disableNavigation = true
			arg0.categoryTabs:setAlpha(0.000000)
			CoD.SwapFocusableElements(arg1, nil, arg0.personalizeList)
			Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (5, 2, 0, 0x4E)
			arg0:setState("DefaultState")
		else
			if arg2 == CoD.CCUtility.PersonalizeHeroData.Modes.EdittingOption then
				if arg4.customizationArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
					local registerVal9 = CoD.GetLocalClientAdjustedNum(arg1)
					SendClientScriptNotify(arg1, ("camera_change" .. registerVal9), "inspecting_helmet")
				else
					if arg4.customizationArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
						registerVal9 = CoD.GetLocalClientAdjustedNum(arg1)
						SendClientScriptNotify(arg1, ("camera_change" .. registerVal9), "inspecting_body")
					else
						if arg4.customizationArea ~= CoD.CCUtility.TauntCategoryIndex then
							registerVal9 = CoD.GetLocalClientAdjustedNum(arg1)
							SendClientScriptNotify(arg1, ("camera_change" .. registerVal9), "exploring")
						end
					end
				end
				CoD.CCUtility.PersonalizeHeroData.EdittingArea = arg4.customizationArea
				CoD.CCUtility.PersonalizeHeroData.EdittingElement = arg4
				if arg4.customizationArea == CoD.CCUtility.ShowcaseWeaponCategoryIndex then
					OpenChooseShowcaseWeapon(arg0, arg4, arg1)
				else
					if arg4.customizationArea == CoD.CCUtility.TauntCategoryIndex then
						NavigateToMenu(arg0, "ChooseTaunts", true, arg1)
					else
						if arg5 then
							CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex = 1.000000
						else
							CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex = nil
							local registerVal6 = Engine.CurrentSessionMode()
							registerVal6 = arg0.categoryTabs.Tabs.grid:getItemAtPosition(1.000000, 2.000000, false)
							arg0.categoryTabs.Tabs.grid:setActiveItem(registerVal6)
							arg0.categoryTabs.Tabs.m_disableNavigation = false
							arg0.categoryTabs:setAlpha(1.000000)
							local registerVal7 = Engine.CharacterCustomizationNewItemCount(arg1, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea)
							registerVal8, registerVal9, registerVal10 = ipairs(CoD.CCUtility.PersonalizeHeroData.HeroCustomizationTabCategories)
							for index11,value12 in registerVal8, registerVal9, registerVal10 do
								local registerVal16 = {}
								registerVal16.filterName = value12
								local registerVal13 = arg0.categoryTabs.Tabs.grid:findItem(nil, registerVal16, false, nil)
								local registerVal14 = registerVal13:getModel(arg1, "breadcrumbCount")
								if registerVal13 and registerVal14 then
									if value12 == "loot" then
									else
									end
									Engine.SetModelValue(registerVal14, registerVal7.standard)
								end
							end
						end
						arg0.optionsList.optionsList.filter = CoD.CCUtility.PersonalizeHeroData.StandardFilter
						arg0.optionsList.optionsList:updateDataSource()
						CoD.SwapFocusableElements(arg1, nil, arg0.optionsList)
						Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (6, 2, 0, 0x4E)
						arg0:setState("EdittingItemTabs")
					end
				end
			end
		end
		arg0.currentMode = arg2
		if "MENU_SPECIALIST_BODIES_CAPS" then
			arg0.Frame.titleLabel:setText(Engine.Localize(ConvertToUpperString(LocalizeWithEdittingHeroName(arg1, "MENU_SPECIALIST_BODIES_CAPS"))))
			arg0.Frame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(ConvertToUpperString(LocalizeWithEdittingHeroName(arg1, "MENU_SPECIALIST_BODIES_CAPS"))))
		end
	end

	arg0.updateMode = __FUNC_DCA_
	arg0.updateMode(CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions)
end

local function __FUNC_1E01_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("PersonalizeCharacter")
	if __FUNC_553_ then
		__FUNC_553_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "PersonalizeCharacter.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -576.000000, -215.000000)
	registerVal3:setTopBottom(true, true, 84.000000, -53.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 124.000000, 83.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TabBacking = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(ConvertToUpperString(LocalizeWithEdittingHeroName(arg0, "HEROES_OUTFITS_CAPS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(ConvertToUpperString(LocalizeWithEdittingHeroName(arg0, "HEROES_OUTFITS_CAPS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.Frame = registerVal5
	local registerVal6 = CoD.PersonalizeCharacter_PersonalizeList.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -563.000000, -233.000000)
	registerVal6:setTopBottom(true, true, 136.000000, -13.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.personalizeList = registerVal6
	local registerVal7 = CoD.heroSelectOptionList.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -573.000000, -225.000000)
	registerVal7:setTopBottom(true, true, 136.000000, -20.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.optionsList = registerVal7
	local registerVal8 = CoD.PersonalizeHero_InfoBlock.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -205.000000, 72.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 605.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "ShowCurrentlyEquippedInfo"
	local function __FUNC_39D5_(arg0, arg1, arg2)
		return IsMenuInState(arg0, "DefaultState")
	end

	registerVal12.condition = __FUNC_39D5_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.categoryInfoBlock = registerVal8
	local registerVal9 = CoD.PersonalizeHero_InfoBlock.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -205.000000, 95.000000)
	registerVal9:setTopBottom(true, false, 136.000000, 605.000000)
	registerVal9.CategoryDesc.weaponDescTextBox:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_DESC"))
	registerVal9.CurrentlyEquippedInfo.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal9)
	registerVal1.optionInfoBlock = registerVal9
	local registerVal10 = CoD.PersonalizeCharacter_CPProgressionMessage.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 328.000000, 576.000000)
	registerVal10:setTopBottom(true, false, 556.750000, 581.750000)
	registerVal1:addElement(registerVal10)
	registerVal1.PersonalizeCharacterCPProgressionMessage0 = registerVal10
	registerVal11 = CoD.ChallengeProgressionInfo.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, 156.000000, 576.000000)
	registerVal11:setTopBottom(true, false, 573.000000, 657.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11.requirementTitle:setText(Engine.Localize("MPUI_UNLOCK_REQUIREMENTS"))
	registerVal11.completedTitle:setText(Engine.Localize("MPUI_REQUIREMENTS_MET"))
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NotVisible"
	local function __FUNC_3A41_(arg1, arg2, arg3)
		return ShouldHideItemHeroOption(arg2, arg0)
	end

	registerVal15.condition = __FUNC_3A41_
	local registerVal16 = {}
	registerVal16.stateName = "bmComtracts"
	local function __FUNC_3AA2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_3AA2_
	local registerVal17 = {}
	registerVal17.stateName = "Completed"
	local function __FUNC_3AED_(arg1, arg2, arg3)
		local registerVal3 = IsCurrentLockedHeroOption(arg2, arg0)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_3AED_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_3B53_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg0, "unlockProgressAndTarget")
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_3B53_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_3BE1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "optionIndex"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "optionIndex", true, __FUNC_3BE1_)
	local function __FUNC_3D01_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockProgressAndTarget"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "unlockProgressAndTarget", true, __FUNC_3D01_)
	registerVal1:addElement(registerVal11)
	registerVal1.progressionInfo = registerVal11
	registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, true, 84.000000, -19.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics = registerVal12
	local registerVal13 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 1280.000000)
	registerVal13:setTopBottom(true, false, 85.000000, 120.000000)
	registerVal13.Tabs.grid:setWidgetType(CoD.WeaponGroupsTabWidget)
	registerVal13.Tabs.grid:setHorizontalCount(8.000000)
	registerVal13.Tabs.grid:setDataSource("HeroCustomizationTabs")
	local function __FUNC_3E2D_(arg1, arg2)
		CallCustomElementFunction_Self(registerVal1, "tabChanged", arg1, arg0)
		return nil
	end

	registerVal13:registerEventHandler("list_active_changed", __FUNC_3E2D_)
	registerVal1:addElement(registerVal13)
	registerVal1.categoryTabs = registerVal13
	registerVal14 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -66.500000, 475.000000)
	registerVal14:setTopBottom(true, true, 168.000000, -63.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.XCamMouseControl = registerVal14
	registerVal15 = CoD.cac_LockBig.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, 159.000000, 255.000000)
	registerVal15:setTopBottom(true, false, 14.000000, 684.000000)
	registerVal15:setAlpha(0.000000)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Locked"
	local function __FUNC_3EB4_(arg1, arg2, arg3)
		local registerVal3 = IsCurrentLockedHeroOption(arg2, arg0)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isBMClassified")
		end
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_3EB4_
	local registerVal20 = {}
	registerVal20.stateName = "NotAvailable"
	local function __FUNC_3F6D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_3F6D_
	registerVal18 = {registerVal19, registerVal20}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_3FB9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "optionIndex"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "optionIndex", true, __FUNC_3FB9_)
	local function __FUNC_40D9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isBMClassified", true, __FUNC_40D9_)
	registerVal1:addElement(registerVal15)
	registerVal1.LockIcon = registerVal15
	local function __FUNC_41FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CategoryDesc.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "categoryDesc", true, __FUNC_41FC_)
	local function __FUNC_42FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.PersonalizeSpecTitle.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "fullCategoryName", true, __FUNC_42FF_)
	local function __FUNC_4405_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CurrentlyEquippedInfo:setAlpha(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "currentSelectionNameAlpha", true, __FUNC_4405_)
	local function __FUNC_44C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CurrentlyEquippedInfo.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "currentSelectionName", true, __FUNC_44C4_)
	local function __FUNC_45FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CurrentlyEquippedInfo.weaponNameWithVariant.variantName:setAlpha(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "currentSelectionVariantNameAlpha", true, __FUNC_45FE_)
	local function __FUNC_4708_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.CurrentlyEquippedInfo.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal6.customizationList, "currentSelectionVariantName", true, __FUNC_4708_)
	local function __FUNC_4831_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.PersonalizeSpecTitle.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal6.customizationList, "fullCategoryName", true, __FUNC_4831_)
	local function __FUNC_4939_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.CurrentlyEquippedInfo.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal7.optionsList, "name", true, __FUNC_4939_)
	local function __FUNC_4A72_(arg1)
		registerVal9.CryptokeyTypeNameLeft:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal7.optionsList, "rarityType", false, __FUNC_4A72_)
	local function __FUNC_4AED_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal7.optionsList, nil, false, __FUNC_4AED_)
	local function __FUNC_4B3E_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:linkToElementModel(registerVal7.optionsList, nil, false, __FUNC_4B3E_)
	registerVal16 = {}
	registerVal16.left = registerVal7
	registerVal6.navigation = registerVal16
	registerVal16 = {}
	registerVal16.right = registerVal6
	registerVal7.navigation = registerVal16
	registerVal16 = {}
	registerVal17 = {}
	local function __FUNC_4B8E_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.optionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.optionInfoBlock:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.progressionInfo:setLeftRight(true, false, 439.000000, 859.000000)
		registerVal1.progressionInfo:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal1.progressionInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_4B8E_
	local function __FUNC_4EF0_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_522C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(1.000000)
		__FUNC_522C_(registerVal6, {})
		local function __FUNC_53E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -574.000000, -226.000000)
			arg0:setTopBottom(true, true, 136.000000, 700.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -988.000000, -640.000000)
		registerVal1.optionsList:setTopBottom(true, true, 136.000000, 700.000000)
		registerVal1.optionsList:setAlpha(0.000000)
		__FUNC_53E1_(registerVal7, {})
		local function __FUNC_5605_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(1.000000)
		__FUNC_5605_(registerVal8, {})
		local function __FUNC_57B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
				arg0.CurrentlyEquippedInfo:beginAnimation("subkeyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0.CurrentlyEquippedInfo:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal9.CurrentlyEquippedInfo:completeAnimation()
		registerVal1.optionInfoBlock:setAlpha(0.000000)
		registerVal1.optionInfoBlock.CurrentlyEquippedInfo:setAlpha(0.000000)
		__FUNC_57B9_(registerVal9, {})
		local function __FUNC_59FE_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		__FUNC_59FE_(registerVal15, {})
	end

	registerVal17.EdittingItem = __FUNC_4EF0_
	local function __FUNC_5BB1_()
		registerVal1:setupElementClipCounter(6.000000)
		local function __FUNC_5EE1_(arg0, arg1)
			local function __FUNC_605B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_605B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_605B_)
		end

		registerVal4:completeAnimation()
		registerVal1.TabBacking:setAlpha(0.000000)
		__FUNC_5EE1_(registerVal4, {})
		local function __FUNC_620D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(1.000000)
		__FUNC_620D_(registerVal6, {})
		local function __FUNC_63C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -573.000000, -225.000000)
			arg0:setTopBottom(true, true, 136.000000, -20.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -988.000000, -640.000000)
		registerVal1.optionsList:setTopBottom(true, true, 136.000000, -20.000000)
		registerVal1.optionsList:setAlpha(0.000000)
		__FUNC_63C1_(registerVal7, {})
		local function __FUNC_65E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(1.000000)
		__FUNC_65E5_(registerVal8, {})
		local function __FUNC_6799_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.optionInfoBlock:setAlpha(0.000000)
		__FUNC_6799_(registerVal9, {})
		local function __FUNC_694D_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(0.000000)
		__FUNC_694D_(registerVal15, {})
	end

	registerVal17.EdittingItemTabs = __FUNC_5BB1_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_6B01_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -573.000000, -225.000000)
		registerVal1.optionsList:setTopBottom(true, false, 136.000000, 700.000000)
		registerVal1.optionsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.CurrentlyEquippedInfo:completeAnimation()
		registerVal1.optionInfoBlock:setLeftRight(false, false, -205.000000, 95.000000)
		registerVal1.optionInfoBlock:setTopBottom(true, false, 136.000000, 605.000000)
		registerVal1.optionInfoBlock:setAlpha(1.000000)
		registerVal1.optionInfoBlock.CurrentlyEquippedInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PersonalizeCharacterCPProgressionMessage0:setLeftRight(false, false, 328.000000, 576.000000)
		registerVal1.PersonalizeCharacterCPProgressionMessage0:setTopBottom(true, false, 556.750000, 581.750000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.progressionInfo:setLeftRight(true, false, 435.000000, 855.000000)
		registerVal1.progressionInfo:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal1.progressionInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_6B01_
	local function __FUNC_7045_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_7321_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(0.000000)
		__FUNC_7321_(registerVal6, {})
		local function __FUNC_74D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -987.500000, -639.500000)
			arg0:setTopBottom(true, true, 136.000000, -20.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -573.000000, -225.000000)
		registerVal1.optionsList:setTopBottom(true, true, 136.000000, -20.000000)
		registerVal1.optionsList:setAlpha(1.000000)
		__FUNC_74D5_(registerVal7, {})
		local function __FUNC_76F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(0.000000)
		__FUNC_76F9_(registerVal8, {})
		local function __FUNC_78AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.optionInfoBlock:setAlpha(1.000000)
		__FUNC_78AD_(registerVal9, {})
		local function __FUNC_7A61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		__FUNC_7A61_(registerVal15, {})
	end

	registerVal17.DefaultState = __FUNC_7045_
	registerVal16.EdittingItem = registerVal17
	registerVal17 = {}
	local function __FUNC_7C15_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -573.000000, -225.000000)
		registerVal1.optionsList:setTopBottom(true, false, 136.000000, 700.000000)
		registerVal1.optionsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.optionInfoBlock:setLeftRight(false, false, -205.000000, 95.000000)
		registerVal1.optionInfoBlock:setTopBottom(true, false, 136.000000, 605.000000)
		registerVal1.optionInfoBlock:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.progressionInfo:setLeftRight(false, false, -205.000000, 215.000000)
		registerVal1.progressionInfo:setTopBottom(true, false, 558.000000, 642.000000)
		registerVal1.progressionInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_7C15_
	local function __FUNC_808E_()
		registerVal1:setupElementClipCounter(6.000000)
		local function __FUNC_83BD_(arg0, arg1)
			local function __FUNC_8537_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8537_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8537_)
		end

		registerVal4:completeAnimation()
		registerVal1.TabBacking:setAlpha(1.000000)
		__FUNC_83BD_(registerVal4, {})
		local function __FUNC_86E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.personalizeList:setAlpha(0.000000)
		__FUNC_86E9_(registerVal6, {})
		local function __FUNC_889D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -987.500000, -225.000000)
			arg0:setTopBottom(true, false, 136.000000, 700.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.optionsList:setLeftRight(false, false, -573.000000, -225.000000)
		registerVal1.optionsList:setTopBottom(true, false, 136.000000, 700.000000)
		registerVal1.optionsList:setAlpha(1.000000)
		__FUNC_889D_(registerVal7, {})
		local function __FUNC_8AC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.categoryInfoBlock:setAlpha(0.000000)
		__FUNC_8AC1_(registerVal8, {})
		local function __FUNC_8C75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.optionInfoBlock:setAlpha(1.000000)
		__FUNC_8C75_(registerVal9, {})
		local function __FUNC_8E29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.LockIcon:setAlpha(1.000000)
		__FUNC_8E29_(registerVal15, {})
	end

	registerVal17.DefaultState = __FUNC_808E_
	registerVal16.EdittingItemTabs = registerVal17
	registerVal1.clipsPerState = registerVal16
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_8FDD_(arg1, arg2)
		local registerVal3 = TestAndSetFirstTimeMenu(arg0, "com_firsttime_wardrobe")
		registerVal3 = IsCampaign()
		if registerVal3 and registerVal3 then
			OpenGenericLargePopup(registerVal1, arg0, "MENU_FIRSTTIME_WARDROBE", "MENU_FIRSTTIME_WARDROBE2", "com_firsttime_wardrobe_image", "MENU_FIRSTTIME_WARDROBE_BUTTONTEXT", "", "")
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_8FDD_)
	local function __FUNC_91AC_(arg1, arg2)
		local registerVal3 = IsInGame()
		if registerVal3 then
			RefreshCharacterCustomization(registerVal1, arg1, arg0)
			SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
			LockInput(registerVal1, arg0, true)
			PrepareOpenMenuInSafehouse(arg0)
			ShowHeaderIconOnly(registerVal1)
			SetElementStateByElementName(registerVal1, "Frame", arg0, "Update")
			local registerVal5 = {}
			registerVal5.elementName = "Frame"
			registerVal5.clipName = "Intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
		else
			registerVal3 = InCharacterCustomizationMode(Enum.eModes.MODE_CAMPAIGN)
			if registerVal3 then
				RefreshCharacterCustomization(registerVal1, arg1, arg0)
				SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
				ShowHeaderIconOnly(registerVal1)
			else
				SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
				ShowHeaderKickerAndIcon(registerVal1)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_91AC_)
	local function __FUNC_9501_(arg1, arg2)
		local registerVal3 = IsElementPropertyValue(arg1, "headItem", true)
		if registerVal3 then
			SetElementStateByElementName(registerVal1, "PersonalizeCharacterCPProgressionMessage0", arg0, "NeedMessage")
		else
			SetElementStateByElementName(registerVal1, "PersonalizeCharacterCPProgressionMessage0", arg0, "DefaultState")
		end
		return nil
	end

	registerVal1:registerEventHandler("list_item_gain_focus", __FUNC_9501_)
	local function __FUNC_963A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsEdittingHeroOption(arg1)
		registerVal4 = IsInGame()
		if not registerVal4 and registerVal4 then
			SaveLoadout(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			PrepareCloseMenuInSafehouse(arg2)
			LockInput(registerVal1, arg2, false)
			SendOwnMenuResponse(arg1, arg2, "closed")
			Close(registerVal1, arg2)
			return true
		else
			registerVal4 = IsEdittingHeroOption(arg1)
			if not registerVal4 then
				SaveLoadout(registerVal1, arg2)
				ClearSavedState(registerVal1, arg2)
				SendClientScriptMenuChangeNotify(arg2, arg1, false)
				GoBack(registerVal1, arg2)
				return true
			else
				registerVal4 = IsEdittingHeroOption(arg1)
				if registerVal4 then
					DisableMouseOnMenuElement(arg1, "optionsList", arg2)
					CancelHeroOptionSelection(arg1, arg2)
					PlaySoundSetSound(registerVal1, "menu_go_back")
					return true
				end
			end
		end
	end

	local function __FUNC_9958_(arg0, arg1, arg2)
		local registerVal3 = IsEdittingHeroOption(arg1)
		registerVal3 = IsInGame()
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsEdittingHeroOption(arg1)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
				return true
			else
				registerVal3 = IsEdittingHeroOption(arg1)
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_963A_, __FUNC_9958_, false)
	local function __FUNC_9B79_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_9BAC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_9B79_, __FUNC_9BAC_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "personalizeList"
	registerVal7.id = "optionsList"
	registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.personalizeList:processEvent(registerVal18)
	end
	local function __FUNC_9CBE_(arg1)
		arg1.LeftPanel:close()
		arg1.Frame:close()
		arg1.personalizeList:close()
		arg1.optionsList:close()
		arg1.categoryInfoBlock:close()
		arg1.optionInfoBlock:close()
		arg1.PersonalizeCharacterCPProgressionMessage0:close()
		arg1.progressionInfo:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.categoryTabs:close()
		arg1.XCamMouseControl:close()
		arg1.LockIcon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "PersonalizeCharacter.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_9CBE_)
	if __FUNC_C3A_ then
		__FUNC_C3A_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.PersonalizeCharacter = __FUNC_1E01_
