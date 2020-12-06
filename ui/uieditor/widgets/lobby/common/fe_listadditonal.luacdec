-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.SplitscreenLobbyButtonPC")
local function __FUNC_221_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_ListAdditonal = registerVal2
local function __FUNC_27C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ListAdditonal)
	registerVal2.id = "FE_ListAdditonal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 65.000000, 376.330000)
	registerVal3:setTopBottom(true, false, 7.500000, 27.500000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.StringA = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 406.000000, 434.000000)
	registerVal4:setTopBottom(true, false, 22.500000, 26.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setZoom(5.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image3 = registerVal4
	local registerVal6 = IsPC()
	if registerVal6 then
		registerVal6 = CoD.SplitscreenLobbyButtonPC.new(arg0, arg1)
	else
		registerVal6 = LUI.UIElement.createFake()
	end
	registerVal6:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 31.000000)
	local function __FUNC_1068_(arg0, arg2)
		local registerVal3 = IsElementInState(arg0, "Hide")
		if not registerVal3 then
			LobbySplitscreenToggle(registerVal2, arg1)
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("button_action", __FUNC_1068_)
	registerVal6 = IsPC()
	if registerVal6 then
		registerVal2:addElement(registerVal6)
	end
	registerVal2.SplitscreenLobbyButtonPC = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1145_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StringA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SplitscreenLobbyButtonPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_1145_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_12FD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StringA:setAlpha(1.000000)
		registerVal2.StringA:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLAY"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SplitscreenLobbyButtonPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_12FD_
	registerVal6.AddControllerState_Play = registerVal7
	registerVal7 = {}
	local function __FUNC_1550_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StringA:setAlpha(1.000000)
		registerVal2.StringA:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SplitscreenLobbyButtonPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_1550_
	registerVal6.AddControllerState = registerVal7
	registerVal7 = {}
	local function __FUNC_17A6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StringA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.SplitscreenLobbyButtonPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal7.DefaultClip = __FUNC_17A6_
	registerVal6.SplitscreenButtonPC = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "AddControllerState_Play"
	local function __FUNC_1962_(arg0, arg2, arg3)
		local registerVal3 = IsWaitingForSignInToPlaySplitscreen()
		registerVal3 = ShouldShowAddController(arg0, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsPC()
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1962_
	local registerVal10 = {}
	registerVal10.stateName = "AddControllerState"
	local function __FUNC_1A24_(arg0, arg2, arg3)
		local registerVal3 = ShouldShowAddController(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsPC()
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1A24_
	local registerVal11 = {}
	registerVal11.stateName = "SplitscreenButtonPC"
	local function __FUNC_1AAB_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal11.condition = __FUNC_1AAB_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.platformUpdate")
	local function __FUNC_1AEE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.platformUpdate"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1AEE_)
	if registerVal2.m_eventHandlers.controller_inserted then
		local function __FUNC_1C1A_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_inserted(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_inserted", __FUNC_1C1A_)
	else
		registerVal2:registerEventHandler("controller_inserted", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_removed then
		local function __FUNC_1CA3_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_removed(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_removed", __FUNC_1CA3_)
	else
		registerVal2:registerEventHandler("controller_removed", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_used_start then
		local function __FUNC_1D2B_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_used_start(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_used_start", __FUNC_1D2B_)
	else
		registerVal2:registerEventHandler("controller_used_start", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_used_stop then
		local function __FUNC_1DB3_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_used_stop(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_used_stop", __FUNC_1DB3_)
	else
		registerVal2:registerEventHandler("controller_used_stop", LUI.UIElement.updateState)
	end
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_1E3B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1E3B_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "PartyPrivacy.maxPlayers")
	local function __FUNC_1F60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PartyPrivacy.maxPlayers"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1F60_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.gameClient.update")
	local function __FUNC_208D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.gameClient.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_208D_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.privateClient.update")
	local function __FUNC_21BD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.privateClient.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_21BD_)
	local function __FUNC_22F0_(arg0)
		arg0.SplitscreenLobbyButtonPC:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_22F0_)
	if __FUNC_221_ then
		__FUNC_221_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_ListAdditonal.new = __FUNC_27C_
