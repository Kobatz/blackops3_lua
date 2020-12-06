-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CA_(arg0, arg1)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CharacterMiniSelectorItem = registerVal2
local function __FUNC_218_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CharacterMiniSelectorItem)
	registerVal2.id = "CharacterMiniSelectorItem"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.990000, 0.970000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox_empty"))
	registerVal2:addElement(registerVal3)
	registerVal2.CheckboxBkg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(1.000000, 0.450000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox"))
	registerVal2:addElement(registerVal4)
	registerVal2.checkboxCheck = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6DC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(1.000000, 0.990000, 0.970000)
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6DC_
	local function __FUNC_87D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(0.960000, 0.450000, 0.000000)
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkboxCheck:setRGB(1.000000, 0.450000, 0.000000)
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_87D_
	local function __FUNC_A41_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CheckboxBkg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Active = __FUNC_A41_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if __FUNC_1CA_ then
		__FUNC_1CA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CharacterMiniSelectorItem.new = __FUNC_218_
