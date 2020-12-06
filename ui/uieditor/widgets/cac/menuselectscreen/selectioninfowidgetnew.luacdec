-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.PreviewImageWidget")
require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.WeaponAttributes_Internal")
require("ui.uieditor.widgets.CAC.cac_WpnLvl")
require("ui.uieditor.widgets.CAC.cac_LockBig")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectionInfoWidgetNew = registerVal1
function CoD.SelectionInfoWidgetNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectionInfoWidgetNew)
	registerVal2.id = "SelectionInfoWidgetNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 850.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 596.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PreviewImageWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -490.660000, 431.510000)
	registerVal3:setTopBottom(true, false, 12.000000, 474.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-150.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Square"
	local function __FUNC_16E3_(arg0, arg1, arg2)
		return IsMenuPreviewImageSquare(arg0)
	end

	registerVal7.condition = __FUNC_16E3_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.previewImage = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 20.510000, 276.510000)
	registerVal4:setTopBottom(true, false, 56.000000, 75.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_173E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(GetUnlockDescription(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_173E_)
	registerVal2:addElement(registerVal4)
	registerVal2.unlockWeaponDescTextBox = registerVal4
	local registerVal5 = CoD.cac_PrimaryWeaponDescription.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 19.000000, 384.000000)
	registerVal5:setTopBottom(true, false, 51.000000, 73.000000)
	local function __FUNC_17FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_17FA_)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponDescTextBox = registerVal5
	registerVal6 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 18.000000, 399.000000)
	registerVal6:setTopBottom(true, false, 13.000000, 47.000000)
	registerVal6.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal6.weaponNameWithVariant.variantName:setAlpha(1.000000)
	registerVal6.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	local function __FUNC_18D9_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_18D9_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_192A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_192A_
	local registerVal11 = {}
	registerVal11.stateName = "Available"
	local function __FUNC_1974_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_1974_
	local registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_19A8_(arg0, arg1, arg2)
		return true
	end

	registerVal12.condition = __FUNC_19A8_
	local registerVal13 = {}
	registerVal13.stateName = "NotAvailable"
	local function __FUNC_19DC_(arg0, arg1, arg2)
		return true
	end

	registerVal13.condition = __FUNC_19DC_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.itemName = registerVal6
	registerVal7 = CoD.WeaponAttributes_Internal.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 18.000000, 439.000000)
	registerVal7:setTopBottom(true, false, 440.000000, 526.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponAttributesInternal = registerVal7
	local registerVal8 = CoD.cac_WpnLvl.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 435.000000, 850.000000)
	registerVal8:setTopBottom(true, false, 492.000000, 532.000000)
	registerVal8.levelLabel.Label1:setText(Engine.Localize("MPUI_WEAPON_LEVEL_CAPS"))
	registerVal8.levelLabel.Label1:setTTF("fonts/escom.ttf")
	local function __FUNC_1A10_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1A10_)
	local function __FUNC_1A62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.currentLevelBacking:setText(Engine.Localize(GetCurrentWeaponLevelFromLoadout(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1A62_)
	local function __FUNC_1B79_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.currentLevel:setText(Engine.Localize(GetCurrentWeaponLevelFromLoadout(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1B79_)
	local function __FUNC_1C8A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.cacWpnLvlMeter0.Meter:setShaderVector(0.000000, GetCurrentWeaponXP(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1C8A_)
	local function __FUNC_1E48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.cacWpnLvlMeter0.Meter2XP:setShaderVector(0.000000, GetCurrentWeaponXP(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1E48_)
	local function __FUNC_200B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.nextLevel:setText(Engine.Localize(GetNextWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_200B_)
	registerVal2:addElement(registerVal8)
	registerVal2.weaponProgression = registerVal8
	registerVal9 = CoD.cac_LockBig.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -53.490000, 42.510000)
	registerVal9:setTopBottom(true, false, -97.000000, 573.000000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_2109_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_2109_)
	registerVal2:addElement(registerVal9)
	registerVal2.lockedIcon = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 19.510000, 147.510000)
	registerVal10:setTopBottom(true, false, 0.000000, 59.500000)
	registerVal10:setRGB(1.000000, 0.530000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.guide0 = registerVal10
	registerVal11 = CoD.XCamMouseControl.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -277.490000, 300.000000)
	registerVal11:setTopBottom(true, true, 47.000000, -156.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.xcamMouse = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_215A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_215A_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_24EC_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_24EC_
	registerVal12.BMClassified = registerVal13
	registerVal13 = {}
	local function __FUNC_2880_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_2880_
	registerVal12.VariantSelect = registerVal13
	registerVal13 = {}
	local function __FUNC_2C14_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_2C14_
	registerVal12.AttachmentLocked = registerVal13
	registerVal13 = {}
	local function __FUNC_2FA8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_2FA8_
	registerVal12.EquipmentSelectLocked = registerVal13
	registerVal13 = {}
	local function __FUNC_333C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_333C_
	registerVal12.EquipmentSelect = registerVal13
	registerVal13 = {}
	local function __FUNC_36D0_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_36D0_
	registerVal12.CybercoreRigSelectLocked = registerVal13
	registerVal13 = {}
	local function __FUNC_3A64_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_3A64_
	registerVal12.CybercoreRigSelect = registerVal13
	registerVal13 = {}
	local function __FUNC_3DF8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.unlockWeaponDescTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponDescTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponAttributesInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.660000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.guide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_3DF8_
	registerVal12.Locked = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "BMClassified"
	local function __FUNC_4191_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal15.condition = __FUNC_4191_
	local registerVal16 = {}
	registerVal16.stateName = "VariantSelect"
	local function __FUNC_420A_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuWeaponMenu(arg0)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg1, "WGSV_Category", CoD.WGSV_Category.GUNSMITH_VARIANT)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_420A_
	local registerVal17 = {}
	registerVal17.stateName = "AttachmentLocked"
	local function __FUNC_42FE_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
		if registerVal3 then
			registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_42FE_
	local registerVal18 = {}
	registerVal18.stateName = "EquipmentSelectLocked"
	local function __FUNC_4392_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentMenuEquipmentMenu(arg0)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_4392_
	local registerVal19 = {}
	registerVal19.stateName = "EquipmentSelect"
	local function __FUNC_4425_(arg0, arg1, arg2)
		return IsCurrentMenuEquipmentMenu(arg0)
	end

	registerVal19.condition = __FUNC_4425_
	local registerVal20 = {}
	registerVal20.stateName = "CybercoreRigSelectLocked"
	local function __FUNC_4484_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentMenuCybercoreOrRigMenu(arg0)
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_4484_
	local registerVal21 = {}
	registerVal21.stateName = "CybercoreRigSelect"
	local function __FUNC_451E_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "TacticalRigSelect")
	end

	registerVal21.condition = __FUNC_451E_
	local registerVal22 = {}
	registerVal22.stateName = "Locked"
	local function __FUNC_458E_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal22.condition = __FUNC_458E_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_45E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_45E9_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "WGSV_Category")
	local function __FUNC_470C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "WGSV_Category"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_470C_)
	local function __FUNC_482F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_482F_)
	local function __FUNC_494B_(arg0)
		arg0.previewImage:close()
		arg0.weaponDescTextBox:close()
		arg0.itemName:close()
		arg0.WeaponAttributesInternal:close()
		arg0.weaponProgression:close()
		arg0.lockedIcon:close()
		arg0.xcamMouse:close()
		arg0.unlockWeaponDescTextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_494B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

