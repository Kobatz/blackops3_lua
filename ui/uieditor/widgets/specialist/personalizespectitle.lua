-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeSpecTitle = registerVal1
function CoD.PersonalizeSpecTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeSpecTitle)
	registerVal2.id = "PersonalizeSpecTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 375.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 375.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setRGB(0.970000, 0.320000, 0.050000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(0.600000)
	local function __FUNC_7B3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "name", true, __FUNC_7B3_)
	local function __FUNC_891_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 2.000000)
		SetStateFromText(registerVal2, arg0, "DefaultState", "NoText")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_891_)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponNameLabel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_954_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.weaponNameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_954_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A56_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_A56_
	registerVal4.ShowCurrentlyEquippedInfo = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_AB6_(arg0)
		arg0.weaponNameLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AB6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

