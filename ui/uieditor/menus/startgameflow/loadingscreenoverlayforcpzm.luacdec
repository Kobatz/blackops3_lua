-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenTalkerWidgetCPZM")
function LUI.createMenu.LoadingScreenOverlayForCPZM(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LoadingScreenOverlayForCPZM")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LoadingScreenOverlayForCPZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(false, false, -576.000000, -386.000000)
	registerVal3:setTopBottom(true, false, 36.000000, 123.000000)
	registerVal3:setDataSource("LoadingScreenPlayerListTeam1")
	registerVal3:setWidgetType(CoD.LoadingScreenTalkerWidgetCPZM)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(5.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Team1PlayerList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_9CB_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal1.Team1PlayerList:setLeftRight(false, false, -576.000000, -386.000000)
		registerVal1.Team1PlayerList:setTopBottom(true, false, 36.000000, 123.000000)
		registerVal1.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9CB_
	local function __FUNC_B2C_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_C19_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Team1PlayerList:setAlpha(0.000000)
		__FUNC_C19_(registerVal3, {})
	end

	registerVal5.StartLoading = __FUNC_B2C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_DCD_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal1.Team1PlayerList:setLeftRight(false, false, -576.000000, -386.000000)
		registerVal1.Team1PlayerList:setTopBottom(true, false, 106.000000, 193.000000)
		registerVal1.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_DCD_
	registerVal4.Zombie = registerVal5
	registerVal1.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Zombie"
	local function __FUNC_F30_(arg0, arg1, arg2)
		return IsZombies()
	end

	registerVal7.condition = __FUNC_F30_
	registerVal6 = {registerVal7}
	registerVal1:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_F7B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal6, __FUNC_F7B_)
	registerVal3.id = "Team1PlayerList"
	registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.Team1PlayerList:processEvent(registerVal6)
	end
	local function __FUNC_10A0_(arg1)
		arg1.Team1PlayerList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LoadingScreenOverlayForCPZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_10A0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

