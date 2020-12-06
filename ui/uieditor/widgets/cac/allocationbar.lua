-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BE_(arg0)
	arg0:setState("DefaultState")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AllocationBar = registerVal2
local function __FUNC_21C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AllocationBar)
	registerVal2.id = "AllocationBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_allocationbarempty"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.dashBacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_allocationbarfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.dash = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -13.000000, 31.000000)
	registerVal5:setTopBottom(true, false, -15.770000, 45.230000)
	registerVal5:setRGB(0.840000, 0.910000, 1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_83F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.dashBacking:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_83F_
	local function __FUNC_996_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_BD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.dashBacking:setAlpha(0.500000)
		__FUNC_BD7_(registerVal3, {})
		local function __FUNC_D89_(arg0, arg1)
			local function __FUNC_F03_(arg0, arg1)
				local function __FUNC_1058_(arg0, arg1)
					local function __FUNC_11D3_(arg0, arg1)
						local function __FUNC_1328_(arg0, arg1)
							local function __FUNC_14A3_(arg0, arg1)
								local function __FUNC_15F8_(arg0, arg1)
									local function __FUNC_1773_(arg0, arg1)
										local function __FUNC_18C8_(arg0, arg1)
											local function __FUNC_1A43_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1A43_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.760000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A43_)
										end

										if arg1.interrupted then
											__FUNC_18C8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C8_)
									end

									if arg1.interrupted then
										__FUNC_1773_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1773_)
								end

								if arg1.interrupted then
									__FUNC_15F8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F8_)
							end

							if arg1.interrupted then
								__FUNC_14A3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A3_)
						end

						if arg1.interrupted then
							__FUNC_1328_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1328_)
					end

					if arg1.interrupted then
						__FUNC_11D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D3_)
				end

				if arg1.interrupted then
					__FUNC_1058_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1058_)
			end

			if arg1.interrupted then
				__FUNC_F03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F03_)
		end

		registerVal4:completeAnimation()
		registerVal2.dash:setAlpha(0.000000)
		__FUNC_D89_(registerVal4, {})
		local function __FUNC_1BF5_(arg0, arg1)
			local function __FUNC_1D6F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D6F_)
		end

		registerVal5:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1BF5_)
	end

	registerVal7.PointSpending = __FUNC_996_
	local function __FUNC_1F21_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.dashBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dash:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.PointSpent = __FUNC_1F21_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if __FUNC_1BE_ then
		__FUNC_1BE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AllocationBar.new = __FUNC_21C_
