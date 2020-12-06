-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_GameModeTabInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_GameModeTabWidget = registerVal1
function CoD.Leaderboard_GameModeTabWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_GameModeTabWidget)
	registerVal2.id = "Leaderboard_GameModeTabWidget"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 330.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -46.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal3.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_92C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_92C_)
	local function __FUNC_A05_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_A05_)
	registerVal2:addElement(registerVal3)
	registerVal2.RightBumperImage = registerVal3
	local registerVal4 = CoD.Leaderboard_GameModeTabInternal.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Internal = registerVal4
	local registerVal5 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal5:setTopBottom(false, false, -15.000000, 15.000000)
	local function __FUNC_AF3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_AF3_)
	local function __FUNC_BC9_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_BC9_)
	registerVal2:addElement(registerVal5)
	registerVal2.LeftBumperImage = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_CB7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Internal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CB7_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_E6F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Internal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E6F_
	registerVal6.Disabled = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1027_(arg0)
		arg0.RightBumperImage:close()
		arg0.Internal:close()
		arg0.LeftBumperImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1027_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

