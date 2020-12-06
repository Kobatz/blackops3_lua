-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AmmoMeterColor = registerVal1
function CoD.AmmoWidget_AmmoMeterColor.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AmmoMeterColor)
	registerVal2.id = "AmmoWidget_AmmoMeterColor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 5.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.340000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ammoline"))
	registerVal2:addElement(registerVal3)
	registerVal2.ClipMeter = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5D1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ClipMeter:setRGB(0.490000, 0.490000, 0.490000)
		registerVal2.ClipMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5D1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_70A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ClipMeter:setRGB(1.000000, 0.850000, 0.000000)
		registerVal2.ClipMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_70A_
	registerVal4.HeroWeapon = registerVal5
	registerVal5 = {}
	local function __FUNC_842_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_98F_(arg0, arg1)
			local function __FUNC_B07_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B07_)
		end

		registerVal3:completeAnimation()
		registerVal2.ClipMeter:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.ClipMeter:setAlpha(0.500000)
		__FUNC_98F_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_842_
	registerVal4.NoAmmo = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

