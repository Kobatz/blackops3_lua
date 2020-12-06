-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Texture = registerVal1
function CoD.AbilityWheel_Texture.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Texture)
	registerVal2.id = "AbilityWheel_Texture"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 800.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 536.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 536.000000)
	registerVal3:setAlpha(RandomAddPercent(40.000000, 0.590000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TextureL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 400.000000, 800.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 536.000000)
	registerVal4:setAlpha(RandomAddPercent(40.000000, 0.410000))
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TextureR = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6CF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_86F_(arg0, arg1)
			local function __FUNC_A12_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(RandomAddPercent(40.000000, 0.400000))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A12_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(40.000000, 0.410000))
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A12_)
		end

		registerVal3:completeAnimation()
		registerVal2.TextureL:setAlpha(RandomAddPercent(40.000000, 0.400000))
		__FUNC_86F_(registerVal3, {})
		local function __FUNC_BF0_(arg0, arg1)
			local function __FUNC_D96_(arg0, arg1)
				local function __FUNC_F3A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(RandomAddPercent(40.000000, 0.410000))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F3A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(RandomAddPercent(40.000000, 0.390000))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3A_)
			end

			if arg1.interrupted then
				__FUNC_D96_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(40.000000, 0.400000))
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D96_)
		end

		registerVal4:completeAnimation()
		registerVal2.TextureR:setAlpha(RandomAddPercent(40.000000, 0.410000))
		__FUNC_BF0_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6CF_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

