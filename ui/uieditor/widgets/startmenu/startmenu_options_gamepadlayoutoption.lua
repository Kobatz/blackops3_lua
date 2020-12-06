-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_27A_(arg0, arg1, arg2)
	local function __FUNC_3CE_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = CoD.PCUtil.GetOptionInfo(registerVal2, arg1)
		local registerVal5 = type(registerVal3.getLabelFn)
		registerVal5 = registerVal3.getLabelFn(arg0, arg1)
		if registerVal2 and registerVal3.getLabelFn and registerVal5 == "function" and registerVal5 then
			arg0.valueText:setText(Engine.Localize(registerVal5))
		end
	end

	arg0:registerEventHandler("options_refresh", __FUNC_3CE_)
	local function __FUNC_55C_(arg0, arg2)
		local registerVal2 = arg0:getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "menu")
		if registerVal2 and registerVal3 then
			local registerVal4 = Engine.GetModelValue(registerVal3)
			OpenPopup(arg0, registerVal4, arg1)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_55C_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_GamepadLayoutOption = registerVal2
local function __FUNC_654_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_GamepadLayoutOption)
	registerVal2.id = "StartMenu_Options_GamepadLayoutOption"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBacking = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.870000, 0.370000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fullBorder = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 8.000000, 198.000000)
	registerVal5:setTopBottom(true, false, 7.500000, 32.500000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_1194_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "label", true, __FUNC_1194_)
	registerVal2:addElement(registerVal5)
	registerVal2.actionText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -250.000000, -60.000000)
	registerVal6:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal6:setRGB(0.870000, 0.370000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.valueBacking = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -250.000000, -60.000000)
	registerVal7:setTopBottom(true, false, 7.500000, 32.500000)
	registerVal7:setText(Engine.Localize("MENU_NEW"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.valueText = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG00 = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, -3.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, -3.000000)
	registerVal10:setTopBottom(false, true, -5.500000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_124E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.actionText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.valueBacking:setRGB(0.390000, 0.390000, 0.390000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.valueText:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_124E_
	local function __FUNC_158E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.actionText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.valueBacking:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.valueText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -5.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_158E_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1942_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.actionText:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.valueText:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1942_
	registerVal11.Disabled = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_1AA7_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal14.condition = __FUNC_1AA7_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_1AF8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1AF8_)
	local function __FUNC_1C16_(arg0)
		arg0.fullBorder:close()
		arg0.StartMenuframenoBG00:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.actionText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C16_)
	if __FUNC_27A_ then
		__FUNC_27A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_GamepadLayoutOption.new = __FUNC_654_
