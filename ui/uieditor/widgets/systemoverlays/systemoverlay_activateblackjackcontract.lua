-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_ActivateBlackjackContract = registerVal1
function CoD.SystemOverlay_ActivateBlackjackContract.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_ActivateBlackjackContract)
	registerVal2.id = "SystemOverlay_ActivateBlackjackContract"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal4:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_CC1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "categoryType", true, __FUNC_CC1_)
	registerVal2:addElement(registerVal4)
	registerVal2.categoryTypeImage = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	local function __FUNC_DA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_DA3_)
	registerVal2:addElement(registerVal5)
	registerVal2.title = registerVal5
	local registerVal6 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal6:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal6:setAlpha(0.850000)
	local function __FUNC_E5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_E5A_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal7:setTopBottom(true, false, 119.000000, 221.000000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(3.000000)
	registerVal7:setSpacing(3.000000)
	local function __FUNC_F2C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setDataSource(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_F2C_)
	local function __FUNC_FC6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_FC6_)
	local function __FUNC_1181_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1181_)
	local function __FUNC_1313_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1313_)
	local function __FUNC_13E2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_146F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_13E2_, __FUNC_146F_, true)
	registerVal2:addElement(registerVal7)
	registerVal2.options = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 104.500000, 384.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal8:setImage(RegisterImage("uie_t7_bm_contracts_mercenary_icon"))
	registerVal2:addElement(registerVal8)
	registerVal2.largeImage = registerVal8
	registerVal7.id = "options"
	local function __FUNC_159E_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_159E_)
	local function __FUNC_169F_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_169F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

