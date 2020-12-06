-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelectorItemLarge_Image")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.FileShare.FileshareBookmarkedItem")
require("ui.uieditor.widgets.Theater.Theater_TextLable")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectorItemLarge_NeverNormalSize = registerVal1
function CoD.FileshareSelectorItemLarge_NeverNormalSize.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectorItemLarge_NeverNormalSize)
	registerVal2.id = "FileshareSelectorItemLarge_NeverNormalSize"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 151.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareSelectorItemLarge_Image.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -117.500000, 117.500000)
	registerVal3:setTopBottom(false, false, -75.500000, 75.500000)
	local function __FUNC_1CCB_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_1CCB_)
	local function __FUNC_1D1A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.WCFileshareIconExtraCamRender0:setAlpha(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_1D1A_)
	local function __FUNC_1DE1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.WCFileshareIconExtraCamRender0:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "renderFileId", true, __FUNC_1DE1_)
	local function __FUNC_1EF7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.MapImage:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "mapName", true, __FUNC_1EF7_)
	local function __FUNC_1FE9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Thumbnail:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "fileId", true, __FUNC_1FE9_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InvalidNormal"
	local function __FUNC_20F4_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_20F4_
	local registerVal8 = {}
	registerVal8.stateName = "InvalidShort"
	local function __FUNC_21B9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_21B9_
	local registerVal9 = {}
	registerVal9.stateName = "Short"
	local function __FUNC_2281_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		registerVal3 = IsFileshareCategoryScreenshot(registerVal2, arg2, arg1)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_2281_
	local registerVal10 = {}
	registerVal10.stateName = "Film"
	local function __FUNC_23BB_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_23BB_
	local registerVal11 = {}
	registerVal11.stateName = "Clip"
	local function __FUNC_2467_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2467_
	local registerVal12 = {}
	registerVal12.stateName = "Screenshot"
	local function __FUNC_2513_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryScreenshot(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = FileshareIsElementNormalSizeIcon(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2513_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_25C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isValid", true, __FUNC_25C5_)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, -25.000000)
	registerVal4:setAlpha(0.240000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -54.500000, 61.500000)
	registerVal5:setTopBottom(false, false, -71.750000, 44.250000)
	registerVal2:addElement(registerVal5)
	registerVal2.GameTypeImage = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -25.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.800000)
	registerVal2:addElement(registerVal6)
	registerVal2.BarBg = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 3.000000, 20.500000)
	registerVal7:setTopBottom(false, true, -22.000000, -4.000000)
	local function __FUNC_26E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(FileshareGetCategoryIcon(registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "fileCategory", true, __FUNC_26E1_)
	registerVal2:addElement(registerVal7)
	registerVal2.CategoryImage = registerVal7
	registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 23.880000, 225.000000)
	registerVal8:setTopBottom(false, true, -22.500000, -4.500000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TimeText = registerVal8
	registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -44.500000, 2.000000)
	registerVal9:setTopBottom(true, false, -0.250000, 19.750000)
	registerVal9:setScale(0.900000)
	registerVal9.Bg:setAlpha(0.600000)
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal9)
	registerVal2.Duration = registerVal9
	registerVal10 = CoD.FileshareBookmarkedItem.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 133.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_27BE_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_27BE_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "IconOnly"
	local function __FUNC_280E_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBookmarked")
	end

	registerVal14.condition = __FUNC_280E_
	local registerVal15 = {}
	registerVal15.stateName = "IconWithText"
	local function __FUNC_2884_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_2884_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_28D1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBookmarked"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isBookmarked", true, __FUNC_28D1_)
	registerVal2:addElement(registerVal10)
	registerVal2.BookmarkedItem = registerVal10
	registerVal11 = CoD.Theater_TextLable.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1.000000, 225.000000)
	registerVal11:setTopBottom(false, true, -46.000000, -25.000000)
	registerVal11.itemName:setRGB(0.990000, 0.990000, 0.990000)
	registerVal11.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal11)
	registerVal2.LabelButton = registerVal11
	registerVal12 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.StartMenuframenoBG0 = registerVal12
	registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(true, false, -3.000000, 1.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 76.880000, 158.130000)
	registerVal15:setTopBottom(true, false, 29.250000, 94.250000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal15)
	registerVal2.ErrorImage = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.ProcessingOverlay = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal17:setTopBottom(false, false, -27.000000, 7.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setText(Engine.Localize("GROUPS_PROCESSING"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.ProcessingText = registerVal17
	local function __FUNC_29F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "showGameTypeImage", true, __FUNC_29F2_)
	local function __FUNC_2A85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_2A85_)
	local function __FUNC_2B38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.TimeText:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_2B38_)
	local function __FUNC_2BF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.Text:setText(Engine.Localize(FileshareGetDurationString(registerVal1)))
		end
	end

	registerVal2.Duration:linkToElementModel(registerVal2, "duration", true, __FUNC_2BF2_)
	local function __FUNC_2CF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "fileName", true, __FUNC_2CF0_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_2DA2_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setLeftRight(true, false, 81.880000, 163.130000)
		registerVal2.ErrorImage:setTopBottom(true, false, 71.250000, 136.500000)
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_2DA2_
	local function __FUNC_3186_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.LoseFocus = __FUNC_3186_
	local function __FUNC_339B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.GainFocus = __FUNC_339B_
	local function __FUNC_35AA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.Focus = __FUNC_35AA_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_384A_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_384A_
	local function __FUNC_3B47_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.GainFocus = __FUNC_3B47_
	local function __FUNC_3DB1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.Focus = __FUNC_3DB1_
	local function __FUNC_401D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.LoseFocus = __FUNC_401D_
	registerVal18.Processing = registerVal19
	registerVal19 = {}
	local function __FUNC_4289_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_4289_
	registerVal18.InvalidShort = registerVal19
	registerVal19 = {}
	local function __FUNC_44FE_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_44FE_
	local function __FUNC_47F6_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.GainFocus = __FUNC_47F6_
	local function __FUNC_4A61_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.Focus = __FUNC_4A61_
	local function __FUNC_4CCD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.LoseFocus = __FUNC_4CCD_
	registerVal18.Short = registerVal19
	registerVal19 = {}
	local function __FUNC_4F39_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_4F39_
	local function __FUNC_528E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.GainFocus = __FUNC_528E_
	local function __FUNC_5517_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.Focus = __FUNC_5517_
	local function __FUNC_57A7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.LoseFocus = __FUNC_57A7_
	registerVal18.Film = registerVal19
	registerVal19 = {}
	local function __FUNC_59DB_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.TimeText:setLeftRight(true, false, 23.880000, 228.130000)
		registerVal2.TimeText:setTopBottom(false, true, -22.500000, -4.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ProcessingOverlay:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ProcessingText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_59DB_
	local function __FUNC_5DF8_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.GainFocus = __FUNC_5DF8_
	local function __FUNC_6083_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.Focus = __FUNC_6083_
	local function __FUNC_6313_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal19.LoseFocus = __FUNC_6313_
	registerVal18.Clip = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Processing"
	local function __FUNC_6547_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_6547_
	local registerVal22 = {}
	registerVal22.stateName = "InvalidShort"
	local function __FUNC_6591_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_6591_
	local registerVal23 = {}
	registerVal23.stateName = "Short"
	local function __FUNC_6607_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal23.condition = __FUNC_6607_
	local registerVal24 = {}
	registerVal24.stateName = "Film"
	local function __FUNC_66B6_(arg0, arg2, arg3)
		return IsFileshareCategoryFilm(registerVal2, arg2, arg1)
	end

	registerVal24.condition = __FUNC_66B6_
	local registerVal25 = {}
	registerVal25.stateName = "Clip"
	local function __FUNC_6719_(arg0, arg2, arg3)
		return IsFileshareCategoryClip(registerVal2, arg2, arg1)
	end

	registerVal25.condition = __FUNC_6719_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_677D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isValid", true, __FUNC_677D_)
	local function __FUNC_6899_(arg0)
		arg0.Image:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.Duration:close()
		arg0.BookmarkedItem:close()
		arg0.LabelButton:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.GameTypeImage:close()
		arg0.CategoryImage:close()
		arg0.TimeText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6899_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

