-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SegmentButton = registerVal1
function CoD.SegmentButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SegmentButton)
	registerVal2.id = "SegmentButton"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal5:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(true, true, 1.000000, -2.000000)
	registerVal6:setTopBottom(true, true, 1.000000, -2.500000)
	local function __FUNC_120A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "segmentNumber", true, __FUNC_120A_)
	registerVal2:addElement(registerVal6)
	registerVal2.ImageViewer = registerVal6
	local registerVal7 = CoD.TextWithBg.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -45.500000, -2.000000)
	registerVal7:setTopBottom(true, false, 4.000000, 22.000000)
	registerVal7.Bg:setAlpha(0.500000)
	registerVal7.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal7)
	registerVal2.durationText = registerVal7
	local registerVal8 = CoD.TextWithBg.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal8:setTopBottom(false, true, -23.000000, -3.000000)
	registerVal8.Bg:setAlpha(0.500000)
	registerVal8.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal8)
	registerVal2.segmentName = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 2.000000, 27.500000)
	registerVal9:setTopBottom(true, false, 4.000000, 22.000000)
	registerVal9.Bg:setRGB(1.000000, 1.000000, 1.000000)
	registerVal9.Bg:setAlpha(0.750000)
	registerVal9.Text:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal9)
	registerVal2.segmentNumber = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local function __FUNC_12F5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.bg:linkToElementModel(registerVal2, "img", true, __FUNC_12F5_)
	local function __FUNC_13A8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.durationText:linkToElementModel(registerVal2, "duration", true, __FUNC_13A8_)
	local function __FUNC_147C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.segmentName:linkToElementModel(registerVal2, "name", true, __FUNC_147C_)
	local function __FUNC_1550_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.segmentNumber:linkToElementModel(registerVal2, "segmentNumber", true, __FUNC_1550_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1624_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.bg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.durationText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.segmentName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1624_
	local function __FUNC_1A97_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -1.000000, 3.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.000000, 1.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_1A97_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1EBA_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.WaypointNeutral.r, ColorSet.WaypointNeutral.g, ColorSet.WaypointNeutral.b)
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.durationText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.segmentName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1EBA_
	registerVal12.EmptyState = registerVal13
	registerVal13 = {}
	local function __FUNC_22C3_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.bg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.durationText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.segmentName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_22C3_
	local function __FUNC_26C7_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.bg:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.bg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_26C7_
	registerVal12.SelectedState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "EmptyState"
	local function __FUNC_29A3_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal15.condition = __FUNC_29A3_
	local registerVal16 = {}
	registerVal16.stateName = "SelectedState"
	local function __FUNC_29F4_(arg0, arg2, arg3)
		return IsSegmentInSelectedState(arg2, arg1)
	end

	registerVal16.condition = __FUNC_29F4_
	registerVal14 = {registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2A56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2A56_)
	local function __FUNC_2B72_(arg0)
		arg0.BoxButtonLrgInactive0:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.durationText:close()
		arg0.segmentName:close()
		arg0.segmentNumber:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.bg:close()
		arg0.ImageViewer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2B72_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

