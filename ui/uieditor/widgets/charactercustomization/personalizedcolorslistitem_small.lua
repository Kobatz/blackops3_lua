-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizedColorsListItem_Small = registerVal1
function CoD.PersonalizedColorsListItem_Small.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizedColorsListItem_Small)
	registerVal2.id = "PersonalizedColorsListItem_Small"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_mp_hero_colorswatch_backing"))
	local function __FUNC_628_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "color", true, __FUNC_628_)
	registerVal2:addElement(registerVal3)
	registerVal2.fill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_mp_hero_colorswatch_border"))
	registerVal2:addElement(registerVal4)
	registerVal2.backing = registerVal4
	local function __FUNC_6BB_(arg0)
		arg0.fill:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6BB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

