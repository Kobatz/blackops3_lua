-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SciFi_Steam = registerVal1
function CoD.CallingCards_SciFi_Steam.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_SciFi_Steam)
	registerVal2.id = "CallingCards_SciFi_Steam"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 134.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 353.810000)
	registerVal3:setTopBottom(true, false, 0.000000, 133.760000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_steam"))
	registerVal2:addElement(registerVal3)
	registerVal2.Steam = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 353.810000)
	registerVal4:setTopBottom(true, false, 0.000000, 133.760000)
	registerVal4:setScale(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_steam"))
	registerVal2:addElement(registerVal4)
	registerVal2.Steam0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5D5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_78A_(arg0, arg1)
			local function __FUNC_926_(arg0, arg1)
				local function __FUNC_AC2_(arg0, arg1)
					local function __FUNC_C3B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setScale(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C3B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3B_)
				end

				if arg1.interrupted then
					__FUNC_AC2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC2_)
			end

			if arg1.interrupted then
				__FUNC_926_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.010000)
			arg0:setScale(1.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_926_)
		end

		registerVal3:completeAnimation()
		registerVal2.Steam:setAlpha(1.000000)
		registerVal2.Steam:setScale(0.900000)
		__FUNC_78A_(registerVal3, {})
		local function __FUNC_E10_(arg0, arg1)
			local function __FUNC_F68_(arg0, arg1)
				local function __FUNC_10E3_(arg0, arg1)
					local function __FUNC_127E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_127E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1380.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.060000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127E_)
				end

				if arg1.interrupted then
					__FUNC_10E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.130000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E3_)
			end

			if arg1.interrupted then
				__FUNC_F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F68_)
		end

		registerVal4:completeAnimation()
		registerVal2.Steam0:setAlpha(0.000000)
		registerVal2.Steam0:setScale(0.900000)
		__FUNC_E10_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5D5_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

