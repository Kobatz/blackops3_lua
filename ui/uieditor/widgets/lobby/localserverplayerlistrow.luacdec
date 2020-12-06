-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyLeaderIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LocalServerPlayerListRow = registerVal1
function CoD.LocalServerPlayerListRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LocalServerPlayerListRow)
	registerVal2.id = "LocalServerPlayerListRow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 223.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -3.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 19.000000, 220.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 22.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Gamertag = registerVal4
	local registerVal5 = CoD.LobbyLeaderIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -2.000000, 23.000000)
	registerVal5:setTopBottom(true, false, 0.790000, 24.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.LobbyLeaderIcon = registerVal5
	local function __FUNC_844_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Gamertag:linkToElementModel(registerVal2, "gamertag", true, __FUNC_844_)
	local function __FUNC_8FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal2.LobbyLeaderIcon:linkToElementModel(registerVal2, "isLeader", true, __FUNC_8FE_)
	local function __FUNC_991_(arg0)
		arg0.LobbyLeaderIcon:close()
		arg0.Gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_991_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

