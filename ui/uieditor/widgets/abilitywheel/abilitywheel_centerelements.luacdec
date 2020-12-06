-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_CenterElements = registerVal1
function CoD.AbilityWheel_CenterElements.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_CenterElements)
	registerVal2.id = "AbilityWheel_CenterElements"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 216.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 216.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -108.000000, 108.000000)
	registerVal3:setTopBottom(false, false, -108.000000, 108.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradcenter"))
	registerVal2:addElement(registerVal3)
	registerVal2.Grad = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal4:setTopBottom(false, false, 88.000000, 100.000000)
	registerVal4:setAlpha(RandomAddPercent(-10.000000, 0.400000))
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_centertopgrid"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TopGrid0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -76.000000, 76.000000)
	registerVal5:setTopBottom(false, false, -15.000000, -7.000000)
	registerVal5:setAlpha(RandomAddPercent(-10.000000, 0.200000))
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_centertitlebar"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.TitleBar = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7D3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Grad:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_9E0_(arg0, arg1)
			local function __FUNC_B86_(arg0, arg1)
				local function __FUNC_D2A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(RandomAddPercent(-10.000000, 0.690000))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D2A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(RandomAddPercent(-10.000000, 0.700000))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2A_)
			end

			if arg1.interrupted then
				__FUNC_B86_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.690000))
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B86_)
		end

		registerVal4:completeAnimation()
		registerVal2.TopGrid0:setAlpha(RandomAddPercent(-10.000000, 0.700000))
		__FUNC_9E0_(registerVal4, {})
		local function __FUNC_F08_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 0.200000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.TitleBar:setAlpha(RandomAddPercent(-10.000000, 0.200000))
		__FUNC_F08_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_7D3_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

