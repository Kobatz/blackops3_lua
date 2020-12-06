-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.SideModalDialogButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SideModalButtonList = registerVal1
function CoD.SideModalButtonList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SideModalButtonList)
	registerVal2.id = "SideModalButtonList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 314.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 17.000000, 304.000000)
	registerVal3:setTopBottom(true, false, 129.000000, 165.000000)
	registerVal3:setRGB(0.870000, 0.880000, 0.780000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_AF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "ModalDialogData", "title", __FUNC_AF6_)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 17.000000, 481.920000)
	registerVal4:setTopBottom(true, false, 165.000000, 185.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_BAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "ModalDialogData", "description", __FUNC_BAE_)
	registerVal2:addElement(registerVal4)
	registerVal2.Subtitle = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 17.000000, 297.000000)
	registerVal5:setTopBottom(true, false, 188.000000, 492.000000)
	registerVal5:setDataSource("SideModalDialogDataList")
	registerVal5:setWidgetType(CoD.SideModalDialogButton)
	registerVal5:setVerticalCount(9.000000)
	local function __FUNC_C66_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_C66_)
	local function __FUNC_DF7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_DF7_)
	local function __FUNC_EC6_(arg0, arg1, arg2, arg3)
		ModalSelectListOption(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_F2B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_EC6_, __FUNC_F2B_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.List0 = registerVal5
	registerVal5.id = "List0"
	local function __FUNC_1026_(arg0, arg1)
		local registerVal2 = arg0.List0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1026_)
	local function __FUNC_1125_(arg0)
		arg0.List0:close()
		arg0.Title:close()
		arg0.Subtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1125_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

