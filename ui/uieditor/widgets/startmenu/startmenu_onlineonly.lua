-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_OnlineOnly = registerVal1
function CoD.StartMenu_OnlineOnly.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_OnlineOnly)
	registerVal2.id = "StartMenu_OnlineOnly"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderThin.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderThin0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal4:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 23.500000)
	registerVal5:setText(LocalizeToUpperString("MENU_ONLINE_ONLY"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(2.000000)
	local function __FUNC_872_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_872_)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8D9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_8D9_
	local function __FUNC_93A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Focus = __FUNC_93A_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_99A_(arg0)
		arg0.BorderThin0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_99A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

