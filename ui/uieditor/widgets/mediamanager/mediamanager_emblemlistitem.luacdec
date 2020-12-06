-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_IconTokenGrid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MediaManager_EmblemListItem = registerVal1
function CoD.MediaManager_EmblemListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MediaManager_EmblemListItem)
	registerVal2.id = "MediaManager_EmblemListItem"
	registerVal2.soundSet = "Paintshop"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(true, false, 0.000000, 107.000000)
	registerVal6:setTopBottom(true, false, -0.500000, 64.500000)
	local function __FUNC_1416_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupEmblemByEmblemIndex(GetEmblemIndexParams(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "emblemIndex", true, __FUNC_1416_)
	registerVal2:addElement(registerVal6)
	registerVal2.DrawEmblemByEmblemIndex0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 122.000000, 263.000000)
	registerVal7:setTopBottom(true, false, 22.000000, 42.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.400000)
	registerVal2:addElement(registerVal7)
	registerVal2.itemNameBg = registerVal7
	local registerVal8 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 125.000000, 263.000000)
	registerVal8:setTopBottom(true, false, 22.000000, 42.000000)
	registerVal8.textBox:setTTF("fonts/default.ttf")
	registerVal8.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_14E3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.textBox:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "emblemName", true, __FUNC_14E3_)
	registerVal2:addElement(registerVal8)
	registerVal2.ItemName = registerVal8
	local registerVal9 = CoD.cac_lock.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal9:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.lockedIcon = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal10:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal12:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal13:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = CoD.cac_IconTokenGrid.new(arg0, arg1)
	registerVal14:setLeftRight(false, true, -28.000000, 0.000000)
	registerVal14:setTopBottom(true, false, -0.500000, 27.500000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.cacIconTokenGrid0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 107.000000, 111.000000)
	registerVal15:setTopBottom(false, false, -32.500000, 32.500000)
	registerVal15:setAlpha(0.300000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.itemImageLine = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 31.500000, 75.500000)
	registerVal16:setTopBottom(true, false, 10.000000, 54.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.PlusImage = registerVal16
	local function __FUNC_1591_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(registerVal1)
		end
	end

	registerVal2.PlusImage:linkToElementModel(registerVal2, "showBuyImage", true, __FUNC_1591_)
	local function __FUNC_1625_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.PlusImage:linkToElementModel(registerVal2, "plusImageSrc", true, __FUNC_1625_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_16D8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal18.DefaultClip = __FUNC_16D8_
	local function __FUNC_17E4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.GainFocus = __FUNC_17E4_
	local function __FUNC_1ADC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_1ADC_
	local function __FUNC_1DD4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.LoseFocus = __FUNC_1DD4_
	registerVal17.DefaultState = registerVal18
	registerVal2.clipsPerState = registerVal17
	local function __FUNC_1F8E_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.ItemName:close()
		arg0.lockedIcon:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.cacIconTokenGrid0:close()
		arg0.DrawEmblemByEmblemIndex0:close()
		arg0.PlusImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F8E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

