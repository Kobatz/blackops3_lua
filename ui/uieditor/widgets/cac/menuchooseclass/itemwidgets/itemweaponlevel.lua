-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ItemWeaponLevel = registerVal1
function CoD.ItemWeaponLevel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ItemWeaponLevel)
	registerVal2.id = "ItemWeaponLevel"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -16.000000, 0.000000)
	registerVal3:setRGB(0.970000, 0.930000, 0.070000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal4:setTopBottom(false, true, -17.000000, 1.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetCurrentWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_CBE_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponLevel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal5:setRGB(0.970000, 0.930000, 0.070000)
	registerVal5:setText(Engine.Localize("MENU_LEVEL_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.levelLabel = registerVal5
	local registerVal6 = CoD.onOffImage.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -8.500000, -1.000000)
	registerVal6:setTopBottom(false, true, -16.000000, -8.500000)
	registerVal6:setRGB(0.970000, 0.930000, 0.070000)
	registerVal6.image:setImage(RegisterImage("uie_t7_arena_star_petit_white"))
	local function __FUNC_DA1_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_DA1_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "On"
	local function __FUNC_DF2_(arg0, arg2, arg3)
		return IsWeaponPrestigeLevelAtLeast(arg2, arg1, 1.000000)
	end

	registerVal10.condition = __FUNC_DF2_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_E5F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "itemIndex", true, __FUNC_E5F_)
	registerVal2:addElement(registerVal6)
	registerVal2.prestigeStar1 = registerVal6
	local registerVal7 = CoD.onOffImage.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -8.500000, -1.000000)
	registerVal7:setTopBottom(false, true, -7.500000, 0.000000)
	registerVal7:setRGB(0.970000, 0.930000, 0.070000)
	registerVal7.image:setImage(RegisterImage("uie_t7_arena_star_petit_white"))
	local function __FUNC_F7B_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_F7B_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "On"
	local function __FUNC_FCA_(arg0, arg2, arg3)
		return IsWeaponPrestigeLevelAtLeast(arg2, arg1, 2.000000)
	end

	registerVal11.condition = __FUNC_FCA_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1037_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "itemIndex", true, __FUNC_1037_)
	registerVal2:addElement(registerVal7)
	registerVal2.prestigeStar2 = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1153_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.prestigeStar1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.prestigeStar2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1153_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_13B1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponLevel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.weaponLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.levelLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.prestigeStar1:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.prestigeStar1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.prestigeStar2:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.prestigeStar2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13B1_
	registerVal8.Visible = registerVal9
	registerVal9 = {}
	local function __FUNC_16E9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setRGB(0.310000, 0.130000, 0.470000)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponLevel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.weaponLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.levelLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.prestigeStar1:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.prestigeStar1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.prestigeStar2:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.prestigeStar2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_16E9_
	registerVal8.DoubleWeaponXP = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "DoubleWeaponXP"
	local function __FUNC_1A2B_(arg0, arg2, arg3)
		local registerVal3 = IsCACGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsDoubleWeaponXP(arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1A2B_
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_1AB7_(arg0, arg2, arg3)
		return IsCACGunLevelExists(registerVal2, arg2, arg1)
	end

	registerVal12.condition = __FUNC_1AB7_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_1B15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1B15_)
	local function __FUNC_1C33_(arg0)
		arg0.prestigeStar1:close()
		arg0.prestigeStar2:close()
		arg0.weaponLevel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C33_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

