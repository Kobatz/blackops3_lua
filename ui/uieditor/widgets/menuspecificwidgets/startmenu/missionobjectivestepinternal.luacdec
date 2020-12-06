-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local function __FUNC_20E_(arg0, arg1)
	local registerVal2, registerVal3 = arg0.stepText:getLocalSize()
	arg0.baseTextHeight = registerVal3
	arg0.baseTextWidth = registerVal2
	local function __FUNC_2CC_(arg0)
		local registerVal2 = arg0.stepText:getText()
		local registerVal1 = Engine.GetNumTextLines(registerVal2, CoD.fonts.Default, arg0.baseTextHeight, arg0.baseTextWidth)
		return ((registerVal1 * arg0.baseTextHeight) + 6.000000)
	end

	arg0.getHeightInList = __FUNC_2CC_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveStepInternal = registerVal2
local function __FUNC_419_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveStepInternal)
	registerVal2.id = "MissionObjectiveStepInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 243.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = CoD.Border.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 23.000000)
	registerVal3:setRGB(0.350000, 0.350000, 0.360000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.checkbox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 16.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 19.000000)
	registerVal4:setRGB(0.350000, 0.350000, 0.360000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.checkMark = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 243.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setRGB(0.350000, 0.350000, 0.360000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.stepText = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B31_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.checkbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkMark:setRGB(0.350000, 0.350000, 0.360000)
		registerVal2.checkMark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.stepText:setLeftRight(true, false, 23.000000, 243.000000)
		registerVal2.stepText:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.stepText:setRGB(0.350000, 0.350000, 0.360000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B31_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_DB3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.checkbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkMark:setRGB(0.410000, 0.740000, 0.270000)
		registerVal2.checkMark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.stepText:setLeftRight(true, false, 23.000000, 243.000000)
		registerVal2.stepText:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.stepText:setRGB(0.410000, 0.740000, 0.270000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DB3_
	registerVal6.Complete = registerVal7
	registerVal7 = {}
	local function __FUNC_1038_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.checkbox:setLeftRight(true, false, 0.000000, 20.000000)
		registerVal2.checkbox:setTopBottom(true, false, 3.000000, 23.000000)
		registerVal2.checkbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkMark:setRGB(0.240000, 0.240000, 0.240000)
		registerVal2.checkMark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.stepText:setRGB(0.350000, 0.350000, 0.360000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1038_
	registerVal6.Active = registerVal7
	registerVal7 = {}
	local function __FUNC_12BB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.checkbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkMark:setRGB(1.000000, 0.070000, 0.070000)
		registerVal2.checkMark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.stepText:setLeftRight(true, false, 23.000000, 243.000000)
		registerVal2.stepText:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.stepText:setRGB(1.000000, 0.070000, 0.070000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_12BB_
	registerVal6.Failed = registerVal7
	registerVal7 = {}
	local function __FUNC_1536_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.checkbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkMark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.stepText:setLeftRight(true, false, 0.000000, 243.000000)
		registerVal2.stepText:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.stepText:setRGB(0.350000, 0.350000, 0.360000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1536_
	registerVal6.Description = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1789_(arg0)
		arg0.checkbox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1789_)
	if __FUNC_20E_ then
		__FUNC_20E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveStepInternal.new = __FUNC_419_
