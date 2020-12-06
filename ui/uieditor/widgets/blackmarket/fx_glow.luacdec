-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fx_glow = registerVal1
function CoD.fx_glow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fx_glow)
	registerVal2.id = "fx_glow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 137.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 136.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -68.400000, 68.400000)
	registerVal3:setTopBottom(true, false, 0.000000, 136.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_crate_whiteglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.glow0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_52D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_63E_(arg0, arg1)
			local function __FUNC_7B7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B7_)
		end

		registerVal3:completeAnimation()
		registerVal2.glow0:setAlpha(0.100000)
		__FUNC_63E_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_52D_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

