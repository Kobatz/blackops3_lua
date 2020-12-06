-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CD_(arg0, arg1, arg2)
	arg0.LeftOn:setHandleMouse(true)
	local function __FUNC_2D6_(arg0, arg2)
		CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_LEFT)
		return true
	end

	arg0.LeftOn:registerEventHandler("button_action", __FUNC_2D6_)
	arg0.RightOn:setHandleMouse(true)
	local function __FUNC_3B9_(arg0, arg2)
		CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_RIGHT)
		return true
	end

	arg0.RightOn:registerEventHandler("button_action", __FUNC_3B9_)
end

local function __FUNC_49E_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1CD_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.BM_HorizontalCounter = registerVal3
local function __FUNC_50F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_HorizontalCounter)
	registerVal2.id = "BM_HorizontalCounter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 16.500000, 195.500000)
	registerVal3:setTopBottom(true, false, -13.070000, 38.070000)
	registerVal3:setScale(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_counterbacking"))
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -35.000000, -5.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setRGB(0.600000, 1.000000, 0.930000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setScale(0.900000)
	registerVal4:setText(Engine.Localize("25"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.currentItem = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, 1.000000, 7.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setRGB(0.600000, 1.000000, 0.930000)
	registerVal5:setAlpha(0.650000)
	registerVal5:setText(Engine.Localize("/"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.dividor = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 13.000000, 43.000000)
	registerVal6:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal6:setRGB(0.600000, 1.000000, 0.930000)
	registerVal6:setAlpha(0.650000)
	registerVal6:setScale(0.900000)
	registerVal6:setText(Engine.Localize("25"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.count = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 35.000000, 72.000000)
	registerVal7:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal7:setScale(0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_counterarrowoff"))
	registerVal2:addElement(registerVal7)
	registerVal2.RightOff = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 35.000000, 72.000000)
	registerVal8:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal8:setScale(0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_counterarrowon"))
	registerVal2:addElement(registerVal8)
	registerVal2.RightOn = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -65.000000, -28.000000)
	registerVal9:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal9:setZRot(180.000000)
	registerVal9:setScale(0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_counterarrowoff"))
	registerVal2:addElement(registerVal9)
	registerVal2.LeftOff = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -65.000000, -28.000000)
	registerVal10:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setScale(0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_counterarrowon"))
	registerVal2:addElement(registerVal10)
	registerVal2.LeftOn = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_118B_()
		registerVal2:setupElementClipCounter(7.000000)
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
		registerVal2.RightOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RightOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LeftOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_118B_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_148C_()
		registerVal2:setupElementClipCounter(7.000000)
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
		registerVal2.RightOff:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RightOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LeftOff:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_148C_
	registerVal11.AtLeftAndRight = registerVal12
	registerVal12 = {}
	local function __FUNC_1795_()
		registerVal2:setupElementClipCounter(7.000000)
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
		registerVal2.RightOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RightOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LeftOff:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1795_
	registerVal11.AtLeft = registerVal12
	registerVal12 = {}
	local function __FUNC_1A9D_()
		registerVal2:setupElementClipCounter(7.000000)
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
		registerVal2.RightOff:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RightOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LeftOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1A9D_
	registerVal11.AtRight = registerVal12
	registerVal12 = {}
	local function __FUNC_1DA5_()
		registerVal2:setupElementClipCounter(6.000000)
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
		registerVal2.RightOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LeftOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.LeftOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1DA5_
	registerVal11.NoItems = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "AtLeftAndRight"
	local function __FUNC_204E_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtLeftAndRight")
	end

	registerVal14.condition = __FUNC_204E_
	local registerVal15 = {}
	registerVal15.stateName = "AtLeft"
	local function __FUNC_20BB_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtLeft")
	end

	registerVal15.condition = __FUNC_20BB_
	local registerVal16 = {}
	registerVal16.stateName = "AtRight"
	local function __FUNC_211F_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "AtRight")
	end

	registerVal16.condition = __FUNC_211F_
	local registerVal17 = {}
	registerVal17.stateName = "NoItems"
	local function __FUNC_2184_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_2184_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal13)
	if __FUNC_49E_ then
		__FUNC_49E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_HorizontalCounter.new = __FUNC_50F_
