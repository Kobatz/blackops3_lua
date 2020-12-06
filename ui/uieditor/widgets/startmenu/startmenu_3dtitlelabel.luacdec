-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_3dTitleLabel = registerVal1
function CoD.StartMenu_3dTitleLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_3dTitleLabel)
	registerVal2.id = "StartMenu_3dTitleLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 910.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 4.380000, 910.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 52.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setText(Engine.Localize("WILDCARDS"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-2.200000)
	local function __FUNC_7A5_(arg1, arg2)
		local registerVal2 = IsCurrentMenu(arg0, "ModeSelect")
		if not registerVal2 then
			ScaleParentWidgetToLabel(registerVal2, arg1, 0.000000)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_7A5_)
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 910.000000)
	registerVal4:setTopBottom(true, false, 26.000000, 27.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 910.000000, 914.000000)
	registerVal5:setTopBottom(true, false, -32.750000, 95.250000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_84E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_84E_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_945_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_945_
	registerVal6.LogoVisible = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

