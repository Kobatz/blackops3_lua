-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.FileShare.FileshareBookmarkedItem")
require("ui.uieditor.widgets.Theater.Theater_TextLable")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsFeaturedItemLarge = registerVal1
function CoD.GroupsFeaturedItemLarge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.GroupsFeaturedItemLarge)
	registerVal2.id = "GroupsFeaturedItemLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 643.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -4.500000, 647.500000)
	registerVal3:setTopBottom(false, true, -461.250000, 83.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.WCFileshareIconExtraCamRender0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, -25.000000)
	registerVal4:setAlpha(0.240000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 1.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.MapImage = registerVal5
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(false, false, -321.500000, 321.500000)
	registerVal6:setTopBottom(false, false, -174.000000, 173.000000)
	local function __FUNC_1B3C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_SCREENSHOT", registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "fileId", true, __FUNC_1B3C_)
	registerVal2:addElement(registerVal6)
	registerVal2.Screenshot = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -118.500000, 125.500000)
	registerVal7:setTopBottom(false, false, -135.750000, 108.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.GameTypeImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -25.000000, 0.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.800000)
	registerVal2:addElement(registerVal8)
	registerVal2.BarBg = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 3.000000, 20.500000)
	registerVal9:setTopBottom(false, true, -22.000000, -4.000000)
	local function __FUNC_1C2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(FileshareGetCategoryIcon(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "fileCategory", true, __FUNC_1C2A_)
	registerVal2:addElement(registerVal9)
	registerVal2.CategoryImage = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -206.130000, -5.000000)
	registerVal10:setTopBottom(false, true, -22.000000, -4.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TimeText = registerVal10
	local registerVal11 = CoD.TextWithBg.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -44.500000, 2.000000)
	registerVal11:setTopBottom(true, false, -0.250000, 19.750000)
	registerVal11:setScale(0.900000)
	registerVal11.Bg:setAlpha(0.600000)
	registerVal11.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal11)
	registerVal2.Duration = registerVal11
	local registerVal12 = CoD.FileshareBookmarkedItem.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 133.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_1D06_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1D06_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "IconOnly"
	local function __FUNC_1D56_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBookmarked")
	end

	registerVal16.condition = __FUNC_1D56_
	local registerVal17 = {}
	registerVal17.stateName = "IconWithText"
	local function __FUNC_1DCC_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_1DCC_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_1E19_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBookmarked"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "isBookmarked", true, __FUNC_1E19_)
	registerVal2:addElement(registerVal12)
	registerVal2.BookmarkedItem = registerVal12
	local registerVal13 = CoD.Theater_TextLable.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 1.000000, 225.000000)
	registerVal13:setTopBottom(false, true, -46.000000, -25.000000)
	registerVal13.itemName:setRGB(0.990000, 0.990000, 0.990000)
	registerVal13.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal13)
	registerVal2.LabelButton = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -3.000000, 1.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -105.380000, 115.380000)
	registerVal16:setTopBottom(false, false, -120.460000, 92.960000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal16)
	registerVal2.ErrorImage = registerVal16
	local function __FUNC_1F3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(registerVal1)
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_1F3A_)
	local function __FUNC_1FCD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "renderFileId", true, __FUNC_1FCD_)
	local function __FUNC_20AF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal2.MapImage:linkToElementModel(registerVal2, "mapName", true, __FUNC_20AF_)
	local function __FUNC_2183_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setAlpha(registerVal1)
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "showGameTypeImage", true, __FUNC_2183_)
	local function __FUNC_2215_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_2215_)
	local function __FUNC_22C8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.TimeText:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_22C8_)
	local function __FUNC_2382_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Text:setText(Engine.Localize(FileshareGetDurationString(registerVal1)))
		end
	end

	registerVal2.Duration:linkToElementModel(registerVal2, "duration", true, __FUNC_2382_)
	local function __FUNC_2480_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "fileName", true, __FUNC_2480_)
	registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2532_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -461.250000, 83.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.TimeText:setLeftRight(false, true, -206.130000, -5.000000)
		registerVal2.TimeText:setTopBottom(false, true, -22.000000, -4.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2532_
	local function __FUNC_2996_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_2996_
	local function __FUNC_2B4A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_2B4A_
	local function __FUNC_2CF9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_2CF9_
	local function __FUNC_2F39_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -461.250000, 83.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.TimeText:setLeftRight(false, true, -206.130000, -5.000000)
		registerVal2.TimeText:setTopBottom(false, true, -22.000000, -4.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_2F39_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_339E_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -461.250000, 83.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_339E_
	local function __FUNC_37BF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_37BF_
	local function __FUNC_3914_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_3914_
	local function __FUNC_3A6C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_3A6C_
	local function __FUNC_3C4F_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -461.250000, 83.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_3C4F_
	registerVal17.InvalidNormal = registerVal18
	registerVal18 = {}
	local function __FUNC_406F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_406F_
	local function __FUNC_43B0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_43B0_
	registerVal17.InvalidShort = registerVal18
	registerVal18 = {}
	local function __FUNC_46F4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_46F4_
	local function __FUNC_4A5B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_4A5B_
	local function __FUNC_4C64_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_4C64_
	local function __FUNC_4E70_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_4E70_
	local function __FUNC_507C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_507C_
	registerVal17.Short = registerVal18
	registerVal18 = {}
	local function __FUNC_53E3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_53E3_
	local function __FUNC_57A3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_57A3_
	local function __FUNC_5BD7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_5BD7_
	local function __FUNC_5FB7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_5FB7_
	local function __FUNC_6397_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_6397_
	registerVal17.Film = registerVal18
	registerVal18 = {}
	local function __FUNC_6757_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_6757_
	local function __FUNC_6B17_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_6B17_
	local function __FUNC_6D9F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_6D9F_
	local function __FUNC_6FCE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setLeftRight(false, false, -321.500000, 321.500000)
		registerVal2.Screenshot:setTopBottom(false, false, -174.000000, 173.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_6FCE_
	local function __FUNC_72CF_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_72CF_
	registerVal17.Clip = registerVal18
	registerVal18 = {}
	local function __FUNC_768F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_768F_
	local function __FUNC_79F3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_79F3_
	local function __FUNC_7BFC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_7BFC_
	local function __FUNC_7E08_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_7E08_
	local function __FUNC_8014_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, -4.500000, 647.500000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -350.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Screenshot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Active = __FUNC_8014_
	registerVal17.Screenshot = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "InvalidNormal"
	local function __FUNC_837B_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal20.condition = __FUNC_837B_
	local registerVal21 = {}
	registerVal21.stateName = "InvalidShort"
	local function __FUNC_843D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_843D_
	local registerVal22 = {}
	registerVal22.stateName = "Short"
	local function __FUNC_8505_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = IsFileshareCategoryScreenshot(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal22.condition = __FUNC_8505_
	local registerVal23 = {}
	registerVal23.stateName = "Film"
	local function __FUNC_863F_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal23.condition = __FUNC_863F_
	local registerVal24 = {}
	registerVal24.stateName = "Clip"
	local function __FUNC_86F3_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal24.condition = __FUNC_86F3_
	local registerVal25 = {}
	registerVal25.stateName = "Screenshot"
	local function __FUNC_87A7_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryScreenshot(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal25.condition = __FUNC_87A7_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_8861_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isValid", true, __FUNC_8861_)
	local function __FUNC_897D_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.Duration:close()
		arg0.BookmarkedItem:close()
		arg0.LabelButton:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.WCFileshareIconExtraCamRender0:close()
		arg0.MapImage:close()
		arg0.Screenshot:close()
		arg0.GameTypeImage:close()
		arg0.CategoryImage:close()
		arg0.TimeText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_897D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

