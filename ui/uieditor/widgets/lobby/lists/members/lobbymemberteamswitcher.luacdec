-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
local function __FUNC_21B_(arg0, arg1, arg2)
	local function __FUNC_265_(arg0, arg1)
		if arg1 == Enum.team_t.TEAM_ALLIES then
			arg0.TeamSwitchName:setText(Engine.Localize("MPUI_ALLIES_CAPS"))
		else
			if arg1 == Enum.team_t.TEAM_AXIS then
				arg0.TeamSwitchName:setText(Engine.Localize("MPUI_AXIS_CAPS"))
			else
				if arg1 == Enum.team_t.TEAM_SPECTATOR then
					arg0.TeamSwitchName:setText(Engine.Localize("MPUI_SHOUTCASTER"))
				else
					if arg1 == Enum.team_t.TEAM_FREE then
						arg0.TeamSwitchName:setText(Engine.Localize("MPUI_AUTOASSIGN"))
					end
				end
			end
		end
		arg0:playClip("TeamSwitch")
	end

	arg0.SetupTeamSwitch = __FUNC_265_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberTeamSwitcher = registerVal2
local function __FUNC_52F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberTeamSwitcher)
	registerVal2.id = "LobbyMemberTeamSwitcher"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 163.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -163.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal3)
	registerVal2.spectatorColor = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -128.000000, -31.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 11.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TeamSwitchName = registerVal4
	local registerVal5 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.750000, 43.250000)
	registerVal5:setTopBottom(true, false, -1.000000, 27.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_103F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_103F_)
	local function __FUNC_1115_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_1115_)
	registerVal2:addElement(registerVal5)
	registerVal2.BumperButtonWithKeyMouseLeft = registerVal5
	local registerVal6 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 123.750000, 165.250000)
	registerVal6:setTopBottom(true, false, -1.000000, 27.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_1203_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1203_)
	local function __FUNC_12D9_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("button_action", __FUNC_12D9_)
	registerVal2:addElement(registerVal6)
	registerVal2.BumperButtonWithKeyMouseRight = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_13C7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_13C7_
	local function __FUNC_1543_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1751_(arg0, arg1)
			local function __FUNC_18A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A8_)
		end

		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(1.000000)
		__FUNC_1751_(registerVal3, {})
		local function __FUNC_1A5D_(arg0, arg1)
			local function __FUNC_1BB4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1BB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB4_)
		end

		registerVal4:completeAnimation()
		registerVal2.TeamSwitchName:setAlpha(1.000000)
		__FUNC_1A5D_(registerVal4, {})
		local function __FUNC_1D69_(arg0, arg1)
			local function __FUNC_1EC0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC0_)
		end

		registerVal5:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseLeft:setAlpha(1.000000)
		__FUNC_1D69_(registerVal5, {})
		local function __FUNC_2075_(arg0, arg1)
			local function __FUNC_21CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_21CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21CC_)
		end

		registerVal6:completeAnimation()
		registerVal2.BumperButtonWithKeyMouseRight:setAlpha(1.000000)
		__FUNC_2075_(registerVal6, {})
	end

	registerVal8.TeamSwitch = __FUNC_1543_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_2381_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TeamSwitchName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_2381_
	registerVal7.Invisible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_24E2_(arg0, arg1, arg2)
		local registerVal3 = IsGameLobby()
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_24E2_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_2531_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_2531_)
	local function __FUNC_2658_(arg0)
		arg0.BumperButtonWithKeyMouseLeft:close()
		arg0.BumperButtonWithKeyMouseRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2658_)
	if __FUNC_21B_ then
		__FUNC_21B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMemberTeamSwitcher.new = __FUNC_52F_
