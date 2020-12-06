-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectedItemAuthor = registerVal1
function CoD.FileshareSelectedItemAuthor.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 2.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectedItemAuthor)
	registerVal2.id = "FileshareSelectedItemAuthor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 317.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setRGB(0.480000, 0.490000, 0.520000)
	registerVal3:setText(Engine.Localize("MENU_FILESHARE_AUTHOR"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.LblAuthor = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 64.000000, 3.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setText(Engine.Localize("WWWWWWWWWWWWWWWW"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.AuthorName = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

