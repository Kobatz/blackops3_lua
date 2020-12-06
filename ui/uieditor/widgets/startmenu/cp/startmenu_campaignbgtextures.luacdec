-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_CampaignBGTextures = registerVal1
function CoD.StartMenu_CampaignBGTextures.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_CampaignBGTextures)
	registerVal2.id = "StartMenu_CampaignBGTextures"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -878.000000)
	registerVal3:setTopBottom(true, true, -71.500000, -339.250000)
	registerVal3:setAlpha(RandomAddPercent(40.000000, 0.590000))
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TextureL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, -878.000000)
	registerVal4:setTopBottom(true, true, 380.750000, 113.000000)
	registerVal4:setAlpha(RandomAddPercent(40.000000, 0.410000))
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TextureR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 402.000000, -439.000000)
	registerVal5:setTopBottom(true, true, -71.500000, -339.250000)
	registerVal5:setAlpha(RandomAddPercent(40.000000, 0.590000))
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.TextureL0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 402.000000, -439.000000)
	registerVal6:setTopBottom(true, true, 380.750000, 113.000000)
	registerVal6:setAlpha(RandomAddPercent(40.000000, 0.410000))
	registerVal6:setYRot(180.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.TextureR0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 841.000000, 0.000000)
	registerVal7:setTopBottom(true, true, -71.500000, -339.250000)
	registerVal7:setAlpha(RandomAddPercent(40.000000, 0.590000))
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.TextureL00 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 841.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 380.750000, 113.000000)
	registerVal8:setAlpha(RandomAddPercent(40.000000, 0.410000))
	registerVal8:setYRot(180.000000)
	registerVal8:setZRot(90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixels"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.TextureR00 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_AA6_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_C47_(arg0, arg1)
			local function __FUNC_DEA_(arg0, arg1)
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
				__FUNC_DEA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(40.000000, 0.410000))
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEA_)
		end

		registerVal3:completeAnimation()
		registerVal2.TextureL:setAlpha(RandomAddPercent(40.000000, 0.400000))
		__FUNC_C47_(registerVal3, {})
		local function __FUNC_FC8_(arg0, arg1)
			local function __FUNC_116E_(arg0, arg1)
				local function __FUNC_1312_(arg0, arg1)
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
					__FUNC_1312_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(RandomAddPercent(40.000000, 0.390000))
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1312_)
			end

			if arg1.interrupted then
				__FUNC_116E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(40.000000, 0.400000))
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116E_)
		end

		registerVal4:completeAnimation()
		registerVal2.TextureR:setAlpha(RandomAddPercent(40.000000, 0.410000))
		__FUNC_FC8_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_AA6_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

