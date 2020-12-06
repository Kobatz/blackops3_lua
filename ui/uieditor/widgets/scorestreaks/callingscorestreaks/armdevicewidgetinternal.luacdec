-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ArmDeviceWidgetInternal = registerVal1
function CoD.ArmDeviceWidgetInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArmDeviceWidgetInternal)
	registerVal2.id = "ArmDeviceWidgetInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 270.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 126.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -15.690000, 15.690000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_armdevice_activatebutton"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TestImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 7.330000, -7.330000)
	registerVal4:setTopBottom(true, true, -26.680000, 26.680000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_mp_armdevicebutton1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.HolographOverlay = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 7.330000, -7.330000)
	registerVal5:setTopBottom(true, true, -26.680000, 26.680000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_mp_armdevicebutton1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.HolographOverlay0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 21.330000, -29.330000)
	registerVal6:setTopBottom(true, true, -17.680000, -6.320000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_mp_armdevicebutton1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal6:setShaderVector(0.000000, 0.970000, 1.070000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 50.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.HolographOverlay00 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_941_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.TestImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HolographOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HolographOverlay0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HolographOverlay00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_941_
	local function __FUNC_B5E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_DE0_(arg0, arg1)
			local function __FUNC_F7E_(arg0, arg1)
				local function __FUNC_10F7_(arg0, arg1)
					local function __FUNC_126F_(arg0, arg1)
						local function __FUNC_13E7_(arg0, arg1)
							local function __FUNC_155F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 2069.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.700000)
								arg0:setScale(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_155F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155F_)
						end

						if arg1.interrupted then
							__FUNC_13E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E7_)
					end

					if arg1.interrupted then
						__FUNC_126F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126F_)
				end

				if arg1.interrupted then
					__FUNC_10F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F7_)
			end

			if arg1.interrupted then
				__FUNC_F7E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7E_)
		end

		registerVal4:completeAnimation()
		registerVal2.HolographOverlay:setAlpha(0.000000)
		registerVal2.HolographOverlay:setScale(0.100000)
		__FUNC_DE0_(registerVal4, {})
		local function __FUNC_1734_(arg0, arg1)
			local function __FUNC_18D2_(arg0, arg1)
				local function __FUNC_1A4B_(arg0, arg1)
					local function __FUNC_1BC3_(arg0, arg1)
						local function __FUNC_1D3B_(arg0, arg1)
							local function __FUNC_1EB3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 2069.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.310000)
								arg0:setScale(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1EB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.310000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB3_)
						end

						if arg1.interrupted then
							__FUNC_1D3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D3B_)
					end

					if arg1.interrupted then
						__FUNC_1BC3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC3_)
				end

				if arg1.interrupted then
					__FUNC_1A4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A4B_)
			end

			if arg1.interrupted then
				__FUNC_18D2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D2_)
		end

		registerVal5:completeAnimation()
		registerVal2.HolographOverlay0:setAlpha(0.000000)
		registerVal2.HolographOverlay0:setScale(0.100000)
		__FUNC_1734_(registerVal5, {})
		local function __FUNC_2088_(arg0, arg1)
			local function __FUNC_21E0_(arg0, arg1)
				local function __FUNC_235B_(arg0, arg1)
					local function __FUNC_24B0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2049.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 21.330000, -29.330000)
						arg0:setTopBottom(true, true, -33.680000, 29.000000)
						arg0:setAlpha(0.150000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_24B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B0_)
				end

				if arg1.interrupted then
					__FUNC_235B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235B_)
			end

			if arg1.interrupted then
				__FUNC_21E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E0_)
		end

		registerVal6:completeAnimation()
		registerVal2.HolographOverlay00:setLeftRight(true, true, 21.330000, -29.330000)
		registerVal2.HolographOverlay00:setTopBottom(true, true, -33.680000, 29.000000)
		registerVal2.HolographOverlay00:setAlpha(0.000000)
		__FUNC_2088_(registerVal6, {})
	end

	registerVal8.Activate = __FUNC_B5E_
	local function __FUNC_26D5_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_28D2_(arg0, arg1)
			local function __FUNC_2A4B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A4B_)
		end

		registerVal4:completeAnimation()
		registerVal2.HolographOverlay:setAlpha(0.700000)
		registerVal2.HolographOverlay:setScale(1.000000)
		__FUNC_28D2_(registerVal4, {})
		local function __FUNC_2C20_(arg0, arg1)
			local function __FUNC_2D9B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2D9B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9B_)
		end

		registerVal5:completeAnimation()
		registerVal2.HolographOverlay0:setAlpha(0.310000)
		registerVal2.HolographOverlay0:setScale(1.000000)
		__FUNC_2C20_(registerVal5, {})
		local function __FUNC_2F70_(arg0, arg1)
			local function __FUNC_30C8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_30C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C8_)
		end

		registerVal6:completeAnimation()
		registerVal2.HolographOverlay00:setAlpha(0.150000)
		__FUNC_2F70_(registerVal6, {})
	end

	registerVal8.Deactivate = __FUNC_26D5_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

