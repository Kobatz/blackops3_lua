-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.Utility.VerticalListSpacer")
require("ui.uieditor.widgets.GameSettings.GameSettings_OptionsButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_Options = registerVal1
function CoD.GameSettings_Options.new(arg0, arg1)
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
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_Options)
	registerVal2.id = "GameSettings_Options"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.VerticalListSpacer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 164.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.VerticalListSpacer0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 18.400000, 312.000000)
	registerVal4:setTopBottom(true, false, 164.500000, 198.500000)
	registerVal4:setRGB(1.000000, 0.470000, 0.000000)
	registerVal4:setText(Engine.Localize("MENU_OPTIONS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 45.200000, 173.200000)
	registerVal5:setTopBottom(true, false, 198.500000, 208.500000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.spacer = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 12.400000, 267.400000)
	registerVal6:setTopBottom(true, false, 208.500000, 320.500000)
	registerVal6:setDataSource("GameSettingsOptions")
	registerVal6:setWidgetType(CoD.GameSettings_OptionsButton)
	registerVal6:setVerticalCount(3.000000)
	local function __FUNC_E0B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_E0B_)
	local function __FUNC_F9B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_F9B_)
	local function __FUNC_106A_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		GoBack(registerVal2, arg2)
		return true
	end

	local function __FUNC_10EB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_106A_, __FUNC_10EB_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.List0 = registerVal6
	local registerVal7 = CoD.VerticalListSpacer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 403.000000)
	registerVal7:setTopBottom(true, false, 320.500000, 331.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.VerticalListSpacer1 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 18.400000, 294.000000)
	registerVal8:setTopBottom(true, false, 331.500000, 351.500000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.Title = registerVal8
	local function __FUNC_11E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6, "description", true, __FUNC_11E6_)
	registerVal6.id = "List0"
	local function __FUNC_129E_(arg0, arg1)
		local registerVal2 = arg0.List0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_129E_)
	local function __FUNC_139D_(arg0)
		arg0.VerticalListSpacer0:close()
		arg0.List0:close()
		arg0.VerticalListSpacer1:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_139D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

