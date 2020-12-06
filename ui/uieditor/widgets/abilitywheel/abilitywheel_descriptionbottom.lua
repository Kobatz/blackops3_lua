-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_DescriptionBottom = registerVal1
function CoD.AbilityWheel_DescriptionBottom.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_DescriptionBottom)
	registerVal2.id = "AbilityWheel_DescriptionBottom"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 176.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 68.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -88.000000, 88.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setAlpha(RandomAddPercent(-15.000000, 1.000000))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(1.000000)
	registerVal3:setLineSpacing(1.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_6B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "selectedAbilityDisplayDesc", true, __FUNC_6B6_)
	registerVal2:addElement(registerVal3)
	registerVal2.TextDesc = registerVal3
	local function __FUNC_76E_(arg0)
		arg0.TextDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_76E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

