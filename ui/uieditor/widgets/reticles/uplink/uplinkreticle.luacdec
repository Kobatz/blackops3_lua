-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BE_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "ballGametype.passOption")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.uplinkReticle = registerVal2
local function __FUNC_27D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1BE_ then
		__FUNC_1BE_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.uplinkReticle)
	registerVal2.id = "uplinkReticle"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 130.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 130.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -65.180000, 65.180000)
	registerVal3:setTopBottom(false, false, -65.180000, 65.180000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setScale(0.700000)
	registerVal3:setImage(RegisterImage("uie_reticle_uplink"))
	registerVal2:addElement(registerVal3)
	registerVal2.reticleNew = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_75B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.reticleNew:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_75B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_85B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.reticleNew:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_85B_
	registerVal4.PassTarget = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "PassTarget"
	local function __FUNC_9EC_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "ballGametype.passOption", 1.000000)
	end

	registerVal7.condition = __FUNC_9EC_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "ballGametype.passOption")
	local function __FUNC_A73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ballGametype.passOption"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A73_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.uplinkReticle.new = __FUNC_27D_
