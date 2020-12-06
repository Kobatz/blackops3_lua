-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BribeCoinWidget = registerVal1
function CoD.BribeCoinWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BribeCoinWidget)
	registerVal2.id = "BribeCoinWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 140.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 2.000000, 97.000000)
	registerVal3:setTopBottom(true, false, 24.000000, 119.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe"))
	registerVal2:addElement(registerVal3)
	registerVal2.bribe = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 25.000000, -25.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_img_t7_hud_mp_weapon_hero_orangering"))
	registerVal2:addElement(registerVal4)
	registerVal2.OrangeGlow = registerVal4
	local registerVal5 = CoD.ItemHintText.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -82.000000, 82.000000)
	registerVal5:setTopBottom(false, true, 18.000000, 48.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.textCenterAlign:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	local function __FUNC_B38_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_B38_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoHintText"
	local function __FUNC_B8A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_B8A_
	local registerVal10 = {}
	registerVal10.stateName = "LeftAlign"
	local function __FUNC_BD5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_BD5_
	local registerVal11 = {}
	registerVal11.stateName = "RightAlign"
	local function __FUNC_C20_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_C20_
	local registerVal12 = {}
	registerVal12.stateName = "CenterAlign"
	local function __FUNC_C6D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_C6D_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.itemHintText = registerVal5
	local registerVal6 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal6:setTopBottom(false, true, 5.000000, 15.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_CB9_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_CB9_)
	registerVal2:addElement(registerVal6)
	registerVal2.hintArrow = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_D0A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.bribe:setLeftRight(true, false, 2.000000, 97.000000)
		registerVal2.bribe:setTopBottom(true, false, 24.000000, 119.000000)
		registerVal2.bribe:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.OrangeGlow:setAlpha(0.750000)
		registerVal2.OrangeGlow:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D0A_
	local function __FUNC_100A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.bribe:setLeftRight(true, false, 2.000000, 97.000000)
		registerVal2.bribe:setTopBottom(true, false, 24.000000, 119.000000)
		registerVal2.bribe:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OrangeGlow:setAlpha(1.000000)
		registerVal2.OrangeGlow:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_100A_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1305_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.OrangeGlow:setAlpha(0.750000)
		registerVal2.OrangeGlow:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1305_
	local function __FUNC_1523_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.OrangeGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.OrangeGlow:setAlpha(1.000000)
		registerVal2.OrangeGlow:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_1523_
	registerVal7.Equipped = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_173A_(arg0)
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_173A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

