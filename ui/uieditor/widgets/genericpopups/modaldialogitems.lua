-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left")
require("ui.uieditor.widgets.GenericPopups.ButtonPrompts")
local function __FUNC_263_(arg0)
	if LUI.DEVHideButtonPrompts then
		arg0.ButtonPrompts:setAlpha(0.000000)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ModalDialogItems = registerVal2
local function __FUNC_315_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 14.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ModalDialogItems)
	registerVal2.id = "ModalDialogItems"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 484.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 58.040000, 522.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal3:setRGB(0.870000, 0.880000, 0.780000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D72_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ModalDialogData", "title", __FUNC_D72_)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 58.040000, 522.960000)
	registerVal4:setTopBottom(true, false, 50.000000, 70.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ModalDialogData", "description", __FUNC_E2A_)
	registerVal2:addElement(registerVal4)
	registerVal2.Subtitle = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 58.040000, 338.040000)
	registerVal5:setTopBottom(true, false, 84.000000, 150.000000)
	registerVal5:setDataSource("ModalDialogDataList")
	registerVal5:setWidgetType(CoD.List1ButtonLarge_Left)
	registerVal5:setVerticalCount(2.000000)
	local function __FUNC_EE2_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_EE2_)
	local function __FUNC_1073_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1073_)
	local function __FUNC_1142_(arg0, arg1, arg2, arg3)
		ModalSelectListOption(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_11A7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1142_, __FUNC_11A7_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.optionsList = registerVal5
	local registerVal6 = CoD.ButtonPrompts.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 58.040000, 379.040000)
	registerVal6:setTopBottom(true, false, 164.000000, 195.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonPrompts = registerVal6
	registerVal5.id = "optionsList"
	local function __FUNC_12A2_(arg0, arg1)
		local registerVal2 = arg0.optionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_12A2_)
	local function __FUNC_13A7_(arg0)
		arg0.optionsList:close()
		arg0.ButtonPrompts:close()
		arg0.Title:close()
		arg0.Subtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13A7_)
	if __FUNC_263_ then
		__FUNC_263_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ModalDialogItems.new = __FUNC_315_
