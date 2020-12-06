-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.FileShare.FileshareBookmarkedItem")
require("ui.uieditor.widgets.Theater.Theater_TextLable")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectorItemLarge = registerVal1
function CoD.FileshareSelectorItemLarge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectorItemLarge)
	registerVal2.id = "FileshareSelectorItemLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 235.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 230.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 159.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.sizeElement = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.500000, 244.500000)
	registerVal4:setTopBottom(false, true, -234.500000, -97.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.WCFileshareIconExtraCamRender0 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal5:setTopBottom(true, true, -2.000000, -25.000000)
	registerVal5:setAlpha(0.240000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, -25.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.MapImage = registerVal6
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1C4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "fileId", true, __FUNC_1C4C_)
	registerVal2:addElement(registerVal7)
	registerVal2.Thumbnail = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -54.500000, 61.500000)
	registerVal8:setTopBottom(false, false, -71.750000, 44.250000)
	registerVal2:addElement(registerVal8)
	registerVal2.GameTypeImage = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -25.000000, 0.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.800000)
	registerVal2:addElement(registerVal9)
	registerVal2.BarBg = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 3.000000, 20.500000)
	registerVal10:setTopBottom(false, true, -22.000000, -4.000000)
	local function __FUNC_1D39_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(FileshareGetCategoryIcon(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "fileCategory", true, __FUNC_1D39_)
	registerVal2:addElement(registerVal10)
	registerVal2.CategoryImage = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 23.880000, 225.000000)
	registerVal11:setTopBottom(false, true, -22.500000, -4.500000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.TimeText = registerVal11
	local registerVal12 = CoD.TextWithBg.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -44.500000, 2.000000)
	registerVal12:setTopBottom(true, false, -0.250000, 19.750000)
	registerVal12:setScale(0.900000)
	registerVal12.Bg:setAlpha(0.600000)
	registerVal12.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal12)
	registerVal2.Duration = registerVal12
	local registerVal13 = CoD.FileshareBookmarkedItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 0.000000, 133.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal13:setAlpha(0.000000)
	local function __FUNC_1E16_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1E16_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "IconOnly"
	local function __FUNC_1E66_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBookmarked")
	end

	registerVal17.condition = __FUNC_1E66_
	local registerVal18 = {}
	registerVal18.stateName = "IconWithText"
	local function __FUNC_1EDC_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1EDC_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_1F29_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBookmarked"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "isBookmarked", true, __FUNC_1F29_)
	registerVal2:addElement(registerVal13)
	registerVal2.BookmarkedItem = registerVal13
	local registerVal14 = CoD.Theater_TextLable.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 1.000000, 225.000000)
	registerVal14:setTopBottom(false, true, -46.000000, -25.000000)
	registerVal14.itemName:setRGB(0.990000, 0.990000, 0.990000)
	registerVal14.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal14)
	registerVal2.LabelButton = registerVal14
	local registerVal15 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.StartMenuframenoBG0 = registerVal15
	registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	registerVal17 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal17:setTopBottom(true, false, -3.000000, 1.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZoom(1.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBarT = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 81.880000, 163.130000)
	registerVal18:setTopBottom(true, false, 71.250000, 136.250000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal18)
	registerVal2.ErrorImage = registerVal18
	local function __FUNC_204A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setAlpha(registerVal1)
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_204A_)
	local function __FUNC_20DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "renderFileId", true, __FUNC_20DD_)
	local function __FUNC_21BF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal2.MapImage:linkToElementModel(registerVal2, "mapName", true, __FUNC_21BF_)
	local function __FUNC_2293_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(registerVal1)
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "showGameTypeImage", true, __FUNC_2293_)
	local function __FUNC_2325_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_2325_)
	local function __FUNC_23D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.TimeText:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_23D8_)
	local function __FUNC_2492_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Text:setText(Engine.Localize(FileshareGetDurationString(registerVal1)))
		end
	end

	registerVal2.Duration:linkToElementModel(registerVal2, "duration", true, __FUNC_2492_)
	local function __FUNC_2590_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "fileName", true, __FUNC_2590_)
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_2642_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setLeftRight(true, false, 81.880000, 163.130000)
		registerVal2.ErrorImage:setTopBottom(true, false, 71.250000, 136.500000)
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_2642_
	local function __FUNC_2BBE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.LoseFocus = __FUNC_2BBE_
	local function __FUNC_2F4A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.GainFocus = __FUNC_2F4A_
	local function __FUNC_32D6_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.Focus = __FUNC_32D6_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_36BC_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setLeftRight(true, false, 81.880000, 163.130000)
		registerVal2.ErrorImage:setTopBottom(true, false, 71.250000, 136.250000)
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_36BC_
	local function __FUNC_3C3A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.LoseFocus = __FUNC_3C3A_
	local function __FUNC_3F6D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.GainFocus = __FUNC_3F6D_
	local function __FUNC_42A1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 2.000000, 234.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -233.000000, -25.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.Focus = __FUNC_42A1_
	registerVal19.InvalidNormal = registerVal20
	registerVal20 = {}
	local function __FUNC_462F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 85.000000, 236.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -151.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_462F_
	registerVal19.InvalidShort = registerVal20
	registerVal20 = {}
	local function __FUNC_4A01_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 85.000000, 236.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -151.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_4A01_
	local function __FUNC_4EB4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 85.000000, 236.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -151.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.GainFocus = __FUNC_4EB4_
	local function __FUNC_528E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 85.000000, 236.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -151.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.Focus = __FUNC_528E_
	local function __FUNC_5666_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 85.000000, 236.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -151.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.LoseFocus = __FUNC_5666_
	registerVal19.Short = registerVal20
	registerVal20 = {}
	local function __FUNC_5A3E_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapImage:setTopBottom(true, true, 0.000000, -25.000000)
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_5A3E_
	local function __FUNC_6026_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.GainFocus = __FUNC_6026_
	local function __FUNC_64FC_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.Focus = __FUNC_64FC_
	local function __FUNC_69DC_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.LoseFocus = __FUNC_69DC_
	registerVal19.Film = registerVal20
	registerVal20 = {}
	local function __FUNC_6E5B_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MapImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.MapImage:setTopBottom(true, true, 0.000000, -25.000000)
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Thumbnail:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.CategoryImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TimeText:setLeftRight(true, false, 23.880000, 228.130000)
		registerVal2.TimeText:setTopBottom(false, true, -22.500000, -4.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_6E5B_
	local function __FUNC_74E0_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.GainFocus = __FUNC_74E0_
	local function __FUNC_7962_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 0.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.Focus = __FUNC_7962_
	local function __FUNC_7DEA_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.sizeElement:setLeftRight(true, false, 0.000000, 245.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 97.000000, 237.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender0:setLeftRight(true, false, 1.000000, 244.000000)
		registerVal2.WCFileshareIconExtraCamRender0:setTopBottom(false, true, -137.000000, -1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.GameTypeImage:setLeftRight(false, false, -54.500000, 61.500000)
		registerVal2.GameTypeImage:setTopBottom(false, false, -71.750000, 44.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Duration:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.LoseFocus = __FUNC_7DEA_
	registerVal19.Clip = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "InvalidNormal"
	local function __FUNC_8211_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		else
		end
		return true
	end

	registerVal22.condition = __FUNC_8211_
	local registerVal23 = {}
	registerVal23.stateName = "InvalidShort"
	local function __FUNC_82CD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isValid")
		if not registerVal3 then
			registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		else
		end
		return true
	end

	registerVal23.condition = __FUNC_82CD_
	local registerVal24 = {}
	registerVal24.stateName = "Short"
	local function __FUNC_838D_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal24.condition = __FUNC_838D_
	local registerVal25 = {}
	registerVal25.stateName = "Film"
	local function __FUNC_847C_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal25.condition = __FUNC_847C_
	local registerVal26 = {}
	registerVal26.stateName = "Clip"
	local function __FUNC_852B_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		else
		end
		return true
	end

	registerVal26.condition = __FUNC_852B_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_85D7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isValid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isValid", true, __FUNC_85D7_)
	registerVal22 = Engine.GetGlobalModel()
	registerVal21 = Engine.GetModel(registerVal22, "fileshareRoot.isNormalSize")
	local function __FUNC_86F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isNormalSize"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal21, __FUNC_86F1_)
	local function __FUNC_8820_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.Duration:close()
		arg0.BookmarkedItem:close()
		arg0.LabelButton:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.WCFileshareIconExtraCamRender0:close()
		arg0.MapImage:close()
		arg0.Thumbnail:close()
		arg0.GameTypeImage:close()
		arg0.CategoryImage:close()
		arg0.TimeText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8820_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

