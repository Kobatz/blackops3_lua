-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Party_LeaderNotification = registerVal1
function CoD.StartMenu_Party_LeaderNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Party_LeaderNotification)
	registerVal2.id = "StartMenu_Party_LeaderNotification"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 60.350000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.350000)
	registerVal3:setRGB(0.140000, 0.240000, 0.560000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 65.350000, 349.000000)
	registerVal4:setTopBottom(true, false, 22.000000, 43.000000)
	registerVal4:setText(Engine.Localize("You are the Party Leader"))
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

