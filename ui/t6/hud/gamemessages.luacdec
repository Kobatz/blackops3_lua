-- Decompiled with CoDLUIDecompiler by JariK

CoD.GameMessages = {}
CoD.GameMessages.MPObituraryWindowIndex = 0.000000
CoD.GameMessages.SPGameMessagesWindowIndex = 0.000000
CoD.GameMessages.BoldGameMessagesWindowIndex = 1.000000
CoD.GameMessages.SubtitlesWindowIndex = 2.000000
function CoD.GameMessages.ObituaryWindowUpdateVisibility(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_OBITUARIES)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	if registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 then
		registerVal2 = CoD.IsShoutcaster(arg1.controller)
		registerVal2 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_killfeed")
		if arg1 or registerVal2 then
			arg0:setAlpha(1.000000)
		else
		else
			arg0:setAlpha(0.000000)
		end
	end
end

function CoD.GameMessages.AddObituaryWindow(arg0, arg1, arg2)
	local registerVal3 = LUI.UIElement.new(arg1)
	registerVal3:setupGameMessages(CoD.GameMessages.MPObituraryWindowIndex)
	registerVal3:setAlignment(LUI.Alignment.Left)
	registerVal3:setFont(CoD.fonts.ExtraSmall)
	local function __FUNC_BDB_(arg0)
		local registerVal3 = {}
		registerVal3.controller = arg2
		CoD.GameMessages.ObituaryWindowUpdateVisibility(registerVal3, registerVal3)
	end

	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	registerVal3:subscribeToModel(registerVal8, __FUNC_BDB_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_OBITUARIES))
	registerVal3:subscribeToModel(registerVal8, __FUNC_BDB_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	registerVal3:subscribeToModel(registerVal8, __FUNC_BDB_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	registerVal3:subscribeToModel(registerVal8, __FUNC_BDB_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	registerVal3:subscribeToModel(registerVal8, __FUNC_BDB_)
	arg0:addForceClosedSafeAreaChild(registerVal3)
end

function CoD.GameMessages.AddSPGameMessagesWindow(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg1)
	registerVal2:setupGameMessages(CoD.GameMessages.SPGameMessagesWindowIndex)
	registerVal2:setAlignment(LUI.Alignment.Left)
	registerVal2:setFont(CoD.fonts.ExtraSmall)
	arg0.safeArea:addElement(registerVal2)
end

function CoD.GameMessages.AddSPBoldGameMessagesWindow(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg1)
	registerVal2:setupGameMessages(CoD.GameMessages.BoldGameMessagesWindowIndex)
	registerVal2:setAlignment(LUI.Alignment.Center)
	registerVal2:setFont(CoD.fonts.ExtraSmall)
	arg0.safeArea:addElement(registerVal2)
end

function CoD.GameMessages.AddSubtitlesWindow(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg1)
	registerVal2:setupGameMessages(CoD.GameMessages.SubtitlesWindowIndex)
	registerVal2:setAlignment(LUI.Alignment.Center)
	registerVal2:setFont(CoD.fonts.Default)
	registerVal2:setPriority(100001.000000)
	local registerVal3 = arg0:getParent()
	registerVal3:addElement(registerVal2)
end

function CoD.GameMessages.BoldGameMessagesWindowUpdateVisibility(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_OBITUARIES)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	if registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 then
		arg0:setAlpha(1.000000)
	else
		arg0:setAlpha(0.000000)
	end
end

function CoD.GameMessages.BoldGameMessagesWindow(arg0, arg1, arg2)
	local registerVal3 = CoD.SplitscreenScaler.new(arg1, 1.500000)
	registerVal3:setupGameMessages(CoD.GameMessages.BoldGameMessagesWindowIndex)
	registerVal3:setAlignment(LUI.Alignment.Center)
	registerVal3:setFont(CoD.fonts.Default)
	local function __FUNC_19F0_(arg0)
		local registerVal3 = {}
		registerVal3.controller = arg2
		CoD.GameMessages.BoldGameMessagesWindowUpdateVisibility(registerVal3, registerVal3)
	end

	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	registerVal3:subscribeToModel(registerVal8, __FUNC_19F0_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_OBITUARIES))
	registerVal3:subscribeToModel(registerVal8, __FUNC_19F0_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	registerVal3:subscribeToModel(registerVal8, __FUNC_19F0_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	registerVal3:subscribeToModel(registerVal8, __FUNC_19F0_)
	registerVal8 = Engine.GetModel(registerVal5, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	registerVal3:subscribeToModel(registerVal8, __FUNC_19F0_)
	arg0:addForceClosedSafeAreaChild(registerVal3)
end

