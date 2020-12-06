-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.OutcomeFactionIconItem = registerVal1
function CoD.OutcomeFactionIconItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OutcomeFactionIconItem)
	registerVal2.id = "OutcomeFactionIconItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 140.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 6.000000, -7.460000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.560000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_faction_icon_faction1"))
	registerVal2:addElement(registerVal3)
	registerVal2.WinningTeamFactionIcon0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 6.000000, -7.460000)
	registerVal4:setTopBottom(true, true, 0.000000, -0.560000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_faction_icon_faction1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.WinningTeamFactionIcon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 152.460000)
	registerVal5:setTopBottom(true, false, 2.340000, 139.560000)
	registerVal5:setAlpha(0.150000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_menu_startflow_hexlarge"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 10.500000, 46.500000)
	registerVal6:setTopBottom(false, false, 60.220000, 64.220000)
	registerVal6:setAlpha(0.730000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel20100 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 10.500000, 46.500000)
	registerVal7:setTopBottom(false, false, -61.780000, -57.780000)
	registerVal7:setAlpha(0.730000)
	registerVal7:setYRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel201000 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 105.500000, 141.500000)
	registerVal8:setTopBottom(false, false, 60.220000, 64.220000)
	registerVal8:setAlpha(0.730000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel201001 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 105.500000, 141.500000)
	registerVal9:setTopBottom(false, false, -61.780000, -57.780000)
	registerVal9:setAlpha(0.730000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Pixel2010000 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_BA4_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_E9D_(arg0, arg1)
			local function __FUNC_FF4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF4_)
		end

		registerVal3:completeAnimation()
		registerVal2.WinningTeamFactionIcon0:setAlpha(0.000000)
		__FUNC_E9D_(registerVal3, {})
		local function __FUNC_11A9_(arg0, arg1)
			local function __FUNC_1300_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1300_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1300_)
		end

		registerVal4:completeAnimation()
		registerVal2.WinningTeamFactionIcon:setAlpha(0.000000)
		__FUNC_11A9_(registerVal4, {})
		local function __FUNC_14B5_(arg0, arg1)
			local function __FUNC_160C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.150000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_160C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_14B5_(registerVal5, {})
		local function __FUNC_17C1_(arg0, arg1)
			local function __FUNC_1918_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1918_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1918_)
		end

		registerVal6:completeAnimation()
		registerVal2.Pixel20100:setAlpha(0.000000)
		__FUNC_17C1_(registerVal6, {})
		local function __FUNC_1ACD_(arg0, arg1)
			local function __FUNC_1C24_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C24_)
		end

		registerVal7:completeAnimation()
		registerVal2.Pixel201000:setAlpha(0.000000)
		__FUNC_1ACD_(registerVal7, {})
		local function __FUNC_1DD9_(arg0, arg1)
			local function __FUNC_1F30_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F30_)
		end

		registerVal8:completeAnimation()
		registerVal2.Pixel201001:setAlpha(0.000000)
		__FUNC_1DD9_(registerVal8, {})
		local function __FUNC_20E5_(arg0, arg1)
			local function __FUNC_223C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_223C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_223C_)
		end

		registerVal9:completeAnimation()
		registerVal2.Pixel2010000:setAlpha(0.000000)
		__FUNC_20E5_(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_BA4_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_23F1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WinningTeamFactionIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WinningTeamFactionIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Pixel20100:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Pixel201000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Pixel201001:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Pixel2010000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_23F1_
	registerVal10.Killcam = registerVal11
	registerVal11 = {}
	local function __FUNC_271B_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2A11_(arg0, arg1)
			local function __FUNC_2B68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B68_)
		end

		registerVal3:completeAnimation()
		registerVal2.WinningTeamFactionIcon0:setAlpha(0.000000)
		__FUNC_2A11_(registerVal3, {})
		local function __FUNC_2D1D_(arg0, arg1)
			local function __FUNC_2E74_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2E74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E74_)
		end

		registerVal4:completeAnimation()
		registerVal2.WinningTeamFactionIcon:setAlpha(0.000000)
		__FUNC_2D1D_(registerVal4, {})
		local function __FUNC_3029_(arg0, arg1)
			local function __FUNC_3180_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.150000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3180_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3180_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_3029_(registerVal5, {})
		local function __FUNC_3335_(arg0, arg1)
			local function __FUNC_348C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_348C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_348C_)
		end

		registerVal6:completeAnimation()
		registerVal2.Pixel20100:setAlpha(0.000000)
		__FUNC_3335_(registerVal6, {})
		local function __FUNC_3641_(arg0, arg1)
			local function __FUNC_3798_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3798_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3798_)
		end

		registerVal7:completeAnimation()
		registerVal2.Pixel201000:setAlpha(0.000000)
		__FUNC_3641_(registerVal7, {})
		local function __FUNC_394D_(arg0, arg1)
			local function __FUNC_3AA4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3AA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AA4_)
		end

		registerVal8:completeAnimation()
		registerVal2.Pixel201001:setAlpha(0.000000)
		__FUNC_394D_(registerVal8, {})
		local function __FUNC_3C59_(arg0, arg1)
			local function __FUNC_3DB0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.730000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3DB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DB0_)
		end

		registerVal9:completeAnimation()
		registerVal2.Pixel2010000:setAlpha(0.000000)
		__FUNC_3C59_(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_271B_
	registerVal10.FinalKillcam = registerVal11
	registerVal2.clipsPerState = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

