-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_CenterHex = registerVal1
function CoD.AbilityWheel_CenterHex.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_CenterHex)
	registerVal2.id = "AbilityWheel_CenterHex"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 288.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 328.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -144.000000, 144.000000)
	registerVal3:setTopBottom(false, false, -164.000000, 164.000000)
	registerVal3:setAlpha(RandomAddPercent(-60.000000, 0.990000))
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_hexcenter"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.HexCenter0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_610_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_71E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-60.000000, 0.990000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.HexCenter0:setAlpha(RandomAddPercent(-60.000000, 1.000000))
		__FUNC_71E_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_610_
	local function __FUNC_8FC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Close = __FUNC_8FC_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

