-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ItemTypeCost = registerVal1
function CoD.ItemTypeCost.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ItemTypeCost)
	registerVal2.id = "ItemTypeCost"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 78.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal3:setTopBottom(false, true, -18.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bottomBg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 0.000000, 18.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("5"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.typeCountText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -18.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_COST"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.costText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.020000, 0.080000, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cachitBG0 = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

