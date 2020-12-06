-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_IconSections2 = registerVal1
function CoD.AbilityWheel_IconSections2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_IconSections2)
	registerVal2.id = "AbilityWheel_IconSections2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 81.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -42.000000, 2.000000)
	registerVal3:setTopBottom(false, false, -40.500000, -28.500000)
	registerVal3:setAlpha(RandomAddPercent(40.000000, 0.000000))
	registerVal3:setZRot(30.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_brackettop"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.img6 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -2.000000, 42.000000)
	registerVal4:setTopBottom(false, false, -40.500000, -28.500000)
	registerVal4:setAlpha(RandomAddPercent(50.000000, 0.000000))
	registerVal4:setZRot(-30.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_brackettop"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.img1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -62.000000, -18.000000)
	registerVal5:setTopBottom(false, false, -6.500000, 5.500000)
	registerVal5:setAlpha(RandomAddPercent(40.000000, 0.000000))
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_brackettop"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.img5 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 18.000000, 62.000000)
	registerVal6:setTopBottom(false, false, -6.500000, 5.500000)
	registerVal6:setAlpha(RandomAddPercent(100.000000, 0.000000))
	registerVal6:setZRot(-90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_brackettop"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.img2 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8F7_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_B48_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(40.000000, 0.010000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.img6:setAlpha(RandomAddPercent(40.000000, 0.000000))
		__FUNC_B48_(registerVal3, {})
		local function __FUNC_D28_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(50.000000, 0.010000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.img1:setAlpha(RandomAddPercent(50.000000, 0.000000))
		__FUNC_D28_(registerVal4, {})
		local function __FUNC_F08_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(40.000000, 0.010000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.img5:setAlpha(RandomAddPercent(40.000000, 0.000000))
		__FUNC_F08_(registerVal5, {})
		local function __FUNC_10E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(100.000000, 0.010000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.img2:setAlpha(RandomAddPercent(100.000000, 0.000000))
		__FUNC_10E8_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_8F7_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_12C8_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_12C8_
	registerVal7.Unused = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

