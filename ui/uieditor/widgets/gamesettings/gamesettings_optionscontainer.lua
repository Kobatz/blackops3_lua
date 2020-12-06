-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Options")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_OptionsContainer = registerVal1
function CoD.GameSettings_OptionsContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_OptionsContainer)
	registerVal2.id = "GameSettings_OptionsContainer"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_Options.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -334.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameSettingsOptions0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -356.000000, -355.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setAlpha(0.420000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border00 = registerVal4
	registerVal3.id = "GameSettingsOptions0"
	local function __FUNC_6A3_(arg0, arg1)
		local registerVal2 = arg0.GameSettingsOptions0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6A3_)
	local function __FUNC_7B0_(arg0)
		arg0.GameSettingsOptions0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

