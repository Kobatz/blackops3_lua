-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.GridItemUpgradeIconWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponItemModelWidgetNew_InGame = registerVal1
function CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponItemModelWidgetNew_InGame)
	registerVal2.id = "WeaponItemModelWidgetNew_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120000, 0.120000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.180000, 0.180000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setupUIStreamedImage(0.000000)
	local function __FUNC_127A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_127A_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal8:setTopBottom(false, true, -18.500000, -6.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_iconoptics"))
	registerVal2:addElement(registerVal8)
	registerVal2.opticIndicator = registerVal8
	local registerVal9 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 127.950000)
	registerVal9:setTopBottom(true, false, 9.250000, 119.750000)
	local function __FUNC_132C_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_132C_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_137E_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal13.condition = __FUNC_137E_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.Pregame.Update")
	local function __FUNC_13D6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_13D6_)
	registerVal2:addElement(registerVal9)
	registerVal2.RestrictedItemWarning = registerVal9
	local registerVal10 = CoD.GridItemUpgradeIconWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 3.000000, 21.000000)
	registerVal10:setTopBottom(true, false, 3.000000, 21.000000)
	local function __FUNC_1502_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1502_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Upgradable"
	local function __FUNC_1552_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACSlotUpgradable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_1552_
	local registerVal15 = {}
	registerVal15.stateName = "Upgraded"
	local function __FUNC_15D5_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsCACSlotUpgraded(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_15D5_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_1657_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_1657_)
	local function __FUNC_177C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, nil, true, __FUNC_177C_)
	registerVal2:addElement(registerVal10)
	registerVal2.GridItemUpgradeIconWidget0 = registerVal10
	local registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_1889_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1889_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1B21_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1B21_
	registerVal11.Equipped = registerVal12
	registerVal12 = {}
	local function __FUNC_1DB9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1DB9_
	registerVal11.CybercoreEquipped = registerVal12
	registerVal12 = {}
	local function __FUNC_2051_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_2051_
	registerVal11.WeaponEquipped = registerVal12
	registerVal12 = {}
	local function __FUNC_22E9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_22E9_
	registerVal11.Available = registerVal12
	registerVal12 = {}
	local function __FUNC_257C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_257C_
	registerVal11.NotEquippable = registerVal12
	registerVal12 = {}
	local function __FUNC_2810_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_2810_
	registerVal11.NotAvailable = registerVal12
	registerVal12 = {}
	local function __FUNC_2AAE_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_2AAE_
	registerVal11.NotVisible = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Equipped"
	local function __FUNC_2D3B_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_2D3B_
	registerVal15 = {}
	registerVal15.stateName = "CybercoreEquipped"
	local function __FUNC_2D97_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_2D97_
	local registerVal16 = {}
	registerVal16.stateName = "WeaponEquipped"
	local function __FUNC_2DE1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_2DE1_
	local registerVal17 = {}
	registerVal17.stateName = "Available"
	local function __FUNC_2E2D_(arg0, arg2, arg3)
		return IsCACSlotAvailable(arg0, arg2, arg1)
	end

	registerVal17.condition = __FUNC_2E2D_
	local registerVal18 = {}
	registerVal18.stateName = "NotEquippable"
	local function __FUNC_2E8C_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_2E8C_
	local registerVal19 = {}
	registerVal19.stateName = "NotAvailable"
	local function __FUNC_2EEF_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_2EEF_
	local registerVal20 = {}
	registerVal20.stateName = "NotVisible"
	local function __FUNC_2F50_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_2F50_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_2F9D_(arg0)
		arg0.RestrictedItemWarning:close()
		arg0.GridItemUpgradeIconWidget0:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2F9D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

