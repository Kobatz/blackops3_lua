-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreNodeLinkWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreUpgradeModelWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreBranchHeaderWidget")
local function __FUNC_36A_(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "CybercoreUpgradeMenu")
	local registerVal3 = Engine.GetModel(registerVal2, "selectedCore")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.CreateModel(registerVal1, "CybercoreAbilityUpgradeTree")
	local function __FUNC_B6C_(arg0)
		local registerVal1 = Engine.CreateModel(registerVal5, (arg0 .. "BranchHeader"))
		local registerVal3, registerVal4, registerVal5 = ipairs(CoD.CACUtility.CybercoreGroupBranchHeaders)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			if value7.itemRef == registerVal4 and value7.side == arg0 then
			else
			end
		end
		Engine.SetModelValue(registerVal1, value7.name)
	end

	__FUNC_B6C_("left")
	__FUNC_B6C_("right")
	local registerVal7 = {}
	registerVal7.cybercore_control = CoD.CACUtility.loadoutSlotNames.cybercomAbility1
	registerVal7.cybercore_martial = CoD.CACUtility.loadoutSlotNames.cybercomAbility2
	registerVal7.cybercore_chaos = CoD.CACUtility.loadoutSlotNames.cybercomAbility3
	local registerVal8 = {}
	registerVal8 = {"abilityRoot", "abilityL1", "abilityL2", "abilityL3", "abilityR1", "abilityR2", "abilityR3"}
	if not CoD.UnlockablesTable then
		local registerVal12 = CoD.GetUnlockablesTable(arg0)
		CoD.UnlockablesTable = registerVal12
	end
	CoD.perController[arg0].weaponCategory = registerVal7[registerVal4]
	local registerVal13, registerVal14, registerVal15 = ipairs(CoD.UnlockablesTable[registerVal7[registerVal4]])
	for index16,value17 in registerVal13, registerVal14, registerVal15 do
		local registerVal18 = Engine.GetModelValue(Engine.GetModel(value17, "itemIndex"))
		local registerVal19 = Engine.GetModelValue(Engine.GetModel(value17, "ref"))
		local registerVal22 = LUI.endswith(registerVal19, "_pro")
		if registerVal22 then
			local registerVal25 = string.len("_pro")
			registerVal22 = string.sub(registerVal19, 1.000000, -(registerVal25 + 1.000000))
		end
		if not {}[registerVal22] then
			local registerVal23 = {}
			registerVal23.abilitySlot = registerVal8[1.000000]
			{}[registerVal22] = registerVal23
		end
		if true then
			{}[registerVal22].upgradeModel = value17
			{}[registerVal22].upgradeItemIndex = registerVal18
		else
			{}[registerVal22].baseModel = value17
			{}[registerVal22].baseItemIndex = registerVal18
			if not {}[registerVal22].upgradeItemIndex then
				{}[registerVal22].upgradeItemIndex = -1.000000
			end
			{}[{}[registerVal22].abilitySlot] = registerVal18
		end
	end
	local registerVal11 = {}
	registerVal11.abilityL1 = "abilityRoot"
	registerVal11.abilityL2 = "abilityL1"
	registerVal11.abilityL3 = "abilityL2"
	registerVal11.abilityR1 = "abilityRoot"
	registerVal11.abilityR2 = "abilityR1"
	registerVal11.abilityR3 = "abilityR2"
	registerVal12, registerVal13, registerVal14 = pairs({})
	for index15,value16 in registerVal12, registerVal13, registerVal14 do
		if not registerVal11[value16.abilitySlot] then
			value16.prereqItemIndex = -1.000000
		else
			value16.prereqItemIndex = {}[registerVal11[value16.abilitySlot]]
		end
	end
	local function __FUNC_D27_(arg1)
		local registerVal1 = Engine.CreateModel(registerVal5, arg1.abilitySlot)
		local registerVal3 = Engine.IsItemPurchased(arg0, arg1.upgradeItemIndex)
		if arg1.upgradeItemIndex and registerVal3 then
		end
		local registerVal4 = Engine.CreateModel(registerVal1, "prereqItemIndex")
		Engine.SetModelValue(registerVal4, arg1.prereqItemIndex)
		registerVal4 = Engine.CreateModel(registerVal1, "upgradeItemIndex")
		Engine.SetModelValue(registerVal4, arg1.upgradeItemIndex)
		registerVal4 = Engine.CreateModel(registerVal1, "baseItemIndex")
		Engine.SetModelValue(registerVal4, arg1.baseItemIndex)
		registerVal3 = Engine.GetItemName(arg1.upgradeItemIndex)
		registerVal4 = Engine.GetItemDesc(arg1.baseItemIndex)
		local registerVal5 = Engine.GetItemImage(arg1.upgradeItemIndex)
		local registerVal6 = Engine.GetItemCost(arg1.upgradeItemIndex)
		if arg1.upgradeItemIndex then
			local registerVal8 = Engine.GetItemDesc(arg1.upgradeItemIndex)
		end
		local registerVal9 = Engine.CreateModel(registerVal1, "name")
		Engine.SetModelValue(registerVal9, registerVal3)
		registerVal9 = Engine.CreateModel(registerVal1, "desc")
		Engine.SetModelValue(registerVal9, registerVal4)
		registerVal9 = Engine.CreateModel(registerVal1, "image")
		Engine.SetModelValue(registerVal9, registerVal5)
		registerVal9 = Engine.CreateModel(registerVal1, "cost")
		Engine.SetModelValue(registerVal9, registerVal6)
		registerVal9 = Engine.CreateModel(registerVal1, "upgdesc")
		Engine.SetModelValue(registerVal9, registerVal8)
		registerVal9 = Engine.CreateModel(registerVal1, "core")
		Engine.SetModelValue(registerVal9, registerVal4)
		registerVal8 = Engine.IsItemPurchased(arg0, arg1.baseItemIndex)
		local registerVal10 = Engine.CreateModel(registerVal1, "purchased")
		Engine.SetModelValue(registerVal10, registerVal8)
	end

	registerVal13, registerVal14, registerVal15 = pairs({})
	for index16,value17 in registerVal13, registerVal14, registerVal15 do
		__FUNC_D27_(value17)
	end
	return registerVal5
end

local registerVal2 = {}
local function __FUNC_1232_(arg0)
	local registerVal1 = __FUNC_36A_(arg0)
	return registerVal1
end

registerVal2.getModel = __FUNC_1232_
DataSources.CybercoreAbilityUpgradeTree = registerVal2
local function __FUNC_126C_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = arg0.abilityL1
	registerVal3.right = arg0.abilityR1
	arg0.abilityRoot.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityRoot
	registerVal3.right = arg0.abilityRoot
	registerVal3.down = arg0.abilityL2
	arg0.abilityL1.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityL1
	registerVal3.down = arg0.abilityL3
	registerVal3.right = arg0.abilityR2
	arg0.abilityL2.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityL2
	registerVal3.right = arg0.abilityR3
	arg0.abilityL3.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityRoot
	registerVal3.left = arg0.abilityRoot
	registerVal3.down = arg0.abilityR2
	arg0.abilityR1.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityR1
	registerVal3.down = arg0.abilityR3
	registerVal3.left = arg0.abilityL2
	arg0.abilityR2.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.abilityR2
	registerVal3.left = arg0.abilityL3
	arg0.abilityR3.navigation = registerVal3
end

local function __FUNC_1516_(arg0, arg1)
	local registerVal2 = {}
	registerVal2 = {arg0.abilityRoot, arg0.abilityL1, arg0.abilityL2, arg0.abilityL3, arg0.abilityR1, arg0.abilityR2, arg0.abilityR3}
	local function __FUNC_16A9_(arg0)
		local registerVal1 = arg0:getModel()
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1, "baseItemIndex"))
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal1, "upgradeItemIndex"))
		local registerVal5 = Engine.IsItemPurchased(arg1, registerVal3)
		if registerVal3 and registerVal5 then
		end
		local registerVal6 = Engine.GetModel(registerVal1, "name")
		Engine.SetModelValue(registerVal6, Engine.GetItemName(registerVal3))
		registerVal6 = Engine.GetModel(registerVal1, "desc")
		Engine.SetModelValue(registerVal6, Engine.GetItemDesc(registerVal2))
		registerVal6 = Engine.GetModel(registerVal1, "image")
		Engine.SetModelValue(registerVal6, Engine.GetItemImage(registerVal3))
		registerVal6 = Engine.GetModel(registerVal1, "cost")
		Engine.SetModelValue(registerVal6, Engine.GetItemCost(registerVal3))
		if registerVal3 then
			registerVal6 = Engine.GetItemDesc(registerVal3)
		end
		local registerVal7 = Engine.GetModel(registerVal1, "upgdesc")
		Engine.SetModelValue(registerVal7, registerVal6)
		registerVal6 = Engine.IsItemPurchased(arg1, registerVal2)
		local registerVal8 = Engine.GetModel(registerVal1, "purchased")
		Engine.SetModelValue(registerVal8, registerVal6)
	end

	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		__FUNC_16A9_(value8)
		local registerVal11 = {}
		registerVal11.name = "update_state"
		value8:processEvent(registerVal11)
	end
end

local function __FUNC_1AA4_(arg0, arg1)
	__FUNC_36A_(arg1)
	__FUNC_1516_(arg0, arg1)
end

local function __FUNC_1AEC_(arg0, arg1, arg2)
	__FUNC_126C_(arg0, arg1)
	arg0.updateTree = __FUNC_1AA4_
	local function __FUNC_1BB0_()
		local registerVal0 = Engine.GetModelForController(arg1)
		local registerVal1 = Engine.CreateModel(registerVal0, "CybercoreAbilityUpgradeTree")
		if registerVal1 then
			Engine.UnsubscribeAndFreeModel(registerVal1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_1BB0_)
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.CybercoreUpgradeTreeWidget = registerVal6
local function __FUNC_1CBA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreUpgradeTreeWidget)
	registerVal2.id = "CybercoreUpgradeTreeWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 700.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 700.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 228.230000, 312.230000)
	registerVal4:setTopBottom(true, false, 134.620000, 234.620000)
	registerVal4:setYRot(-180.000000)
	local function __FUNC_310F_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "abilityRoot", false, __FUNC_310F_)
	registerVal2:addElement(registerVal4)
	registerVal2.nodeLinkLH = registerVal4
	local registerVal5 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 146.000000, 256.000000)
	registerVal5:setTopBottom(true, false, 164.380000, 258.620000)
	registerVal5:setZRot(-90.000000)
	local function __FUNC_315E_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "abilityRoot", false, __FUNC_315E_)
	registerVal2:addElement(registerVal5)
	registerVal2.nodeLinkL1 = registerVal5
	local registerVal6 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 143.500000, 252.500000)
	registerVal6:setTopBottom(true, false, 305.620000, 401.000000)
	registerVal6:setZRot(-90.000000)
	local function __FUNC_31AE_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "abilityL1", false, __FUNC_31AE_)
	registerVal2:addElement(registerVal6)
	registerVal2.nodeLinkL2 = registerVal6
	local registerVal7 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 143.500000, 253.500000)
	registerVal7:setTopBottom(true, false, 446.380000, 541.620000)
	registerVal7:setZRot(-90.000000)
	local function __FUNC_31FE_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "abilityL2", false, __FUNC_31FE_)
	registerVal2:addElement(registerVal7)
	registerVal2.nodeLinkL3 = registerVal7
	local registerVal8 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 356.000000, 468.000000)
	registerVal8:setTopBottom(true, false, 134.620000, 234.620000)
	local function __FUNC_324E_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "abilityRoot", false, __FUNC_324E_)
	registerVal2:addElement(registerVal8)
	registerVal2.nodeLinkRH = registerVal8
	local registerVal9 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 429.000000, 539.000000)
	registerVal9:setTopBottom(true, false, 164.380000, 258.620000)
	registerVal9:setZRot(-90.000000)
	local function __FUNC_329E_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "abilityRoot", false, __FUNC_329E_)
	registerVal2:addElement(registerVal9)
	registerVal2.nodeLinkR1 = registerVal9
	local registerVal10 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 424.000000, 539.000000)
	registerVal10:setTopBottom(true, false, 303.620000, 403.000000)
	registerVal10:setZRot(-90.000000)
	local function __FUNC_32EE_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "abilityR1", false, __FUNC_32EE_)
	registerVal2:addElement(registerVal10)
	registerVal2.nodeLinkR2 = registerVal10
	local registerVal11 = CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 427.000000, 537.000000)
	registerVal11:setTopBottom(true, false, 446.380000, 541.620000)
	registerVal11:setZRot(-90.000000)
	local function __FUNC_333E_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "abilityR2", false, __FUNC_333E_)
	registerVal2:addElement(registerVal11)
	registerVal2.nodeLinkR3 = registerVal11
	local registerVal12 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 140.000000, 260.000000)
	registerVal12:setTopBottom(true, false, 222.000000, 342.000000)
	local function __FUNC_338E_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "abilityL1", false, __FUNC_338E_)
	local function __FUNC_33DE_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal12:registerEventHandler("gain_focus", __FUNC_33DE_)
	local function __FUNC_356F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_356F_)
	local function __FUNC_363E_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_36A9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal12, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_363E_, __FUNC_36A9_, false)
	registerVal2:addElement(registerVal12)
	registerVal2.abilityL1 = registerVal12
	local registerVal13 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 140.000000, 260.000000)
	registerVal13:setTopBottom(true, false, 364.000000, 484.000000)
	local function __FUNC_37A6_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "abilityL2", false, __FUNC_37A6_)
	local function __FUNC_37F6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal13:registerEventHandler("gain_focus", __FUNC_37F6_)
	local function __FUNC_3987_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_3987_)
	local function __FUNC_3A56_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_3AC1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3A56_, __FUNC_3AC1_, false)
	registerVal2:addElement(registerVal13)
	registerVal2.abilityL2 = registerVal13
	local registerVal14 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 140.000000, 260.000000)
	registerVal14:setTopBottom(true, false, 504.000000, 624.000000)
	local function __FUNC_3BBE_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "abilityL3", false, __FUNC_3BBE_)
	local function __FUNC_3C0E_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal14:registerEventHandler("gain_focus", __FUNC_3C0E_)
	local function __FUNC_3D9F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_3D9F_)
	local function __FUNC_3E6E_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_3ED9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3E6E_, __FUNC_3ED9_, false)
	registerVal2:addElement(registerVal14)
	registerVal2.abilityL3 = registerVal14
	local registerVal15 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 424.000000, 544.000000)
	registerVal15:setTopBottom(true, false, 222.000000, 342.000000)
	local function __FUNC_3FD6_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "abilityR1", false, __FUNC_3FD6_)
	local function __FUNC_4026_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal15:registerEventHandler("gain_focus", __FUNC_4026_)
	local function __FUNC_41B7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_41B7_)
	local function __FUNC_4286_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_42F1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal15, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4286_, __FUNC_42F1_, false)
	registerVal2:addElement(registerVal15)
	registerVal2.abilityR1 = registerVal15
	local registerVal16 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 424.000000, 544.000000)
	registerVal16:setTopBottom(true, false, 364.000000, 484.000000)
	local function __FUNC_43EE_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "abilityR2", false, __FUNC_43EE_)
	local function __FUNC_443E_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal16:registerEventHandler("gain_focus", __FUNC_443E_)
	local function __FUNC_45CF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_45CF_)
	local function __FUNC_469E_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_4709_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal16, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_469E_, __FUNC_4709_, false)
	registerVal2:addElement(registerVal16)
	registerVal2.abilityR2 = registerVal16
	local registerVal17 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 424.000000, 544.000000)
	registerVal17:setTopBottom(true, false, 504.000000, 624.000000)
	local function __FUNC_4806_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "abilityR3", false, __FUNC_4806_)
	local function __FUNC_4856_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal17:registerEventHandler("gain_focus", __FUNC_4856_)
	local function __FUNC_49E7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal17:registerEventHandler("lose_focus", __FUNC_49E7_)
	local function __FUNC_4AB6_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_4B21_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal17, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4AB6_, __FUNC_4B21_, false)
	registerVal2:addElement(registerVal17)
	registerVal2.abilityR3 = registerVal17
	local registerVal18 = CoD.CybercoreUpgradeModelWidget.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -69.000000, 51.000000)
	registerVal18:setTopBottom(false, false, -209.380000, -89.380000)
	local function __FUNC_4C1E_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, "abilityRoot", false, __FUNC_4C1E_)
	local function __FUNC_4C6E_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal18:registerEventHandler("gain_focus", __FUNC_4C6E_)
	local function __FUNC_4DFF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal18:registerEventHandler("lose_focus", __FUNC_4DFF_)
	local function __FUNC_4ECE_(arg0, arg1, arg2, arg3)
		TryPurchaseCybercoreAbility(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_4F39_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal18, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_4ECE_, __FUNC_4F39_, false)
	registerVal2:addElement(registerVal18)
	registerVal2.abilityRoot = registerVal18
	local registerVal19 = CoD.CybercoreBranchHeaderWidget.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 424.000000, 544.000000)
	registerVal19:setTopBottom(true, false, 166.620000, 198.620000)
	local function __FUNC_5036_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19.headerText:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal19:linkToElementModel(registerVal2, "rightBranchHeader", true, __FUNC_5036_)
	registerVal2:addElement(registerVal19)
	registerVal2.rightBranchHeader = registerVal19
	local registerVal20 = CoD.CybercoreBranchHeaderWidget.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 140.000000, 260.000000)
	registerVal20:setTopBottom(true, false, 166.620000, 198.620000)
	local function __FUNC_5135_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.headerText:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal20:linkToElementModel(registerVal2, "leftBranchHeader", true, __FUNC_5135_)
	registerVal2:addElement(registerVal20)
	registerVal2.leftBranchHeader = registerVal20
	local registerVal21 = {}
	registerVal21.right = registerVal18
	registerVal21.down = registerVal13
	registerVal12.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal12
	registerVal21.right = registerVal16
	registerVal21.down = registerVal14
	registerVal13.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal13
	registerVal21.right = registerVal17
	registerVal14.navigation = registerVal21
	registerVal21 = {}
	registerVal21.left = registerVal18
	registerVal21.down = registerVal16
	registerVal15.navigation = registerVal21
	registerVal21 = {}
	registerVal21.left = registerVal13
	registerVal21.up = registerVal15
	registerVal21.down = registerVal17
	registerVal16.navigation = registerVal21
	registerVal21 = {}
	registerVal21.left = registerVal14
	registerVal21.up = registerVal16
	registerVal17.navigation = registerVal21
	registerVal21 = {}
	registerVal21.left = registerVal12
	registerVal21.right = registerVal15
	registerVal18.navigation = registerVal21
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal12.id = "abilityL1"
	registerVal13.id = "abilityL2"
	registerVal14.id = "abilityL3"
	registerVal15.id = "abilityR1"
	registerVal16.id = "abilityR2"
	registerVal17.id = "abilityR3"
	registerVal18.id = "abilityRoot"
	local function __FUNC_5235_(arg0, arg1)
		local registerVal2 = arg0.abilityL1:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5235_)
	local function __FUNC_5339_(arg0)
		arg0.nodeLinkLH:close()
		arg0.nodeLinkL1:close()
		arg0.nodeLinkL2:close()
		arg0.nodeLinkL3:close()
		arg0.nodeLinkRH:close()
		arg0.nodeLinkR1:close()
		arg0.nodeLinkR2:close()
		arg0.nodeLinkR3:close()
		arg0.abilityL1:close()
		arg0.abilityL2:close()
		arg0.abilityL3:close()
		arg0.abilityR1:close()
		arg0.abilityR2:close()
		arg0.abilityR3:close()
		arg0.abilityRoot:close()
		arg0.rightBranchHeader:close()
		arg0.leftBranchHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5339_)
	if __FUNC_1AEC_ then
		__FUNC_1AEC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CybercoreUpgradeTreeWidget.new = __FUNC_1CBA_
