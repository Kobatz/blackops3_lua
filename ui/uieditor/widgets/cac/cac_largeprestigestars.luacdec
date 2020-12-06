-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.FooterButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_LargePrestigeStars = registerVal1
function CoD.cac_LargePrestigeStars.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_LargePrestigeStars)
	registerVal2.id = "cac_LargePrestigeStars"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.onOffImage.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setRGB(0.970000, 0.930000, 0.070000)
	registerVal3.image:setImage(RegisterImage("uie_t7_arena_star_petit_white"))
	local function __FUNC_D41_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_D41_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "On"
	local function __FUNC_D92_(arg0, arg2, arg3)
		return IsWeaponPrestigeLevelAtLeast(arg2, arg1, 1.000000)
	end

	registerVal7.condition = __FUNC_D92_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_DFF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_DFF_)
	registerVal2:addElement(registerVal3)
	registerVal2.prestigeStar1 = registerVal3
	local registerVal4 = CoD.onOffImage.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 32.000000)
	registerVal4:setRGB(0.970000, 0.930000, 0.070000)
	registerVal4.image:setImage(RegisterImage("uie_t7_arena_star_petit_white"))
	local function __FUNC_F1B_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_F1B_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "On"
	local function __FUNC_F6A_(arg0, arg2, arg3)
		return IsWeaponPrestigeLevelAtLeast(arg2, arg1, 2.000000)
	end

	registerVal8.condition = __FUNC_F6A_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_FD7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "itemIndex", true, __FUNC_FD7_)
	registerVal2:addElement(registerVal4)
	registerVal2.prestigeStar2 = registerVal4
	local registerVal5 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 16.000000, 104.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5.label:setText(Engine.Localize("MENU_PRESTIGE_WEAPON"))
	registerVal5.keyPrompt.keybind:setText(Engine.Localize("P"))
	local function __FUNC_10F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_10F3_)
	local function __FUNC_11CB_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_11CB_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_121A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_121A_
	local registerVal10 = {}
	registerVal10.stateName = "Enabled"
	local function __FUNC_1265_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		registerVal3 = CanPrestigeWeapon(arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACCategoryWeapon(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1265_
	local registerVal11 = {}
	registerVal11.stateName = "DisabledPC"
	local function __FUNC_1317_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1317_
	local registerVal12 = {}
	registerVal12.stateName = "EnabledPC"
	local function __FUNC_1361_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = CanPrestigeWeapon(arg2, arg1)
			if registerVal3 then
				registerVal3 = IsCACCategoryWeapon(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_1361_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	if registerVal5.m_eventHandlers.input_source_changed then
		local function __FUNC_141F_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal5.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal5:registerEventHandler("input_source_changed", __FUNC_141F_)
	else
		registerVal5:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "LastInput")
	local function __FUNC_14A7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_14A7_)
	local function __FUNC_15C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_15C3_)
	registerVal2:addElement(registerVal5)
	registerVal2.prestigeButton = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_16DF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.prestigeStar1:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.prestigeStar2:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_16DF_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1854_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.prestigeStar1:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.prestigeStar2:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_1854_
	registerVal6.DoubleWeaponXP = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "DoubleWeaponXP"
	local function __FUNC_19CC_(arg0, arg2, arg3)
		return IsDoubleWeaponXP(arg1)
	end

	registerVal9.condition = __FUNC_19CC_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1A22_(arg0)
		arg0.prestigeStar1:close()
		arg0.prestigeStar2:close()
		arg0.prestigeButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A22_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

