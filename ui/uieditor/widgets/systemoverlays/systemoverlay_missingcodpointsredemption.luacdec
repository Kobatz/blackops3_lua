-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.StartMenu.StartMenu_CODpoints")
require("ui.uieditor.widgets.CAC.cac_PurchasingExtraSlots")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_MissingCoDPointsRedemption = registerVal1
function CoD.SystemOverlay_MissingCoDPointsRedemption.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_MissingCoDPointsRedemption)
	registerVal2.id = "SystemOverlay_MissingCoDPointsRedemption"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 331.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_backgroundbg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -53.500000, 374.000000)
	registerVal4:setTopBottom(true, false, 56.000000, 284.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_blackmarket_codpoints_large"))
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_1032_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "categoryType", true, __FUNC_1032_)
	registerVal2:addElement(registerVal5)
	registerVal2.categoryTypeImage = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_1113_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_1113_)
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	local registerVal7 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal7:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal7:setAlpha(0.850000)
	local function __FUNC_11CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_11CA_)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal8:setTopBottom(true, false, 264.000000, 296.000000)
	registerVal8:setWidgetType(CoD.CACGenericButton)
	registerVal8:setSpacing(3.000000)
	local function __FUNC_129C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_129C_)
	local function __FUNC_1336_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_1336_)
	local function __FUNC_14F1_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_14F1_)
	local function __FUNC_1683_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1683_)
	local function __FUNC_1752_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_17DF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1752_, __FUNC_17DF_, true)
	registerVal2:addElement(registerVal8)
	registerVal2.options = registerVal8
	local registerVal9 = CoD.StartMenu_CODpoints.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 1069.850000, 1146.100000)
	registerVal9:setTopBottom(true, false, 11.000000, 36.000000)
	local function __FUNC_190E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.codpointsCount:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "codPoints", __FUNC_190E_)
	registerVal2:addElement(registerVal9)
	registerVal2.CODPoints = registerVal9
	local registerVal10 = CoD.cac_PurchasingExtraSlots.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 399.000000, 705.000000)
	registerVal10:setTopBottom(true, false, 115.000000, 211.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.PurchasingWidget = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1A2B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal2.CODPoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1A2B_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1B8C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal2.CODPoints:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PurchasingWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1B8C_
	registerVal11.Purchasing = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Purchasing"
	local function __FUNC_1CF0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1CF0_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal8.id = "options"
	local function __FUNC_1D3D_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1D3D_)
	local function __FUNC_1E3F_(arg0)
		arg0.text:close()
		arg0.options:close()
		arg0.CODPoints:close()
		arg0.PurchasingWidget:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E3F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

