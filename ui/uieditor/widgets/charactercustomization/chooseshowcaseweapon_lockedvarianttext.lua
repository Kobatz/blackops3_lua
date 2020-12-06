-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseShowcaseWeapon_LockedVariantText = registerVal1
function CoD.ChooseShowcaseWeapon_LockedVariantText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseShowcaseWeapon_LockedVariantText)
	registerVal2.id = "ChooseShowcaseWeapon_LockedVariantText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 329.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("HEROES_SHOWCASE_WEAPON_VARIANT_LOCKED"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.lockedVariantText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6A7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.lockedVariantText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6A7_
	local function __FUNC_7AD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.ShowVariants = __FUNC_7AD_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_80E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.lockedVariantText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_80E_
	local function __FUNC_910_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.ShowVariants = __FUNC_910_
	registerVal4.ShowText = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

