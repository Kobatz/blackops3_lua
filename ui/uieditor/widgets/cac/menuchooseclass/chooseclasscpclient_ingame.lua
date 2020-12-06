-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
require("ui.uieditor.widgets.CAC.MenuChooseClass.chooseClassCPClientPip_Ingame")
local function __FUNC_281_(arg0, arg1)
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "ChooseClassCPClientMenu")
	for index7=1.000000, #, 1.000000 do
		local registerVal12 = Engine.IsSharedLoadoutAvailableForClient(arg1, registerVal2.sessionClients[index7].xuid)
		if registerVal12 then
			registerVal12 = Engine.CreateModel(registerVal4, ("client" .. index7))
			local registerVal13 = Engine.CreateModel(registerVal12, "xuid")
			Engine.SetModelValue(registerVal13, registerVal2.sessionClients[index7].xuid)
			local registerVal14 = Engine.CreateModel(registerVal12, "gamertag")
			Engine.SetModelValue(registerVal14, registerVal2.sessionClients[index7].gamertag)
			if registerVal2.sessionClients[index7].isLocal == 1.000000 and registerVal2.sessionClients[index7].localController == arg1 then
				local registerVal15 = Engine.CreateModel(registerVal4, "myClientIndex")
				Engine.SetModelValue(registerVal15, index7)
			end
		end
	end
	local registerVal7 = Engine.CreateModel(registerVal4, "numActiveClients")
	Engine.SetModelValue(registerVal7, (0.000000 + 1.000000))
	local registerVal8 = Engine.CreateModel(registerVal4, "selectedClientIndex")
	Engine.SetModelValue(registerVal8, index7)
	CoD.CACUtility.ResetCPCustomClasses(arg1)
end

local function __FUNC_764_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "ChooseClassCPClientMenu")
	registerVal3 = Engine.GetModel(registerVal2, "selectedClientIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetModel(registerVal2, ("client" .. registerVal4))
	if registerVal2 and registerVal3 and registerVal5 then
		arg0:setModel(registerVal5)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.chooseClassCPClient_Ingame = registerVal3
local function __FUNC_8F4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_281_ then
		__FUNC_281_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.chooseClassCPClient_Ingame)
	registerVal2.id = "chooseClassCPClient_Ingame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	local function __FUNC_12AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_12AD_)
	local function __FUNC_1385_(arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = CanUseSharedLoadouts(arg1)
		if registerVal3 and registerVal3 then
			SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		end
		if not nil then
			registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_1385_)
	registerVal2:addElement(registerVal3)
	registerVal2.LBBumperButtonWithKeyMouse = registerVal3
	local registerVal4 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -45.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_14C9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_14C9_)
	local function __FUNC_15A1_(arg2, arg3)
		local registerVal3 = IsCampaign()
		registerVal3 = CanUseSharedLoadouts(arg1)
		if registerVal3 and registerVal3 then
			SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		end
		if not nil then
			registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("button_action", __FUNC_15A1_)
	registerVal2:addElement(registerVal4)
	registerVal2.RBBumperButtonWithKeyMouse = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 45.000000, 235.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 24.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_16E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gamertag", true, __FUNC_16E5_)
	registerVal2:addElement(registerVal5)
	registerVal2.clientTitle = registerVal5
	local registerVal6 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:setLeftRight(true, false, 121.000000, 159.000000)
	registerVal6:setTopBottom(true, false, 31.000000, 39.000000)
	registerVal6:setDataSource("ChooseClassClients")
	registerVal6:setWidgetType(CoD.chooseClassCPClientPip_Ingame)
	registerVal6:setHorizontalCount(4.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.pipList = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_179E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.LBBumperButtonWithKeyMouse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RBBumperButtonWithKeyMouse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.clientTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pipList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_179E_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_19C4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.LBBumperButtonWithKeyMouse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RBBumperButtonWithKeyMouse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.clientTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pipList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_19C4_
	registerVal7.Hidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_1BEC_(arg0, arg2, arg3)
		local registerVal3 = CanUseSharedLoadouts(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1BEC_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1C4A_(arg0)
		arg0.LBBumperButtonWithKeyMouse:close()
		arg0.RBBumperButtonWithKeyMouse:close()
		arg0.pipList:close()
		arg0.clientTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C4A_)
	if __FUNC_764_ then
		__FUNC_764_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.chooseClassCPClient_Ingame.new = __FUNC_8F4_
