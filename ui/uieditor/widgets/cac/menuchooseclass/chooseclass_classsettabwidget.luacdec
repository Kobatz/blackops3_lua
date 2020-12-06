-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ChooseClass_ClassSetTabInternal")
local function __FUNC_282_(arg0, arg1, arg2)
	local function __FUNC_3FD_(arg0, arg3)
		local registerVal2 = IsClassSetsAvailableForCurrentGameMode()
		registerVal2 = DoesPlayerHaveExtraSlotsItem(arg1)
		if registerVal2 and not registerVal2 then
			SetChooseClassMenuFromExtraSlotPromptState(arg2, arg1, arg2, "buttonList", "buttonList")
			return true
		else
			registerVal2 = IsClassSetsAvailableForCurrentGameMode()
			if registerVal2 then
				DecrementClassSetAndUpdateElementDataSource(arg2, arg1, arg2, "buttonList", "buttonList")
				return true
			end
		end
	end

	arg0:registerEventHandler("mini_selector_left", __FUNC_3FD_)
	local function __FUNC_57B_(arg0, arg3)
		local registerVal2 = IsClassSetsAvailableForCurrentGameMode()
		registerVal2 = DoesPlayerHaveExtraSlotsItem(arg1)
		if registerVal2 and not registerVal2 then
			SetChooseClassMenuToExtraSlotPromptState(arg2, arg1, arg2, "buttonList", "buttonList")
			return true
		else
			registerVal2 = IsClassSetsAvailableForCurrentGameMode()
			if registerVal2 then
				IncrementClassSetAndUpdateElementDataSource(arg2, arg1, arg2, "buttonList", "buttonList")
				return true
			end
		end
	end

	arg0:registerEventHandler("mini_selector_right", __FUNC_57B_)
	arg0.RightBumperImage:setHandleMouse(true)
	local function __FUNC_6F5_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "mini_selector_right"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
	end

	arg0.RightBumperImage:registerEventHandler("button_action", __FUNC_6F5_)
	arg0.LeftBumperImage:setHandleMouse(true)
	local function __FUNC_792_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "mini_selector_left"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
	end

	arg0.LeftBumperImage:registerEventHandler("button_action", __FUNC_792_)
end

local function __FUNC_82D_(arg0, arg1, arg2)
	if CoD.isPC then
	end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseClass_ClassSetTabWidget = registerVal3
local function __FUNC_88B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseClass_ClassSetTabWidget)
	registerVal2.id = "ChooseClass_ClassSetTabWidget"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 289.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -10.500000, 34.500000)
	registerVal3:setTopBottom(false, false, -15.000000, 15.000000)
	local function __FUNC_F3B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_F3B_)
	local function __FUNC_1011_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_1011_)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftBumperImage = registerVal3
	local registerVal4 = CoD.ChooseClass_ClassSetTabInternal.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Internal = registerVal4
	local registerVal5 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -34.500000, 10.500000)
	registerVal5:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal5.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_10FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_10FF_)
	local function __FUNC_11D5_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_11D5_)
	registerVal2:addElement(registerVal5)
	registerVal2.RightBumperImage = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_12C3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Internal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_12C3_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_147B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Internal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_147B_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1633_(arg0)
		arg0.LeftBumperImage:close()
		arg0.Internal:close()
		arg0.RightBumperImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1633_)
	if __FUNC_82D_ then
		__FUNC_82D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseClass_ClassSetTabWidget.new = __FUNC_88B_
