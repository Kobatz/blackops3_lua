-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMPromotional.ZM_Promo_DoubleVialWidgetListItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_PromoListItem = registerVal1
function CoD.ZM_PromoListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_PromoListItem)
	registerVal2.id = "ZM_PromoListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 49.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -24.500000, 24.500000)
	registerVal3:setTopBottom(false, false, -24.500000, 24.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_zm_gg_backer"))
	registerVal2:addElement(registerVal3)
	registerVal2.FirstOneFree = registerVal3
	local registerVal4 = CoD.ZM_Promo_DoubleVialWidgetListItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.350000, 49.350000)
	registerVal4:setTopBottom(true, false, 0.000000, 49.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ZMPromoDoubleVialWidget = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -24.500000, 24.500000)
	registerVal5:setTopBottom(false, false, -24.500000, 24.500000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_weapon"))
	registerVal2:addElement(registerVal5)
	registerVal2.DoubleWeaponXP = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -24.500000, 24.500000)
	registerVal6:setTopBottom(false, false, -24.500000, 24.500000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp"))
	registerVal2:addElement(registerVal6)
	registerVal2.DoubleXP = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 8.100000, 40.900000)
	registerVal7:setTopBottom(true, false, 16.220000, 32.780000)
	registerVal7:setRGB(1.000000, 0.870000, 0.250000)
	registerVal7:setText(Engine.Localize(AppendLocalizeString("MENU_XP_CAPS", "2")))
	registerVal7:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Text = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D19_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FirstOneFree:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZMPromoDoubleVialWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleWeaponXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoubleXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D19_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_F85_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FirstOneFree:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZMPromoDoubleVialWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleWeaponXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoubleXP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_F85_
	registerVal8.DoubleXP = registerVal9
	registerVal9 = {}
	local function __FUNC_122A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FirstOneFree:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZMPromoDoubleVialWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleWeaponXP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoubleXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 0.870000, 0.250000)
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_122A_
	registerVal8.DoubleWeaponXP = registerVal9
	registerVal9 = {}
	local function __FUNC_14D8_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FirstOneFree:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZMPromoDoubleVialWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleWeaponXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoubleXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_14D8_
	registerVal8.DoubleVial = registerVal9
	registerVal9 = {}
	local function __FUNC_174A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FirstOneFree:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZMPromoDoubleVialWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleWeaponXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DoubleXP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_174A_
	registerVal8.FirstOneFree = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "DoubleXP"
	local function __FUNC_19BA_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "doublexp")
	end

	registerVal11.condition = __FUNC_19BA_
	local registerVal12 = {}
	registerVal12.stateName = "DoubleWeaponXP"
	local function __FUNC_1A41_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "doubleweaponxp")
	end

	registerVal12.condition = __FUNC_1A41_
	local registerVal13 = {}
	registerVal13.stateName = "DoubleVial"
	local function __FUNC_1ACF_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "doublevials")
	end

	registerVal13.condition = __FUNC_1ACF_
	local registerVal14 = {}
	registerVal14.stateName = "FirstOneFree"
	local function __FUNC_1B58_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "firstonefree")
	end

	registerVal14.condition = __FUNC_1B58_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_1BE5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "type"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "type", true, __FUNC_1BE5_)
	local function __FUNC_1CFE_(arg0)
		arg0.ZMPromoDoubleVialWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CFE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

