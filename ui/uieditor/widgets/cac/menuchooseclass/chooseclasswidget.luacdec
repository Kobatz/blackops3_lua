-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.SpecialtyPerksWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.LethalEquipmentWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.TacticalEquipmentWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.TacticalRigWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.WildcardWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
require("ui.uieditor.widgets.CAC.MenuChooseClass.SecondaryWeaponWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.SecondaryWeaponAttachmentsWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.PrimaryWeaponWidget")
require("ui.uieditor.widgets.CAC.MenuChooseClass.PrimaryWeaponAttachmentsWidget")
local function __FUNC_515_(arg0, arg1)
	local registerVal2 = Dvar.ui_execdemo_cp:get()
	if registerVal2 then
		arg0.Wildcards:close()
		arg0.WildcardHeader:close()
	end
	if CoD.isPC then
		arg0:setUseStencil(false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.chooseClassWidget = registerVal2
local function __FUNC_64B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseClassWidget)
	registerVal2.id = "chooseClassWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 624.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -41.500000, -25.500000)
	registerVal3:setTopBottom(true, true, 56.000000, -81.000000)
	registerVal3:setRGB(0.800000, 0.240000, 0.240000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponAttachmentSpacer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 339.000000, 364.000000)
	registerVal4:setRGB(0.800000, 0.240000, 0.240000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.secondaryEquipmentSpacer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -81.500000, -45.500000)
	registerVal5:setRGB(0.800000, 0.240000, 0.240000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bottomSpacer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 185.000000, 210.000000)
	registerVal6:setRGB(0.800000, 0.240000, 0.240000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.primarySecondarySpacer = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 56.000000)
	registerVal7:setRGB(0.800000, 0.240000, 0.240000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.topSpacer = registerVal7
	local registerVal8 = CoD.SpecialtyPerksWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal8:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_1F85_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1F85_)
	local function __FUNC_1FD6_(arg0)
		registerVal8.perk1.perkPlus:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty4", false, __FUNC_1FD6_)
	local function __FUNC_205F_(arg0)
		registerVal8.perk1.perk:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty1", false, __FUNC_205F_)
	local function __FUNC_20E3_(arg0)
		registerVal8.perk2.perkPlus:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty5", false, __FUNC_20E3_)
	local function __FUNC_216B_(arg0)
		registerVal8.perk2.perk:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty2", false, __FUNC_216B_)
	local function __FUNC_21EF_(arg0)
		registerVal8.perk3.perkPlus:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty6", false, __FUNC_21EF_)
	local function __FUNC_2277_(arg0)
		registerVal8.perk3.perk:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "specialty3", false, __FUNC_2277_)
	registerVal2:addElement(registerVal8)
	registerVal2.SpecialtyPerks = registerVal8
	local registerVal9 = CoD.LethalEquipmentWidget.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -170.500000, -108.500000)
	registerVal9:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_22FB_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "primarygadget", false, __FUNC_22FB_)
	local function __FUNC_234A_(arg0)
		registerVal9.Equipment2:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "primarygadgetattachment1", false, __FUNC_234A_)
	local function __FUNC_23BA_(arg0)
		registerVal9.Equipment1:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "primarygadget", false, __FUNC_23BA_)
	registerVal2:addElement(registerVal9)
	registerVal2.LethalEquipment = registerVal9
	local registerVal10 = CoD.TacticalEquipmentWidget.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -103.500000, -41.500000)
	registerVal10:setTopBottom(true, false, 358.000000, 503.000000)
	local function __FUNC_242A_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondarygadget", false, __FUNC_242A_)
	local function __FUNC_247A_(arg0)
		registerVal10.Equipment2:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondarygadgetattachment1", false, __FUNC_247A_)
	local function __FUNC_24EA_(arg0)
		registerVal10.Equipment1:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "secondarygadget", false, __FUNC_24EA_)
	registerVal2:addElement(registerVal10)
	registerVal2.TacticalEquipment = registerVal10
	local registerVal11 = CoD.TacticalRigWidget.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -25.500000, 36.500000)
	registerVal11:setTopBottom(true, false, 358.000000, 503.000000)
	registerVal11:setAlpha(0.000000)
	local function __FUNC_255A_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_255A_)
	local function __FUNC_25AA_(arg0)
		registerVal11.TacRig2:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "cybercom_tacrig2", false, __FUNC_25AA_)
	local function __FUNC_2617_(arg0)
		registerVal11.TacRig1:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "cybercom_tacrig1", false, __FUNC_2617_)
	local function __FUNC_2683_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.rig1Name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cybercom_tacrig1.name", true, __FUNC_2683_)
	local function __FUNC_2758_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.rig2Name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "cybercom_tacrig2.name", true, __FUNC_2758_)
	registerVal2:addElement(registerVal11)
	registerVal2.TacticalRig = registerVal11
	local registerVal12 = CoD.WildcardWidgetNew.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -225.000000, 225.000000)
	registerVal12:setTopBottom(true, false, 527.000000, 685.000000)
	local function __FUNC_2830_(arg0)
		registerVal12.wildcard2:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "bonuscard2", false, __FUNC_2830_)
	local function __FUNC_28A1_(arg0)
		registerVal12.wildcard3:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "bonuscard3", false, __FUNC_28A1_)
	local function __FUNC_2911_(arg0)
		registerVal12.wildcard1:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "bonuscard1", false, __FUNC_2911_)
	registerVal2:addElement(registerVal12)
	registerVal2.Wildcards = registerVal12
	local registerVal13 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -170.500000, -99.500000)
	registerVal13:setTopBottom(true, false, 513.000000, 532.000000)
	registerVal13:setRGB(0.830000, 0.830000, 0.860000)
	registerVal13.header:setText(Engine.Localize("MENU_WILDCARDS_CAPS"))
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "BreadcrumbVisible"
	local function __FUNC_2981_(arg0, arg2, arg3)
		return IsCACSpecificLoadoutSlotNew(arg2, arg1, "bonuscard1")
	end

	registerVal17.condition = __FUNC_2981_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal2:addElement(registerVal13)
	registerVal2.WildcardHeader = registerVal13
	local registerVal14 = CoD.SecondaryWeaponWidget.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -170.500000, -41.500000)
	registerVal14:setTopBottom(true, false, 199.000000, 344.000000)
	local function __FUNC_29FD_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "secondary", false, __FUNC_29FD_)
	registerVal2:addElement(registerVal14)
	registerVal2.SecondaryWeapon = registerVal14
	local registerVal15 = CoD.SecondaryWeaponAttachmentsWidget.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal15:setTopBottom(true, false, 215.000000, 344.000000)
	local function __FUNC_2A4E_(arg0)
		registerVal15.attachment2:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "secondaryattachment3", false, __FUNC_2A4E_)
	local function __FUNC_2ABF_(arg0)
		registerVal15.attachment1:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "secondaryattachment2", false, __FUNC_2ABF_)
	local function __FUNC_2B2F_(arg0)
		registerVal15.optic:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, "secondaryattachment1", false, __FUNC_2B2F_)
	registerVal2:addElement(registerVal15)
	registerVal2.SecondaryWeaponAttachment = registerVal15
	registerVal16 = CoD.PrimaryWeaponWidget.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -170.500000, -41.500000)
	registerVal16:setTopBottom(true, false, 40.000000, 185.000000)
	local function __FUNC_2B99_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "primary", false, __FUNC_2B99_)
	registerVal2:addElement(registerVal16)
	registerVal2.PrimaryWeapon = registerVal16
	registerVal17 = CoD.PrimaryWeaponAttachmentsWidget.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -25.500000, 170.500000)
	registerVal17:setTopBottom(true, false, 56.000000, 185.000000)
	local function __FUNC_2BEA_(arg0)
		registerVal17.attachment5:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment6", false, __FUNC_2BEA_)
	local function __FUNC_2C5B_(arg0)
		registerVal17.attachment4:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment5", false, __FUNC_2C5B_)
	local function __FUNC_2CCB_(arg0)
		registerVal17.attachment3:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment4", false, __FUNC_2CCB_)
	local function __FUNC_2D3B_(arg0)
		registerVal17.attachment2:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment3", false, __FUNC_2D3B_)
	local function __FUNC_2DAB_(arg0)
		registerVal17.attachment1:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment2", false, __FUNC_2DAB_)
	local function __FUNC_2E1B_(arg0)
		registerVal17.optic:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "primaryattachment1", false, __FUNC_2E1B_)
	registerVal2:addElement(registerVal17)
	registerVal2.PrimaryWeaponAttachment = registerVal17
	local registerVal18 = {}
	registerVal18.left = registerVal10
	registerVal18.up = registerVal15
	registerVal18.down = registerVal12
	registerVal8.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal14
	registerVal18.right = registerVal10
	registerVal18.down = registerVal12
	registerVal9.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal9
	registerVal18.up = registerVal14
	local registerVal19 = {}
	registerVal19 = {registerVal8, registerVal11}
	registerVal18.right = registerVal19
	registerVal18.down = registerVal12
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal10
	registerVal18.up = registerVal15
	registerVal18.down = registerVal12
	registerVal11.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	registerVal19 = {registerVal9, registerVal10, registerVal8, registerVal11}
	registerVal18.up = registerVal19
	registerVal12.navigation = registerVal18
	registerVal18 = {}
	registerVal18.up = registerVal16
	registerVal18.right = registerVal15
	registerVal19 = {}
	registerVal19 = {registerVal9, registerVal10}
	registerVal18.down = registerVal19
	registerVal14.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal14
	registerVal18.up = registerVal17
	registerVal19 = {}
	registerVal19 = {registerVal8, registerVal11}
	registerVal18.down = registerVal19
	registerVal15.navigation = registerVal18
	registerVal18 = {}
	registerVal18.right = registerVal17
	registerVal18.down = registerVal14
	registerVal16.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal16
	registerVal18.down = registerVal15
	registerVal17.navigation = registerVal18
	registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_2E85_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.primarySecondarySpacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SpecialtyPerks:setLeftRight(false, false, -25.500000, 170.500000)
		registerVal2.SpecialtyPerks:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.SpecialtyPerks:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TacticalRig:setLeftRight(false, false, -25.500000, 36.500000)
		registerVal2.TacticalRig:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.TacticalRig:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 527.000000, 685.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.DefaultClip = __FUNC_2E85_
	local function __FUNC_3364_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.secondaryEquipmentSpacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.primarySecondarySpacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_35FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(true, false, 470.500000, 628.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 527.000000, 685.000000)
		__FUNC_35FC_(registerVal12, {})
		local function __FUNC_37FC_(arg0, arg1)
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

		registerVal13:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		__FUNC_37FC_(registerVal13, {})
	end

	registerVal19.Wildcards = __FUNC_3364_
	local function __FUNC_39B1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal12:completeAnimation()
		registerVal2.Wildcards:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal19.WildcardDefault = __FUNC_39B1_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_3AAC_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.primarySecondarySpacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SpecialtyPerks:setLeftRight(false, false, -25.500000, 170.500000)
		registerVal2.SpecialtyPerks:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TacticalRig:setLeftRight(false, false, -25.500000, 36.500000)
		registerVal2.TacticalRig:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 470.500000, 628.500000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.DefaultClip = __FUNC_3AAC_
	local function __FUNC_3F4F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal2.SpecialtyPerks:setLeftRight(false, false, -25.500000, 170.500000)
		registerVal2.SpecialtyPerks:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TacticalRig:setLeftRight(false, false, -25.500000, 36.500000)
		registerVal2.TacticalRig:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_4432_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -225.000000, 225.000000)
			arg0:setTopBottom(true, false, 527.000000, 685.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 470.500000, 628.500000)
		__FUNC_4432_(registerVal12, {})
		local function __FUNC_4632_(arg0, arg1)
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

		registerVal13:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_4632_)
	end

	registerVal19.DefaultState = __FUNC_3F4F_
	local function __FUNC_47E5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal6:completeAnimation()
		registerVal2.primarySecondarySpacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.SpecialtyPerks:setLeftRight(false, false, -25.500000, 170.500000)
		registerVal2.SpecialtyPerks:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TacticalRig:setLeftRight(false, false, -25.500000, 36.500000)
		registerVal2.TacticalRig:setTopBottom(true, false, 358.000000, 420.500000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_4D2E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -225.000000, 225.000000)
			arg0:setTopBottom(true, false, 527.000000, 685.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 470.500000, 628.500000)
		__FUNC_4D2E_(registerVal12, {})
		local function __FUNC_4F2E_(arg0, arg1)
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

		registerVal13:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_4F2E_)
	end

	registerVal19.Campaign = __FUNC_47E5_
	registerVal18.Wildcards = registerVal19
	registerVal19 = {}
	local function __FUNC_50E1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal2.SpecialtyPerks:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LethalEquipment:setLeftRight(false, false, -170.500000, -108.500000)
		registerVal2.LethalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TacticalEquipment:setLeftRight(false, false, -103.500000, -41.500000)
		registerVal2.TacticalEquipment:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TacticalRig:setLeftRight(false, false, -25.500000, 36.500000)
		registerVal2.TacticalRig:setTopBottom(true, false, 358.000000, 503.000000)
		registerVal2.TacticalRig:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 527.000000, 685.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal19.DefaultClip = __FUNC_50E1_
	local function __FUNC_5507_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_56B7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -116.000000, 116.000000)
			arg0:setTopBottom(true, false, 470.500000, 628.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Wildcards:setLeftRight(false, false, -225.000000, 225.000000)
		registerVal2.Wildcards:setTopBottom(true, false, 527.000000, 685.000000)
		__FUNC_56B7_(registerVal12, {})
		local function __FUNC_58B6_(arg0, arg1)
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

		registerVal13:completeAnimation()
		registerVal2.WildcardHeader:setAlpha(1.000000)
		__FUNC_58B6_(registerVal13, {})
	end

	registerVal19.Wildcards = __FUNC_5507_
	registerVal18.Campaign = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Wildcards"
	local function __FUNC_5A69_(arg0, arg1, arg2)
		return IsElementInState(arg1, "Wildcards")
	end

	registerVal21.condition = __FUNC_5A69_
	local registerVal22 = {}
	registerVal22.stateName = "Campaign"
	local function __FUNC_5AD5_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal22.condition = __FUNC_5AD5_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "lobbyRoot.lobbyNav")
	local function __FUNC_5B20_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_5B20_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal8.id = "SpecialtyPerks"
	registerVal9.id = "LethalEquipment"
	registerVal10.id = "TacticalEquipment"
	registerVal11.id = "TacticalRig"
	registerVal12.id = "Wildcards"
	registerVal14.id = "SecondaryWeapon"
	registerVal15.id = "SecondaryWeaponAttachment"
	registerVal16.id = "PrimaryWeapon"
	registerVal17.id = "PrimaryWeaponAttachment"
	local function __FUNC_5C48_(arg0, arg1)
		local registerVal2 = arg0.PrimaryWeaponAttachment:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5C48_)
	local function __FUNC_5D5B_(arg0)
		arg0.SpecialtyPerks:close()
		arg0.LethalEquipment:close()
		arg0.TacticalEquipment:close()
		arg0.TacticalRig:close()
		arg0.Wildcards:close()
		arg0.WildcardHeader:close()
		arg0.SecondaryWeapon:close()
		arg0.SecondaryWeaponAttachment:close()
		arg0.PrimaryWeapon:close()
		arg0.PrimaryWeaponAttachment:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5D5B_)
	if __FUNC_515_ then
		__FUNC_515_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.chooseClassWidget.new = __FUNC_64B_
