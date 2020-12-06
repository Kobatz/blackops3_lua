-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.LobbyStateString")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_LobbyStatus = registerVal1
function CoD.FE_LobbyStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LobbyStatus)
	registerVal2.id = "FE_LobbyStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyStateString.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 48.000000, 72.000000)
	registerVal3.TextState:setRGB(0.930000, 0.130000, 0.130000)
	local function __FUNC_D1D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.TextState:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyStatusString3", __FUNC_D1D_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_DF5_(arg0, arg1, arg2)
		return IsIntDvarNonZero("freedlc_hide_widget")
	end

	registerVal7.condition = __FUNC_DF5_
	local registerVal8 = {}
	registerVal8.stateName = "VisibleWithBackground"
	local function __FUNC_E67_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_E67_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyStatusString3 = registerVal3
	local registerVal4 = CoD.LobbyStateString.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 24.000000, 48.000000)
	local function __FUNC_EB1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.TextState:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyStatusString2", __FUNC_EB1_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_F89_(arg0, arg1, arg2)
		return IsLobbyStatusVisible()
	end

	registerVal8.condition = __FUNC_F89_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleWithBackground"
	local function __FUNC_FDE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_FDE_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_1029_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1029_)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyStatusString2 = registerVal4
	local registerVal5 = CoD.LobbyStateString.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_1150_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TextState:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyStatusString1", __FUNC_1150_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_1229_(arg0, arg1, arg2)
		return IsLobbyStatusVisible()
	end

	registerVal9.condition = __FUNC_1229_
	local registerVal10 = {}
	registerVal10.stateName = "VisibleWithBackground"
	local function __FUNC_127E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_127E_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_12C9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_12C9_)
	registerVal2:addElement(registerVal5)
	registerVal2.LobbyStatusString1 = registerVal5
	registerVal6 = CoD.LobbyStateString.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal6:setTopBottom(true, false, 24.000000, 48.000000)
	registerVal6.TextState:setText(Engine.Localize("MENU_PARTY_PRIVACY_STATUS"))
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_13F0_(arg0, arg1, arg2)
		local registerVal3 = IsPartyPrivacyVisible()
		if registerVal3 then
			registerVal3 = IsBooleanDvarSet("partyPrivacyEnabled")
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_13F0_
	local registerVal11 = {}
	registerVal11.stateName = "VisibleWithBackground"
	local function __FUNC_1492_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1492_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_14DD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_14DD_)
	registerVal2:addElement(registerVal6)
	registerVal2.PartyPrivacyString = registerVal6
	registerVal7 = CoD.LobbyStateString.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_1604_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.TextState:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "LobbyRoot", "leaderActivity", __FUNC_1604_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_16DD_(arg0, arg1, arg2)
		return IsPartyLeaderStatusVisible()
	end

	registerVal11.condition = __FUNC_16DD_
	local registerVal12 = {}
	registerVal12.stateName = "VisibleWithBackground"
	local function __FUNC_1738_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1738_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_1785_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1785_)
	registerVal2:addElement(registerVal7)
	registerVal2.LeaderActivityString = registerVal7
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_18AC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyStatusString3:setLeftRight(true, false, 0.000000, 278.000000)
		registerVal2.LobbyStatusString3:setTopBottom(true, false, 48.000000, 72.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_18AC_
	local function __FUNC_1A13_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Intro = __FUNC_1A13_
	local function __FUNC_1A72_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Update = __FUNC_1A72_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1AD2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyStatusString3:setLeftRight(true, false, 0.000000, 278.000000)
		registerVal2.LobbyStatusString3:setTopBottom(true, false, -24.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_1AD2_
	registerVal8.customGames = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "customGames"
	local function __FUNC_1C32_(arg0, arg1, arg2)
		return IsCustomLobby()
	end

	registerVal11.condition = __FUNC_1C32_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_1C7F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1C7F_)
	local function __FUNC_1DA4_(arg0)
		arg0.LobbyStatusString3:close()
		arg0.LobbyStatusString2:close()
		arg0.LobbyStatusString1:close()
		arg0.PartyPrivacyString:close()
		arg0.LeaderActivityString:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DA4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

