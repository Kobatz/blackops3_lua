-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.verticalCounter = registerVal1
function CoD.verticalCounter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.verticalCounter)
	registerVal2.id = "verticalCounter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -58.000000, -42.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.upArrow = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -38.000000, -8.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setText(Engine.Localize("10"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.currentItem = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -3.000000, 3.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setAlpha(0.650000)
	registerVal5:setText(Engine.Localize("/"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.dividor = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 8.000000, 38.000000)
	registerVal6:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal6:setAlpha(0.650000)
	registerVal6:setText(Engine.Localize("200"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.count = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 42.000000, 58.000000)
	registerVal7:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal7:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.downArrow = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C34_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C34_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_10F3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.currentItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dividor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_10F3_
	registerVal8.AtTopAndBottom = registerVal9
	registerVal9 = {}
	local function __FUNC_14E6_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_14E6_
	registerVal8.AtTop = registerVal9
	registerVal9 = {}
	local function __FUNC_196A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.currentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_196A_
	registerVal8.AtBottom = registerVal9
	registerVal9 = {}
	local function __FUNC_1DEE_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.upArrow:setLeftRight(false, false, -58.000000, -42.000000)
		registerVal2.upArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.upArrow:setZRot(180.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.currentItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dividor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setLeftRight(false, false, 42.000000, 58.000000)
		registerVal2.downArrow:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.downArrow:setZRot(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1DEE_
	registerVal8.NoItems = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AtTopAndBottom"
	local function __FUNC_217B_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTopAndBottom")
	end

	registerVal11.condition = __FUNC_217B_
	local registerVal12 = {}
	registerVal12.stateName = "AtTop"
	local function __FUNC_21E7_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTop")
	end

	registerVal12.condition = __FUNC_21E7_
	local registerVal13 = {}
	registerVal13.stateName = "AtBottom"
	local function __FUNC_224A_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtBottom")
	end

	registerVal13.condition = __FUNC_224A_
	local registerVal14 = {}
	registerVal14.stateName = "NoItems"
	local function __FUNC_22B1_(arg0, arg1, arg2)
		return true
	end

	registerVal14.condition = __FUNC_22B1_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

