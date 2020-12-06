-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_KillerCloudFront = registerVal1
function CoD.CallingCards_KillerCloudFront.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_KillerCloudFront)
	registerVal2.id = "CallingCards_KillerCloudFront"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 388.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 169.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 387.550000)
	registerVal3:setTopBottom(true, false, 0.000000, 168.500000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_killer_cloud2"))
	registerVal2:addElement(registerVal3)
	registerVal2.cloud1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 158.000000, 545.550000)
	registerVal4:setTopBottom(true, false, 124.000000, 292.500000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_killer_cloud2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5CF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_81E_(arg0, arg1)
			local function __FUNC_9E4_(arg0, arg1)
				local function __FUNC_BCF_(arg0, arg1)
					local function __FUNC_DB7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 4950.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 387.550000)
						arg0:setTopBottom(true, false, 0.000000, 168.500000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_DB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 159.000000, 546.550000)
					arg0:setTopBottom(true, false, 125.500000, 294.000000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB7_)
				end

				if arg1.interrupted then
					__FUNC_BCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 166.000000, 553.550000)
				arg0:setTopBottom(true, false, 131.500000, 300.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCF_)
			end

			if arg1.interrupted then
				__FUNC_9E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 5039.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -158.000000, 229.550000)
			arg0:setTopBottom(true, false, -123.500000, 45.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E4_)
		end

		registerVal3:completeAnimation()
		registerVal2.cloud1:setLeftRight(true, false, 0.000000, 387.550000)
		registerVal2.cloud1:setTopBottom(true, false, 0.000000, 168.500000)
		registerVal2.cloud1:setAlpha(1.000000)
		__FUNC_81E_(registerVal3, {})
		local function __FUNC_FD4_(arg0, arg1)
			local function __FUNC_1197_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 5020.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -159.000000, 228.550000)
				arg0:setTopBottom(true, false, -125.000000, 43.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1197_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 5039.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 0.000000, 387.550000)
			arg0:setTopBottom(true, false, 0.000000, 168.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1197_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 158.000000, 545.550000)
		registerVal2.Image0:setTopBottom(true, false, 124.000000, 292.500000)
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_FD4_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5CF_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

