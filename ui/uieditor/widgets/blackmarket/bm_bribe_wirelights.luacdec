-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Bribe_WireLights = registerVal1
function CoD.BM_Bribe_WireLights.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Bribe_WireLights)
	registerVal2.id = "BM_Bribe_WireLights"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 431.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 431.200000)
	registerVal3:setTopBottom(true, false, 0.000000, 119.780000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe_wires_light"))
	registerVal2:addElement(registerVal3)
	registerVal2.BribeWiresLights = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -245.940000, -191.060000)
	registerVal4:setTopBottom(true, true, -344.820000, 411.820000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_lineanim_mask"))
	registerVal2:addElement(registerVal4)
	registerVal2.Mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_639_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8C4_(arg0, arg1)
			local function __FUNC_A1C_(arg0, arg1)
				local function __FUNC_B97_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B97_)
			end

			if arg1.interrupted then
				__FUNC_A1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1C_)
		end

		registerVal3:completeAnimation()
		registerVal2.BribeWiresLights:setAlpha(1.000000)
		__FUNC_8C4_(registerVal3, {})
		local function __FUNC_D49_(arg0, arg1)
			local function __FUNC_ED8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 6029.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 194.060000, 248.940000)
				arg0:setTopBottom(true, true, -344.820000, 411.820000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_ED8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1970.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, 194.060000, 248.940000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED8_)
		end

		registerVal4:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(true, true, -245.940000, -191.060000)
		registerVal4:setTopBottom(true, true, -344.820000, 411.820000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_D49_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_639_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

