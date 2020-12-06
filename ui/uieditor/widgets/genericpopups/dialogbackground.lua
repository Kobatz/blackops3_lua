-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DialogBackground = registerVal1
function CoD.DialogBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.DialogBackground)
	registerVal2.id = "DialogBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 517.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 252.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyMemberBackingMask.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyMemberBackingMask0 = registerVal3
	local registerVal4 = CoD.LobbyMemberBacking.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.890000, 0.800000, 0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberBacking0 = registerVal4
	local function __FUNC_68E_(arg0)
		arg0.LobbyMemberBackingMask0:close()
		arg0.LobbyMemberBacking0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_68E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

