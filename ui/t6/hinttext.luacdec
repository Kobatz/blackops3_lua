-- Decompiled with CoDLUIDecompiler by JariK

CoD.HintText = {}
CoD.HintText.Height = CoD.textSize.Default
CoD.HintText.ArrowMaterialName = "ui_arrow_right"
function CoD.HintText.UpdateText(arg0, arg1)
	if arg1 == nil then
		arg0:removeText()
		return 
	end
	local registerVal2 = arg0.hint:getParent()
	if registerVal2 == nil then
		arg0:addElement(arg0.hintArrow)
		arg0:addElement(arg0.hint)
	end
	arg0.hint:setText(arg1)
end

function CoD.HintText.UpdateImage(arg0, arg1)
	if arg1 == nil then
	end
	arg0.hintArrow:beginAnimation("change_material")
	arg0.hintArrow:setImage(RegisterMaterial("ui_arrow_right"))
end

function CoD.HintText.RemoveText(arg0)
	arg0.hintArrow:close()
	arg0.hint:close()
end

function CoD.HintText.new(arg0)
	local registerVal3 = LUI.UIElement.new(arg0)
	local registerVal4 = LUI.UIImage.new()
	registerVal3.hintArrow = registerVal4
	registerVal3.hintArrow:setLeftRight(true, false, -5.000000, (-5.000000 + (CoD.HintText.Height - 8.000000)))
	registerVal3.hintArrow:setTopBottom(false, false, (-(CoD.HintText.Height - 8.000000) / 2.000000), ((CoD.HintText.Height - 8.000000) / 2.000000))
	registerVal3.hintArrow:setImage(RegisterMaterial(CoD.HintText.ArrowMaterialName))
	registerVal4 = LUI.UIText.new()
	registerVal3.hint = registerVal4
	registerVal3.hint:setLeftRight(true, true, (-5.000000 + (CoD.HintText.Height - 8.000000)), 0.000000)
	registerVal3.hint:setTopBottom(true, false, 0.000000, CoD.HintText.Height)
	registerVal3.hint:setAlignment(LUI.Alignment.Left)
	registerVal3.setColor = CoD.HintText.SetColor
	registerVal3.updateText = CoD.HintText.UpdateText
	registerVal3.removeText = CoD.HintText.RemoveText
	registerVal3.updateImage = CoD.HintText.UpdateImage
	if CoD.isSinglePlayer then
		registerVal3:setColor(CoD.visorBlue2.r, CoD.visorBlue2.g, CoD.visorBlue2.b, 1.000000)
		registerVal3.hintArrow:setRGB(0.750000, 0.750000, 0.750000)
	else
		registerVal3:setColor(CoD.DefaultTextColor.r, CoD.DefaultTextColor.g, CoD.DefaultTextColor.b, 0.750000)
	end
	return registerVal3
end

function CoD.HintText.SetColor(arg0, arg1, arg2, arg3, arg4)
	arg0.hintArrow:beginAnimation("color")
	arg0.hintArrow:setRGB(arg1, arg2, arg3)
	arg0.hintArrow:setAlpha(arg4)
	arg0.hint:beginAnimation("color")
	arg0.hint:setRGB(arg1, arg2, arg3)
	arg0.hint:setAlpha(arg4)
end

