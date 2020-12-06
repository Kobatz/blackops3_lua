-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
local function __FUNC_296_(arg0, arg1)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_2F0_(arg0, arg1)
	if CoD.isPC then
		__FUNC_296_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PrimaryWeaponAttachmentsWidget = registerVal3
local function __FUNC_35F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrimaryWeaponAttachmentsWidget)
	registerVal2.id = "PrimaryWeaponAttachmentsWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -62.000000, 0.000000)
	registerVal3.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_150D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_150D_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_15DF_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_15DF_
	local registerVal8 = {}
	registerVal8.stateName = "WeaponEquipped"
	local function __FUNC_165F_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_165F_
	local registerVal9 = {}
	registerVal9.stateName = "NotEquippable"
	local function __FUNC_16BB_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACPrimaryGunfighterCountEqualTo(arg0, 2.000000)
			if registerVal3 then
				registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_16BB_
	local registerVal10 = {}
	registerVal10.stateName = "NotAvailable"
	local function __FUNC_17B6_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACPrimaryGunfighterCountGreaterThanOrEqualTo(arg0, 3.000000)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_17B6_
	local registerVal11 = {}
	registerVal11.stateName = "NotVisible"
	local function __FUNC_1876_(arg0, arg2, arg3)
		return IsCACAttachmentSlotVisible(arg0, arg2, arg1, 3.000000)
	end

	registerVal11.condition = __FUNC_1876_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_18E5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_18E5_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_1A14_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1A14_)
	registerVal2:addElement(registerVal3)
	registerVal2.attachment5 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal4:setTopBottom(false, true, -62.000000, 0.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_1B3C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_1B3C_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_1C0F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1C0F_
	registerVal9 = {}
	registerVal9.stateName = "WeaponEquipped"
	local function __FUNC_1C8F_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal9.condition = __FUNC_1C8F_
	registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_1CEB_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACPrimaryGunfighterCountEqualTo(arg0, 1.000000)
			if registerVal3 then
				registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_1CEB_
	registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_1DE6_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACPrimaryGunfighterCountGreaterThanOrEqualTo(arg0, 2.000000)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_1DE6_
	local registerVal12 = {}
	registerVal12.stateName = "NotVisible"
	local function __FUNC_1EA6_(arg0, arg2, arg3)
		return IsCACAttachmentSlotVisible(arg0, arg2, arg1, 2.000000)
	end

	registerVal12.condition = __FUNC_1EA6_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1F15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1F15_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_2044_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_2044_)
	registerVal2:addElement(registerVal4)
	registerVal2.attachment4 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal5:setTopBottom(false, true, -62.000000, 0.000000)
	registerVal5.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_216C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_216C_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Equipped"
	local function __FUNC_223F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_223F_
	registerVal10 = {}
	registerVal10.stateName = "WeaponEquipped"
	local function __FUNC_22BF_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_22BF_
	registerVal11 = {}
	registerVal11.stateName = "LockedByWildcard"
	local function __FUNC_231B_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			if registerVal3 and registerVal3 then
				registerVal3 = IsCACPrimaryAttachmentSlotLockedByWildcard(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_231B_
	registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_2455_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_2455_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2549_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2549_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_2678_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_2678_)
	registerVal2:addElement(registerVal5)
	registerVal2.attachment3 = registerVal5
	registerVal6 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal6.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_27A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_27A0_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_2873_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_2873_
	registerVal11 = {}
	registerVal11.stateName = "WeaponEquipped"
	local function __FUNC_28F3_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal11.condition = __FUNC_28F3_
	registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_294F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_294F_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2A41_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2A41_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_2B70_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_2B70_)
	registerVal2:addElement(registerVal6)
	registerVal2.attachment2 = registerVal6
	registerVal7 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal7.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_2C98_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_2C98_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Equipped"
	local function __FUNC_2D6B_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLive()
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2D6B_
	registerVal12 = {}
	registerVal12.stateName = "WeaponEquipped"
	local function __FUNC_2DEB_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal12.condition = __FUNC_2DEB_
	local registerVal13 = {}
	registerVal13.stateName = "NotEquippable"
	local function __FUNC_2E47_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_2E47_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_2F39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_2F39_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_3068_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_3068_)
	registerVal2:addElement(registerVal7)
	registerVal2.attachment1 = registerVal7
	registerVal8 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal8.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8.opticIndicator:setAlpha(0.550000)
	local function __FUNC_3190_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_3190_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Equipped"
	local function __FUNC_3263_(arg0, arg2, arg3)
		local registerVal3 = IsCACCustomizationReticleAttachmentItemEquipped(arg0, arg2, arg1, "primary")
		if not registerVal3 then
			registerVal3 = IsCACWeaponEquippedForSlot(arg0, arg2, arg1, "primary")
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_3263_
	registerVal13 = {}
	registerVal13.stateName = "WeaponEquipped"
	local function __FUNC_3342_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal13.condition = __FUNC_3342_
	local registerVal14 = {}
	registerVal14.stateName = "NotEquippable"
	local function __FUNC_339F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_339F_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.optic = registerVal8
	registerVal9 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal9:setTopBottom(true, false, -21.000000, -1.000000)
	registerVal9.header:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "BreadcrumbVisible"
	local function __FUNC_3491_(arg0, arg2, arg3)
		return IsCACAnyOpticsNew(arg2, arg1, "primary")
	end

	registerVal13.condition = __FUNC_3491_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.opticsHeader = registerVal9
	registerVal10 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 66.000000, 136.000000)
	registerVal10:setTopBottom(true, false, -21.000000, -1.000000)
	registerVal10.header:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "BreadcrumbVisible"
	local function __FUNC_3500_(arg0, arg2, arg3)
		return IsCACAnyAttachmentsNew(arg2, arg1, "primary")
	end

	registerVal14.condition = __FUNC_3500_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.attachmentHeader = registerVal10
	registerVal11 = {}
	registerVal11.left = registerVal4
	registerVal11.up = registerVal6
	registerVal3.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal5
	registerVal11.up = registerVal7
	registerVal11.right = registerVal3
	registerVal4.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal8
	registerVal11.right = registerVal4
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal7
	registerVal11.down = registerVal3
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal8
	registerVal11.right = registerVal6
	registerVal11.down = registerVal4
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal11.right = registerVal7
	registerVal11.down = registerVal5
	registerVal8.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "attachment5"
	registerVal4.id = "attachment4"
	registerVal5.id = "attachment3"
	registerVal6.id = "attachment2"
	registerVal7.id = "attachment1"
	registerVal8.id = "optic"
	local function __FUNC_3575_(arg0, arg1)
		local registerVal2 = arg0.attachment5:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3575_)
	local function __FUNC_367B_(arg0)
		arg0.attachment5:close()
		arg0.attachment4:close()
		arg0.attachment3:close()
		arg0.attachment2:close()
		arg0.attachment1:close()
		arg0.optic:close()
		arg0.opticsHeader:close()
		arg0.attachmentHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_367B_)
	if __FUNC_2F0_ then
		__FUNC_2F0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PrimaryWeaponAttachmentsWidget.new = __FUNC_35F_
