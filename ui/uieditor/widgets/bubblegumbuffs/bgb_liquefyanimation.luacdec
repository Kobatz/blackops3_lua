-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BGB_LiquefyAnimation = registerVal1
function CoD.BGB_LiquefyAnimation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BGB_LiquefyAnimation)
	registerVal2.id = "BGB_LiquefyAnimation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -369.000000, 143.000000)
	registerVal3:setTopBottom(true, false, 143.840000, 655.840000)
	registerVal3:setRGB(0.710000, 0.000000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_base_graphic_zoom_dlc3"))
	registerVal2:addElement(registerVal3)
	registerVal2.splash2 = registerVal3
	local registerVal4 = CoD.ZmFx_Spark2.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -101.000000, 90.340000)
	registerVal4:setTopBottom(true, false, -78.000000, 143.840000)
	registerVal4:setRGB(0.670000, 0.040000, 1.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal4.Image0:setShaderVector(1.000000, 0.000000, 0.400000, 0.000000, 0.000000)
	registerVal4.Image00:setShaderVector(1.000000, 0.000000, -0.200000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ZmFxSpark20 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -82.670000, 82.670000)
	registerVal5:setTopBottom(true, false, -27.510000, 137.840000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal5)
	registerVal2.Icon1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 417.330000, 582.670000)
	registerVal6:setTopBottom(true, false, -27.510000, 137.840000)
	registerVal6:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal6)
	registerVal2.Icon2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 154.330000, 319.670000)
	registerVal7:setTopBottom(true, false, -27.510000, 137.840000)
	registerVal7:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal7)
	registerVal2.Icon3 = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, false, 57.140000, 105.140000)
	registerVal8:setTopBottom(true, false, 562.440000, 610.440000)
	registerVal2:addElement(registerVal8)
	registerVal2.Audio = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A9B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.splash2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ZmFxSpark20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Icon1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Icon2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Icon3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_A9B_
	local function __FUNC_CE9_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_127B_(arg0, arg1)
			local function __FUNC_13F3_(arg0, arg1)
				local function __FUNC_158E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -6.000000, 506.000000)
					arg0:setTopBottom(true, false, -206.000000, 306.000000)
					arg0:setRGB(0.710000, 0.000000, 1.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_158E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158E_)
			end

			if arg1.interrupted then
				__FUNC_13F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.030000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F3_)
		end

		registerVal3:completeAnimation()
		registerVal2.splash2:setLeftRight(true, false, -6.000000, 506.000000)
		registerVal2.splash2:setTopBottom(true, false, -206.000000, 306.000000)
		registerVal2.splash2:setRGB(0.710000, 0.000000, 1.000000)
		registerVal2.splash2:setAlpha(0.000000)
		registerVal2.splash2:setScale(0.500000)
		__FUNC_127B_(registerVal3, {})
		local function __FUNC_1802_(arg0, arg1)
			local function __FUNC_197B_(arg0, arg1)
				local function __FUNC_1B03_(arg0, arg1)
					local function __FUNC_1C58_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1480.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -71.000000, 65.340000)
						arg0:setTopBottom(true, false, -63.000000, 119.840000)
						arg0:setRGB(0.000000, 0.000000, 0.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1C58_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C58_)
				end

				if arg1.interrupted then
					__FUNC_1B03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.670000, 0.040000, 1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B03_)
			end

			if arg1.interrupted then
				__FUNC_197B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197B_)
		end

		registerVal4:completeAnimation()
		registerVal2.ZmFxSpark20:setLeftRight(false, false, -71.000000, 65.340000)
		registerVal2.ZmFxSpark20:setTopBottom(true, false, -63.000000, 119.840000)
		registerVal2.ZmFxSpark20:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.ZmFxSpark20:setAlpha(0.000000)
		__FUNC_1802_(registerVal4, {})
		local function __FUNC_1EA6_(arg0, arg1)
			local function __FUNC_2057_(arg0, arg1)
				local function __FUNC_21E4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 2400.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 32.330000, 197.670000)
					arg0:setTopBottom(true, false, -27.510000, 137.840000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_21E4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 154.330000, 319.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E4_)
			end

			if arg1.interrupted then
				__FUNC_2057_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 113.660000, 279.000000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2057_)
		end

		registerVal5:completeAnimation()
		registerVal2.Icon1:setLeftRight(true, false, 32.330000, 197.670000)
		registerVal2.Icon1:setTopBottom(true, false, -27.510000, 137.840000)
		registerVal2.Icon1:setAlpha(1.000000)
		__FUNC_1EA6_(registerVal5, {})
		local function __FUNC_2409_(arg0, arg1)
			local function __FUNC_25BB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2599.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 319.670000, 485.020000)
				arg0:setTopBottom(true, false, -27.510000, 137.840000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_25BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 154.330000, 319.670000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25BB_)
		end

		registerVal6:completeAnimation()
		registerVal2.Icon2:setLeftRight(true, false, 319.670000, 485.020000)
		registerVal2.Icon2:setTopBottom(true, false, -27.510000, 137.840000)
		registerVal2.Icon2:setAlpha(1.000000)
		__FUNC_2409_(registerVal6, {})
		local function __FUNC_27DD_(arg0, arg1)
			local function __FUNC_2934_(arg0, arg1)
				local function __FUNC_2AD2_(arg0, arg1)
					local function __FUNC_2C6E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2C6E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 2259.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.020000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6E_)
				end

				if arg1.interrupted then
					__FUNC_2AD2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD2_)
			end

			if arg1.interrupted then
				__FUNC_2934_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2934_)
		end

		registerVal7:completeAnimation()
		registerVal2.Icon3:setAlpha(0.000000)
		registerVal2.Icon3:setScale(1.000000)
		__FUNC_27DD_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Audio:setPlaySoundDirect(true)
		registerVal2.Audio:playSound("uin_cookbook_distill", arg1)
		registerVal2.clipFinished(registerVal8, {})
		registerVal2.nextClip = "StartLiquefying"
	end

	registerVal10.StartLiquefying = __FUNC_CE9_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_2E44_(arg0)
		arg0.ZmFxSpark20:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2E44_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

