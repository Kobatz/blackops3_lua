-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_CenterReticleOuterCircleDots = registerVal1
function CoD.vhud_dart_CenterReticleOuterCircleDots.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_CenterReticleOuterCircleDots)
	registerVal2.id = "vhud_dart_CenterReticleOuterCircleDots"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 399.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 199.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 398.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 199.250000)
	registerVal3:setAlpha(0.100000)
	registerVal3:setZoom(-40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterringdotsrgb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterReticleOuterCircleDots0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 398.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 199.250000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticleouterringdotsrgb"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterReticleOuterCircleDots = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_716_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8A9_(arg0, arg1)
			local function __FUNC_A23_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A23_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterReticleOuterCircleDots0:setAlpha(0.100000)
		__FUNC_8A9_(registerVal3, {})
		local function __FUNC_BD5_(arg0, arg1)
			local function __FUNC_D4F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4F_)
		end

		registerVal4:completeAnimation()
		registerVal2.CenterReticleOuterCircleDots:setAlpha(0.500000)
		__FUNC_BD5_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_716_
	local function __FUNC_F01_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_F01_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

