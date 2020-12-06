-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SciFi_Headlights = registerVal1
function CoD.CallingCards_SciFi_Headlights.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_SciFi_Headlights)
	registerVal2.id = "CallingCards_SciFi_Headlights"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 309.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 309.410000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.880000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_scifi_headlights"))
	registerVal2:addElement(registerVal3)
	registerVal2.Headlights = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_53D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_653_(arg0, arg1)
			local function __FUNC_7CB_(arg0, arg1)
				local function __FUNC_943_(arg0, arg1)
					local function __FUNC_ABB_(arg0, arg1)
						local function __FUNC_C33_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1509.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_C33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C33_)
					end

					if arg1.interrupted then
						__FUNC_ABB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABB_)
				end

				if arg1.interrupted then
					__FUNC_943_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.540000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_943_)
			end

			if arg1.interrupted then
				__FUNC_7CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Headlights:setAlpha(0.600000)
		__FUNC_653_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_53D_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

