-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_directionalarrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_damage_bottom = registerVal1
function CoD.vhud_siegebot_damage_bottom.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_damage_bottom)
	registerVal2.id = "vhud_siegebot_damage_bottom"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_circleouter"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.bottom = registerVal3
	local registerVal4 = CoD.vhud_siegebot_directionalarrow.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudsiegebotdirectionalarrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 106.000000)
	registerVal5:setAlpha(0.750000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_iconbottom"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.bottom0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A2D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.bottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_A2D_
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.StartUp = __FUNC_B25_
	local function __FUNC_B86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Zoom = __FUNC_B86_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_BE6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_BE6_
	registerVal6.EMP = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "EMP"
	local function __FUNC_C46_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal9.condition = __FUNC_C46_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_D13_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_D13_)
	local function __FUNC_E99_(arg0)
		arg0.vhudsiegebotdirectionalarrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E99_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

