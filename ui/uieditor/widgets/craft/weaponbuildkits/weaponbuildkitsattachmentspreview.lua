-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsAttachmentPreview")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsAttachmentsPreview = registerVal1
function CoD.WeaponBuildKitsAttachmentsPreview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsAttachmentsPreview)
	registerVal2.id = "WeaponBuildKitsAttachmentsPreview"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 405.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 24.000000, 88.000000)
	registerVal3.opticIndicator:setAlpha(0.410000)
	local function __FUNC_EEC_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_EEC_)
	local function __FUNC_F3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "1", registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "attachment1", true, __FUNC_F3E_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "IsEquipped"
	local function __FUNC_1055_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment1", 0.000000)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1055_
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_10DB_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 0.000000)
	end

	registerVal8.condition = __FUNC_10DB_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_1141_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment1"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "attachment1", true, __FUNC_1141_)
	registerVal2:addElement(registerVal3)
	registerVal2.Optic = registerVal3
	local registerVal4 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 67.670000, 131.670000)
	registerVal4:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_1261_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1261_)
	local function __FUNC_12B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "2", registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "attachment2", true, __FUNC_12B2_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "IsEquipped"
	local function __FUNC_13C9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment2", 0.000000)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_13C9_
	local registerVal9 = {}
	registerVal9.stateName = "Locked"
	local function __FUNC_144F_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 1.000000)
	end

	registerVal9.condition = __FUNC_144F_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_14B5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment2"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "attachment2", true, __FUNC_14B5_)
	registerVal2:addElement(registerVal4)
	registerVal2.Attachment1 = registerVal4
	local registerVal5 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 135.670000, 199.670000)
	registerVal5:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_15D5_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_15D5_)
	local function __FUNC_1626_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "3", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "attachment3", true, __FUNC_1626_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "IsEquipped"
	local function __FUNC_173D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment3", 0.000000)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_173D_
	local registerVal10 = {}
	registerVal10.stateName = "Locked"
	local function __FUNC_17C3_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 2.000000)
	end

	registerVal10.condition = __FUNC_17C3_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1829_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment3"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "attachment3", true, __FUNC_1829_)
	registerVal2:addElement(registerVal5)
	registerVal2.Attachment2 = registerVal5
	registerVal6 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 203.670000, 267.670000)
	registerVal6:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_1949_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1949_)
	local function __FUNC_199A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "4", registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "attachment4", true, __FUNC_199A_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "IsEquipped"
	local function __FUNC_1AB1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment4", 0.000000)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1AB1_
	local registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_1B37_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 3.000000)
	end

	registerVal11.condition = __FUNC_1B37_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1B9D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment4"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "attachment4", true, __FUNC_1B9D_)
	registerVal2:addElement(registerVal6)
	registerVal2.Attachment3 = registerVal6
	registerVal7 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 271.100000, 335.100000)
	registerVal7:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_1CBD_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1CBD_)
	local function __FUNC_1D0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "5", registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "attachment5", true, __FUNC_1D0E_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "IsEquipped"
	local function __FUNC_1E25_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment5", 0.000000)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1E25_
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_1EAB_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 4.000000)
	end

	registerVal12.condition = __FUNC_1EAB_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1F11_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment5"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "attachment5", true, __FUNC_1F11_)
	registerVal2:addElement(registerVal7)
	registerVal2.Attachment4 = registerVal7
	registerVal8 = CoD.WeaponBuildKitsAttachmentPreview.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 339.100000, 403.100000)
	registerVal8:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_2031_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_2031_)
	local function __FUNC_2082_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "6", registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "attachment6", true, __FUNC_2082_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "IsEquipped"
	local function __FUNC_2199_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment6", 0.000000)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2199_
	local registerVal13 = {}
	registerVal13.stateName = "Locked"
	local function __FUNC_221F_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 5.000000)
	end

	registerVal13.condition = __FUNC_221F_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_2285_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment6"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "attachment6", true, __FUNC_2285_)
	registerVal2:addElement(registerVal8)
	registerVal2.Attachment5 = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_23A5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_23A5_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_265E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_265E_
	registerVal9.SpecialWeapon = registerVal10
	registerVal10 = {}
	local function __FUNC_2916_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2916_
	registerVal9.Handguns = registerVal10
	registerVal10 = {}
	local function __FUNC_2BD3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2BD3_
	registerVal9.Snipers = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "SpecialWeapon"
	local function __FUNC_2E8F_(arg0, arg2, arg3)
		return Gunsmith_IsSpecialWeapon(arg0, arg2, arg1)
	end

	registerVal12.condition = __FUNC_2E8F_
	registerVal13 = {}
	registerVal13.stateName = "Handguns"
	local function __FUNC_2EF2_(arg0, arg2, arg3)
		return Gunsmith_IsHandguns(arg0, arg2, arg1)
	end

	registerVal13.condition = __FUNC_2EF2_
	local registerVal14 = {}
	registerVal14.stateName = "Snipers"
	local function __FUNC_2F51_(arg0, arg2, arg3)
		return Gunsmith_IsSnipers(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_2F51_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_2FB0_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "SpecialWeapon")
		if registerVal2 then
			MakeElementNotFocusable(registerVal2, "Attachment1", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment2", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment3", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment4", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment5", arg1)
			MakeElementNotFocusable(registerVal2, "Optic", arg1)
		else
			registerVal2 = IsElementInState(arg0, "DefaultState")
			if registerVal2 then
			else
				registerVal2 = IsElementInState(arg0, "Handguns")
				if registerVal2 then
					MakeElementNotFocusable(registerVal2, "Attachment3", arg1)
					MakeElementNotFocusable(registerVal2, "Attachment4", arg1)
					MakeElementNotFocusable(registerVal2, "Attachment5", arg1)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2FB0_)
	local function __FUNC_31D2_(arg0)
		arg0.Optic:close()
		arg0.Attachment1:close()
		arg0.Attachment2:close()
		arg0.Attachment3:close()
		arg0.Attachment4:close()
		arg0.Attachment5:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_31D2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

