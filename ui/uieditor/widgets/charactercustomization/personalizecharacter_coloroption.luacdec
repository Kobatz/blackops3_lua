-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.colorSwatch")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_25D_(arg0, arg1)
	local registerVal2, registerVal3 = arg0:getLocalSize()
	local function __FUNC_2CE_()
		if arg0.gridInfoTable then
			if arg0.gridInfoTable.parentGrid.activeWidget == arg0 then
				return registerVal2
			else
				return (registerVal2 / 2.000000)
			end
		end
	end

	arg0.getWidthInList = __FUNC_2CE_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacter_ColorOption = registerVal2
local function __FUNC_3A2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacter_ColorOption)
	registerVal2.id = "PersonalizeCharacter_ColorOption"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = CoD.colorSwatch.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 12.500000, -12.500000)
	local function __FUNC_C63_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.background:setRGB(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "color", true, __FUNC_C63_)
	local function __FUNC_D13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.background:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "icon", true, __FUNC_D13_)
	registerVal2:addElement(registerVal3)
	registerVal2.colorSwatch = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 25.000000, 42.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleNumBrdr0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -6.000000, 1.000000)
	registerVal5:setTopBottom(false, false, -3.000000, 4.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(270.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_arrowfull"))
	registerVal2:addElement(registerVal5)
	registerVal2.leftArrow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -1.000000, 6.000000)
	registerVal6:setTopBottom(false, false, -3.000000, 4.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_arrowfull"))
	registerVal2:addElement(registerVal6)
	registerVal2.rightArrow = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, false, -25.000000, 25.000000)
	registerVal7:setTopBottom(false, true, 1.000000, 17.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_DE4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "xOfY", true, __FUNC_DE4_)
	registerVal2:addElement(registerVal7)
	registerVal2.count = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_E9E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal2.colorSwatch:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.colorSwatch:setTopBottom(true, true, 12.500000, -12.500000)
		registerVal2.colorSwatch.border:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.colorSwatch.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E9E_
	local function __FUNC_11FD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal2.colorSwatch:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.colorSwatch:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.colorSwatch.border:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.colorSwatch.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FETitleNumBrdr0:setTopBottom(false, false, 25.000000, 42.000000)
		registerVal2.FETitleNumBrdr0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.leftArrow:setLeftRight(true, false, -6.000000, 1.000000)
		registerVal2.leftArrow:setTopBottom(false, false, -3.000000, 4.000000)
		registerVal2.leftArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.leftArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setLeftRight(false, true, -1.000000, 6.000000)
		registerVal2.rightArrow:setTopBottom(false, false, -3.000000, 4.000000)
		registerVal2.rightArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.rightArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.count:setLeftRight(false, false, -25.000000, 25.000000)
		registerVal2.count:setTopBottom(false, true, 1.000000, 17.000000)
		registerVal2.count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_11FD_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_170D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal2.colorSwatch.border:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.colorSwatch.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_170D_
	local function __FUNC_19E7_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.border:completeAnimation()
		registerVal2.colorSwatch:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.colorSwatch:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.colorSwatch.border:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.colorSwatch.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Active = __FUNC_19E7_
	registerVal8.ListNotInFocus = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "ListNotInFocus"
	local function __FUNC_1CDE_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_1CDE_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_1D39_(arg0)
		arg0.colorSwatch:close()
		arg0.FETitleNumBrdr0:close()
		arg0.count:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D39_)
	if __FUNC_25D_ then
		__FUNC_25D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PersonalizeCharacter_ColorOption.new = __FUNC_3A2_
