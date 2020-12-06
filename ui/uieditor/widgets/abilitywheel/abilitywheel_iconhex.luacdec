-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_IconHex = registerVal1
function CoD.AbilityWheel_IconHex.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_IconHex)
	registerVal2.id = "AbilityWheel_IconHex"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 95.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.330000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 1.000000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_iconhex"))
	registerVal2:addElement(registerVal3)
	registerVal2.IconHex0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_56C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.IconHex0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_6A7_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_56C_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

