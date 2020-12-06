-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_ItemVote_BanProtectPopup_Alert = registerVal1
function CoD.Pregame_ItemVote_BanProtectPopup_Alert.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_ItemVote_BanProtectPopup_Alert)
	registerVal2.id = "Pregame_ItemVote_BanProtectPopup_Alert"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 868.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 30.000000, 0.110000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setText(Engine.Localize("Item Banned By: FEXTWOLF"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -10.000000, 25.000000)
	registerVal4:setTopBottom(true, false, -7.000000, 35.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_forced"))
	registerVal2:addElement(registerVal4)
	registerVal2.BannedIcon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -5.170000, 25.000000)
	registerVal5:setTopBottom(true, false, -2.100000, 34.100000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_pregame_protected2"))
	registerVal2:addElement(registerVal5)
	registerVal2.ProtectedIcon = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

