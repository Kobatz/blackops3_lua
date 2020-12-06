-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CAC.CybercoreSelectionMenu")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Texture")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer_ExposedValues")
require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNoHero")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreLoadoutWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassCPClient_Ingame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassInGameClassList")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ChooseClass_ClassSetTabWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ChooseClass_ClassSetTabPip_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassWidget_Ingame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
local function __FUNC_5F4_(arg0)
	local registerVal2 = Engine.Localize("MPUI_CUSTOM_CLASSES")
	local registerVal3 = IsClassSetsAvailableForCurrentGameMode()
	if registerVal3 then
		registerVal3 = Engine.GetCurrentClassSetIndex(arg0)
		local registerVal4 = Engine.GetClassSetName(arg0, registerVal3)
	end
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.tabName = registerVal4
	registerVal6.classSetId = CoD.PrestigeUtility.ChooseClassSets.Custom
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	registerVal5 = {}
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MPUI_DEFAULT_CLASSES")
	registerVal6.tabName = registerVal7
	registerVal6.classSetId = CoD.PrestigeUtility.ChooseClassSets.Default
	registerVal5.models = registerVal6
	table.insert({}, registerVal5)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("ClassSetTabs", __FUNC_5F4_)
DataSources.ClassSetTabs = registerVal1
local function __FUNC_8C3_(arg0, arg1)
	CoD.CACUtility.SetDefaultCACRoot(arg1)
	local function __FUNC_E30_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.menu = arg0
		arg0:processEvent(registerVal4)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setModel", __FUNC_E30_)
	if not CoD.perController[arg1].isInMobileArmory then
		local registerVal3 = arg0:getModel()
		local registerVal2 = CoD.SafeGetModelValue(registerVal3, "isInMobileArmory")
		if registerVal2 ~= 1.000000 then
		end
		CoD.perController[arg1].isInMobileArmory = true
	end
	registerVal2 = IsCampaign()
	if registerVal2 then
		if CoD.perController[arg1].isInMobileArmory then
			local registerVal4 = arg0:getModel()
			registerVal3 = CoD.SafeGetModelValue(registerVal4, "fieldOpsKitClassNum")
		else
			registerVal3 = Engine.GetCustomClassCount(arg1)
		end
		if (registerVal3 + 1.000000) ~= nil then
			CoD.perController[arg1].fieldOpsKitClassNum = (registerVal3 + 1.000000)
		end
	end
	local function __FUNC_EB8_(arg0, arg1)
		StartMenuResumeGame(arg0, arg1.controller)
		CloseStartMenu(arg0, arg1.controller)
	end

	arg0:registerEventHandler("open_migration_menu", __FUNC_EB8_)
	registerVal2 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal2, "hudItems")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "hudItems")
	end
	registerVal3 = Engine.GetModel(registerVal2, "hudItems.cybercoreSelectMenuDisabled")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "hudItems.cybercoreSelectMenuDisabled")
	end
	registerVal3 = IsCACCustomClassCountDefault(arg1)
	if not registerVal3 then
		local registerVal5 = Engine.GetModelForController(arg1)
		registerVal4 = Engine.CreateModel(registerVal5, "classSetValue")
		Engine.SetModelValue(registerVal4, CoD.PrestigeUtility.ChooseClassSets.Custom)
	end
end

local function __FUNC_F5D_(arg0, arg1)
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	local registerVal3 = {}
	local registerVal4 = {}
	registerVal4 = {"class"}
	registerVal3 = {registerVal4}
	CoD.MenuNavigation[arg1] = registerVal3
	local registerVal2 = IsClassSetsAvailableForCurrentGameMode()
	if registerVal2 then
		registerVal2 = Engine.GetCurrentClassSetIndex(arg1)
		arg0.classSetName:setText(Engine.Localize(Engine.GetClassSetName(arg1, registerVal2)))
	end
	registerVal3 = {}
	registerVal3.right = nil
	arg0.classList.navigation = registerVal3
	arg0.chooseClassWidget.m_inputDisabled = true
	local function __FUNC_12B0_(arg2)
		local registerVal1 = IsCACCustomClassCountDefault(arg1)
		if registerVal1 then
			return 
		end
		registerVal1 = Engine.GetModel(arg2, "classSetId")
		local registerVal2 = Engine.GetModelValue(registerVal1)
		local registerVal5 = Engine.GetModelForController(arg1)
		local registerVal4 = Engine.CreateModel(registerVal5, "classSetValue")
		Engine.SetModelValue(registerVal4, registerVal2)
		arg0.ClassSetTabWidget.Internal.IndicatorsGrid:updateDataSource()
		arg0.classList.classList:updateDataSource()
	end

	arg0:linkToElementModel(arg0.ClassSetTabWidget.Internal.Tabs, nil, false, __FUNC_12B0_)
	CoD.CACUtility.ForceStreamAttachmentImages(arg1)
end

local function __FUNC_150B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseClass_InGame")
	if __FUNC_8C3_ then
		__FUNC_8C3_(registerVal1, arg0)
	end
	registerVal1.soundSet = "Loadout"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseClass_InGame.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setImage(RegisterImage("uie_default_white_255"))
	registerVal1:addElement(registerVal3)
	registerVal1.blackimage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -378.000000, 342.000000)
	registerVal4:setScale(1.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal1:addElement(registerVal4)
	registerVal1.BackgroundFocus = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_default_white_255"))
	registerVal1:addElement(registerVal5)
	registerVal1.blackImage = registerVal5
	local registerVal6 = CoD.AbilityWheel_Texture.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -140.000000, 640.000000)
	registerVal6:setTopBottom(true, false, 134.000000, 655.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.Texture = registerVal6
	local registerVal7 = CoD.FE_ButtonPanelShaderContainer_ExposedValues.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -576.000000, -262.000000)
	registerVal7:setTopBottom(true, true, 78.000000, 0.000000)
	registerVal7:setRGB(0.240000, 0.240000, 0.240000)
	registerVal7.FEButtonPanel:setShaderVector(0.000000, 5.000000, 25.000000, 0.000000, 0.000000)
	registerVal7.FEButtonPanel.Full:setShaderVector(0.000000, 0.031646, 0.015480, 0.000000, 0.000000)
	registerVal7.FEButtonPanel.Full:setShaderVector(1.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal7.FEButtonPanel.Full:setupNineSliceShader(10.000000, 10.000000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_3444_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal11.condition = __FUNC_3444_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_3490_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3490_)
	registerVal1:addElement(registerVal7)
	registerVal1.LeftPanel = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -576.000000, -262.000000)
	registerVal8:setTopBottom(true, true, 81.500000, 0.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.150000)
	registerVal8:setImage(RegisterImage("uie_default_white_255"))
	registerVal1:addElement(registerVal8)
	registerVal1.Backing = registerVal8
	local registerVal9 = CoD.CACBackgroundNoHero.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, -6.000000, -6.000000)
	registerVal9:setTopBottom(true, true, 4.000000, 4.000000)
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHOOSE_CLASS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.background = registerVal9
	registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(false, false, -544.000000, -265.000000)
	registerVal10:setTopBottom(true, false, 54.000000, 102.000000)
	registerVal10:setRGB(0.500000, 0.510000, 0.520000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("MPUI_CHOOSE_CLASS_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal10)
	registerVal1.title = registerVal10
	registerVal11 = CoD.CybercoreLoadoutWidget.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -555.000000, -262.000000)
	registerVal11:setTopBottom(true, false, 111.000000, 290.000000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.CybercoreLoadoutWidget0 = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 64.000000, 357.000000)
	registerVal12:setTopBottom(true, false, 298.000000, 323.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setText(LocalizeToUpperString("MENU_CHOOSE_LOADOUT"))
	registerVal12:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal1:addElement(registerVal12)
	registerVal1.loadoutSubHeader = registerVal12
	local registerVal13 = CoD.chooseClassCPClient_Ingame.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, -555.000000, -275.000000)
	registerVal13:setTopBottom(true, false, 89.000000, 134.000000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.chooseClassCPClientIngame0 = registerVal13
	local registerVal14 = CoD.chooseClassInGameClassList.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -555.000000, -275.000000)
	registerVal14:setTopBottom(true, false, 134.000000, 642.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.classList = registerVal14
	local registerVal15 = CoD.ChooseClass_ClassSetTabWidget.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, -559.500000, -270.500000)
	registerVal15:setTopBottom(true, false, 94.000000, 134.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15.Internal.Tabs:setDataSource("ClassSetTabs")
	registerVal15.Internal.IndicatorsGrid:setWidgetType(CoD.ChooseClass_ClassSetTabPip_InGame)
	registerVal15.Internal.IndicatorsGrid:setDataSource("ClassSetTabs")
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_35B8_(arg0, arg1, arg2)
		return IsSelfInState(registerVal1, "ClassSetTabs")
	end

	registerVal19.condition = __FUNC_35B8_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal1:addElement(registerVal15)
	registerVal1.ClassSetTabWidget = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(false, false, -555.000000, -283.000000)
	registerVal16:setTopBottom(true, false, 122.000000, 142.000000)
	registerVal16:setRGB(0.790000, 0.790000, 0.790000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(10.000000)
	registerVal16:setText(Engine.Localize("MPUI_CUSTOM_CLASSES"))
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setLetterSpacing(1.000000)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal16)
	registerVal1.classSetName = registerVal16
	local registerVal17 = CoD.chooseClassWidget_Ingame.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, false, -251.500000, 89.500000)
	registerVal17:setTopBottom(true, false, 80.000000, 684.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.chooseClassWidget = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal18:setTopBottom(false, false, 300.000000, 360.000000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.FooterBacking = registerVal18
	registerVal19 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal19:setTopBottom(true, true, 86.000000, -16.750000)
	registerVal1:addElement(registerVal19)
	registerVal1.FEMenuLeftGraphics = registerVal19
	local registerVal20 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_3625_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal20:registerEventHandler("menu_loaded", __FUNC_3625_)
	registerVal1:addElement(registerVal20)
	registerVal1.feFooterContainer = registerVal20
	local function __FUNC_36B9_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal14.classList, nil, false, __FUNC_36B9_)
	local function __FUNC_370A_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal14.classList, nil, false, __FUNC_370A_)
	local registerVal21 = {}
	registerVal21.right = registerVal17
	registerVal14.navigation = registerVal21
	registerVal21 = {}
	registerVal21.left = registerVal14
	registerVal17.navigation = registerVal21
	registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_375A_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal1.blackimage:setAlpha(0.200000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackgroundFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.blackImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal9.classAllocation:completeAnimation()
		registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background.classAllocation:setAlpha(1.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHOOSE_CLASS_CAPS"))
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.CybercoreLoadoutWidget0:setLeftRight(false, false, -555.000000, -262.000000)
		registerVal1.CybercoreLoadoutWidget0:setTopBottom(true, false, 111.000000, 290.000000)
		registerVal1.CybercoreLoadoutWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.loadoutSubHeader:setLeftRight(false, false, -576.000000, -283.000000)
		registerVal1.loadoutSubHeader:setTopBottom(true, false, 298.000000, 323.000000)
		registerVal1.loadoutSubHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.chooseClassCPClientIngame0:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.chooseClassCPClientIngame0:setTopBottom(true, false, 89.000000, 134.000000)
		registerVal1.chooseClassCPClientIngame0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal1.classSetName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal22.DefaultClip = __FUNC_375A_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_3E55_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.blackimage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackgroundFocus:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.blackImage:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal9.classAllocation:completeAnimation()
		registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background.classAllocation:setAlpha(0.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_LOADOUTS_CAPS"))
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.CybercoreLoadoutWidget0:setLeftRight(false, false, -566.000000, -273.000000)
		registerVal1.CybercoreLoadoutWidget0:setTopBottom(true, false, 109.000000, 288.000000)
		registerVal1.CybercoreLoadoutWidget0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.loadoutSubHeader:setLeftRight(false, false, -559.000000, -273.000000)
		registerVal1.loadoutSubHeader:setTopBottom(true, false, 298.000000, 323.000000)
		registerVal1.loadoutSubHeader:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.chooseClassCPClientIngame0:setLeftRight(false, false, -559.000000, -279.000000)
		registerVal1.chooseClassCPClientIngame0:setTopBottom(true, false, 327.000000, 372.000000)
		registerVal1.chooseClassCPClientIngame0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.classList:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.classList:setTopBottom(true, false, 372.000000, 880.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal1.classSetName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal22.DefaultClip = __FUNC_3E55_
	registerVal21.Campaign = registerVal22
	registerVal22 = {}
	local function __FUNC_45E2_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.blackimage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackgroundFocus:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.blackImage:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal9.classAllocation:completeAnimation()
		registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background.classAllocation:setAlpha(0.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_LOADOUTS_CAPS"))
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.CybercoreLoadoutWidget0:setLeftRight(false, false, -566.000000, -273.000000)
		registerVal1.CybercoreLoadoutWidget0:setTopBottom(true, false, 109.000000, 288.000000)
		registerVal1.CybercoreLoadoutWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.loadoutSubHeader:setLeftRight(false, false, -559.000000, -273.000000)
		registerVal1.loadoutSubHeader:setTopBottom(true, false, 298.000000, 323.000000)
		registerVal1.loadoutSubHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.chooseClassCPClientIngame0:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.chooseClassCPClientIngame0:setTopBottom(true, false, 89.000000, 134.000000)
		registerVal1.chooseClassCPClientIngame0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.classList:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.classList:setTopBottom(true, false, 134.000000, 642.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal1.classSetName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal22.DefaultClip = __FUNC_45E2_
	registerVal21.CampaignNoCybercore = registerVal22
	registerVal22 = {}
	local function __FUNC_4D69_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.blackimage:setAlpha(0.200000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackgroundFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.blackImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal9.classAllocation:completeAnimation()
		registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background.classAllocation:setAlpha(1.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHOOSE_CLASS_CAPS"))
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.CybercoreLoadoutWidget0:setLeftRight(false, false, -555.000000, -262.000000)
		registerVal1.CybercoreLoadoutWidget0:setTopBottom(true, false, 111.000000, 290.000000)
		registerVal1.CybercoreLoadoutWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.loadoutSubHeader:setLeftRight(true, false, 64.000000, 357.000000)
		registerVal1.loadoutSubHeader:setTopBottom(true, false, 298.000000, 323.000000)
		registerVal1.loadoutSubHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.classList:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.classList:setTopBottom(true, false, 148.000000, 656.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.ClassSetTabWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.classSetName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal22.DefaultClip = __FUNC_4D69_
	registerVal21.ClassSetTabs = registerVal22
	registerVal22 = {}
	local function __FUNC_5497_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal1.blackimage:setAlpha(0.200000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.BackgroundFocus:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.blackImage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal9.classAllocation:completeAnimation()
		registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:completeAnimation()
		registerVal1.background.classAllocation:setAlpha(1.000000)
		registerVal1.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHOOSE_CLASS_CAPS"))
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.CybercoreLoadoutWidget0:setLeftRight(false, false, -555.000000, -262.000000)
		registerVal1.CybercoreLoadoutWidget0:setTopBottom(true, false, 111.000000, 290.000000)
		registerVal1.CybercoreLoadoutWidget0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.loadoutSubHeader:setLeftRight(true, false, 64.000000, 357.000000)
		registerVal1.loadoutSubHeader:setTopBottom(true, false, 298.000000, 323.000000)
		registerVal1.loadoutSubHeader:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.classList:setLeftRight(false, false, -555.000000, -275.000000)
		registerVal1.classList:setTopBottom(true, false, 148.000000, 656.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.ClassSetTabWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.classSetName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal22.DefaultClip = __FUNC_5497_
	registerVal21.ClassSetNoPrestige = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Campaign"
	local function __FUNC_5BC3_(arg1, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCybercoreMenuDisabled(arg0)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_5BC3_
	local registerVal25 = {}
	registerVal25.stateName = "CampaignNoCybercore"
	local function __FUNC_5C45_(arg1, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCybercoreMenuDisabled(arg0)
		end
		return registerVal3
	end

	registerVal25.condition = __FUNC_5C45_
	local registerVal26 = {}
	registerVal26.stateName = "ClassSetTabs"
	local function __FUNC_5CC5_(arg1, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		registerVal3 = IsPublicOrLeagueGame(arg0)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACCustomClassCountDefault(arg0)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_5CC5_
	local registerVal27 = {}
	registerVal27.stateName = "ClassSetNoPrestige"
	local function __FUNC_5D83_(arg1, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			registerVal3 = IsCACClassSetsCountDefault(arg0)
		end
		return (not registerVal3)
	end

	registerVal27.condition = __FUNC_5D83_
	registerVal23 = {registerVal24, registerVal25, registerVal26, registerVal27}
	registerVal1:mergeStateConditions(registerVal23)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "lobbyRoot.lobbyNav")
	local function __FUNC_5E0B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_5E0B_)
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "hudItems.cybercoreSelectMenuDisabled")
	local function __FUNC_5F30_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercoreSelectMenuDisabled"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_5F30_)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "lobbyRoot.lobbyNav")
	local function __FUNC_606A_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_606A_)
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "hudItems.cybercoreSelectMenuDisabled")
	local function __FUNC_62EA_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "hudItems.cybercoreSelectMenuDisabled"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_62EA_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_64C4_(arg1, arg2)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			LockInput(registerVal1, arg0, true)
			PrepareOpenMenuInSafehouse(arg0)
			SetElementStateByElementName(registerVal1, "background", arg0, "Update")
			local registerVal5 = {}
			registerVal5.elementName = "background"
			registerVal5.clipName = "intro"
			PlayClipOnElement(registerVal1, registerVal5, arg0)
			PlayClip(registerVal1, "Intro", arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_64C4_)
	local function __FUNC_66B0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "isInMobileArmory", true)
		if registerVal4 then
			SendMenuResponse(registerVal1, "ChooseClass_InGame", "cancel", arg2)
			LockInput(registerVal1, arg2, false)
			ClearMenuSavedState(arg1)
			PlaySoundSetSound(registerVal1, "menu_go_back")
			Close(registerVal1, arg2)
			SetPerControllerTableProperty(arg2, "isInMobileArmory", false)
			return true
		else
			SendMenuResponse(registerVal1, "ChooseClass_InGame", "cancel", arg2)
			PrepareCloseMenuInSafehouse(arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_6903_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "isInMobileArmory", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_66B0_, __FUNC_6903_, false)
	local function __FUNC_6AC7_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCampaign()
		registerVal4 = IsMulticoreActivated(arg2)
		registerVal4 = IsCybercoreMenuDisabled(arg2)
		if registerVal4 and not registerVal4 and not registerVal4 then
			SetProperty(registerVal1, "isOpeningCybercore", true)
			NavigateToMenu(registerVal1, "CybercoreSelectionMenu", true, arg2)
			return true
		end
	end

	local function __FUNC_6C18_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		registerVal3 = IsMulticoreActivated(arg2)
		registerVal3 = IsCybercoreMenuDisabled(arg2)
		if registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "C", __FUNC_6AC7_, __FUNC_6C18_, false)
	local function __FUNC_6DA1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCampaign()
		registerVal4 = CanUseSharedLoadouts(arg2)
		if registerVal4 and registerVal4 then
			chooseClass_ClientChanged(registerVal1, arg0, arg2, "-1")
			return true
		else
			registerVal4 = IsMultiplayer()
			registerVal4 = IsCACCustomClassCountDefault(arg2)
			if registerVal4 and not registerVal4 then
				chooseClass_TabMPClassesListLeft(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_6F18_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		registerVal3 = CanUseSharedLoadouts(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		else
			registerVal3 = IsMultiplayer()
			registerVal3 = IsCACCustomClassCountDefault(arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_6DA1_, __FUNC_6F18_, false)
	local function __FUNC_7111_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCampaign()
		registerVal4 = CanUseSharedLoadouts(arg2)
		if registerVal4 and registerVal4 then
			chooseClass_ClientChanged(registerVal1, arg0, arg2, "1")
			return true
		else
			registerVal4 = IsMultiplayer()
			registerVal4 = IsCACCustomClassCountDefault(arg2)
			if registerVal4 and not registerVal4 then
				chooseClass_TabMPClassesListRight(registerVal1, arg2)
				return true
			end
		end
	end

	local function __FUNC_7288_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		registerVal3 = CanUseSharedLoadouts(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		else
			registerVal3 = IsMultiplayer()
			registerVal3 = IsCACCustomClassCountDefault(arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_7111_, __FUNC_7288_, false)
	local function __FUNC_7481_(arg1)
		local registerVal1 = IsPerControllerTablePropertyValue(arg0, "isInMobileArmory", true)
		registerVal1 = PropertyIsTrue(registerVal1, "isOpeningCybercore")
		if registerVal1 and not registerVal1 then
			LockInput(registerVal1, arg0, false)
			SetPerControllerTableProperty(arg0, "isInMobileArmory", false)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_7481_)
	registerVal14.id = "classList"
	registerVal17.id = "chooseClassWidget"
	registerVal20:setModel(registerVal1.buttonModel, arg0)
	registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	registerVal21 = registerVal1:restoreState()
	if not registerVal21 then
		registerVal23 = {}
		registerVal23.name = "gain_focus"
		registerVal23.controller = arg0
		registerVal1.classList:processEvent(registerVal23)
	end
	local function __FUNC_75BB_(arg1)
		arg1.Texture:close()
		arg1.LeftPanel:close()
		arg1.background:close()
		arg1.CybercoreLoadoutWidget0:close()
		arg1.chooseClassCPClientIngame0:close()
		arg1.classList:close()
		arg1.ClassSetTabWidget:close()
		arg1.chooseClassWidget:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.feFooterContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseClass_InGame.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_75BB_)
	if __FUNC_F5D_ then
		__FUNC_F5D_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseClass_InGame = __FUNC_150B_
