-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfopanePreviewWidget")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNew")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CAC.cac_restriction_warning")
local function __FUNC_40E_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].classModel)
	arg0.disableBlur = true
	if CoD.perController[arg1].classModel then
		CoD.CACUtility.ValidateWeaponVariantForClass(arg1, CoD.perController[arg1].classModel)
	end
	CheckGCCatchUp()
end

local function __FUNC_55C_(arg0, arg1, arg2, arg3)
	local registerVal4, registerVal5, registerVal6 = CoD.CACUtility.GetCACSlotStatus(arg0, arg2, arg3)
	local registerVal9 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	if registerVal5 then
		local registerVal10 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(arg3)
	else
		registerVal10 = LUI.startswith(arg3, "primaryattachment")
		if registerVal10 then
		else
			registerVal10 = LUI.startswith(arg3, "secondaryattachment")
			if registerVal10 then
			end
		end
	end
	if "secondary" and "secondary" ~= "" then
		registerVal10 = LUI.startswith("secondary", "specialty")
		if registerVal10 then
			local registerVal11 = Engine.GetClassItem(arg0, arg1, "secondary", registerVal9)
			registerVal10 = CoD.CACUtility.GetPerkXModel(registerVal11, registerVal9)
		else
			registerVal10 = LUI.startswith("secondary", "bonuscard")
			if registerVal10 then
				registerVal11 = Engine.GetClassItem(arg0, arg1, "secondary", registerVal9)
				registerVal10 = CoD.CACUtility.GetBonuscardXModel(registerVal11, registerVal9)
			else
				if "secondary" == "cybercom" then
					registerVal11 = Engine.GetClassItem(arg0, arg1, arg3, registerVal9)
					registerVal10 = CoD.CACUtility.GetPerkXModel(registerVal11, registerVal9)
				else
					registerVal10 = Engine.GetWeaponString(arg0, arg1, "secondary", registerVal9)
				end
			end
		end
	end
	if registerVal10 and registerVal10 ~= "" then
		registerVal10 = CoD.CACUtility.GetWeaponOptionsFromClass(arg0, arg2, "secondary")
		registerVal11 = CoD.CACUtility.GetAttachmentCosmeticVariantsFromClass(arg0, arg2, "secondary")
		local registerVal12 = CoD.CACUtility.GetCameraNameForAttachments(registerVal10)
		local registerVal16 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal16), "secondary", registerVal10, registerVal12, registerVal10, registerVal11)
	else
		local registerVal13 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("CustomClass_remove" .. registerVal13))
	end
end

local function __FUNC_BAA_(arg0, arg1, arg2, arg3)
	if arg3 and arg1.weaponSlotTable[arg3.possibleSlot] then
		local registerVal6 = type(arg1.columnNav)
		if registerVal6 == "table" then
		end
		local registerVal7 = type(arg1.weaponSlotTable[arg3.possibleSlot].columnNav)
		if registerVal7 == "table" then
			registerVal7, registerVal8, registerVal9 = ipairs(arg1.weaponSlotTable[arg3.possibleSlot].columnNav)
			if arg1.columnNav[1.000000] ==  then
				return true
			end
		else
			if arg1.columnNav[1.000000] == arg1.weaponSlotTable[arg3.possibleSlot].columnNav then
				return true
			end
		end
	end
	return false
end

local function __FUNC_D38_(arg0, arg1)
	local function __FUNC_DAB_(arg0, arg2)
		local registerVal3 = arg2.element:getParent()
		if registerVal3 and registerVal3.slotName then
			arg0.navigationHistory = {}
			arg0:navigateTo(registerVal3.slotName, "jump")
			EnableMouseButton(arg0, arg1)
		end
	end

	arg0:registerEventHandler("mouse_focus", __FUNC_DAB_)
end

local function __FUNC_EE6_(arg0, arg1)
	local registerVal4 = arg0:getModel(arg1, "CustomClassMenu")
	if registerVal4 then
		local registerVal7 = Engine.GetModel(registerVal4, "currentLoadoutName")
		registerVal7 = Engine.GetModel(registerVal4, "currentItemName")
	end
	arg0.CACBackground0:setPriority(100.000000)
	arg0.weaponSlotTable = {}
	local function __FUNC_2146_(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
		local registerVal7 = LUI.getTableFromPath(("chooseClassWidget." .. arg2), arg0)
		registerVal7.slotName = arg1
		local registerVal9 = {}
		registerVal9.widget = registerVal7
		local registerVal10 = {}
		registerVal10.up = arg6
		registerVal10.down = arg7
		registerVal10.left = arg4
		registerVal10.right = arg5
		registerVal9.nav = registerVal10
		if arg2 or not "Campaign" then
		end
		registerVal9.state = "DefaultState"
		registerVal9.columnNav = arg3
		arg0.weaponSlotTable[arg1] = registerVal9
	end

	local function __FUNC_2329_(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
		__FUNC_2146_(arg1, (arg2 .. "." .. arg3), arg4, arg5, arg6, arg7, arg8)
		local registerVal9 = LUI.getTableFromPath(("chooseClassWidget." .. arg2), arg0)
		arg0.weaponSlotTable[arg1].parentWidget = registerVal9
	end

	local function __FUNC_2449_(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
		__FUNC_2329_(arg1, arg2, arg3, nil, arg5, arg6, arg7, arg8)
		arg0.weaponSlotTable[arg1].state = "Wildcards"
		arg0.weaponSlotTable[arg1].widgetState = arg4
		local registerVal12 = {}
		registerVal12.left = arg9
		registerVal12.right = arg10
		arg0.weaponSlotTable[arg1].clipNav = registerVal12
		arg0.weaponSlotTable[arg1].setFocusToChild = "bonuscard1"
	end

	local function __FUNC_25D7_(arg0, arg1)
		if CoD.isCampaign == true then
			return arg0
		end
		return arg1
	end

	local registerVal20 = {}
	registerVal20 = {1.000000, 2.000000}
	__FUNC_2146_("primary", "PrimaryWeapon", registerVal20, nil, "primaryattachment1", nil, "secondary")
	__FUNC_2146_("primaryattachment1", "PrimaryWeaponAttachment.optic", 3.000000, "primary", "primaryattachment2", nil, "primaryattachment4")
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.slot = "primaryattachment5"
	registerVal25.condition = IsCACThirdPrimaryAttachmentAvailable
	local registerVal26 = {}
	registerVal26.slot = "secondaryattachment2"
	registerVal24 = {registerVal25, registerVal26}
	__FUNC_2146_("primaryattachment2", "PrimaryWeaponAttachment.attachment1", 4.000000, "primaryattachment1", "primaryattachment3", nil, registerVal24)
	registerVal24 = {}
	registerVal25 = {}
	registerVal25.slot = "primaryattachment6"
	registerVal25.condition = IsCACFifthPrimaryAttachmentAvailable
	registerVal26 = {}
	registerVal26.slot = "secondaryattachment3"
	registerVal24 = {registerVal25, registerVal26}
	__FUNC_2146_("primaryattachment3", "PrimaryWeaponAttachment.attachment2", 5.000000, "primaryattachment2", nil, nil, registerVal24)
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.slot = "primaryattachment5"
	registerVal23.condition = IsCACThirdPrimaryAttachmentAvailable
	registerVal22 = {registerVal23}
	__FUNC_2146_("primaryattachment4", "PrimaryWeaponAttachment.attachment3", 3.000000, "primary", registerVal22, "primaryattachment1", "secondaryattachment1")
	registerVal22 = {}
	registerVal23 = {}
	registerVal23.slot = "primaryattachment6"
	registerVal23.condition = IsCACFifthPrimaryAttachmentAvailable
	registerVal22 = {registerVal23}
	registerVal23 = {}
	registerVal24 = {}
	registerVal24.slot = "primaryattachment2"
	registerVal24.condition = IsCACThirdPrimaryAttachmentAvailable
	registerVal25 = {}
	registerVal25.slot = "bonuscard1"
	registerVal23 = {registerVal24, registerVal25}
	__FUNC_2146_("primaryattachment5", "PrimaryWeaponAttachment.attachment4", 4.000000, "primaryattachment4", registerVal22, registerVal23, "secondaryattachment2")
	registerVal23 = {}
	registerVal24 = {}
	registerVal24.slot = "primaryattachment3"
	registerVal24.condition = IsCACThirdPrimaryAttachmentAvailable
	registerVal25 = {}
	registerVal25.slot = "bonuscard1"
	registerVal23 = {registerVal24, registerVal25}
	__FUNC_2146_("primaryattachment6", "PrimaryWeaponAttachment.attachment5", 5.000000, "primaryattachment5", nil, registerVal23, "secondaryattachment3")
	registerVal20 = {}
	registerVal20 = {1.000000, 2.000000}
	__FUNC_2146_("secondary", "SecondaryWeapon", registerVal20, nil, "secondaryattachment1", "primary", "primarygadget")
	__FUNC_2146_("secondaryattachment1", "SecondaryWeaponAttachment.optic", 3.000000, "secondary", "secondaryattachment2", "primaryattachment4", __FUNC_25D7_("cybercom_tacrig1", "specialty1"))
	registerVal23 = {}
	registerVal24 = {}
	registerVal24.slot = "primaryattachment5"
	registerVal24.condition = IsCACThirdPrimaryAttachmentAvailable
	registerVal25 = {}
	registerVal25.slot = "primaryattachment2"
	registerVal23 = {registerVal24, registerVal25}
	__FUNC_2146_("secondaryattachment2", "SecondaryWeaponAttachment.attachment1", 4.000000, "secondaryattachment1", "secondaryattachment3", registerVal23, __FUNC_25D7_("cybercom_tacrig1", "specialty2"))
	registerVal23 = {}
	registerVal24 = {}
	registerVal24.slot = "primaryattachment6"
	registerVal24.condition = IsCACFifthPrimaryAttachmentAvailable
	registerVal25 = {}
	registerVal25.slot = "primaryattachment3"
	registerVal23 = {registerVal24, registerVal25}
	__FUNC_2146_("secondaryattachment3", "SecondaryWeaponAttachment.attachment2", 5.000000, "secondaryattachment2", nil, registerVal23, __FUNC_25D7_("cybercom_tacrig1", "specialty3"))
	__FUNC_2146_("primarygadget", "LethalEquipment.Equipment1", 1.000000, nil, "secondarygadget", "secondary", "primarygadgetattachment1")
	__FUNC_2146_("primarygadgetattachment1", "LethalEquipment.Equipment2", 1.000000, nil, "secondarygadgetattachment1", "primarygadget", "bonuscard1")
	registerVal22 = __FUNC_25D7_("cybercom_tacrig1", "specialty1")
	__FUNC_2146_("secondarygadget", "TacticalEquipment.Equipment1", 2.000000, "primarygadget", registerVal22, "secondary", "secondarygadgetattachment1")
	registerVal22 = __FUNC_25D7_("cybercom_tacrig2", "specialty4")
	__FUNC_2146_("secondarygadgetattachment1", "TacticalEquipment.Equipment2", 2.000000, "primarygadgetattachment1", registerVal22, "secondarygadget", "bonuscard1")
	__FUNC_2146_("specialty1", "SpecialtyPerks.perk1.perk", 3.000000, "secondarygadget", "specialty2", "secondaryattachment1", "specialty4")
	__FUNC_2146_("specialty2", "SpecialtyPerks.perk2.perk", 4.000000, "specialty1", "specialty3", "secondaryattachment2", "specialty5")
	__FUNC_2146_("specialty3", "SpecialtyPerks.perk3.perk", 5.000000, "specialty2", nil, "secondaryattachment3", "specialty6")
	__FUNC_2146_("specialty4", "SpecialtyPerks.perk1.perkPlus", 3.000000, "secondarygadgetattachment1", "specialty5", "specialty1", "bonuscard1")
	__FUNC_2146_("specialty5", "SpecialtyPerks.perk2.perkPlus", 4.000000, "specialty4", "specialty6", "specialty2", "bonuscard1")
	__FUNC_2146_("specialty6", "SpecialtyPerks.perk3.perkPlus", 5.000000, "specialty5", nil, "specialty3", "bonuscard1")
	__FUNC_2146_("cybercom_tacrig1", "TacticalRig.TacRig1", 4.000000, "secondarygadget", nil, "secondaryattachment1", "cybercom_tacrig2")
	__FUNC_2146_("cybercom_tacrig2", "TacticalRig.TacRig2", 5.000000, "secondarygadget", nil, "cybercom_tacrig1", "bonuscard1")
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.slot = "primary"
	registerVal18.condition = __FUNC_BAA_
	local registerVal19 = {}
	registerVal19.slot = "primary"
	registerVal19.condition = __FUNC_BAA_
	registerVal20 = {}
	registerVal20.slot = "primaryattachment1"
	registerVal20.condition = __FUNC_BAA_
	local registerVal21 = {}
	registerVal21.slot = "primaryattachment2"
	registerVal21.condition = __FUNC_BAA_
	registerVal22 = {}
	registerVal22.slot = "primaryattachment3"
	registerVal22.condition = __FUNC_BAA_
	registerVal23 = {}
	registerVal23.slot = "primaryattachment1"
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23}
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.slot = "cybercom_tacrig2"
	registerVal20.condition = __FUNC_BAA_
	registerVal21 = {}
	registerVal21.slot = "primarygadgetattachment1"
	registerVal21.condition = __FUNC_BAA_
	registerVal22 = {}
	registerVal22.slot = "secondarygadgetattachment1"
	registerVal22.condition = __FUNC_BAA_
	registerVal23 = {}
	registerVal23.slot = "cybercom_tacrig2"
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23}
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.slot = "primarygadgetattachment1"
	registerVal21.condition = __FUNC_BAA_
	registerVal22 = {}
	registerVal22.slot = "secondarygadgetattachment1"
	registerVal22.condition = __FUNC_BAA_
	registerVal23 = {}
	registerVal23.slot = "specialty4"
	registerVal23.condition = __FUNC_BAA_
	registerVal24 = {}
	registerVal24.slot = "specialty5"
	registerVal24.condition = __FUNC_BAA_
	registerVal25 = {}
	registerVal25.slot = "specialty6"
	registerVal25.condition = __FUNC_BAA_
	registerVal26 = {}
	registerVal26.slot = "specialty4"
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal18 = __FUNC_25D7_(registerVal19, registerVal20)
	__FUNC_2449_("bonuscard3", "Wildcards", "wildcard3", "Card1to3", nil, "bonuscard1", registerVal18, nil, nil, "ToCard1")
	__FUNC_2449_("bonuscard1", "Wildcards", "wildcard1", "ToCard1", "bonuscard3", "bonuscard2", registerVal18, nil, "Card1to3", "Card1to2")
	__FUNC_2449_("bonuscard2", "Wildcards", "wildcard2", "Card1to2", "bonuscard1", nil, registerVal18, nil, "ToCard1", nil)
	registerVal19 = {}
	registerVal19.left = "right"
	registerVal19.right = "left"
	registerVal19.up = "down"
	registerVal19.down = "up"
	arg0.inverseNavigation = registerVal19
	arg0.navigationHistory = {}
	local function __FUNC_2643_(arg0, arg2, arg3)
		if arg0.currentActiveSlot and arg0.weaponSlotTable[arg0.currentActiveSlot] and arg0.weaponSlotTable[arg0.currentActiveSlot].widget then
			local registerVal7 = {}
			registerVal7.name = "lose_focus"
			registerVal7.controller = arg1
			arg0.weaponSlotTable[arg0.currentActiveSlot].widget:processEvent(registerVal7)
			arg0.weaponSlotTable[arg0.currentActiveSlot].widget:setPriority(0.000000)
			local registerVal5 = arg0.weaponSlotTable[arg0.currentActiveSlot].widget:getParent()
			registerVal5:setPriority(0.000000)
			local registerVal6 = registerVal5:getParent()
			if arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget then
				if arg2 or arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget ~= arg0.weaponSlotTable[arg2].parentWidget then
					arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget:setState("DefaultState")
				end
				if arg0.weaponSlotTable[arg0.currentActiveSlot].clipNav and arg0.weaponSlotTable[arg0.currentActiveSlot].clipNav[arg3] then
					arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget:setState(arg0.weaponSlotTable[arg0.currentActiveSlot].clipNav[arg3])
				end
			end
		end
		arg0.currentActiveSlot = arg2
		CoD.CACUtility.CustomClass_LastSelection = arg2
		if CoD.perController[arg1].classNum then
			CoD.CACUtility.CustomClass_PerClassLastSelection[(CoD.perController[arg1].classNum + 1.000000)] = arg2
		end
		if CoD.perController[arg1].classNum and arg0.weaponSlotTable[arg0.currentActiveSlot] and arg0.weaponSlotTable[arg0.currentActiveSlot].widget then
			registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg1
			arg0.weaponSlotTable[arg0.currentActiveSlot].widget:processEvent(registerVal7)
			arg0.weaponSlotTable[arg0.currentActiveSlot].widget:setPriority(100.000000)
			registerVal5 = arg0.weaponSlotTable[arg0.currentActiveSlot].widget:getParent()
			registerVal5:setPriority(100.000000)
			registerVal6 = registerVal5:getParent()
			arg0:playSound("navigate")
			arg0.chooseClassWidget:setState(arg0.weaponSlotTable[arg0.currentActiveSlot].state)
			if arg3 ~= "jump" then
				if arg0.weaponSlotTable[arg0.currentActiveSlot] and arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget ~= arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget and arg0.weaponSlotTable[arg0.currentActiveSlot].widgetState then
					arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget:setState(arg0.weaponSlotTable[arg0.currentActiveSlot].widgetState)
				end
				if not arg0.weaponSlotTable[arg0.currentActiveSlot] and arg0.weaponSlotTable[arg0.currentActiveSlot].widgetState then
					arg0.weaponSlotTable[arg0.currentActiveSlot].parentWidget:setState(arg0.weaponSlotTable[arg0.currentActiveSlot].widgetState)
				end
			end
			arg0.previewWidget:setModel(arg0.weaponSlotTable[arg0.currentActiveSlot].widget:getModel())
			__FUNC_55C_(arg1, CoD.perController[arg1].classNum, CoD.perController[arg1].classModel, arg2)
			arg0.cacrestrictionwarning:setModel(arg0.weaponSlotTable[arg0.currentActiveSlot].widget:getModel())
		end
		if arg0.weaponSlotTable[arg0.currentActiveSlot].columnNav then
			arg0.columnNav = arg0.weaponSlotTable[arg0.currentActiveSlot].columnNav
		end
		SetHintText(arg0, arg0.weaponSlotTable[arg0.currentActiveSlot].widget, arg1)
	end

	arg0.navigateTo = __FUNC_2643_
	local function __FUNC_2D5C_(arg0, arg2)
		if 0.000000 < #arg0.navigationHistory and arg0.navigationHistory[#arg0.navigationHistory].direction == arg2 then
			local registerVal6 = arg0.navigationHistory[#arg0.navigationHistory].conditionFn(arg1, arg0, arg0.weaponSlotTable[arg0.currentActiveSlot].widget)
			if arg2 or registerVal6 then
				arg0:navigateTo(arg0.navigationHistory[#arg0.navigationHistory].slot, arg2)
				table.remove(arg0.navigationHistory, #arg0.navigationHistory)
				return 
			end
		end
		if arg0.weaponSlotTable[arg0.currentActiveSlot].nav and arg0.weaponSlotTable[arg0.currentActiveSlot].nav[arg2] then
			local registerVal9 = type(arg0.weaponSlotTable[arg0.currentActiveSlot].nav[arg2])
			if registerVal9 == "table" then
				registerVal9, registerVal10, registerVal11 = ipairs(arg0.weaponSlotTable[arg0.currentActiveSlot].nav[arg2])
				for index12,value13 in registerVal9, registerVal10, registerVal11 do
					if value13.slot and arg0.weaponSlotTable[value13.slot].widget then
						local registerVal19 = {}
						registerVal19.possibleSlot = value13.slot
						local registerVal15 = value13.condition(arg1, arg0, arg0.weaponSlotTable[value13.slot].widget, registerVal19)
						if arg2 or registerVal15 then
						else
						else
						end
					else
						if arg0.weaponSlotTable[value13.slot] then
						end
					end
				end
			end
			if arg0.weaponSlotTable[value13.slot].widget then
				if 10.000000 <= #arg0.navigationHistory then
					table.remove(arg0.navigationHistory, 1.000000)
				end
				if arg0.weaponSlotTable[arg0.currentActiveSlot].setFocusToChild then
					arg0.navigationHistory = {}
					local registerVal13 = {}
					registerVal13.direction = arg0.inverseNavigation[arg2]
					registerVal13.slot = arg0.weaponSlotTable[arg0.currentActiveSlot].setFocusToChild
					registerVal13.conditionFn = value13.condition
					table.insert(arg0.navigationHistory, registerVal13)
				else
					registerVal13 = {}
					registerVal13.direction = arg0.inverseNavigation[arg2]
					registerVal13.slot = arg0.currentActiveSlot
					registerVal13.conditionFn = value13.condition
					table.insert(arg0.navigationHistory, registerVal13)
				end
				arg0:navigateTo(value13.slot, arg2)
				return 
			end
		end
	end

	arg0.performNav = __FUNC_2D5C_
	local function __FUNC_3273_(arg0, arg1, arg2, arg3, arg4)
		local registerVal5 = LUI.UIElement.GetCorrespondingGamepadButtonString(arg3)
		if registerVal5 ~= "left" and registerVal5 ~= "right" and registerVal5 == "up" or registerVal5 == "down" then
			arg0:performNav(registerVal5)
			return true
		end
		return false
	end

	arg0.handleGamepadButtonModelCallback = __FUNC_3273_
	if CoD.isPC then
		__FUNC_D38_(arg0, arg1)
	end
	registerVal21 = {}
	registerVal21.name = "lose_focus"
	registerVal21.controller = arg1
	arg0:dispatchEventToChildren(registerVal21)
	if CoD.CACUtility.CustomClass_LastClassNum ~= CoD.perController[arg1].classNum and CoD.perController[arg1].classNum ~= nil then
		if not CoD.CACUtility.CustomClass_PerClassLastSelection[(CoD.perController[arg1].classNum + 1.000000)] then
			CoD.CACUtility.CustomClass_PerClassLastSelection[(CoD.perController[arg1].classNum + 1.000000)] = "primary"
		end
		CoD.CACUtility.CustomClass_LastSelection = CoD.CACUtility.CustomClass_PerClassLastSelection[(CoD.perController[arg1].classNum + 1.000000)]
	end
	CoD.CACUtility.CustomClass_LastClassNum = CoD.perController[arg1].classNum
	arg0:navigateTo(CoD.CACUtility.CustomClass_LastSelection)
end

local function __FUNC_3394_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomClass")
	if __FUNC_40E_ then
		__FUNC_40E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_EditLoadout"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomClass.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -16.000000, 20.000000)
	registerVal3:setTopBottom(true, true, -23.000000, 19.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Fade = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 80.000000, 729.000000)
	registerVal4:setRGB(0.090000, 0.180000, 0.190000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackImage = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 64.000000, 428.000000)
	registerVal5:setTopBottom(true, false, 77.000000, 720.000000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal5)
	registerVal1.LeftPanel = registerVal5
	local registerVal6 = CoD.chooseClassWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, -4.000000, 496.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 679.000000)
	local function __FUNC_4643_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:linkToElementModel(registerVal1, nil, false, __FUNC_4643_)
	registerVal1:addElement(registerVal6)
	registerVal1.chooseClassWidget = registerVal6
	local registerVal7 = CoD.InfopanePreviewWidget.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 430.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 124.000000, 720.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.previewWidget = registerVal7
	local registerVal8 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_4692_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_4692_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "WithHeroesHead"
	local function __FUNC_4725_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_4725_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.feFooterContainer = registerVal8
	local registerVal9 = CoD.CACBackgroundNew.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_4770_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal1, nil, false, __FUNC_4770_)
	local function __FUNC_47C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal1, "customClassName", true, __FUNC_47C2_)
	local function __FUNC_4903_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_opened", __FUNC_4903_)
	registerVal1:addElement(registerVal9)
	registerVal1.CACBackground0 = registerVal9
	local registerVal10 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "CustomClass"
	local function __FUNC_499A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_499A_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.state")
	local function __FUNC_49E4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_49E4_)
	registerVal1:addElement(registerVal10)
	registerVal1.PregameTimerOverlay = registerVal10
	registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	registerVal12 = CoD.cac_restriction_warning.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 1008.000000, 1216.000000)
	registerVal12:setTopBottom(true, false, 553.730000, 583.730000)
	local function __FUNC_4B11_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:linkToElementModel(registerVal1, nil, false, __FUNC_4B11_)
	registerVal1:addElement(registerVal12)
	registerVal1.cacrestrictionwarning = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_4B62_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal1.Fade:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 720.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal14.DefaultClip = __FUNC_4B62_
	local function __FUNC_4D27_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_4E01_(arg0, arg1)
			local function __FUNC_4F58_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4F58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F58_)
		end

		registerVal3:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_4E01_(registerVal3, {})
	end

	registerVal14.FadeIn = __FUNC_4D27_
	local function __FUNC_510D_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_5375_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Fade:setAlpha(0.000000)
		__FUNC_5375_(registerVal3, {})
		local function __FUNC_5529_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 378.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 428.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_5529_(registerVal5, {})
		local function __FUNC_572A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 378.000000, -3.000000)
			arg0:setTopBottom(true, false, 125.000000, 721.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.previewWidget:setLeftRight(true, true, 427.000000, -3.000000)
		registerVal1.previewWidget:setTopBottom(true, false, 125.000000, 721.000000)
		registerVal1.previewWidget:setAlpha(1.000000)
		__FUNC_572A_(registerVal7, {})
	end

	registerVal14.Back = __FUNC_510D_
	local function __FUNC_594D_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_5C53_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_5C53_(registerVal3, {})
		local function __FUNC_5E05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 428.000000)
			arg0:setTopBottom(true, false, 78.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.LeftPanel:setLeftRight(true, false, 64.000000, 378.000000)
		registerVal1.LeftPanel:setTopBottom(true, false, 77.000000, 720.000000)
		__FUNC_5E05_(registerVal5, {})
		local function __FUNC_6006_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -3.000000, 497.000000)
			arg0:setTopBottom(true, false, 80.000000, 679.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.chooseClassWidget:setLeftRight(true, false, 395.500000, 736.500000)
		registerVal1.chooseClassWidget:setTopBottom(true, false, 80.000000, 679.000000)
		__FUNC_6006_(registerVal6, {})
		local function __FUNC_6206_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 920.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 427.000000, -3.000000)
			arg0:setTopBottom(true, false, 125.000000, 721.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.previewWidget:setLeftRight(true, true, 1067.000000, 637.000000)
		registerVal1.previewWidget:setTopBottom(true, false, 124.000000, 720.000000)
		registerVal1.previewWidget:setAlpha(0.340000)
		__FUNC_6206_(registerVal7, {})
	end

	registerVal14.Intro = __FUNC_594D_
	registerVal13.DefaultState = registerVal14
	registerVal1.clipsPerState = registerVal13
	local function __FUNC_6429_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0)
	end

	registerVal1:registerEventHandler("input_source_changed", __FUNC_6429_)
	local registerVal16 = Engine.GetModelForController(arg0)
	local registerVal15 = Engine.GetModel(registerVal16, "LastInput")
	local function __FUNC_6511_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "LastInput"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_6511_)
	local function __FUNC_66CA_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "CACBackground0", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "previewWidget"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		registerVal5 = {}
		registerVal5.elementName = "weaponProgression"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_66CA_)
	local function __FUNC_687C_(arg1, arg2)
		EnableMouseButton(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("enable_mouse_button", __FUNC_687C_)
	local function __FUNC_6914_(arg1, arg2)
		DisableMouseButton(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("disable_mouse_button", __FUNC_6914_)
	local function __FUNC_69AD_(arg1, arg2)
		RemoveItemFromClass(registerVal1, arg1, arg0)
		EnableMouseButton(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("remove_item_from_class", __FUNC_69AD_)
	local function __FUNC_6A75_(arg1, arg2)
		local registerVal3 = IsCPHeroWeapon(registerVal1, arg0)
		if not registerVal3 then
			NavigateToPersonalizeMenu(registerVal1, arg0)
			PlaySoundSetSound(registerVal1, "cac_enter_wpn_cust_sub")
			EnableMouseButton(registerVal1, arg0)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("personalize_class_item", __FUNC_6A75_)
	local function __FUNC_6BBA_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_6BBA_)
	local function __FUNC_6C90_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowSelectPrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			NavigateToLoadoutMenu(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_6D2C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = CACShowSelectPrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_6C90_, __FUNC_6D2C_, true)
	local function __FUNC_6E6B_(arg0, arg1, arg2, arg3)
		SetBackFromCustomClass(registerVal1)
		SendClientScriptMenuChangeNotify(arg2, arg1, false)
		SendClientScriptNotifyForAdjustedClient(arg2, "CustomClass_closed", "")
		SetPerControllerTableProperty(arg2, "weaponCategory", nil)
		SetPerControllerTableProperty(arg2, "weaponSlot", nil)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_700C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6E6B_, __FUNC_700C_, false)
	local function __FUNC_7109_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRemovePrompt(registerVal1, arg0)
		if registerVal4 then
			RemoveItemFromClass(registerVal1, arg0, arg2)
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
			UpdateButtonPromptState(arg1, arg0, arg2, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
			EnableMouseButton(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_72AD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = CACShowRemovePrompt(registerVal1, arg0)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_7109_, __FUNC_72AD_, true)
	local function __FUNC_73E8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGamesComBuild()
		registerVal4 = IsCPHeroWeapon(registerVal1, arg2)
		if not registerVal4 and not registerVal4 then
			NavigateToPersonalizeMenu(registerVal1, arg2)
			PlaySoundSetSound(registerVal1, "cac_enter_wpn_cust_sub")
			return true
		end
	end

	local function __FUNC_74F3_(arg0, arg1, arg2)
		local registerVal3 = IsGamesComBuild()
		registerVal3 = IsCPHeroWeapon(registerVal1, arg2)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_73E8_, __FUNC_74F3_, false)
	local function __FUNC_7647_(arg0, arg1, arg2, arg3)
		local registerVal4 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_76B1_(arg0, arg1, arg2)
		local registerVal3 = CACShowRotatePrompt(registerVal1, arg0, arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_7647_, __FUNC_76B1_, false)
	local function __FUNC_7803_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGamepad(arg2)
		registerVal4 = IsPC()
		registerVal4 = AlwaysFalse()
		if not registerVal4 and registerVal4 and registerVal4 then
			ToggleMouse(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_78C3_(arg0, arg1, arg2)
		local registerVal3 = IsGamepad(arg2)
		registerVal3 = IsPC()
		registerVal3 = AlwaysFalse()
		if not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "TEST")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0, "SPACE", __FUNC_7803_, __FUNC_78C3_, false)
	registerVal6.id = "chooseClassWidget"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.chooseClassWidget:processEvent(registerVal15)
	end
	local function __FUNC_7A25_(arg1)
		arg1.LeftPanel:close()
		arg1.chooseClassWidget:close()
		arg1.previewWidget:close()
		arg1.feFooterContainer:close()
		arg1.CACBackground0:close()
		arg1.PregameTimerOverlay:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.cacrestrictionwarning:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomClass.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7A25_)
	if __FUNC_EE6_ then
		__FUNC_EE6_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CustomClass = __FUNC_3394_
