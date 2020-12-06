-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.GameSettings.GameSettings_SelectedItemInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_Background = registerVal1
function CoD.GameSettings_Background.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_Background)
	registerVal2.id = "GameSettings_Background"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Background.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuBackground0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.310000, 0.310000, 0.310000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonPanelShaderContainer0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_EDIT_SETTINGS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EDIT_SETTINGS"))
	registerVal2:addElement(registerVal5)
	registerVal2.MenuFrame = registerVal5
	local registerVal6 = CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.GameSettingsSelectedItemInfo = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal7:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEMenuLeftGraphics = registerVal7
	local function __FUNC_ACD_(arg0)
		arg0.StartMenuBackground0:close()
		arg0.FEButtonPanelShaderContainer0:close()
		arg0.MenuFrame:close()
		arg0.GameSettingsSelectedItemInfo:close()
		arg0.FEMenuLeftGraphics:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ACD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

