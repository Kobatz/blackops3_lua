-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_DailyChallengeWarning = registerVal1
function CoD.systemOverlay_DailyChallengeWarning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_DailyChallengeWarning)
	registerVal2.id = "systemOverlay_DailyChallengeWarning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 438.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 438.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_gradient"))
	registerVal4:setShaderVector(0.000000, 0.150000, 0.160000, 0.180000, 1.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 1.000000)
	registerVal4:setShaderVector(2.000000, 0.800000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardGradient = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -200.000000, 495.370000)
	registerVal5:setTopBottom(true, false, 12.660000, 52.660000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D8C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_D8C_)
	registerVal2:addElement(registerVal5)
	registerVal2.DailyChallenge = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -198.000000, 495.370000)
	registerVal6:setTopBottom(true, false, 125.240000, 149.240000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_E46_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChallengeDescription = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 440.000000, 990.000000)
	registerVal7:setTopBottom(true, false, 232.970000, 298.970000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(2.000000)
	local function __FUNC_EFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setDataSource(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_EFE_)
	local function __FUNC_F96_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_F96_)
	local function __FUNC_1151_(arg0, arg2)
		ClearSavedState(registerVal2, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_opened", __FUNC_1151_)
	local function __FUNC_11E6_(arg2, arg3)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_11E6_)
	local function __FUNC_1377_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1377_)
	local function __FUNC_1446_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_14D3_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "N", __FUNC_1446_, __FUNC_14D3_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.ChallengeButtonlist = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1602_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.DailyChallenge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ChallengeDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ChallengeButtonlist:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1602_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal7.id = "ChallengeButtonlist"
	local function __FUNC_17C9_(arg0, arg1)
		local registerVal2 = arg0.ChallengeButtonlist:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17C9_)
	local function __FUNC_18D7_(arg0)
		arg0.ChallengeButtonlist:close()
		arg0.DailyChallenge:close()
		arg0.ChallengeDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18D7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

