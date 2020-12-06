-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.Theater.Theater_TextLable")
require("ui.uieditor.widgets.FileShare.FileshareBookmarkedItem")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectorItemWide = registerVal1
function CoD.FileshareSelectorItemWide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectorItemWide)
	registerVal2.id = "FileshareSelectorItemWide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.150000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FileImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 72.000000, 136.000000)
	registerVal5:setTopBottom(true, false, 23.500000, 87.500000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_menu_simple_publish_green"))
	registerVal2:addElement(registerVal5)
	registerVal2.PlusImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.WCFileshareIconExtraCamRender0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal7:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.MapImage = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_16B8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "fileId", true, __FUNC_16B8_)
	registerVal2:addElement(registerVal8)
	registerVal2.Thumbnail = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal9:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.tint = registerVal9
	local registerVal10 = CoD.TextWithBg.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -35.000000, 1.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 16.250000)
	registerVal10:setScale(0.800000)
	registerVal10.Bg:setAlpha(0.400000)
	registerVal10.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal10)
	registerVal2.Duration = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -36.000000, 36.000000)
	registerVal11:setTopBottom(false, false, -42.000000, 30.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.GameTypeImage = registerVal11
	local registerVal12 = CoD.Theater_TextLable.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 1.000000, 199.000000)
	registerVal12:setTopBottom(false, true, -20.000000, -1.000000)
	registerVal12.itemName:setRGB(0.990000, 0.990000, 0.990000)
	registerVal12.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal12)
	registerVal2.LabelButton = registerVal12
	local registerVal13 = CoD.FileshareBookmarkedItem.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal13:setAlpha(0.000000)
	local function __FUNC_17A5_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_17A5_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "IconOnly"
	local function __FUNC_17F6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBookmarked")
	end

	registerVal17.condition = __FUNC_17F6_
	local registerVal18 = {}
	registerVal18.stateName = "IconWithText"
	local function __FUNC_186C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_186C_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_18B9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBookmarked"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "isBookmarked", true, __FUNC_18B9_)
	registerVal2:addElement(registerVal13)
	registerVal2.BookmarkedItem = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal14:setTopBottom(true, false, -3.000000, 1.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal15:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarB = registerVal15
	registerVal16 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal16:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.StartMenuframenoBG0 = registerVal16
	local function __FUNC_19DA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setAlpha(registerVal1)
		end
	end

	registerVal2.FileImage:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_19DA_)
	local function __FUNC_1A6D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.FileImage:linkToElementModel(registerVal2, "fileImage", true, __FUNC_1A6D_)
	local function __FUNC_1B20_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal2.PlusImage:linkToElementModel(registerVal2, "showPlusImage", true, __FUNC_1B20_)
	local function __FUNC_1BB5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setAlpha(registerVal1)
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_1BB5_)
	local function __FUNC_1C49_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "fileId", true, __FUNC_1C49_)
	local function __FUNC_1D2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal2.MapImage:linkToElementModel(registerVal2, "mapName", true, __FUNC_1D2B_)
	local function __FUNC_1DFF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Text:setText(Engine.Localize(FileshareGetDurationString(registerVal1)))
		end
	end

	registerVal2.Duration:linkToElementModel(registerVal2, "duration", true, __FUNC_1DFF_)
	local function __FUNC_1EFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_1EFC_)
	local function __FUNC_1FB0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "fileName", true, __FUNC_1FB0_)
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_2062_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Duration:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_2062_
	local function __FUNC_2327_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_2327_
	local function __FUNC_24DF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_24DF_
	local function __FUNC_2697_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_2697_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_284F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Thumbnail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_284F_
	local function __FUNC_2B14_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_2B14_
	local function __FUNC_2D77_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_2D77_
	local function __FUNC_2FD7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_2FD7_
	registerVal17.Film = registerVal18
	registerVal18 = {}
	local function __FUNC_323C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Thumbnail:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.BookmarkedItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.DefaultClip = __FUNC_323C_
	local function __FUNC_3504_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_3504_
	local function __FUNC_3711_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_3711_
	local function __FUNC_391D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal9:completeAnimation()
		registerVal2.tint:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_391D_
	registerVal17.Clip = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Film"
	local function __FUNC_3B29_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryFilm(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isPublishNew")
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_3B29_
	local registerVal21 = {}
	registerVal21.stateName = "Clip"
	local function __FUNC_3BE1_(arg0, arg2, arg3)
		local registerVal3 = IsFileshareCategoryClip(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isPublishNew")
		end
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_3BE1_
	registerVal19 = {registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_3C99_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPublishNew"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isPublishNew", true, __FUNC_3C99_)
	local function __FUNC_3DBA_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.Duration:close()
		arg0.LabelButton:close()
		arg0.BookmarkedItem:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FileImage:close()
		arg0.PlusImage:close()
		arg0.WCFileshareIconExtraCamRender0:close()
		arg0.MapImage:close()
		arg0.Thumbnail:close()
		arg0.GameTypeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3DBA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

