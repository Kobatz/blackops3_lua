-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SpecialistKilljoysEmber = registerVal1
function CoD.CallingCards_SpecialistKilljoysEmber.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_SpecialistKilljoysEmber)
	registerVal2.id = "CallingCards_SpecialistKilljoysEmber"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_ember"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ember = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -145.000000, 335.000000)
	registerVal4:setTopBottom(true, false, -99.000000, 21.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_specialistkilljoy_ember"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_675_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_943_(arg0, arg1)
			local function __FUNC_B08_(arg0, arg1)
				local function __FUNC_CF3_(arg0, arg1)
					local function __FUNC_EB8_(arg0, arg1)
						local function __FUNC_1033_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 4029.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 480.000000)
							arg0:setTopBottom(true, false, 0.000000, 120.000000)
							arg0:setAlpha(1.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1033_)
					end

					if arg1.interrupted then
						__FUNC_EB8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -145.000000, 335.000000)
					arg0:setTopBottom(true, false, -99.000000, 21.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB8_)
				end

				if arg1.interrupted then
					__FUNC_CF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 145.000000, 625.000000)
				arg0:setTopBottom(true, false, 99.000000, 219.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF3_)
			end

			if arg1.interrupted then
				__FUNC_B08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3960.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 143.550000, 623.550000)
			arg0:setTopBottom(true, false, 98.010000, 218.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B08_)
		end

		registerVal3:completeAnimation()
		registerVal2.ember:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.ember:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.ember:setAlpha(1.000000)
		registerVal2.ember:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_943_(registerVal3, {})
		local function __FUNC_12DA_(arg0, arg1)
			local function __FUNC_149B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 4079.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 148.000000, 628.000000)
				arg0:setTopBottom(true, false, 109.000000, 229.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_149B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 4000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 0.000000, 480.000000)
			arg0:setTopBottom(true, false, 0.000000, 120.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, -145.000000, 335.000000)
		registerVal2.Image0:setTopBottom(true, false, -99.000000, 21.000000)
		__FUNC_12DA_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_675_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

