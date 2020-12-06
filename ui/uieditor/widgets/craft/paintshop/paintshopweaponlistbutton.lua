-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopWeaponListButton = registerVal1
function CoD.PaintshopWeaponListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintshopWeaponListButton)
	registerVal2.id = "PaintshopWeaponListButton"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 233.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -12.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.580000, 0.580000, 0.600000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -23.000000, 9.000000)
	registerVal4:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal4:setRGB(0.580000, 0.580000, 0.600000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_ui_arrow_right"))
	registerVal2:addElement(registerVal4)
	registerVal2.arrowImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal5:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal5:setAlpha(0.100000)
	registerVal2:addElement(registerVal5)
	registerVal2.itemImageBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal6:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImage = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 62.000000, 115.000000)
	registerVal7:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal7:setText(Engine.Localize("MENU_NEW"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.itemName = registerVal7
	local registerVal8 = CoD.Border.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, -12.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(0.580000, 0.580000, 0.600000)
	registerVal2:addElement(registerVal8)
	registerVal2.border = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A68_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.border:setRGB(0.580000, 0.580000, 0.600000)
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_A68_
	local function __FUNC_CB6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Focus = __FUNC_CB6_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_EFD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.arrowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setRGB(0.470000, 0.470000, 0.470000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_EFD_
	local function __FUNC_1121_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.arrowImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Active = __FUNC_1121_
	registerVal9.NoListFocus = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1340_(arg0)
		arg0.border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1340_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

