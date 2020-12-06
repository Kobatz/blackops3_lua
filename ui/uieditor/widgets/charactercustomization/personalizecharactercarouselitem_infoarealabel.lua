-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacterCarouselItem_InfoAreaLabel = registerVal1
function CoD.PersonalizeCharacterCarouselItem_InfoAreaLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacterCarouselItem_InfoAreaLabel)
	registerVal2.id = "PersonalizeCharacterCarouselItem_InfoAreaLabel"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 21.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_699_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "categoryName", true, __FUNC_699_)
	local function __FUNC_752_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_752_)
	registerVal2:addElement(registerVal4)
	registerVal2.name = registerVal4
	local function __FUNC_7B1_(arg0)
		arg0.name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7B1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

