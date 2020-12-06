-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_GoldFrame = registerVal1
function CoD.CallingCards_GoldFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_GoldFrame)
	registerVal2.id = "CallingCards_GoldFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_goldframe"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.frame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setRGB(1.000000, 0.670000, 0.320000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_goldframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal4:setShaderVector(0.000000, 0.130000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.frameglint = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 264.330000, 254.670000)
	registerVal5:setTopBottom(true, false, -204.700000, 209.000000)
	registerVal5:setRGB(1.000000, 0.790000, 0.350000)
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 12.670000, -3.000000)
	registerVal6:setTopBottom(true, false, 107.300000, 123.000000)
	registerVal6:setRGB(1.000000, 0.790000, 0.350000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.GlowSmallCorner = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 484.000000, 468.330000)
	registerVal7:setTopBottom(true, false, -3.000000, 12.700000)
	registerVal7:setRGB(1.000000, 0.790000, 0.350000)
	registerVal7:setZRot(90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.GlowSmallCorner2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 329.000000, 313.330000)
	registerVal8:setTopBottom(true, false, -5.700000, 10.000000)
	registerVal8:setRGB(1.000000, 0.790000, 0.350000)
	registerVal8:setZRot(90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.GlowSmallCenter3 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 484.000000, 468.330000)
	registerVal9:setTopBottom(true, false, 107.300000, 123.000000)
	registerVal9:setRGB(1.000000, 0.790000, 0.350000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(90.000000)
	registerVal9:setScale(0.200000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GlowSmallCorner4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 12.670000, -3.000000)
	registerVal10:setTopBottom(true, false, -3.000000, 12.700000)
	registerVal10:setRGB(1.000000, 0.790000, 0.350000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(90.000000)
	registerVal10:setScale(0.500000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.GlowSmallCorner5 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_D03_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.frame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_13FC_(arg0, arg1)
			local function __FUNC_1593_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
				arg0:setShaderVector(0.000000, 1.200000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1593_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.200000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1593_)
		end

		registerVal4:completeAnimation()
		registerVal2.frameglint:setAlpha(0.400000)
		registerVal2.frameglint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.frameglint:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_13FC_(registerVal4, {})
		local function __FUNC_181E_(arg0, arg1)
			local function __FUNC_1A07_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 420.330000, 409.670000)
				arg0:setTopBottom(true, false, -54.700000, 60.000000)
				arg0:setRGB(1.000000, 0.600000, 0.250000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 299.830000, 289.670000)
			arg0:setTopBottom(true, false, -129.700000, 134.500000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A07_)
		end

		registerVal5:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(true, false, 179.330000, 169.670000)
		registerVal5:setTopBottom(true, false, -204.700000, 209.000000)
		registerVal5:setRGB(1.000000, 0.600000, 0.250000)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_181E_)
		local function __FUNC_1C5C_(arg0, arg1)
			local function __FUNC_1DFA_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1DFA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(2.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DFA_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowSmallCorner:setAlpha(0.000000)
		registerVal2.GlowSmallCorner:setScale(0.500000)
		__FUNC_1C5C_(registerVal6, {})
		local function __FUNC_1FD0_(arg0, arg1)
			local function __FUNC_2128_(arg0, arg1)
				local function __FUNC_22C6_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_22C6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C6_)
			end

			if arg1.interrupted then
				__FUNC_2128_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2128_)
		end

		registerVal7:completeAnimation()
		registerVal2.GlowSmallCorner2:setAlpha(0.000000)
		registerVal2.GlowSmallCorner2:setScale(0.500000)
		__FUNC_1FD0_(registerVal7, {})
		local function __FUNC_249C_(arg0, arg1)
			local function __FUNC_25F4_(arg0, arg1)
				local function __FUNC_2792_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(0.200000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2792_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2792_)
			end

			if arg1.interrupted then
				__FUNC_25F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 970.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25F4_)
		end

		registerVal8:completeAnimation()
		registerVal2.GlowSmallCenter3:setAlpha(0.000000)
		registerVal2.GlowSmallCenter3:setScale(0.200000)
		__FUNC_249C_(registerVal8, {})
		local function __FUNC_2968_(arg0, arg1)
			local function __FUNC_2AC0_(arg0, arg1)
				local function __FUNC_2C5E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 484.000000, 468.330000)
					arg0:setTopBottom(true, false, 107.300000, 123.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2C5E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C5E_)
			end

			if arg1.interrupted then
				__FUNC_2AC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC0_)
		end

		registerVal9:completeAnimation()
		registerVal2.GlowSmallCorner4:setLeftRight(true, false, 484.000000, 468.330000)
		registerVal2.GlowSmallCorner4:setTopBottom(true, false, 107.300000, 123.000000)
		registerVal2.GlowSmallCorner4:setAlpha(0.000000)
		registerVal2.GlowSmallCorner4:setScale(0.500000)
		__FUNC_2968_(registerVal9, {})
		local function __FUNC_2EA4_(arg0, arg1)
			local function __FUNC_2FFC_(arg0, arg1)
				local function __FUNC_319A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_319A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_319A_)
			end

			if arg1.interrupted then
				__FUNC_2FFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2579.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FFC_)
		end

		registerVal10:completeAnimation()
		registerVal2.GlowSmallCorner5:setAlpha(0.000000)
		registerVal2.GlowSmallCorner5:setScale(0.500000)
		__FUNC_2EA4_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_D03_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

