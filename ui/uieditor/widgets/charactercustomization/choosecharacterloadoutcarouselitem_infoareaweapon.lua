-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon = registerVal1
function CoD.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_InfoAreaWeapon"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 183.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 3.310000, 113.310000)
	registerVal4:setTopBottom(true, false, 1.000000, 23.000000)
	registerVal4:setText(Engine.Localize("Hero Weapon/Ability"))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_6C8_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_6C8_)
	registerVal2:addElement(registerVal4)
	registerVal2.loadOutItemName = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_729_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_729_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

