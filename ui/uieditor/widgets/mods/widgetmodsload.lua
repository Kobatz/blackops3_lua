-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Mods.EntryModsLoad")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WidgetModsLoad = registerVal1
function CoD.WidgetModsLoad.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WidgetModsLoad)
	registerVal2.id = "WidgetModsLoad"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 480.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 480.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundDark = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 466.000000)
	registerVal4:setWidgetType(CoD.EntryModsLoad)
	registerVal4:setVerticalCount(18.000000)
	registerVal4:setDataSource("ModsLoadEntry")
	local function __FUNC_89C_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_89C_)
	local function __FUNC_A2F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_A2F_)
	local function __FUNC_AFE_(arg0, arg1, arg2, arg3)
		Mods_LoadMod(arg2, arg0)
		return true
	end

	local function __FUNC_B56_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_LOAD")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_AFE_, __FUNC_B56_, false)
	local function __FUNC_C50_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "ModsGlobal", "update", __FUNC_C50_)
	registerVal2:addElement(registerVal4)
	registerVal2.ListMods = registerVal4
	registerVal4.id = "ListMods"
	local function __FUNC_CAE_(arg0, arg1)
		local registerVal2 = arg0.ListMods:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_CAE_)
	local function __FUNC_DB0_(arg0)
		arg0.ListMods:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DB0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

