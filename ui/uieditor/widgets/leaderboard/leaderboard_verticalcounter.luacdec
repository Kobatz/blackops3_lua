-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_VerticalCounter = registerVal1
function CoD.Leaderboard_VerticalCounter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_VerticalCounter)
	registerVal2.id = "Leaderboard_VerticalCounter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -76.000000, -8.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setAlpha(0.650000)
	registerVal3:setText(Engine.Localize("8888888888"))
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
	registerVal5:setLeftRight(false, false, 8.000000, 76.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setAlpha(0.650000)
	registerVal5:setText(Engine.Localize("8888888888"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.count = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -93.000000, -77.000000)
	registerVal6:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal6:setRGB(1.000000, 0.410000, 0.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.upArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 77.000000, 93.000000)
	registerVal7:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal7:setRGB(1.000000, 0.410000, 0.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.downArrow = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B73_()
		registerVal2:setupElementClipCounter(5.000000)
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
		registerVal2.upArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B73_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E29_()
		registerVal2:setupElementClipCounter(5.000000)
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
		registerVal2.upArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E29_
	registerVal8.AtTopAndBottom = registerVal9
	registerVal9 = {}
	local function __FUNC_107F_()
		registerVal2:setupElementClipCounter(5.000000)
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
		registerVal2.upArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_107F_
	registerVal8.AtTop = registerVal9
	registerVal9 = {}
	local function __FUNC_1344_()
		registerVal2:setupElementClipCounter(5.000000)
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
		registerVal2.upArrow:setRGB(0.200000, 0.290000, 0.330000)
		registerVal2.upArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downArrow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.downArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1344_
	registerVal8.AtBottom = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AtTopAndBottom"
	local function __FUNC_160C_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTopAndBottom")
	end

	registerVal11.condition = __FUNC_160C_
	local registerVal12 = {}
	registerVal12.stateName = "AtTop"
	local function __FUNC_167B_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtTop")
	end

	registerVal12.condition = __FUNC_167B_
	local registerVal13 = {}
	registerVal13.stateName = "AtBottom"
	local function __FUNC_16DE_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtBottom")
	end

	registerVal13.condition = __FUNC_16DE_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

