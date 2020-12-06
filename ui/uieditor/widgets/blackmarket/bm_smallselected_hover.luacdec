-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_SmallSelected_Hover = registerVal1
function CoD.BM_SmallSelected_Hover.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_SmallSelected_Hover)
	registerVal2.id = "BM_SmallSelected_Hover"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 269.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 222.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 269.080000)
	registerVal3:setTopBottom(true, false, 0.000000, 221.600000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe_small_selected"))
	registerVal2:addElement(registerVal3)
	registerVal2.SmallSelected = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 269.080000)
	registerVal4:setTopBottom(true, false, 0.000000, 221.600000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_bribe_small_selected"))
	registerVal2:addElement(registerVal4)
	registerVal2.SmallSelected1 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5E0_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_771_(arg0, arg1)
			local function __FUNC_8EB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EB_)
		end

		registerVal3:completeAnimation()
		registerVal2.SmallSelected:setAlpha(0.000000)
		__FUNC_771_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SmallSelected1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5E0_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

