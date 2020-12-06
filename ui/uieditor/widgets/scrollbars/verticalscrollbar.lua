-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local function __FUNC_20B_(arg0, arg1)
	arg0:setHandleMouse(true)
	local function __FUNC_2C0_(arg0, arg1)
	end

	arg0:registerEventHandler("button_action", __FUNC_2C0_)
	local function __FUNC_2EC_(arg0, arg1)
		local registerVal2 = arg0:getParent()
		if registerVal2 then
			local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getRect()
			local registerVal8 = LUI.clamp((((arg1.y - (arg0.slider.barHeight / 2.000000)) - registerVal5) / (registerVal7 - registerVal5)), 0.000000, 1.000000)
			registerVal2:updateLayoutBasedOnVScrollbarPercentage(registerVal8)
		end
	end

	arg0:registerEventHandler("mousedrag", __FUNC_2EC_)
end

local function __FUNC_43E_(arg0, arg1)
	if CoD.isPC then
		__FUNC_20B_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.verticalScrollbar = registerVal3
local function __FUNC_4AB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.verticalScrollbar)
	registerVal2.id = "verticalScrollbar"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 10.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 10.000000)
	registerVal3:setImage(RegisterImage("uie_ui_arrow_up"))
	registerVal2:addElement(registerVal3)
	registerVal2.topArrow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -10.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_ui_arrow_down"))
	registerVal2:addElement(registerVal4)
	registerVal2.bottomArrow = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 10.000000, -10.000000)
	registerVal5:setRGB(0.790000, 0.780000, 0.780000)
	registerVal2:addElement(registerVal5)
	registerVal2.sliderBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal6:setTopBottom(true, true, 12.000000, -12.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.slider = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_ACF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.topArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bottomArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.sliderBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_ACF_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CD3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.topArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bottomArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.sliderBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CD3_
	registerVal7.AtTop = registerVal8
	registerVal8 = {}
	local function __FUNC_EDC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.topArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bottomArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.sliderBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.slider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_EDC_
	registerVal7.AtTopAndBottom = registerVal8
	registerVal8 = {}
	local function __FUNC_10E3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.topArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bottomArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.sliderBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_10E3_
	registerVal7.AtBottom = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_12EC_(arg0)
		arg0.sliderBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12EC_)
	if __FUNC_43E_ then
		__FUNC_43E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.verticalScrollbar.new = __FUNC_4AB_
