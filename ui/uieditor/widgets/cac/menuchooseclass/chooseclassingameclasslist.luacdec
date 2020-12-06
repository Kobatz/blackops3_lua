-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.List1ButtonChooseClass")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.chooseClassInGameClassList = registerVal1
function CoD.chooseClassInGameClassList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseClassInGameClassList)
	registerVal2.id = "chooseClassInGameClassList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 508.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 508.000000)
	registerVal3:setWidgetType(CoD.List1ButtonChooseClass)
	registerVal3:setVerticalCount(15.000000)
	registerVal3:setDataSource("ChooseClass_InGame")
	local function __FUNC_882_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "disabled", true, __FUNC_882_)
	local function __FUNC_A3D_(arg0, arg2)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			SetCustomParentClassNum(registerVal2, arg0, arg1)
		else
			UpdateParentClassView(registerVal2, arg0, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_A3D_)
	local function __FUNC_B00_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_B00_)
	local function __FUNC_C93_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_C93_)
	local function __FUNC_D62_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "isInMobileArmory", true)
		if registerVal4 then
			ChangeClass(registerVal2, arg0, arg2)
			LockInput(registerVal2, arg2, false)
			Close(registerVal2, arg2)
			SetPerControllerTableProperty(arg2, "isInMobileArmory", false)
			return true
		else
			registerVal4 = IsInGame()
			if not registerVal4 then
				ChangeClass(registerVal2, arg0, arg2)
				GoBack(registerVal2, arg2)
				return true
			else
				registerVal4 = IsInGame()
				registerVal4 = IsDisabled(arg0, arg2)
				if registerVal4 and not registerVal4 then
					ChangeClass(registerVal2, arg0, arg2)
					CloseStartMenu(arg1, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_F85_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "isInMobileArmory", true)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsInGame()
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsInGame()
				registerVal3 = IsDisabled(arg0, arg2)
				if registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_D62_, __FUNC_F85_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.classList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_11E9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_11E9_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "classList"
	local function __FUNC_124A_(arg0, arg1)
		local registerVal2 = arg0.classList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_124A_)
	local function __FUNC_134D_(arg0)
		arg0.classList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_134D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

