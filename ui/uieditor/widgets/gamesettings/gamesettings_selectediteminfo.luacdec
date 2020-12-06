-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Description")
require("ui.uieditor.widgets.GameSettings.GameSettings_MatchSettingsInfo")
require("ui.uieditor.widgets.GameSettings.GameSettings_GameModeName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_SelectedItemInfo = registerVal1
function CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_SelectedItemInfo)
	registerVal2.id = "GameSettings_SelectedItemInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_Description.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 727.000000, 1216.000000)
	registerVal3:setTopBottom(true, false, 141.500000, 276.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.ToolTip = registerVal3
	local registerVal4 = CoD.GameSettings_MatchSettingsInfo.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 727.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 348.500000, 691.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.GameModeInfo = registerVal4
	local registerVal5 = CoD.GameSettings_GameModeName.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -553.000000, -64.000000)
	registerVal5:setTopBottom(false, true, -146.500000, -108.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.GameModeName = registerVal5
	local function __FUNC_77A_(arg0)
		arg0.ToolTip:close()
		arg0.GameModeInfo:close()
		arg0.GameModeName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_77A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

