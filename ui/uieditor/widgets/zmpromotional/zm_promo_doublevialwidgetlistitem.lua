-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_Promo_DoubleVialWidgetListItem = registerVal1
function CoD.ZM_Promo_DoubleVialWidgetListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_Promo_DoubleVialWidgetListItem)
	registerVal2.id = "ZM_Promo_DoubleVialWidgetListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 49.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -5.000000, 54.000000)
	registerVal3:setTopBottom(true, false, -10.000000, 49.000000)
	registerVal3:setScale(0.950000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_zm_double_vial_backer"))
	registerVal2:addElement(registerVal3)
	registerVal2.DoubleVialIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 3.500000, 41.500000)
	registerVal4:setTopBottom(true, false, 11.000000, 45.000000)
	registerVal4:setRGB(0.240000, 0.110000, 0.010000)
	registerVal4:setScale(0.750000)
	registerVal4:setText(Engine.Localize("MP_X2"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.310000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.110000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.x2LabelOutline = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 3.500000, 41.500000)
	registerVal5:setTopBottom(true, false, 11.000000, 45.000000)
	registerVal5:setRGB(1.000000, 0.890000, 0.120000)
	registerVal5:setScale(0.750000)
	registerVal5:setText(Engine.Localize("MP_X2"))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.x2Label = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

