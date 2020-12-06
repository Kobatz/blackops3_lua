-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Bracket = registerVal1
function CoD.AbilityWheel_Bracket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Bracket)
	registerVal2.id = "AbilityWheel_Bracket"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal3:setTopBottom(false, false, -26.000000, 26.000000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 1.000000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_iconbracket"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Bracket0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5EB_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_757_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Bracket0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bracket0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_757_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5EB_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

