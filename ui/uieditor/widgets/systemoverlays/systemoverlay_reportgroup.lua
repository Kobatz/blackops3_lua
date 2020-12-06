-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_reportGroup = registerVal1
function CoD.systemOverlay_reportGroup.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_reportGroup)
	registerVal2.id = "systemOverlay_reportGroup"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBG = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 411.890000, 1216.000000)
	registerVal5:setTopBottom(true, false, 20.500000, 54.500000)
	registerVal5:setText(LocalizeToUpperString("MENU_REPORT_GROUP"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 411.890000, 1216.000000)
	registerVal6:setTopBottom(true, false, 60.500000, 80.500000)
	registerVal6:setText(Engine.Localize("MENU_REPORT_GROUP_DESC"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Description = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 411.890000, 1159.890000)
	registerVal7:setTopBottom(false, true, -231.500000, -63.500000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(5.000000)
	local function __FUNC_FEE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setDataSource(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_FEE_)
	local function __FUNC_1086_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_1086_)
	local function __FUNC_1241_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1241_)
	local function __FUNC_13D3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_13D3_)
	local function __FUNC_14A2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_152F_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_14A2_, __FUNC_152F_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.ButtonList = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 1228.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, -95.000000, 343.000000)
	registerVal8:setYRot(180.000000)
	registerVal8:setScale(0.600000)
	registerVal2:addElement(registerVal8)
	registerVal2.FEMenuLeftGraphics0 = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 52.000000)
	registerVal9:setTopBottom(true, false, -95.000000, 343.000000)
	registerVal9:setScale(0.600000)
	registerVal2:addElement(registerVal9)
	registerVal2.FEMenuLeftGraphics = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 345.830000, 352.500000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal10)
	registerVal2.CategoryListLineTopBottom0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 73.000000, 393.000000)
	registerVal11:setTopBottom(true, false, 20.500000, 202.500000)
	local function __FUNC_165E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setupGroupEmblem(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "groupId", true, __FUNC_165E_)
	registerVal2:addElement(registerVal11)
	registerVal2.GroupEmblem0 = registerVal11
	registerVal7.id = "ButtonList"
	local function __FUNC_16F9_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_16F9_)
	local function __FUNC_17FE_(arg0)
		arg0.ButtonList:close()
		arg0.FEMenuLeftGraphics0:close()
		arg0.FEMenuLeftGraphics:close()
		arg0.GroupEmblem0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17FE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

