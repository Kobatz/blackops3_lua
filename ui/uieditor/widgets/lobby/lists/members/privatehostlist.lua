-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMember")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrivateHostList = registerVal1
function CoD.PrivateHostList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PrivateHostList)
	registerVal2.id = "PrivateHostList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 422.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 480.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal3:setTopBottom(true, false, 50.000000, 512.000000)
	registerVal3:setDataSource("LobbyPrivateHostMembers")
	registerVal3:setWidgetType(CoD.LobbyMember)
	registerVal3:setVerticalCount(16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.lstLobbyList = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 155.000000, 310.000000)
	registerVal4:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal4:setText(Engine.Localize("MENU_LOBBY_PRIVATE_HOST_COUNT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.txtCount = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 159.070000, 310.000000)
	registerVal5:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.txtKey = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 182.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal6:setText(Engine.Localize("Private Lobby"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.txtLobbyType = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 248.000000)
	registerVal7:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setText(Engine.Localize("MENU_NEW"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.txtPhrase = registerVal7
	registerVal3.id = "lstLobbyList"
	local function __FUNC_BE3_(arg0, arg1)
		local registerVal2 = arg0.lstLobbyList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_BE3_)
	local function __FUNC_CE8_(arg0)
		arg0.lstLobbyList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CE8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

