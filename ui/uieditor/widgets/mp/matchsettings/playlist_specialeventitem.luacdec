-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.Playlist_SpecialEventIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Playlist_SpecialEventItem = registerVal1
function CoD.Playlist_SpecialEventItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Playlist_SpecialEventItem)
	registerVal2.id = "Playlist_SpecialEventItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 34.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Playlist_SpecialEventIcon.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -7.000000, 41.000000)
	registerVal3:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal3:setScale(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.PlaylistSpecialEventIcon = registerVal3
	local function __FUNC_5A2_(arg0)
		arg0.PlaylistSpecialEventIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5A2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

