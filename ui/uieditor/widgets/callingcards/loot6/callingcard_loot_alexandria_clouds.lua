-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_loot_alexandria_clouds = registerVal1
function CoD.CallingCard_loot_alexandria_clouds.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_loot_alexandria_clouds)
	registerVal2.id = "CallingCard_loot_alexandria_clouds"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 318.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_7wonders_alexandria_cloud1"))
	registerVal2:addElement(registerVal3)
	registerVal2.cloud1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 174.000000, 318.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 53.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_7wonders_alexandria_cloud2"))
	registerVal2:addElement(registerVal4)
	registerVal2.cloud2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_63A_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_929_(arg0, arg1)
			local function __FUNC_B13_(arg0, arg1)
				local function __FUNC_CFB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1870.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 263.000000, 539.000000)
					arg0:setTopBottom(true, false, -6.000000, 102.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 212.360000, 488.360000)
				arg0:setTopBottom(true, false, -5.500000, 102.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFB_)
			end

			if arg1.interrupted then
				__FUNC_B13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 172.020000, 448.020000)
			arg0:setTopBottom(true, false, -5.100000, 102.900000)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B13_)
		end

		registerVal3:completeAnimation()
		registerVal2.cloud1:setLeftRight(true, false, 162.000000, 438.000000)
		registerVal2.cloud1:setTopBottom(true, false, -5.000000, 103.000000)
		registerVal2.cloud1:setAlpha(0.000000)
		__FUNC_929_(registerVal3, {})
		local function __FUNC_F1D_(arg0, arg1)
			local function __FUNC_10CF_(arg0, arg1)
				local function __FUNC_125C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 467.000000, 611.000000)
					arg0:setTopBottom(true, false, 0.000000, 48.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_125C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 4280.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 440.760000, 584.760000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125C_)
			end

			if arg1.interrupted then
				__FUNC_10CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 355.030000, 499.030000)
			arg0:setAlpha(0.560000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CF_)
		end

		registerVal4:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(true, false, 336.000000, 480.000000)
		registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_F1D_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_63A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

