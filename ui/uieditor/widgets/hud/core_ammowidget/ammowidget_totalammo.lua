-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_TotalAmmo = registerVal1
function CoD.AmmoWidget_TotalAmmo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_TotalAmmo)
	registerVal2.id = "AmmoWidget_TotalAmmo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -23.000000, 23.000000)
	registerVal3:setTopBottom(false, true, -30.000000, 1.000000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(-1.000000)
	local function __FUNC_7F0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoStock", __FUNC_7F0_)
	registerVal2:addElement(registerVal3)
	registerVal2.TotalAmmoLbl = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal4:setTopBottom(false, true, -30.000000, 1.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("0"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setLetterSpacing(-0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.TotalAmmoFakeLbl = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8AA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8AA_
	local function __FUNC_A48_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_C6F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -23.000000, 23.000000)
			arg0:setTopBottom(false, true, -30.000000, 1.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setLeftRight(false, false, -23.000000, 23.000000)
		registerVal2.TotalAmmoLbl:setTopBottom(false, true, 0.000000, 31.000000)
		registerVal2.TotalAmmoLbl:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TotalAmmoLbl:setAlpha(0.800000)
		__FUNC_C6F_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.AmmoPickup = __FUNC_A48_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_EB5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TotalAmmoLbl:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.TotalAmmoLbl:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TotalAmmoFakeLbl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EB5_
	registerVal5.NoAmmo = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_104F_(arg0)
		PlayClip(registerVal2, "AmmoPickup", arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "hudItems.ammoPickedUp", __FUNC_104F_)
	local function __FUNC_10B6_(arg0)
		arg0.TotalAmmoLbl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10B6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

