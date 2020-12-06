-- Decompiled with CoDLUIDecompiler by JariK

CoD.BorderT6 = {}
CoD.BorderT6.DefaultBottomMaterialName = "menu_sp_cac_single_dip"
CoD.BorderT6.DefaultBottomImageHeight = 8.000000
function CoD.BorderT6.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	if not arg5 then
	end
	if not arg6 then
	end
	if not arg1 then
	end
	if not arg2 then
	end
	if not arg3 then
	end
	if not arg4 then
	end
	if arg0 < 2.000000 then
	end
	local registerVal10 = LUI.UIElement.new()
	registerVal10.id = "Border"
	registerVal10:setLeftRight(true, true, 0.000000, -0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, -0.000000)
	registerVal10:setAlpha(1.000000)
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 2.000000)
	registerVal11:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10.topBorder = registerVal11
	registerVal10:addElement(registerVal11)
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	if arg7 then
		local registerVal13 = RegisterMaterial(CoD.BorderT6.DefaultBottomMaterialName)
		if arg8 then
			local registerVal15 = RegisterMaterial(arg8)
		end
		if arg9 then
		end
		registerVal12:setTopBottom(false, true, (-arg9 - 1.000000), -1.000000)
		registerVal12:setImage(registerVal15)
	else
		registerVal12:setTopBottom(false, true, -2.000000, 0.000000)
	end
	registerVal12:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10.bottomBorder = registerVal12
	registerVal10:addElement(registerVal12)
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal13:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal13:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10.leftBorder = registerVal13
	registerVal10:addElement(registerVal13)
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -2.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal14:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10.rightBorder = registerVal14
	registerVal10:addElement(registerVal14)
	registerVal10.setRGB = CoD.BorderT6.SetRGB
	return registerVal10
end

function CoD.BorderT6.SetRGB(arg0, arg1, arg2, arg3)
	arg0.topBorder:setRGB(arg1, arg2, arg3)
	arg0.bottomBorder:setRGB(arg1, arg2, arg3)
	arg0.leftBorder:setRGB(arg1, arg2, arg3)
	arg0.rightBorder:setRGB(arg1, arg2, arg3)
end

