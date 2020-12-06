-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BribeLabel_Backing = registerVal1
function CoD.BM_BribeLabel_Backing.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BribeLabel_Backing)
	registerVal2.id = "BM_BribeLabel_Backing"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.250000, 40.250000)
	registerVal3:setTopBottom(false, false, -28.000000, 28.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_specialist_bribe_label_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.LabelLeft = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 40.250000, -32.250000)
	registerVal4:setTopBottom(false, false, -28.000000, 28.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_specialist_bribe_label_middle"))
	registerVal2:addElement(registerVal4)
	registerVal2.LabelMiddle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -32.250000, -0.250000)
	registerVal5:setTopBottom(false, false, -28.000000, 28.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_specialist_bribe_label_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.LabelRight = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 27.500000, 75.500000)
	registerVal6:setTopBottom(false, false, -21.000000, 27.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_blackmarket_breadcrumb_large"))
	registerVal2:addElement(registerVal6)
	registerVal2.icon = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_7C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_7C6_
	local function __FUNC_826_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_A02_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LabelLeft:setAlpha(0.000000)
		__FUNC_A02_(registerVal3, {})
		local function __FUNC_BB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LabelMiddle:setAlpha(0.000000)
		__FUNC_BB5_(registerVal4, {})
		local function __FUNC_D69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LabelRight:setAlpha(0.000000)
		__FUNC_D69_(registerVal5, {})
		local function __FUNC_F1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		__FUNC_F1D_(registerVal6, {})
	end

	registerVal8.Visible = __FUNC_826_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

