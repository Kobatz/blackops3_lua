-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroWeapon = registerVal1
function CoD.AmmoWidget_HeroWeapon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroWeapon)
	registerVal2.id = "AmmoWidget_HeroWeapon"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 88.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal3:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_6DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HeroWeapon", "image", __FUNC_6DD_)
	registerVal2:addElement(registerVal3)
	registerVal2.Unavailable = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal4:setTopBottom(false, false, -44.000000, 44.000000)
	local function __FUNC_790_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HeroWeapon", "imageAvailable", __FUNC_790_)
	registerVal2:addElement(registerVal4)
	registerVal2.Available = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_844_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Unavailable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Available:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_844_
	local function __FUNC_9A3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.WheelHide = __FUNC_9A3_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A02_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Unavailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Available:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A02_
	registerVal5.Ready = registerVal6
	registerVal6 = {}
	local function __FUNC_B5F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Unavailable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Available:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B5F_
	registerVal5.Charge = registerVal6
	registerVal6 = {}
	local function __FUNC_CBB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Unavailable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Available:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CBB_
	registerVal5.InUse = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_E17_(arg0)
		arg0.Unavailable:close()
		arg0.Available:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E17_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

