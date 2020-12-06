-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vuhd_siegebot_lockedWidget = registerVal1
function CoD.vuhd_siegebot_lockedWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vuhd_siegebot_lockedWidget)
	registerVal2.id = "vuhd_siegebot_lockedWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 67.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -33.500000, 33.500000)
	registerVal3:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setScale(0.700000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lockedicon"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.LockedIcon0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -33.500000, 33.500000)
	registerVal4:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal4:setScale(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_lockedicon"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LockedIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6FB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.LockedIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6FB_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_853_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_9BC_(arg0, arg1)
			local function __FUNC_B37_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B37_)
		end

		registerVal3:completeAnimation()
		registerVal2.LockedIcon0:setAlpha(0.000000)
		__FUNC_9BC_(registerVal3, {})
		local function __FUNC_CE9_(arg0, arg1)
			local function __FUNC_E63_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E63_)
		end

		registerVal4:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		__FUNC_CE9_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_853_
	registerVal5.Locked = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

