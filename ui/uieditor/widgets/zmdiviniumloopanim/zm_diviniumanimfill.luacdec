-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMDiviniumLoopAnim.ZM_DiviniumFull")
require("ui.uieditor.widgets.ZMDiviniumLoopAnim.ZM_DiviniumEmpty")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_DiviniumAnimFill = registerVal1
function CoD.ZM_DiviniumAnimFill.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_DiviniumAnimFill)
	registerVal2.id = "ZM_DiviniumAnimFill"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 196.000000, 304.000000)
	registerVal3:setTopBottom(true, false, 119.230000, 166.230000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_anim_divinium_glow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 231.660000, 267.660000)
	registerVal4:setTopBottom(true, false, -8.770000, 159.230000)
	registerVal4:setXRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_anim_divinium_fill"))
	registerVal2:addElement(registerVal4)
	registerVal2.Fill = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 226.000000, 274.000000)
	registerVal5:setTopBottom(true, false, -58.000000, 158.000000)
	registerVal5:setImage(RegisterImage("uie_t7_zm_anim_divinium_vial"))
	registerVal2:addElement(registerVal5)
	registerVal2.Vial = registerVal5
	local registerVal6 = CoD.ZM_DiviniumFull.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 284.500000, 392.500000)
	registerVal6:setTopBottom(true, false, -62.500000, 162.730000)
	registerVal6:setScale(0.800000)
	registerVal2:addElement(registerVal6)
	registerVal2.ZMDiviniumFull = registerVal6
	local registerVal7 = CoD.ZM_DiviniumEmpty.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 103.500000, 211.500000)
	registerVal7:setTopBottom(true, false, -62.500000, 162.500000)
	registerVal7:setScale(0.800000)
	registerVal2:addElement(registerVal7)
	registerVal2.ZMDiviniumEmpty = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A0B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Vial:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ZMDiviniumFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ZMDiviniumEmpty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_A0B_
	local function __FUNC_C61_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_11A5_(arg0, arg1)
			local function __FUNC_12FC_(arg0, arg1)
				local function __FUNC_14AF_(arg0, arg1)
					local function __FUNC_163C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 196.000000, 304.000000)
						arg0:setTopBottom(true, false, -32.770000, 166.230000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_163C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -32.770000, 166.230000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163C_)
				end

				if arg1.interrupted then
					__FUNC_14AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 68.370000, 166.230000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AF_)
			end

			if arg1.interrupted then
				__FUNC_12FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.Glow:setTopBottom(true, false, 115.230000, 166.230000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_11A5_(registerVal3, {})
		local function __FUNC_1861_(arg0, arg1)
			local function __FUNC_19B8_(arg0, arg1)
				local function __FUNC_1B33_(arg0, arg1)
					local function __FUNC_1CCC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1CCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCC_)
				end

				if arg1.interrupted then
					__FUNC_1B33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B33_)
			end

			if arg1.interrupted then
				__FUNC_19B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B8_)
		end

		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.Fill:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_1861_(registerVal4, {})
		local function __FUNC_1FAA_(arg0, arg1)
			local function __FUNC_2100_(arg0, arg1)
				local function __FUNC_227B_(arg0, arg1)
					local function __FUNC_23D0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_23D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D0_)
				end

				if arg1.interrupted then
					__FUNC_227B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227B_)
			end

			if arg1.interrupted then
				__FUNC_2100_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2100_)
		end

		registerVal5:completeAnimation()
		registerVal2.Vial:setAlpha(0.000000)
		__FUNC_1FAA_(registerVal5, {})
		local function __FUNC_2585_(arg0, arg1)
			local function __FUNC_26DC_(arg0, arg1)
				local function __FUNC_288F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 258.660000, 366.660000)
					arg0:setTopBottom(true, false, -58.000000, 167.230000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_288F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 196.780000, 304.780000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_288F_)
			end

			if arg1.interrupted then
				__FUNC_26DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26DC_)
		end

		registerVal6:completeAnimation()
		registerVal2.ZMDiviniumFull:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.ZMDiviniumFull:setTopBottom(true, false, -58.000000, 167.230000)
		registerVal2.ZMDiviniumFull:setAlpha(0.000000)
		registerVal2.ZMDiviniumFull:setScale(1.000000)
		__FUNC_2585_(registerVal6, {})
		local function __FUNC_2AD4_(arg0, arg1)
			local function __FUNC_2CDD_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 195.660000, 303.660000)
				arg0:setTopBottom(true, false, -57.770000, 167.230000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2CDD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 194.740000, 302.740000)
			arg0:setTopBottom(true, false, -57.830000, 167.170000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDD_)
		end

		registerVal7:completeAnimation()
		registerVal2.ZMDiviniumEmpty:setLeftRight(true, false, 129.500000, 237.500000)
		registerVal2.ZMDiviniumEmpty:setTopBottom(true, false, -62.500000, 162.500000)
		registerVal2.ZMDiviniumEmpty:setAlpha(0.000000)
		registerVal2.ZMDiviniumEmpty:setScale(0.800000)
		__FUNC_2AD4_(registerVal7, {})
	end

	registerVal9.Start = __FUNC_C61_
	local function __FUNC_2F24_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3469_(arg0, arg1)
			local function __FUNC_35C0_(arg0, arg1)
				local function __FUNC_3773_(arg0, arg1)
					local function __FUNC_3900_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 196.000000, 304.000000)
						arg0:setTopBottom(true, false, -32.770000, 166.230000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3900_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -32.770000, 166.230000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3900_)
				end

				if arg1.interrupted then
					__FUNC_3773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 68.370000, 166.230000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3773_)
			end

			if arg1.interrupted then
				__FUNC_35C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C0_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.Glow:setTopBottom(true, false, 115.230000, 166.230000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_3469_(registerVal3, {})
		local function __FUNC_3B25_(arg0, arg1)
			local function __FUNC_3C7C_(arg0, arg1)
				local function __FUNC_3DF7_(arg0, arg1)
					local function __FUNC_3F90_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3F90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F90_)
				end

				if arg1.interrupted then
					__FUNC_3DF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DF7_)
			end

			if arg1.interrupted then
				__FUNC_3C7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C7C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.Fill:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_3B25_(registerVal4, {})
		local function __FUNC_426E_(arg0, arg1)
			local function __FUNC_43C4_(arg0, arg1)
				local function __FUNC_453F_(arg0, arg1)
					local function __FUNC_4694_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4694_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4694_)
				end

				if arg1.interrupted then
					__FUNC_453F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_453F_)
			end

			if arg1.interrupted then
				__FUNC_43C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C4_)
		end

		registerVal5:completeAnimation()
		registerVal2.Vial:setAlpha(0.000000)
		__FUNC_426E_(registerVal5, {})
		local function __FUNC_4849_(arg0, arg1)
			local function __FUNC_49A0_(arg0, arg1)
				local function __FUNC_4B53_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 258.660000, 366.660000)
					arg0:setTopBottom(true, false, -58.000000, 167.230000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4B53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 196.780000, 304.780000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B53_)
			end

			if arg1.interrupted then
				__FUNC_49A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49A0_)
		end

		registerVal6:completeAnimation()
		registerVal2.ZMDiviniumFull:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.ZMDiviniumFull:setTopBottom(true, false, -58.000000, 167.230000)
		registerVal2.ZMDiviniumFull:setAlpha(0.000000)
		registerVal2.ZMDiviniumFull:setScale(1.000000)
		__FUNC_4849_(registerVal6, {})
		local function __FUNC_4D98_(arg0, arg1)
			local function __FUNC_4FA1_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 195.660000, 303.660000)
				arg0:setTopBottom(true, false, -57.770000, 167.230000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4FA1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 194.740000, 302.740000)
			arg0:setTopBottom(true, false, -57.830000, 167.170000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FA1_)
		end

		registerVal7:completeAnimation()
		registerVal2.ZMDiviniumEmpty:setLeftRight(true, false, 129.500000, 237.500000)
		registerVal2.ZMDiviniumEmpty:setTopBottom(true, false, -62.500000, 162.500000)
		registerVal2.ZMDiviniumEmpty:setAlpha(0.000000)
		registerVal2.ZMDiviniumEmpty:setScale(0.800000)
		__FUNC_4D98_(registerVal7, {})
	end

	registerVal9.Stop = __FUNC_2F24_
	local function __FUNC_51E8_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5755_(arg0, arg1)
			local function __FUNC_58AC_(arg0, arg1)
				local function __FUNC_5A5F_(arg0, arg1)
					local function __FUNC_5BEC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 196.000000, 304.000000)
						arg0:setTopBottom(true, false, -32.770000, 166.230000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5BEC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -32.770000, 166.230000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BEC_)
				end

				if arg1.interrupted then
					__FUNC_5A5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 68.370000, 166.230000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A5F_)
			end

			if arg1.interrupted then
				__FUNC_58AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58AC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.Glow:setTopBottom(true, false, 115.230000, 166.230000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_5755_(registerVal3, {})
		local function __FUNC_5E11_(arg0, arg1)
			local function __FUNC_5F68_(arg0, arg1)
				local function __FUNC_60E3_(arg0, arg1)
					local function __FUNC_627C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
						arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_627C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_627C_)
				end

				if arg1.interrupted then
					__FUNC_60E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_60E3_)
			end

			if arg1.interrupted then
				__FUNC_5F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F68_)
		end

		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.Fill:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		__FUNC_5E11_(registerVal4, {})
		local function __FUNC_655A_(arg0, arg1)
			local function __FUNC_66B0_(arg0, arg1)
				local function __FUNC_682B_(arg0, arg1)
					local function __FUNC_6980_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6980_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6980_)
				end

				if arg1.interrupted then
					__FUNC_682B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_682B_)
			end

			if arg1.interrupted then
				__FUNC_66B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66B0_)
		end

		registerVal5:completeAnimation()
		registerVal2.Vial:setAlpha(0.000000)
		__FUNC_655A_(registerVal5, {})
		local function __FUNC_6B35_(arg0, arg1)
			local function __FUNC_6C8C_(arg0, arg1)
				local function __FUNC_6E3F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 258.660000, 366.660000)
					arg0:setTopBottom(true, false, -58.000000, 167.230000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6E3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 196.780000, 304.780000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E3F_)
			end

			if arg1.interrupted then
				__FUNC_6C8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C8C_)
		end

		registerVal6:completeAnimation()
		registerVal2.ZMDiviniumFull:setLeftRight(true, false, 196.000000, 304.000000)
		registerVal2.ZMDiviniumFull:setTopBottom(true, false, -58.000000, 167.230000)
		registerVal2.ZMDiviniumFull:setAlpha(0.000000)
		registerVal2.ZMDiviniumFull:setScale(1.000000)
		__FUNC_6B35_(registerVal6, {})
		local function __FUNC_7084_(arg0, arg1)
			local function __FUNC_728D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 195.660000, 303.660000)
				arg0:setTopBottom(true, false, -57.770000, 167.230000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_728D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 194.740000, 302.740000)
			arg0:setTopBottom(true, false, -57.830000, 167.170000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_728D_)
		end

		registerVal7:completeAnimation()
		registerVal2.ZMDiviniumEmpty:setLeftRight(true, false, 129.500000, 237.500000)
		registerVal2.ZMDiviniumEmpty:setTopBottom(true, false, -62.500000, 162.500000)
		registerVal2.ZMDiviniumEmpty:setAlpha(0.000000)
		registerVal2.ZMDiviniumEmpty:setScale(0.800000)
		__FUNC_7084_(registerVal7, {})
		registerVal2.nextClip = "Loop"
	end

	registerVal9.Loop = __FUNC_51E8_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_74D4_(arg0)
		arg0.ZMDiviniumFull:close()
		arg0.ZMDiviniumEmpty:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_74D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

