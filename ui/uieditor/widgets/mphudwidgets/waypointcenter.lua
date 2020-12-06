-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WaypointCenter = registerVal1
function CoD.WaypointCenter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaypointCenter)
	registerVal2.id = "WaypointCenter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_neutral_new"))
	registerVal2:addElement(registerVal3)
	registerVal2.waypointCenterImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_56B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.waypointCenterImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_56B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6EF_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_888_(arg0, arg1)
			local function __FUNC_A69_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A69_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, 6.000000, -6.000000)
			arg0:setTopBottom(true, true, 6.000000, -6.000000)
			arg0:setAlpha(0.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A69_)
		end

		registerVal3:completeAnimation()
		registerVal2.waypointCenterImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setAlpha(1.000000)
		__FUNC_888_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_6EF_
	registerVal4.Pulsing = registerVal5
	registerVal5 = {}
	local function __FUNC_C7E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E18_(arg0, arg1)
			local function __FUNC_FF9_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FF9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, 6.000000, -6.000000)
			arg0:setTopBottom(true, true, 6.000000, -6.000000)
			arg0:setAlpha(0.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF9_)
		end

		registerVal3:completeAnimation()
		registerVal2.waypointCenterImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.waypointCenterImage:setAlpha(1.000000)
		__FUNC_E18_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_C7E_
	registerVal4.PulsingDeposit = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

