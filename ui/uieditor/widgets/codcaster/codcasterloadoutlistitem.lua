-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItemBackground")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutListItem = registerVal1
function CoD.CodCasterLoadoutListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterLoadoutListItem)
	registerVal2.id = "CodCasterLoadoutListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	local registerVal3 = CoD.CodCasterLoadoutItemBackground.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 12.500000, -9.500000)
	local function __FUNC_6E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_6E8_)
	registerVal2:addElement(registerVal4)
	registerVal2.Image = registerVal4
	local registerVal5 = CoD.CodCasterLoadoutItemBackground.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_79C_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_79C_)
	local function __FUNC_7EE_(arg0)
		ScaleToFitImageElement(registerVal2, registerVal5, "Image")
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_7EE_)
	registerVal2:addElement(registerVal5)
	registerVal2.sizeElement = registerVal5
	local function __FUNC_85F_(arg0)
		arg0.bg:close()
		arg0.sizeElement:close()
		arg0.Image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_85F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

