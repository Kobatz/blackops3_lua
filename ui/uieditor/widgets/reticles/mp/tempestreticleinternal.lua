-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TempestReticleInternal = registerVal1
function CoD.TempestReticleInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TempestReticleInternal)
	registerVal2.id = "TempestReticleInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal3:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal3:setAlpha(0.700000)
	registerVal3:setScale(1.300000)
	registerVal3:setImage(RegisterImage("uie_tempest_center_dot"))
	registerVal2:addElement(registerVal3)
	registerVal2.centerDot = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal4:setTopBottom(false, false, -8.500000, 39.500000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setImage(RegisterImage("uie_tempest_reticle_line"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ReticleLineBottom = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal5:setTopBottom(false, false, -38.000000, 9.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setImage(RegisterImage("uie_tempest_reticle_line"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ReticleLineTop = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -2.000000, 36.000000)
	registerVal6:setTopBottom(false, false, -7.000000, 7.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setImage(RegisterImage("uie_tempest_reticle_line_side"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.ReticleLineRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -36.000000, 2.000000)
	registerVal7:setTopBottom(false, false, -7.000000, 7.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setImage(RegisterImage("uie_tempest_reticle_line_side"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.ReticleLineLeft = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 11.000000, 23.000000)
	registerVal8:setTopBottom(false, false, -33.500000, 2.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZRot(45.000000)
	registerVal8:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.333333, 0.111111, 0.770000, 0.050000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.OuterLineAngleCenter = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 0.000000, 12.000000)
	registerVal9:setTopBottom(false, false, -32.000000, -25.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.333333, 0.571429, 0.800000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.OuterLineRightTop = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -22.000000, -10.000000)
	registerVal10:setTopBottom(false, false, -33.500000, 2.500000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(-45.000000)
	registerVal10:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.333333, 0.111111, 0.770000, 0.050000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.OuterLineAngleCenter0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -11.000000, 1.000000)
	registerVal11:setTopBottom(false, false, -32.000000, -25.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal11:setShaderVector(0.000000, 0.333333, 0.571429, 0.800000, 0.000000)
	registerVal11:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.OuterLineRightTopLeft2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 11.000000, 23.000000)
	registerVal12:setTopBottom(false, false, -3.000000, 33.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZRot(-45.000000)
	registerVal12:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal12:setShaderVector(0.000000, 0.333333, 0.111111, 0.770000, 0.050000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.OuterLineAngleCenter1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 0.000000, 12.000000)
	registerVal13:setTopBottom(false, false, 25.000000, 32.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal13:setShaderVector(0.000000, 0.333333, 0.571429, 0.800000, 0.000000)
	registerVal13:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.OuterLineRightTop1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -22.000000, -10.000000)
	registerVal14:setTopBottom(false, false, -3.000000, 33.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZRot(45.000000)
	registerVal14:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal14:setShaderVector(0.000000, 0.333333, 0.111111, 0.770000, 0.050000)
	registerVal14:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.OuterLineAngleCenterLL = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -11.000000, 1.000000)
	registerVal15:setTopBottom(false, false, 25.000000, 32.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_tempest_reticle_charge_top_line"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal15:setShaderVector(0.000000, 0.333333, 0.571429, 0.800000, 0.000000)
	registerVal15:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.OuterLineLeft2 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, 27.000000, 33.000000)
	registerVal16:setTopBottom(false, false, 0.500000, 9.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_tempest_reticle_charge_top_line_side"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal16:setShaderVector(0.000000, 0.666667, 0.470588, 0.040000, 0.000000)
	registerVal16:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.Image0 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, 27.000000, 33.000000)
	registerVal17:setTopBottom(false, false, -8.500000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_tempest_reticle_charge_top_line_side"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal17:setShaderVector(0.000000, 0.666667, 0.470588, 0.040000, 0.000000)
	registerVal17:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.Image1 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -32.000000, -26.000000)
	registerVal18:setTopBottom(false, false, 0.250000, 8.750000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_tempest_reticle_charge_top_line_side"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal18:setShaderVector(0.000000, 0.666667, 0.470588, 0.040000, 0.000000)
	registerVal18:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.Image2 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, -32.000000, -26.000000)
	registerVal19:setTopBottom(false, false, -8.500000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_tempest_reticle_charge_top_line_side"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal19:setShaderVector(0.000000, 0.666667, 0.470588, 0.040000, 0.000000)
	registerVal19:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.Image3 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_175E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.ReticleLineBottom:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineBottom:setTopBottom(false, false, -8.000000, 40.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ReticleLineTop:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineTop:setTopBottom(false, false, -39.000000, 8.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReticleLineRight:setLeftRight(false, false, -2.000000, 36.000000)
		registerVal2.ReticleLineRight:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ReticleLineLeft:setLeftRight(false, false, -36.000000, 2.000000)
		registerVal2.ReticleLineLeft:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal21.DefaultClip = __FUNC_175E_
	local function __FUNC_1A9D_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.centerDot:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.centerDot:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2814_(arg0, arg1)
			local function __FUNC_29A4_(arg0, arg1)
				local function __FUNC_2AFC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -6.000000, 6.000000)
					arg0:setTopBottom(false, false, 25.000000, 73.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2AFC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AFC_)
			end

			if arg1.interrupted then
				__FUNC_29A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -2.000000, 2.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A4_)
		end

		registerVal4:completeAnimation()
		registerVal2.ReticleLineBottom:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineBottom:setTopBottom(false, false, -8.000000, 40.000000)
		__FUNC_2814_(registerVal4, {})
		local function __FUNC_2CFC_(arg0, arg1)
			local function __FUNC_2E8C_(arg0, arg1)
				local function __FUNC_2FE4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -6.000000, 6.000000)
					arg0:setTopBottom(false, false, -72.000000, -25.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2FE4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE4_)
			end

			if arg1.interrupted then
				__FUNC_2E8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -3.000000, 3.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8C_)
		end

		registerVal5:completeAnimation()
		registerVal2.ReticleLineTop:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineTop:setTopBottom(false, false, -39.000000, 8.000000)
		__FUNC_2CFC_(registerVal5, {})
		local function __FUNC_31E4_(arg0, arg1)
			local function __FUNC_3374_(arg0, arg1)
				local function __FUNC_34CC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, 30.000000, 68.000000)
					arg0:setTopBottom(false, false, -7.000000, 7.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_34CC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34CC_)
			end

			if arg1.interrupted then
				__FUNC_3374_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -2.000000, 2.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3374_)
		end

		registerVal6:completeAnimation()
		registerVal2.ReticleLineRight:setLeftRight(false, false, -2.000000, 36.000000)
		registerVal2.ReticleLineRight:setTopBottom(false, false, -7.000000, 7.000000)
		__FUNC_31E4_(registerVal6, {})
		local function __FUNC_36CC_(arg0, arg1)
			local function __FUNC_385C_(arg0, arg1)
				local function __FUNC_39EC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, false, CoD.TweenType.Back)
					end
					arg0:setLeftRight(false, false, -67.000000, -29.000000)
					arg0:setTopBottom(false, false, -7.000000, 7.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_39EC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -2.000000, 2.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39EC_)
			end

			if arg1.interrupted then
				__FUNC_385C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -2.000000, 2.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_385C_)
		end

		registerVal7:completeAnimation()
		registerVal2.ReticleLineLeft:setLeftRight(false, false, -36.000000, 2.000000)
		registerVal2.ReticleLineLeft:setTopBottom(false, false, -7.000000, 7.000000)
		__FUNC_36CC_(registerVal7, {})
		local function __FUNC_3BEC_(arg0, arg1)
			local function __FUNC_3D67_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 11.000000, 23.000000)
				arg0:setTopBottom(false, false, -33.500000, 2.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3D67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D67_)
		end

		registerVal8:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setLeftRight(false, false, 22.000000, 34.000000)
		registerVal8:setTopBottom(false, false, -5.000000, -5.250000)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_3BEC_)
		local function __FUNC_3F89_(arg0, arg1)
			local function __FUNC_4136_(arg0, arg1)
				local function __FUNC_42E7_(arg0, arg1)
					local function __FUNC_4474_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 0.000000, 12.000000)
						arg0:setTopBottom(false, false, -32.000000, -25.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4474_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, -32.000000, -25.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4474_)
				end

				if arg1.interrupted then
					__FUNC_42E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -26.170000, -25.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42E7_)
			end

			if arg1.interrupted then
				__FUNC_4136_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -25.000000, -25.000000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4136_)
		end

		registerVal9:completeAnimation()
		registerVal2.OuterLineRightTop:setLeftRight(false, false, 0.000000, 12.000000)
		registerVal2.OuterLineRightTop:setTopBottom(false, false, -32.000000, -32.000000)
		registerVal2.OuterLineRightTop:setAlpha(1.000000)
		__FUNC_3F89_(registerVal9, {})
		local function __FUNC_4694_(arg0, arg1)
			local function __FUNC_480F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -22.000000, -10.000000)
				arg0:setTopBottom(false, false, -33.500000, 2.500000)
				arg0:setAlpha(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
				arg0:setShaderVector(0.000000, 0.070000, 0.190000, 0.770000, 0.050000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_480F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_480F_)
		end

		registerVal10:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setLeftRight(false, false, -33.000000, -21.000000)
		registerVal10:setTopBottom(false, false, -5.000000, -4.250000)
		registerVal10:setAlpha(0.000000)
		registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
		registerVal10:setShaderVector(0.000000, 0.070000, 0.190000, 0.770000, 0.050000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_4694_)
		local function __FUNC_4B14_(arg0, arg1)
			local function __FUNC_4C9F_(arg0, arg1)
				local function __FUNC_4E4F_(arg0, arg1)
					local function __FUNC_4FDC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -11.000000, 1.000000)
						arg0:setTopBottom(false, false, -32.000000, -25.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4FDC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, -32.000000, -25.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FDC_)
				end

				if arg1.interrupted then
					__FUNC_4E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -26.170000, -25.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E4F_)
			end

			if arg1.interrupted then
				__FUNC_4C9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -25.000000, -25.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C9F_)
		end

		registerVal11:completeAnimation()
		registerVal2.OuterLineRightTopLeft2:setLeftRight(false, false, -11.000000, 1.000000)
		registerVal2.OuterLineRightTopLeft2:setTopBottom(false, false, -32.000000, -25.000000)
		registerVal2.OuterLineRightTopLeft2:setAlpha(0.000000)
		__FUNC_4B14_(registerVal11, {})
		local function __FUNC_5201_(arg0, arg1)
			local function __FUNC_537B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 11.000000, 23.000000)
				arg0:setTopBottom(false, false, -3.000000, 33.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_537B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_537B_)
		end

		registerVal12:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setLeftRight(false, false, 22.000000, 34.000000)
		registerVal12:setTopBottom(false, false, 3.750000, 5.750000)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_5201_)
		local function __FUNC_559D_(arg0, arg1)
			local function __FUNC_56F4_(arg0, arg1)
				local function __FUNC_586F_(arg0, arg1)
					local function __FUNC_59FC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, 0.000000, 12.000000)
						arg0:setTopBottom(false, false, 25.000000, 32.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_59FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, 25.000000, 32.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59FC_)
				end

				if arg1.interrupted then
					__FUNC_586F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_586F_)
			end

			if arg1.interrupted then
				__FUNC_56F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F4_)
		end

		registerVal13:completeAnimation()
		registerVal2.OuterLineRightTop1:setLeftRight(false, false, 0.000000, 12.000000)
		registerVal2.OuterLineRightTop1:setTopBottom(false, false, 25.000000, 26.000000)
		registerVal2.OuterLineRightTop1:setAlpha(0.000000)
		__FUNC_559D_(registerVal13, {})
		local function __FUNC_5C1C_(arg0, arg1)
			local function __FUNC_5D97_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -22.000000, -10.000000)
				arg0:setTopBottom(false, false, -3.000000, 33.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5D97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D97_)
		end

		registerVal14:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setLeftRight(false, false, -33.000000, -21.000000)
		registerVal14:setTopBottom(false, false, 3.880000, 4.130000)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_5C1C_)
		local function __FUNC_5FB9_(arg0, arg1)
			local function __FUNC_6148_(arg0, arg1)
				local function __FUNC_62FB_(arg0, arg1)
					local function __FUNC_6488_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -11.000000, 1.000000)
						arg0:setTopBottom(false, false, 25.000000, 32.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6488_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, false, 25.000000, 32.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6488_)
				end

				if arg1.interrupted then
					__FUNC_62FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, 25.000000, 25.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62FB_)
			end

			if arg1.interrupted then
				__FUNC_6148_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 25.000000, 25.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6148_)
		end

		registerVal15:completeAnimation()
		registerVal2.OuterLineLeft2:setLeftRight(false, false, -11.000000, 1.000000)
		registerVal2.OuterLineLeft2:setTopBottom(false, false, 25.000000, 32.000000)
		registerVal2.OuterLineLeft2:setAlpha(0.000000)
		__FUNC_5FB9_(registerVal15, {})
		local function __FUNC_66AD_(arg0, arg1)
			local function __FUNC_683C_(arg0, arg1)
				local function __FUNC_6994_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 27.000000, 33.000000)
					arg0:setTopBottom(false, false, 0.500000, 9.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6994_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6994_)
			end

			if arg1.interrupted then
				__FUNC_683C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 27.000000, 33.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_683C_)
		end

		registerVal16:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, 33.000000, 33.000000)
		registerVal2.Image0:setTopBottom(false, false, 0.500000, 9.000000)
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_66AD_(registerVal16, {})
		local function __FUNC_6BB9_(arg0, arg1)
			local function __FUNC_6D48_(arg0, arg1)
				local function __FUNC_6EA0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 27.000000, 33.000000)
					arg0:setTopBottom(false, false, -8.500000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6EA0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EA0_)
			end

			if arg1.interrupted then
				__FUNC_6D48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 27.000000, 33.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D48_)
		end

		registerVal17:completeAnimation()
		registerVal2.Image1:setLeftRight(false, false, 33.000000, 33.000000)
		registerVal2.Image1:setTopBottom(false, false, -8.500000, 0.000000)
		registerVal2.Image1:setAlpha(1.000000)
		__FUNC_6BB9_(registerVal17, {})
		local function __FUNC_70C0_(arg0, arg1)
			local function __FUNC_7250_(arg0, arg1)
				local function __FUNC_73A8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -32.000000, -26.000000)
					arg0:setTopBottom(false, false, 0.250000, 8.750000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_73A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73A8_)
			end

			if arg1.interrupted then
				__FUNC_7250_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -32.000000, -26.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7250_)
		end

		registerVal18:completeAnimation()
		registerVal2.Image2:setLeftRight(false, false, -32.000000, -32.000000)
		registerVal2.Image2:setTopBottom(false, false, 0.250000, 8.750000)
		registerVal2.Image2:setAlpha(1.000000)
		__FUNC_70C0_(registerVal18, {})
		local function __FUNC_75CD_(arg0, arg1)
			local function __FUNC_775C_(arg0, arg1)
				local function __FUNC_78B4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -32.000000, -26.000000)
					arg0:setTopBottom(false, false, -8.500000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_78B4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78B4_)
			end

			if arg1.interrupted then
				__FUNC_775C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -32.000000, -26.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_775C_)
		end

		registerVal19:completeAnimation()
		registerVal2.Image3:setLeftRight(false, false, -32.000000, -32.000000)
		registerVal2.Image3:setTopBottom(false, false, -8.500000, 0.000000)
		registerVal2.Image3:setAlpha(1.000000)
		__FUNC_75CD_(registerVal19, {})
	end

	registerVal21.Fire = __FUNC_1A9D_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_7AD4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.centerDot:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.centerDot:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.centerDot:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ReticleLineBottom:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineBottom:setTopBottom(false, false, 25.000000, 73.000000)
		registerVal2.ReticleLineBottom:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ReticleLineTop:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineTop:setTopBottom(false, false, -72.000000, -25.000000)
		registerVal2.ReticleLineTop:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ReticleLineRight:setLeftRight(false, false, 30.000000, 68.000000)
		registerVal2.ReticleLineRight:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.ReticleLineRight:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ReticleLineLeft:setLeftRight(false, false, -67.000000, -29.000000)
		registerVal2.ReticleLineLeft:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.ReticleLineLeft:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.OuterLineAngleCenter:setLeftRight(false, false, 11.000000, 23.000000)
		registerVal2.OuterLineAngleCenter:setTopBottom(false, false, -33.500000, 2.500000)
		registerVal2.OuterLineAngleCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.OuterLineAngleCenter0:setLeftRight(false, false, -22.000000, -10.000000)
		registerVal2.OuterLineAngleCenter0:setTopBottom(false, false, -33.500000, 2.500000)
		registerVal2.OuterLineAngleCenter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.OuterLineAngleCenter1:setLeftRight(false, false, 11.000000, 23.000000)
		registerVal2.OuterLineAngleCenter1:setTopBottom(false, false, -3.000000, 33.000000)
		registerVal2.OuterLineAngleCenter1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.OuterLineAngleCenterLL:setLeftRight(false, false, -22.000000, -10.000000)
		registerVal2.OuterLineAngleCenterLL:setTopBottom(false, false, -3.000000, 33.000000)
		registerVal2.OuterLineAngleCenterLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal21.DefaultClip = __FUNC_7AD4_
	local function __FUNC_8241_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.centerDot:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.centerDot:setTopBottom(false, false, -6.000000, 6.000000)
		registerVal2.centerDot:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_898D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.000000, 6.000000)
			arg0:setTopBottom(false, false, -8.000000, 40.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ReticleLineBottom:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineBottom:setTopBottom(false, false, 25.000000, 73.000000)
		registerVal2.ReticleLineBottom:setAlpha(0.800000)
		__FUNC_898D_(registerVal4, {})
		local function __FUNC_8BB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.000000, 6.000000)
			arg0:setTopBottom(false, false, -39.000000, 8.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ReticleLineTop:setLeftRight(false, false, -6.000000, 6.000000)
		registerVal2.ReticleLineTop:setTopBottom(false, false, -72.000000, -25.000000)
		registerVal2.ReticleLineTop:setAlpha(0.800000)
		__FUNC_8BB1_(registerVal5, {})
		local function __FUNC_8DD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 36.000000)
			arg0:setTopBottom(false, false, -7.000000, 7.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.ReticleLineRight:setLeftRight(false, false, 30.000000, 68.000000)
		registerVal2.ReticleLineRight:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.ReticleLineRight:setAlpha(0.800000)
		__FUNC_8DD5_(registerVal6, {})
		local function __FUNC_8FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -36.000000, 2.000000)
			arg0:setTopBottom(false, false, -7.000000, 7.000000)
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.ReticleLineLeft:setLeftRight(false, false, -67.000000, -29.000000)
		registerVal2.ReticleLineLeft:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.ReticleLineLeft:setAlpha(0.800000)
		__FUNC_8FF9_(registerVal7, {})
		local function __FUNC_921D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 11.000000, 23.000000)
			arg0:setTopBottom(false, false, -33.500000, 2.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.OuterLineAngleCenter:setLeftRight(false, false, 11.000000, 23.000000)
		registerVal2.OuterLineAngleCenter:setTopBottom(false, false, -33.500000, 2.500000)
		registerVal2.OuterLineAngleCenter:setAlpha(1.000000)
		__FUNC_921D_(registerVal8, {})
		local function __FUNC_9441_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.000000, -10.000000)
			arg0:setTopBottom(false, false, -33.500000, 2.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.OuterLineAngleCenter0:setLeftRight(false, false, -22.000000, -10.000000)
		registerVal2.OuterLineAngleCenter0:setTopBottom(false, false, -33.500000, 2.500000)
		registerVal2.OuterLineAngleCenter0:setAlpha(1.000000)
		__FUNC_9441_(registerVal10, {})
		local function __FUNC_9665_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 11.000000, 23.000000)
			arg0:setTopBottom(false, false, -3.000000, 33.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.OuterLineAngleCenter1:setLeftRight(false, false, 11.000000, 23.000000)
		registerVal2.OuterLineAngleCenter1:setTopBottom(false, false, -3.000000, 33.000000)
		registerVal2.OuterLineAngleCenter1:setAlpha(1.000000)
		__FUNC_9665_(registerVal12, {})
		local function __FUNC_9889_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.000000, -10.000000)
			arg0:setTopBottom(false, false, -3.000000, 33.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.OuterLineAngleCenterLL:setLeftRight(false, false, -22.000000, -10.000000)
		registerVal2.OuterLineAngleCenterLL:setTopBottom(false, false, -3.000000, 33.000000)
		registerVal2.OuterLineAngleCenterLL:setAlpha(1.000000)
		__FUNC_9889_(registerVal14, {})
	end

	registerVal21.DefaultState = __FUNC_8241_
	registerVal20.Fire = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_9AAD_(arg0)
		local registerVal2 = IsModelValueEqualToEnum(arg1, "currentWeapon.weaponDelayFiring", Enum.WeaponFireEvent.WEAPON_EVENT_FIRING)
		if registerVal2 then
			SetState(registerVal2, "DefaultState")
			PlayClip(registerVal2, "Fire", arg1)
		else
			registerVal2 = IsModelValueEqualToEnum(arg1, "currentWeapon.weaponDelayFiring", Enum.WeaponFireEvent.WEAPON_EVENT_FIRED)
			if registerVal2 then
				SetState(registerVal2, "Fire")
				PlayClip(registerVal2, "DefaultState", arg1)
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "currentWeapon.weaponDelayFiring", __FUNC_9AAD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

