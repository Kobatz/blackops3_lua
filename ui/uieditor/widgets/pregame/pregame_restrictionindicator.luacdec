-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_RestrictionIndicator = registerVal1
function CoD.Pregame_RestrictionIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_RestrictionIndicator)
	registerVal2.id = "Pregame_RestrictionIndicator"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 34.170000, -34.170000)
	registerVal3:setTopBottom(true, true, 36.000000, -40.500000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal3)
	registerVal2.Restricted = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 140.750000, 65.250000)
	registerVal4:setTopBottom(true, true, -13.000000, -95.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_banned"))
	registerVal2:addElement(registerVal4)
	registerVal2.BanOnly = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 39.000000, -39.000000)
	registerVal5:setTopBottom(true, true, 36.000000, -36.000000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_pregame_protected2"))
	registerVal2:addElement(registerVal5)
	registerVal2.Protected = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8BF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Restricted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BanOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Protected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_8BF_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A6A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Restricted:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BanOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Protected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A6A_
	registerVal6.Restricted = registerVal7
	registerVal7 = {}
	local function __FUNC_C1B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Restricted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BanOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Protected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C1B_
	registerVal6.BanOnly = registerVal7
	registerVal7 = {}
	local function __FUNC_DC6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Restricted:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Restricted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BanOnly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Protected:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DC6_
	registerVal6.Protected = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Restricted"
	local function __FUNC_FB0_(arg0, arg2, arg3)
		return ItemIsInRestrictionState(arg0, arg2, arg1, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED)
	end

	registerVal9.condition = __FUNC_FB0_
	local registerVal10 = {}
	registerVal10.stateName = "BanOnly"
	local function __FUNC_1089_(arg0, arg2, arg3)
		return ItemIsInRestrictionState(arg0, arg2, arg1, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_BANONLY)
	end

	registerVal10.condition = __FUNC_1089_
	local registerVal11 = {}
	registerVal11.stateName = "Protected"
	local function __FUNC_115E_(arg0, arg2, arg3)
		return ItemIsInRestrictionState(arg0, arg2, arg1, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_PROTECTED)
	end

	registerVal11.condition = __FUNC_115E_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.Pregame.Update")
	local function __FUNC_1234_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1234_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

