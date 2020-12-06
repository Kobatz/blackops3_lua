-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberTeamColorBackground_OnChange")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberTeamColorBackground")
local function __FUNC_2EB_(arg0, arg1, arg2)
	local function __FUNC_35F_(arg0, arg1)
		if arg1 == Enum.team_t.TEAM_ALLIES then
			arg0.TeamColorBackground:setState("Allies")
		else
			if arg1 == Enum.team_t.TEAM_AXIS then
				arg0.TeamColorBackground:setState("Axis")
			else
				if arg1 == Enum.team_t.TEAM_SPECTATOR then
					arg0.TeamColorBackground:setState("Spectator")
				end
			end
		end
		arg0:playClip("TeamSwitch")
	end

	arg0.SetupTeamSwitch = __FUNC_35F_
	local function __FUNC_534_(arg0, arg1)
		arg0.TeamColorBackground:SetupTeamColors(arg1)
	end

	arg0.SetupTeamColorBackground = __FUNC_534_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberTeamColor = registerVal2
local function __FUNC_5AE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberTeamColor)
	registerVal2.id = "LobbyMemberTeamColor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.110000, 0.110000, 0.110000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal3)
	registerVal2.Dimmer = registerVal3
	local registerVal4 = CoD.LobbyMemberTeamColorBackground_OnChange.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberTeamColorBackgroundOnChange = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonPanelShaderContainer0 = registerVal5
	local registerVal6 = CoD.LobbyMemberTeamColorBackground.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_E96_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_E96_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Axis"
	local function __FUNC_EE6_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_AXIS)
	end

	registerVal10.condition = __FUNC_EE6_
	local registerVal11 = {}
	registerVal11.stateName = "Allies"
	local function __FUNC_FAE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_ALLIES)
	end

	registerVal11.condition = __FUNC_FAE_
	local registerVal12 = {}
	registerVal12.stateName = "Spectator"
	local function __FUNC_1078_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_SPECTATOR)
	end

	registerVal12.condition = __FUNC_1078_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1147_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "teamSwitch"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "teamSwitch", true, __FUNC_1147_)
	registerVal2:addElement(registerVal6)
	registerVal2.TeamColorBackground = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1264_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_1264_
	local function __FUNC_12C6_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_141D_(arg0, arg1)
			local function __FUNC_1574_(arg0, arg1)
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
				__FUNC_1574_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1574_)
		end

		registerVal3:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.750000)
		__FUNC_141D_(registerVal3, {})
		local function __FUNC_1729_(arg0, arg1)
			local function __FUNC_1880_(arg0, arg1)
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
				__FUNC_1880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1880_)
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberTeamColorBackgroundOnChange:setAlpha(1.000000)
		__FUNC_1729_(registerVal4, {})
	end

	registerVal8.TeamSwitch = __FUNC_12C6_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1A35_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberTeamColorBackgroundOnChange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.TeamColorBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A35_
	registerVal7.Invisible = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_1C07_(arg0, arg1, arg2)
		local registerVal3 = IsGameLobby()
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1C07_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_1C55_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1C55_)
	local function __FUNC_1D7C_(arg0)
		arg0.LobbyMemberTeamColorBackgroundOnChange:close()
		arg0.FEButtonPanelShaderContainer0:close()
		arg0.TeamColorBackground:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D7C_)
	if __FUNC_2EB_ then
		__FUNC_2EB_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbyMemberTeamColor.new = __FUNC_5AE_
