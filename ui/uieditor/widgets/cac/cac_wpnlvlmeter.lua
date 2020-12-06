-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_WpnLvlMeter = registerVal1
function CoD.cac_WpnLvlMeter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_WpnLvlMeter)
	registerVal2.id = "cac_WpnLvlMeter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterfill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal3:setShaderVector(0.000000, 0.650000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Meter = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterfill_2xp"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(0.000000, 0.650000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Meter2XP = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -3.310000, 180.000000)
	registerVal5:setTopBottom(true, false, 16.000000, 17.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.middleBar = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -117.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal6:setRGB(0.420000, 0.050000, 1.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.glow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_9E3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_9E3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_A42_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Meter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Meter2XP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_CD2_(arg0, arg1)
			local function __FUNC_E60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1420.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 180.000000, 297.000000)
				arg0:setTopBottom(true, false, 0.000000, 32.000000)
				arg0:setAlpha(0.800000)
				arg0:setXRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 180.000000, 297.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E60_)
		end

		registerVal6:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, -117.000000, 0.000000)
		registerVal2.glow:setTopBottom(true, false, -5.000000, 37.000000)
		registerVal2.glow:setAlpha(0.800000)
		registerVal2.glow:setXRot(0.000000)
		__FUNC_CD2_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_A42_
	registerVal7.DoubleWeaponXP = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "DoubleWeaponXP"
	local function __FUNC_10A2_(arg0, arg2, arg3)
		return IsDoubleWeaponXP(arg1)
	end

	registerVal10.condition = __FUNC_10A2_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

