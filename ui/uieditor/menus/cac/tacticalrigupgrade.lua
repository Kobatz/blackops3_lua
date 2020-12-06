-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.TacRigUpgradeWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.TacRigUpgradeModelWidget")
require("ui.uieditor.widgets.CAC.cac_ElemsSideList")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
local registerVal1 = {}
local function __FUNC_39B_(arg0, arg1, arg2)
	arg1.rigs = {}
	if CoD.perController[arg0].weaponCategory ~= "cybercom_tacrig1" and CoD.perController[arg0].weaponCategory ~= "cybercom_tacrig2" then
		return 
	end
	local registerVal5 = CoD.CACUtility.GetItemRefEquippedInSlot(CoD.perController[arg0].weaponCategory, arg0, CoD.perController[arg0].classModel)
	if not CoD.UnlockablesTable then
		local registerVal7 = CoD.GetUnlockablesTable(arg0)
		CoD.UnlockablesTable = registerVal7
	end
	local registerVal6, registerVal7, registerVal8 = ipairs(CoD.UnlockablesTable.cybercom_tacrig)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = Engine.GetModelValue(Engine.GetModel(value10, "ref"))
		local registerVal12 = LUI.startswith(registerVal11, registerVal5)
		if registerVal11 and registerVal12 then
			table.insert(arg1.rigs, value10)
		end
	end
end

registerVal1.prepare = __FUNC_39B_
local function __FUNC_70A_(arg0)
	return #arg0.rigs
end

registerVal1.getCount = __FUNC_70A_
local function __FUNC_756_(arg0, arg1, arg2)
	return arg1.rigs[arg2]
end

registerVal1.getItem = __FUNC_756_
DataSources.TacRigUpgrades = registerVal1
local function __FUNC_7AA_(arg0, arg1)
	local registerVal4 = CoD.CACUtility.GetItemName(CoD.perController[arg1].weaponCategory, arg1, CoD.perController[arg1].classModel)
	local registerVal7 = Engine.Localize(registerVal4)
	arg0.TacRigUpgradeWidget.UpgradeTitle:setText((registerVal7 .. " Upgrades"))
end

local function __FUNC_982_(arg0, arg1)
	__FUNC_7AA_(arg0, arg1)
end

local function __FUNC_9BC_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("TacticalRigUpgrade")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_LethalGrenade"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TacticalRigUpgrade.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 428.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 667.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -647.000000, 647.000000)
	registerVal4:setTopBottom(false, false, -360.000000, -274.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleBacking = registerVal4
	local registerVal5 = CoD.TacRigUpgradeWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5.TacRigInfoWidget.PurchaseInstructionWidget.PurchaseInstruction:setText(Engine.Localize("Install for 1 Fabrication Token"))
	registerVal5.UpgradeTitle:setText(Engine.Localize(""))
	registerVal5.UpgradeTitle0:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal5)
	registerVal1.TacRigUpgradeWidget = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 40.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 97.400000, 217.400000)
	registerVal6:setTopBottom(true, false, 140.000000, 580.000000)
	registerVal6:setDataSource("TacRigUpgrades")
	registerVal6:setWidgetType(CoD.TacRigUpgradeModelWidget)
	registerVal6:setVerticalCount(3.000000)
	registerVal6:setSpacing(40.000000)
	local function __FUNC_1923_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_1923_)
	local function __FUNC_1ADE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_1ADE_)
	local function __FUNC_1C6F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1C6F_)
	local function __FUNC_1D3E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACHaveTokens(arg2)
		if not registerVal4 and not registerVal4 and registerVal4 then
			PurchaseItem(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1E30_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACHaveTokens(arg2)
		if not registerVal3 and not registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D3E_, __FUNC_1E30_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.TacRigUpgradeList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -647.000000, 647.000000)
	registerVal7:setTopBottom(false, false, 300.000000, 360.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FooterBacking = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.500000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine = registerVal8
	local registerVal9 = CoD.cac_ElemsSideList.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 11.000000, 78.870000)
	registerVal9:setTopBottom(true, false, 48.000000, 718.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ElemsSideList = registerVal9
	local registerVal10 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_1FCC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_1FCC_)
	registerVal1:addElement(registerVal10)
	registerVal1.feFooterContainer = registerVal10
	local function __FUNC_2061_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:linkToElementModel(registerVal6, nil, false, __FUNC_2061_)
	local function __FUNC_20B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TacRigInfoWidget.UpgradeDesc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "description", true, __FUNC_20B2_)
	local function __FUNC_21B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TacRigInfoWidget.UpdgradeImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "image", true, __FUNC_21B1_)
	local function __FUNC_22AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TacRigInfoWidget.cacTacticalRigDescription0.UpgradeName0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal6, "name", true, __FUNC_22AD_)
	local function __FUNC_23DE_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2410_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_23DE_, __FUNC_2410_, false)
	local function __FUNC_2513_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UploadStats(registerVal1, arg2)
		return true
	end

	local function __FUNC_2589_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK_CAPS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2513_, __FUNC_2589_, false)
	registerVal6.id = "TacRigUpgradeList"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	local registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.TacRigUpgradeList:processEvent(registerVal13)
	end
	local function __FUNC_268A_(arg1)
		arg1.LeftPanel:close()
		arg1.TacRigUpgradeWidget:close()
		arg1.TacRigUpgradeList:close()
		arg1.ElemsSideList:close()
		arg1.feFooterContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "TacticalRigUpgrade.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_268A_)
	if __FUNC_982_ then
		__FUNC_982_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.TacticalRigUpgrade = __FUNC_9BC_
