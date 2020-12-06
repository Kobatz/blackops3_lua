-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_CategoryListButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_TauntCategoryList = registerVal1
function CoD.ChooseTaunts_TauntCategoryList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_TauntCategoryList)
	registerVal2.id = "ChooseTaunts_TauntCategoryList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 409.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 632.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 507.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 85.000000)
	registerVal3:setDataSource("TauntTypesList")
	registerVal3:setWidgetType(CoD.ChooseTaunts_CategoryListButton)
	registerVal3:setSpacing(0.000000)
	local function __FUNC_D6A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "disabled", true, __FUNC_D6A_)
	local function __FUNC_F25_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "canPreview"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "canPreview", true, __FUNC_F25_)
	local function __FUNC_10E6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_10E6_)
	local function __FUNC_12DF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_12DF_)
	local function __FUNC_13AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			BeginChoosingTauntOption(arg1, arg0)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_147F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_13AE_, __FUNC_147F_, false)
	local function __FUNC_15AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if registerVal4 then
			PreviewTaunt(arg2, arg0)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_1695_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "HEROES_PREVIEW_TAUNT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_15AE_, __FUNC_1695_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.tauntList = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("HEROES_TAUNT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.customizeTaunts = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 0.000000, 507.000000)
	registerVal5:setTopBottom(true, false, 129.000000, 294.000000)
	registerVal5:setDataSource("GestureTypesList")
	registerVal5:setWidgetType(CoD.ChooseTaunts_CategoryListButton)
	registerVal5:setVerticalCount(3.000000)
	registerVal5:setSpacing(0.000000)
	local function __FUNC_17F4_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "disabled", true, __FUNC_17F4_)
	local function __FUNC_19B1_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "canPreview"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "canPreview", true, __FUNC_19B1_)
	local function __FUNC_1B72_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1B72_)
	local function __FUNC_1D6B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1D6B_)
	local function __FUNC_1E3A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			BeginChoosingGestureOption(arg1, arg0)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_1F0D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E3A_, __FUNC_1F0D_, false)
	local function __FUNC_203E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if registerVal4 then
			PreviewGesture(arg2, arg0)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_2127_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "HEROES_PREVIEW_GESTURE")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "canPreview")
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_203E_, __FUNC_2127_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.gestureList = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal6:setTopBottom(true, false, 99.000000, 124.000000)
	registerVal6:setText(Engine.Localize("HEROES_GESTURES"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.customizeGestures = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal3.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal3
	registerVal5.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "tauntList"
	registerVal5.id = "gestureList"
	local function __FUNC_2286_(arg0, arg1)
		local registerVal2 = arg0.tauntList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2286_)
	local function __FUNC_2389_(arg0)
		arg0.tauntList:close()
		arg0.gestureList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2389_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

