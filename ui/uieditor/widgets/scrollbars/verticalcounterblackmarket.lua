-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.verticalCounterBlackMarket = registerVal1
function CoD.verticalCounterBlackMarket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.verticalCounterBlackMarket)
	registerVal2.id = "verticalCounterBlackMarket"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -38.000000, -8.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setAlpha(0.650000)
	registerVal3:setText(Engine.Localize("10"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.currentItem = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -3.000000, 3.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setText(Engine.Localize("/"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.dividor = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, 8.000000, 38.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setAlpha(0.650000)
	registerVal5:setText(Engine.Localize("200"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.count = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -58.000000, -42.000000)
	registerVal6:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal6:setRGB(1.000000, 0.410000, 0.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.upArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 42.000000, 58.000000)
	registerVal7:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal7:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.downArrow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -58.000000, -42.000000)
	registerVal8:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setScale(2.000000)
	registerVal8:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.upArrowPulse = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 42.000000, 58.000000)
	registerVal9:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal9:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal9)
	registerVal2.downArrowPulse = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_E3C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.upArrowPulse:setAlpha(0.000000)
		registerVal2.upArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.downArrowPulse:setAlpha(0.000000)
		registerVal2.downArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_E3C_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_13FB_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.currentItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dividor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.upArrowPulse:setAlpha(0.000000)
		registerVal2.upArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.downArrowPulse:setAlpha(0.000000)
		registerVal2.downArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_13FB_
	registerVal10.AtTopAndBottom = registerVal11
	registerVal11 = {}
	local function __FUNC_18F3_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1E85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.upArrowPulse:setAlpha(1.000000)
		registerVal2.upArrowPulse:setScale(1.000000)
		__FUNC_1E85_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.downArrowPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_18F3_
	registerVal10.AtTop = registerVal11
	registerVal11 = {}
	local function __FUNC_205C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.upArrowPulse:setAlpha(0.000000)
		registerVal2.upArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_260D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(3.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.downArrowPulse:setAlpha(1.000000)
		registerVal2.downArrowPulse:setScale(1.000000)
		__FUNC_260D_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_205C_
	registerVal10.AtBottom = registerVal11
	registerVal11 = {}
	local function __FUNC_27E4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.currentItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.dividor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.upArrowPulse:setAlpha(0.000000)
		registerVal2.upArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.downArrowPulse:setAlpha(0.000000)
		registerVal2.downArrowPulse:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_27E4_
	registerVal10.NoItems = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "AtTopAndBottom"
	local function __FUNC_2C78_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTopAndBottom")
	end

	registerVal13.condition = __FUNC_2C78_
	local registerVal14 = {}
	registerVal14.stateName = "AtTop"
	local function __FUNC_2CE7_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTop")
	end

	registerVal14.condition = __FUNC_2CE7_
	local registerVal15 = {}
	registerVal15.stateName = "AtBottom"
	local function __FUNC_2D4A_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtBottom")
	end

	registerVal15.condition = __FUNC_2D4A_
	local registerVal16 = {}
	registerVal16.stateName = "NoItems"
	local function __FUNC_2DB1_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_2DB1_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal12)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

