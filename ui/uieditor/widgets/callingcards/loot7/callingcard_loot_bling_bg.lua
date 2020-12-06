-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_loot_bling_bg = registerVal1
function CoD.CallingCard_loot_bling_bg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_loot_bling_bg)
	registerVal2.id = "CallingCard_loot_bling_bg"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, -120.000000, 240.000000)
	registerVal3:setImage(RegisterImage("uie_lt_callingcard_bling_bgscroll"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 71.000000, 551.000000)
	registerVal4:setTopBottom(true, false, -324.000000, 36.000000)
	registerVal4:setImage(RegisterImage("uie_lt_callingcard_bling_bgscroll"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_771_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_9C3_(arg0, arg1)
			local function __FUNC_B88_(arg0, arg1)
				local function __FUNC_D50_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -83.000000, 397.000000)
					arg0:setTopBottom(true, false, 88.000000, 448.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D50_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -83.000000, 397.000000)
				arg0:setTopBottom(true, false, 88.000000, 448.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D50_)
			end

			if arg1.interrupted then
				__FUNC_B88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -40.000000, 440.000000)
			arg0:setTopBottom(true, false, -25.000000, 335.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B88_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.Image0:setTopBottom(true, false, -120.000000, 240.000000)
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_9C3_(registerVal3, {})
		local function __FUNC_F75_(arg0, arg1)
			local function __FUNC_113C_(arg0, arg1)
				local function __FUNC_1304_(arg0, arg1)
					local function __FUNC_14EF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:setTopBottom(true, false, -120.000000, 240.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_14EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 53.330000, 533.330000)
					arg0:setTopBottom(true, false, -267.830000, 92.180000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EF_)
				end

				if arg1.interrupted then
					__FUNC_1304_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 79.000000, 559.000000)
				arg0:setTopBottom(true, false, -339.000000, 21.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1304_)
			end

			if arg1.interrupted then
				__FUNC_113C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 80.320000, 560.320000)
			arg0:setTopBottom(true, false, -343.620000, 16.380000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 85.000000, 565.000000)
		registerVal2.Image00:setTopBottom(true, false, -360.000000, 0.000000)
		registerVal2.Image00:setAlpha(0.000000)
		__FUNC_F75_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_771_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

