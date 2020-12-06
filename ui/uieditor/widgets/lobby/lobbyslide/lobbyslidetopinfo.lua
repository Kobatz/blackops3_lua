-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideTopInfo = registerVal1
function CoD.LobbySlideTopInfo.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideTopInfo)
	registerVal2.id = "LobbySlideTopInfo"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 23.000000)
	registerVal3:setRGB(0.520000, 0.840000, 0.150000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconjoinable"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 16.000000, 19.000000)
	registerVal4:setTopBottom(true, false, -30.500000, 28.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 19.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setRGB(0.520000, 0.840000, 0.150000)
	registerVal5:setText(Engine.Localize("Joinable"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Status1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 64.000000, 71.000000)
	registerVal6:setTopBottom(true, false, -30.500000, 28.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image10 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 71.000000, 181.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal7:setText(Engine.Localize("In a Game Lobby"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.Status2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 181.000000, 191.500000)
	registerVal8:setTopBottom(true, false, -30.500000, 28.500000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Image1 = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

