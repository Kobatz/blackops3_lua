-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.LoadingAnimation.AnimationLoading2")
require("ui.uieditor.widgets.LoadingAnimation.AnimationLoadingWidget")
CoD.Spinner = {}
CoD.Spinner.SYSTEM_PROCESS_INIT = 0.000000
CoD.Spinner.SYSTEM_PROCESS_ERROR = 1.000000
CoD.Spinner.SYSTEM_PROCESS_MOVE = 2.000000
CoD.Spinner.SYSTEM_PROCESS_SEARCH = 3.000000
CoD.Spinner.SYSTEM_PROCESS_QOS = 4.000000
CoD.Spinner.SYSTEM_PROCESS_JOIN = 5.000000
CoD.Spinner.SYSTEM_PROCESS_DISCONNECT = 6.000000
CoD.Spinner.SYSTEM_PROCESS_END = 7.000000
CoD.Spinner.SYSTEM_PROCESS_ONLINE_CREATE = 8.000000
CoD.Spinner.SYSTEM_PROCESS_ONLINE_DELETE = 9.000000
CoD.Spinner.SYSTEM_PROCESS_MIGRATE = 10.000000
CoD.Spinner.SYSTEM_PROCESS_LAUNCH_GAME = 11.000000
function SpinnerUpdate_JoinProgress(arg0, arg1, arg2)
	if arg1 == 1.000000 then
		Engine.SetModelValue(arg2, "MENU_SPINNER_JOIN_CONNECTING")
	else
		if arg1 == 2.000000 then
			Engine.SetModelValue(arg2, "MENU_SPINNER_JOIN_ASSOCIATING")
		else
			if arg1 == 3.000000 then
				Engine.SetModelValue(arg2, "MENU_SPINNER_JOIN_HANDSHAKING")
			else
				if arg1 == 4.000000 then
					Engine.SetModelValue(arg2, "MENU_SPINNER_JOIN_AGREEMENT")
				else
					if arg1 == 6.000000 then
						Engine.SetModelValue(arg2, "MENU_SPINNER_JOIN_AGREEMENT_SUCCESS")
					end
				end
			end
		end
	end
end

function SpinnerUpdate_JoinResult(arg0, arg1, arg2)
	if arg1 ~= 1.000000 then
		GoBack(arg0, arg0:getOwner())
	end
end

function SpinnerUpdate_Leave(arg0, arg1, arg2)
	if arg1 == 9.000000 then
		Engine.SetModelValue(arg2, "Deleting advertised session..")
	else
		if arg1 == 6.000000 then
			Engine.SetModelValue(arg2, "Letting clients know we are leaving..")
		end
	end
end

function SpinnerUpdate_Move(arg0, arg1, arg2)
	if arg1 == CoD.Spinner.SYSTEM_PROCESS_MOVE then
		Engine.SetModelValue(arg2, "Waiting for clients...")
	else
		if arg1 == CoD.Spinner.SYSTEM_PROCESS_SEARCH then
			Engine.SetModelValue(arg2, "Searching for sessions...")
		else
			if arg1 == CoD.Spinner.SYSTEM_PROCESS_QOS then
				Engine.SetModelValue(arg2, "Firing QoS...")
			else
				if arg1 == CoD.Spinner.SYSTEM_PROCESS_JOIN then
					Engine.SetModelValue(arg2, "Joining a session...")
				else
					if arg1 == CoD.Spinner.SYSTEM_PROCESS_ONLINE_CREATE then
						Engine.SetModelValue(arg2, "Creating session...")
					end
				end
			end
		end
	end
end

function SpinnerUpdate(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "spinnerModel.spinnerMessage")
	if registerVal3 == nil then
		return 
	end
	if arg1.system == "join_progress" then
		SpinnerUpdate_JoinProgress(arg0, arg1.spinnerState, registerVal3)
	else
		if arg1.system == "join_result" then
			SpinnerUpdate_JoinResult(arg0, arg1.spinnerState, registerVal3)
		else
			if arg1.system == "lobby_leave" then
				SpinnerUpdate_Leave(arg0, arg1.spinnerState, registerVal3)
			else
				if arg1.system == "lobby_move" then
					SpinnerUpdate_Move(arg0, arg1.spinnerState, registerVal3)
				end
			end
		end
	end
end

function SpinnerClose(arg0, arg1)
	GoBack(arg0, arg0:getOwner())
end

local function __FUNC_EDA_(arg0)
	arg0.disablePopupOpenCloseAnim = true
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	arg0:registerEventHandler("spinner_update", SpinnerUpdate)
	arg0:registerEventHandler("spinner_close", SpinnerClose)
end

local function __FUNC_1002_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Spinner")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "Special_widgets"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Spinner.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.AnimationLoading2.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, true, -192.000000, -64.000000)
	registerVal3:setTopBottom(false, true, -164.000000, -36.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.AnimationLoading20 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -167.500000, -88.500000)
	registerVal4:setTopBottom(false, true, -69.000000, -44.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_177D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "SpinnerMessage", "spinnerMessage", __FUNC_177D_)
	registerVal1:addElement(registerVal4)
	registerVal1.lblMessage = registerVal4
	local registerVal5 = CoD.AnimationLoadingWidget.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 1092.000000, 1236.000000)
	registerVal5:setTopBottom(true, false, 540.000000, 684.000000)
	registerVal5:setScale(0.650000)
	registerVal1:addElement(registerVal5)
	registerVal1.AnimationLoadingWidget0 = registerVal5
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local function __FUNC_1836_(arg1)
		arg1.AnimationLoading20:close()
		arg1.AnimationLoadingWidget0:close()
		arg1.lblMessage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Spinner.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1836_)
	if __FUNC_EDA_ then
		__FUNC_EDA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Spinner = __FUNC_1002_
