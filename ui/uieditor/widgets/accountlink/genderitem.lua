-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GenderItem = registerVal1
function CoD.GenderItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenderItem)
	registerVal2.id = "GenderItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 34.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 12.750000, -12.750000)
	registerVal4:setTopBottom(true, false, 5.500000, 30.500000)
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -3.500000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local function __FUNC_AA8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "gender", true, __FUNC_AA8_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B3C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B3C_
	local function __FUNC_D03_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.LoseFocus = __FUNC_D03_
	local function __FUNC_F48_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Text:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_F48_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_110A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Text:setRGB(0.500000, 0.510000, 0.520000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal9.DefaultClip = __FUNC_110A_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1214_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1214_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

