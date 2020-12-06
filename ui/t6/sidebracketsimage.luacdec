-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoDBase")
if CoD.isSinglePlayer then
	require("T6.Menus.Bracket")
end
CoD.SideBracketsImage = {}
if CoD.isZombie == true then
	CoD.SideBracketsImage.BracketMaterial = "menu_vis_bracket_small_zm"
else
	CoD.SideBracketsImage.BracketMaterial = "menu_vis_bracket_small01"
end
function CoD.SideBracketsImage.Fade(arg0, arg1)
	if arg1.duration then
	end
	arg0:beginAnimation("fade", arg1.duration)
	if not CoD.isSinglePlayer then
		arg0:setRGB(arg1.red, arg1.green, arg1.blue)
	end
	arg0:setAlpha(arg1.alpha)
end

function CoD.SideBracketsImage.new(arg0)
	local registerVal1 = LUI.UIElement.new()
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	if not CoD.isSinglePlayer then
		if arg0 ~= nil then
		end
		local registerVal4 = LUI.UIImage.new()
		registerVal1.leftBracket = registerVal4
		registerVal1.leftBracket:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal1.leftBracket:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal1.leftBracket:setImage(RegisterMaterial(arg0))
		registerVal1:addElement(registerVal1.leftBracket)
		registerVal1.leftBracket:registerEventHandler("fade", CoD.SideBracketsImage.Fade)
		registerVal4 = LUI.UIImage.new()
		registerVal1.rightBracket = registerVal4
		registerVal1.rightBracket:setLeftRight(false, true, -64.000000, 0.000000)
		registerVal1.rightBracket:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal1.rightBracket:setImage(RegisterMaterial(arg0))
		registerVal1.rightBracket:setZRot(180.000000)
		registerVal1:addElement(registerVal1.rightBracket)
		registerVal1.rightBracket:registerEventHandler("fade", CoD.SideBracketsImage.Fade)
	else
		local registerVal3 = {}
		registerVal3.leftAnchor = true
		registerVal3.left = (CoD.Bracket.Width / 2.000000)
		registerVal3.red = CoD.trueOrange.r
		registerVal3.green = CoD.trueOrange.g
		registerVal3.blue = CoD.trueOrange.b
		registerVal3.alpha = 1.000000
		local registerVal2 = CoD.Bracket.CreateLeftBracket(registerVal3)
		registerVal2:registerEventHandler("fade", CoD.SideBracketsImage.Fade)
		registerVal1.leftBracket = registerVal2
		registerVal3 = LUI.UIImage.new()
		registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal3:setTopBottom(true, true, 8.000000, -8.000000)
		registerVal3:setImage(RegisterMaterial("menu_mp_cac_tact_line"))
		registerVal2:addElement(registerVal3)
		local registerVal5 = {}
		registerVal5.rightAnchor = true
		registerVal5.right = (-CoD.Bracket.Width / 2.000000)
		registerVal5.red = CoD.trueOrange.r
		registerVal5.green = CoD.trueOrange.g
		registerVal5.blue = CoD.trueOrange.b
		registerVal5.alpha = 1.000000
		registerVal4 = CoD.Bracket.CreateRightBracket(registerVal5)
		registerVal4:setRGB(CoD.trueOrange.r, CoD.trueOrange.g, CoD.trueOrange.b)
		registerVal4:registerEventHandler("fade", CoD.SideBracketsImage.Fade)
		registerVal1.rightBracket = registerVal4
		registerVal5 = LUI.UIImage.new()
		registerVal5:setLeftRight(false, true, -32.000000, 0.000000)
		registerVal5:setTopBottom(true, true, 8.000000, -8.000000)
		registerVal5:setImage(RegisterMaterial("menu_mp_cac_tact_line"))
		registerVal5:setZRot(180.000000)
		registerVal4:addElement(registerVal5)
		registerVal1:addElement(registerVal4)
		registerVal1:addElement(registerVal2)
	end
	return registerVal1
end

