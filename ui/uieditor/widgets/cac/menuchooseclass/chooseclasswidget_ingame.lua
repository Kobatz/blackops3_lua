-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.SpecialtyPerksWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.LethalEquipmentWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.TacticalEquipmentWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.TacticalRigWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.WildcardWidgetNew_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.SecondaryWeaponWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.SecondaryWeaponAttachmentsWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.PrimaryWeaponWidget_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.PrimaryWeaponAttachmentsWidget_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.chooseClassWidget_Ingame = registerVal1
function CoD.chooseClassWidget_Ingame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.chooseClassWidget_Ingame)
	registerVal2.id = "chooseClassWidget_Ingame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 624.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.SpecialtyPerksWidget_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal3:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_1A06_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_1A06_)
	local function __FUNC_1A56_(arg0)
		registerVal3.perk1.perkPlus:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty4", false, __FUNC_1A56_)
	local function __FUNC_1ADF_(arg0)
		registerVal3.perk1.perk:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty1", false, __FUNC_1ADF_)
	local function __FUNC_1B63_(arg0)
		registerVal3.perk2.perkPlus:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty5", false, __FUNC_1B63_)
	local function __FUNC_1BEB_(arg0)
		registerVal3.perk2.perk:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty2", false, __FUNC_1BEB_)
	local function __FUNC_1C6F_(arg0)
		registerVal3.perk3.perkPlus:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty6", false, __FUNC_1C6F_)
	local function __FUNC_1CF7_(arg0)
		registerVal3.perk3.perk:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "specialty3", false, __FUNC_1CF7_)
	registerVal2:addElement(registerVal3)
	registerVal2.SpecialtyPerks = registerVal3
	local registerVal4 = CoD.LethalEquipmentWidget_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -170.500000, -108.500000)
	registerVal4:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_1D7B_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "primarygadget", false, __FUNC_1D7B_)
	local function __FUNC_1DCA_(arg0)
		registerVal4.Equipment2:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "primarygadgetattachment1", false, __FUNC_1DCA_)
	local function __FUNC_1E3A_(arg0)
		registerVal4.Equipment1:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "primarygadget", false, __FUNC_1E3A_)
	registerVal2:addElement(registerVal4)
	registerVal2.LethalEquipment = registerVal4
	local registerVal5 = CoD.TacticalEquipmentWidget_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -103.500000, -41.500000)
	registerVal5:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_1EAA_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "secondarygadget", false, __FUNC_1EAA_)
	local function __FUNC_1EFA_(arg0)
		registerVal5.Equipment2:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "secondarygadgetattachment1", false, __FUNC_1EFA_)
	local function __FUNC_1F6A_(arg0)
		registerVal5.Equipment1:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "secondarygadget", false, __FUNC_1F6A_)
	registerVal2:addElement(registerVal5)
	registerVal2.TacticalEquipment = registerVal5
	local registerVal6 = CoD.TacticalRigWidget_InGame.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -25.500000, 36.500000)
	registerVal6:setTopBottom(true, false, 358.000000, 503.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1FDA_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1FDA_)
	local function __FUNC_202A_(arg0)
		registerVal6.TacRig2:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "cybercom_tacrig2", false, __FUNC_202A_)
	local function __FUNC_2097_(arg0)
		registerVal6.TacRig1:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "cybercom_tacrig1", false, __FUNC_2097_)
	local function __FUNC_2103_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.rig1Name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "cybercom_tacrig1.name", true, __FUNC_2103_)
	local function __FUNC_21D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.rig2Name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "cybercom_tacrig2.name", true, __FUNC_21D8_)
	registerVal2:addElement(registerVal6)
	registerVal2.TacticalRig = registerVal6
	local registerVal7 = CoD.WildcardWidgetNew_InGame.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal7:setTopBottom(false, true, -56.500000, 101.500000)
	local function __FUNC_22B0_(arg0)
		registerVal7.wildcard2:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "bonuscard2", false, __FUNC_22B0_)
	local function __FUNC_2321_(arg0)
		registerVal7.wildcard3:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "bonuscard3", false, __FUNC_2321_)
	local function __FUNC_2391_(arg0)
		registerVal7.wildcard1:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "bonuscard1", false, __FUNC_2391_)
	registerVal2:addElement(registerVal7)
	registerVal2.Wildcards = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -171.000000, 329.000000)
	registerVal8:setTopBottom(false, true, -59.500000, -40.500000)
	registerVal8:setRGB(0.570000, 0.600000, 0.650000)
	registerVal8:setText(Engine.Localize("MENU_WILDCARDS_CAPS"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.WildcardHeader = registerVal8
	local registerVal9 = CoD.SecondaryWeaponWidget_InGame.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -170.500000, -41.500000)
	registerVal9:setTopBottom(true, false, 199.000000, 344.000000)
	local function __FUNC_2401_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "secondary", false, __FUNC_2401_)
	registerVal2:addElement(registerVal9)
	registerVal2.SecondaryWeapon = registerVal9
	local registerVal10 = CoD.SecondaryWeaponAttachmentsWidget_InGame.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal10:setTopBottom(true, false, 215.000000, 344.000000)
	local function __FUNC_2452_(arg0)
		registerVal10.attachment2:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondaryattachment3", false, __FUNC_2452_)
	local function __FUNC_24C3_(arg0)
		registerVal10.attachment1:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondaryattachment2", false, __FUNC_24C3_)
	local function __FUNC_2533_(arg0)
		registerVal10.optic:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondaryattachment1", false, __FUNC_2533_)
	registerVal2:addElement(registerVal10)
	registerVal2.SecondaryWeaponAttachment = registerVal10
	local registerVal11 = CoD.PrimaryWeaponWidget_InGame.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -170.500000, -41.500000)
	registerVal11:setTopBottom(true, false, 40.000000, 185.000000)
	local function __FUNC_259D_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "primary", false, __FUNC_259D_)
	registerVal2:addElement(registerVal11)
	registerVal2.PrimaryWeapon = registerVal11
	local registerVal12 = CoD.PrimaryWeaponAttachmentsWidget_InGame.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal12:setTopBottom(true, false, 56.000000, 185.000000)
	local function __FUNC_25EE_(arg0)
		registerVal12.attachment5:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment6", false, __FUNC_25EE_)
	local function __FUNC_265F_(arg0)
		registerVal12.attachment4:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment5", false, __FUNC_265F_)
	local function __FUNC_26CF_(arg0)
		registerVal12.attachment3:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment4", false, __FUNC_26CF_)
	local function __FUNC_273F_(arg0)
		registerVal12.attachment2:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment3", false, __FUNC_273F_)
	local function __FUNC_27AF_(arg0)
		registerVal12.attachment1:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment2", false, __FUNC_27AF_)
	local function __FUNC_281F_(arg0)
		registerVal12.optic:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "primaryattachment1", false, __FUNC_281F_)
	registerVal2:addElement(registerVal12)
	registerVal2.PrimaryWeaponAttachment = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_2889_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.SpecialtyPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TacticalRig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -56.500000, 101.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_2889_
	local function __FUNC_2C55_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2E07_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(false, true, -153.500000, 4.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -56.500000, 101.500000)
		__FUNC_2E07_(registerVal7, {})
		local function __FUNC_3004_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		__FUNC_3004_(registerVal8, {})
	end

	registerVal14.Wildcards = __FUNC_2C55_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_31B9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -153.500000, 4.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_31B9_
	local function __FUNC_3389_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_35EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(false, true, -56.500000, 101.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -153.500000, 4.500000)
		__FUNC_35EA_(registerVal7, {})
		local function __FUNC_37EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_37EA_)
	end

	registerVal14.DefaultState = __FUNC_3389_
	local function __FUNC_399D_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_3BFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(false, true, -56.500000, 101.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -153.500000, 4.500000)
		__FUNC_3BFE_(registerVal7, {})
		local function __FUNC_3DFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_3DFE_)
	end

	registerVal14.Campaign = __FUNC_399D_
	registerVal13.Wildcards = registerVal14
	registerVal14 = {}
	local function __FUNC_3FB1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.SpecialtyPerks:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TacticalRig:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -56.500000, 101.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_3FB1_
	local function __FUNC_437D_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_452F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(false, true, -153.500000, 4.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -116.000000, 116.000000)
		registerVal2.Wildcards:setTopBottom(false, true, -61.500000, 96.500000)
		__FUNC_452F_(registerVal7, {})
		local function __FUNC_472E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		__FUNC_472E_(registerVal8, {})
	end

	registerVal14.Wildcards = __FUNC_437D_
	registerVal13.Campaign = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Wildcards"
	local function __FUNC_48E1_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Wildcards")
	end

	registerVal16.condition = __FUNC_48E1_
	local registerVal17 = {}
	registerVal17.stateName = "Campaign"
	local function __FUNC_494D_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal17.condition = __FUNC_494D_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "lobbyRoot.lobbyNav")
	local function __FUNC_4998_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_4998_)
	registerVal7.id = "Wildcards"
	local function __FUNC_4AC0_(arg0, arg1)
		local registerVal2 = arg0.Wildcards:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_4AC0_)
	local function __FUNC_4BC5_(arg0)
		arg0.SpecialtyPerks:close()
		arg0.LethalEquipment:close()
		arg0.TacticalEquipment:close()
		arg0.TacticalRig:close()
		arg0.Wildcards:close()
		arg0.SecondaryWeapon:close()
		arg0.SecondaryWeaponAttachment:close()
		arg0.PrimaryWeapon:close()
		arg0.PrimaryWeaponAttachment:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4BC5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

