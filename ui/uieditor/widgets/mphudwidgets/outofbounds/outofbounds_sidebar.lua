-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_sidebar = registerVal1
function CoD.outofbounds_sidebar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_sidebar)
	registerVal2.id = "outofbounds_sidebar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 263.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 263.250000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.810000)
	registerVal3:setRGB(0.730000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_outofbounds_sidebar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.RightBar = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5E1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6F0_(arg0, arg1)
			local function __FUNC_86B_(arg0, arg1)
				local function __FUNC_9E3_(arg0, arg1)
					local function __FUNC_B5B_(arg0, arg1)
						local function __FUNC_CD3_(arg0, arg1)
							local function __FUNC_E4B_(arg0, arg1)
								local function __FUNC_FC3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_FC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC3_)
							end

							if arg1.interrupted then
								__FUNC_E4B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4B_)
						end

						if arg1.interrupted then
							__FUNC_CD3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD3_)
					end

					if arg1.interrupted then
						__FUNC_B5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5B_)
				end

				if arg1.interrupted then
					__FUNC_9E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E3_)
			end

			if arg1.interrupted then
				__FUNC_86B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86B_)
		end

		registerVal3:completeAnimation()
		registerVal2.RightBar:setAlpha(1.000000)
		__FUNC_6F0_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5E1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1175_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_1175_
	registerVal4.IsOutOfBounds = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

