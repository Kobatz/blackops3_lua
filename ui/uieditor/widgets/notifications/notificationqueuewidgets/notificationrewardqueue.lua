-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.NotificationRewardWidget")
local function __FUNC_2CE_(arg0, arg1, arg2)
	arg0.controller = arg1
	arg0.menu = arg2
	local registerVal6 = Engine.GetModelForController(arg1)
	arg0:setModel(Engine.CreateModel(registerVal6, "NotificationRewardQueue"))
	arg0.availableRewardModels = {}
	for index4=1.000000, (3.000000 + 1.000000), 1.000000 do
		local registerVal11 = arg0:getModel()
		table.insert(arg0.availableRewardModels, Engine.CreateModel(registerVal11, ("Reward" .. index4)))
	end
	arg0.rewardWidgetsBeingShown = {}
	arg0.rewardQueue = {}
	local function __FUNC_580_(arg0, arg1, arg2, arg3, arg4)
		local registerVal7 = {}
		registerVal7.color = arg1
		registerVal7.imageName = arg2
		registerVal7.text = arg3
		registerVal7.size = arg4
		table.insert(arg0.rewardQueue, registerVal7)
		nil(arg0)
	end

	arg0.addReward = __FUNC_580_
	local function __FUNC_65E_(arg0, arg1)
		arg0.queueAnimating = nil
		nil(arg0)
	end

	arg0:registerEventHandler("queue_done_animating", __FUNC_65E_)
	local function __FUNC_6B1_(arg0, arg1)
		if arg1.widgetContainer.fadingOffQueue then
			return 
		end
		local registerVal2 = arg1.widgetContainer.widget:hasClip("TimeUp")
		if registerVal2 then
			arg1.widgetContainer.widget:playClip("TimeUp")
			local function __FUNC_8E6_(arg1, arg2)
				nil(arg0)
			end

			arg1.widgetContainer.widget:registerEventHandler("clip_over", __FUNC_8E6_)
		else
			arg1.widgetContainer:beginAnimation("time_up", 500.000000)
			arg1.widgetContainer:setAlpha(0.000000)
			local function __FUNC_91C_(arg1, arg2)
				nil(arg0)
			end

			arg1.widgetContainer:registerEventHandler("transition_complete_time_up", __FUNC_91C_)
		end
	end

	arg0:registerEventHandler("time_up", __FUNC_6B1_)
end

local function __FUNC_954_(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg2, "color")
	local registerVal4 = Engine.CreateModel(arg2, "icon")
	local registerVal5 = Engine.CreateModel(arg2, "title")
	local registerVal6 = Engine.CreateModel(arg2, "size")
	Engine.SetModelValue(registerVal3, arg1.color)
	Engine.SetModelValue(registerVal4, arg1.imageName)
	Engine.SetModelValue(registerVal5, arg1.text)
	if arg1.size then
		Engine.SetModelValue(registerVal6, arg1.size)
	else
		Engine.SetModelValue(registerVal6, "")
	end
	return CoD.NotificationRewardWidget.new(arg0.menu, arg0.controller)
end

local function __FUNC_BEF_(arg0)
	local registerVal1 = table.remove(arg0.rewardWidgetsBeingShown, 1.000000)
	registerVal1.widget:close()
	registerVal1:close()
	table.insert(arg0.availableRewardModels, registerVal1.widget:getModel())
end

local function __FUNC_D31_(arg0)
	if #arg0.rewardQueue == 0.000000 then
		return false
	end
	if #arg0.rewardWidgetsBeingShown == 0.000000 then
		return true
	end
	if arg0.queueAnimating then
		return false
	end
	return true
end

local function __FUNC_E13_(arg0)
	local registerVal1 = __FUNC_D31_(arg0)
	if not registerVal1 then
		return 
	end
	registerVal1 = table.remove(arg0.rewardQueue, 1.000000)
	local registerVal2 = table.remove(arg0.availableRewardModels)
	local registerVal3 = __FUNC_954_(arg0, registerVal1, registerVal2)
	local registerVal4, registerVal5 = registerVal3:getLocalSize()
	registerVal3:setLeftRight(false, false, (-registerVal4 / 2.000000), (registerVal4 / 2.000000))
	registerVal3:setTopBottom(false, true, -registerVal5, 0.000000)
	registerVal3:setModel(registerVal2)
	registerVal3:setState("DefaultState")
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(false, true, (-registerVal4 / 2.000000), (-registerVal4 / 2.000000))
	registerVal6:setTopBottom(true, false, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(1.000000)
	registerVal6:beginAnimation("reward_queue_move", 200.000000, true, true)
	registerVal6:setTopBottom(true, false, registerVal5, registerVal5)
	registerVal6:setAlpha(1.000000)
	registerVal6.reward = registerVal1
	registerVal6.widget = registerVal3
	local registerVal9 = {}
	registerVal9.name = "time_up"
	registerVal9.widgetContainer = registerVal6
	local registerVal7 = LUI.UITimer.new(3500.000000, registerVal9, true, arg0)
	registerVal6.timeUpTimer = registerVal7
	registerVal6:addElement(registerVal6.timeUpTimer)
	registerVal6:addElement(registerVal3)
	table.insert(arg0.rewardWidgetsBeingShown, registerVal6)
	arg0:addElement(registerVal6)
	registerVal7, registerVal8 = registerVal3:getLocalSize()
	for index8=(#arg0.rewardWidgetsBeingShown - 1.000000), 1.000000, -1.000000 do
		local registerVal13, registerVal14 = arg0.rewardWidgetsBeingShown[index8].widget:getLocalSize()
		arg0.rewardWidgetsBeingShown[index8]:beginAnimation("reward_queue_move", 200.000000, true, true)
		arg0.rewardWidgetsBeingShown[index8]:setTopBottom(true, false, (registerVal8 + registerVal14), (registerVal8 + registerVal14))
	end
	if 1.000000 < #arg0.rewardWidgetsBeingShown and 3.000000 < #arg0.rewardWidgetsBeingShown then
		arg0.rewardWidgetsBeingShown[1.000000].timeUpTimer:close()
		arg0.rewardWidgetsBeingShown[1.000000]:setAlpha(0.000000)
		arg0.rewardWidgetsBeingShown[1.000000]:setScale(0.000000)
		arg0.rewardWidgetsBeingShown[1.000000].fadingOffQueue = true
		local function __FUNC_14E6_(arg1, arg2)
			__FUNC_BEF_(arg0)
		end

		arg0.rewardWidgetsBeingShown[1.000000]:registerEventHandler("transition_complete_reward_queue_move", __FUNC_14E6_)
	end
	arg0:addElement(LUI.UITimer.new(700.000000, "queue_done_animating", true, arg0))
	arg0.queueAnimating = true
end

local registerVal11 = InheritFrom(LUI.UIElement)
CoD.NotificationRewardQueue = registerVal11
local function __FUNC_151C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationRewardQueue)
	registerVal2.id = "NotificationRewardQueue"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	if __FUNC_2CE_ then
		__FUNC_2CE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.NotificationRewardQueue.new = __FUNC_151C_
