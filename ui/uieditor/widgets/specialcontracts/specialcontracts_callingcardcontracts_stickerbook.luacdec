-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_CallingCardContracts_MasterCardWidget")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_CallingCardContracts_CardWidget")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_CallingCardContracts_Profiler")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_CallingCardContracts_Stickerbook = registerVal1
function CoD.SpecialContracts_CallingCardContracts_Stickerbook.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_CallingCardContracts_Stickerbook)
	registerVal2.id = "SpecialContracts_CallingCardContracts_Stickerbook"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.SpecialContracts_CallingCardContracts_MasterCardWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 7.000000, 766.000000)
	registerVal3:setTopBottom(false, true, -112.000000, -14.000000)
	local function __FUNC_BC7_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "SpecialContractMasterCard", nil, __FUNC_BC7_)
	local function __FUNC_C16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.SpecialContractName:setText(Engine.Localize(GetBackgroundNameByID(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "SpecialContractMasterCard", "backgroundId", __FUNC_C16_)
	registerVal2:addElement(registerVal3)
	registerVal2.MasterCardWidget = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 13.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 13.000000, 759.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 385.000000)
	registerVal4:setWidgetType(CoD.SpecialContracts_CallingCardContracts_CardWidget)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setSpacing(13.000000)
	registerVal4:setDataSource("SpecialContractsList")
	local function __FUNC_D1E_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_D1E_)
	local function __FUNC_EAF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_EAF_)
	local function __FUNC_F7E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSpecialContractAvailable(registerVal2, arg0, arg2)
		if registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_101F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSpecialContractAvailable(registerVal2, arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_F7E_, __FUNC_101F_, true)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardGrid = registerVal4
	local registerVal5 = CoD.SpecialContracts_CallingCardContracts_Profiler.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -357.000000, -7.000000)
	registerVal5:setTopBottom(true, true, 1.000000, -13.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ContractsProfiler = registerVal5
	local function __FUNC_1162_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal4, nil, false, __FUNC_1162_)
	registerVal4.id = "CallingCardGrid"
	local function __FUNC_11B2_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_11B2_)
	local function __FUNC_12BB_(arg0)
		arg0.MasterCardWidget:close()
		arg0.CallingCardGrid:close()
		arg0.ContractsProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12BB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

