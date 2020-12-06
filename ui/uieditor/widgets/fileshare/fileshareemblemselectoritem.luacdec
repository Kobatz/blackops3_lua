-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Theater.Theater_TextLable")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareEmblemSelectorItem = registerVal1
function CoD.FileshareEmblemSelectorItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareEmblemSelectorItem)
	registerVal2.id = "FileshareEmblemSelectorItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 176.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 56.000000, 120.000000)
	registerVal4:setTopBottom(true, false, 14.000000, 78.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_menu_simple_publish_green"))
	registerVal2:addElement(registerVal4)
	registerVal2.PlusImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.WCFileshareIconExtraCamRender0 = registerVal5
	local registerVal6 = CoD.Theater_TextLable.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 1.000000, 175.000000)
	registerVal6:setTopBottom(false, true, -20.000000, -1.000000)
	registerVal6.itemName:setRGB(0.990000, 0.990000, 0.990000)
	registerVal6.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal6)
	registerVal2.LabelButton = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal7:setTopBottom(true, false, -3.000000, 1.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal8:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local function __FUNC_C88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setAlpha(registerVal1)
		end
	end

	registerVal2.PlusImage:linkToElementModel(registerVal2, "showPlusImage", true, __FUNC_C88_)
	local function __FUNC_D1D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "showFileImage", true, __FUNC_D1D_)
	local function __FUNC_DB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal2.WCFileshareIconExtraCamRender0:linkToElementModel(registerVal2, "fileId", true, __FUNC_DB1_)
	local function __FUNC_E93_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "fileName", true, __FUNC_E93_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F42_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal10.DefaultClip = __FUNC_F42_
	local function __FUNC_1048_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.GainFocus = __FUNC_1048_
	local function __FUNC_1203_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Focus = __FUNC_1203_
	local function __FUNC_13BB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.LoseFocus = __FUNC_13BB_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1573_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.PlusImage:close()
		arg0.WCFileshareIconExtraCamRender0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1573_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

