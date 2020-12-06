-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_CenterInnerRingElement = registerVal1
function CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_CenterInnerRingElement)
	registerVal2.id = "VehicleGround_CenterInnerRingElement"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 69.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -32.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelement"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.InnerRingElement = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal4:setTopBottom(false, true, -8.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_centerinnerringelementpix"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6F4_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_802_(arg0, arg1)
			local function __FUNC_97B_(arg0, arg1)
				local function __FUNC_AD0_(arg0, arg1)
					local function __FUNC_C4B_(arg0, arg1)
						local function __FUNC_DA0_(arg0, arg1)
							local function __FUNC_F1B_(arg0, arg1)
								local function __FUNC_1070_(arg0, arg1)
									local function __FUNC_11EB_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_11EB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EB_)
								end

								if arg1.interrupted then
									__FUNC_1070_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1070_)
							end

							if arg1.interrupted then
								__FUNC_F1B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1B_)
						end

						if arg1.interrupted then
							__FUNC_DA0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA0_)
					end

					if arg1.interrupted then
						__FUNC_C4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4B_)
				end

				if arg1.interrupted then
					__FUNC_AD0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD0_)
			end

			if arg1.interrupted then
				__FUNC_97B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_802_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6F4_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

