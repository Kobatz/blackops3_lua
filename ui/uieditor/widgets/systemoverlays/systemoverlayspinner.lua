-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlaySpinner = registerVal1
function CoD.SystemOverlaySpinner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlaySpinner)
	registerVal2.id = "SystemOverlaySpinner"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 299.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 97.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal3:setRGB(1.000000, 0.680000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 101.000000, 198.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal4:setRGB(1.000000, 0.680000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image10 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 202.000000, 299.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal5:setRGB(1.000000, 0.680000, 0.000000)
	registerVal5:setAlpha(0.250000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image100 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_63E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_88F_(arg0, arg1)
			local function __FUNC_A07_(arg0, arg1)
				local function __FUNC_B7F_(arg0, arg1)
					local function __FUNC_CD4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD4_)
				end

				if arg1.interrupted then
					__FUNC_B7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7F_)
			end

			if arg1.interrupted then
				__FUNC_A07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.070000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A07_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.Image1:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_88F_(registerVal3, {})
		local function __FUNC_F16_(arg0, arg1)
			local function __FUNC_106C_(arg0, arg1)
				local function __FUNC_11E7_(arg0, arg1)
					local function __FUNC_133C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_133C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133C_)
				end

				if arg1.interrupted then
					__FUNC_11E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E7_)
			end

			if arg1.interrupted then
				__FUNC_106C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image10:setAlpha(0.000000)
		__FUNC_F16_(registerVal4, {})
		local function __FUNC_14F1_(arg0, arg1)
			local function __FUNC_1648_(arg0, arg1)
				local function __FUNC_17C3_(arg0, arg1)
					local function __FUNC_1918_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
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
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1918_)
				end

				if arg1.interrupted then
					__FUNC_17C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C3_)
			end

			if arg1.interrupted then
				__FUNC_1648_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1648_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image100:setAlpha(0.000000)
		__FUNC_14F1_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_63E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

