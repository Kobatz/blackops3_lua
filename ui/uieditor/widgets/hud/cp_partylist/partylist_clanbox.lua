-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PartyList_ClanBox = registerVal1
function CoD.PartyList_ClanBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PartyList_ClanBox)
	registerVal2.id = "PartyList_ClanBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 35.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 15.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.670000, -3.000000)
	registerVal3:setTopBottom(false, true, -3.000000, -0.330000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxlm"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 2.670000)
	registerVal4:setTopBottom(false, true, -3.000000, -0.330000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxll"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -3.000000, -0.330000)
	registerVal5:setTopBottom(false, true, -3.000000, -0.330000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxlr"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 2.670000)
	registerVal6:setTopBottom(true, true, 2.670000, -3.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxml"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -3.000000, -0.330000)
	registerVal7:setTopBottom(true, true, 2.670000, -3.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxmr"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 2.670000)
	registerVal8:setTopBottom(true, false, 0.000000, 2.670000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxul"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image6 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 2.670000, -3.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 2.670000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxum"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image7 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -3.000000, -0.330000)
	registerVal10:setTopBottom(true, false, 0.000000, 2.670000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_partylist_boxur"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image8 = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

