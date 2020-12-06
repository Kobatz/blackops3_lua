-- Decompiled with CoDLUIDecompiler by JariK

CoD.ConsoleUtility = {}
function CoD.ConsoleUtility.UpdateConsole(arg0)
	for index2=0.000000, arg0.maxElementIndex, 1.000000 do
		if arg0.lines[index2].active then
			arg0.lines[index2].position = (arg0.lines[index2].position + 1.000000)
			arg0.lines[index2].element:moveConsoleEntry(arg0.lines[index2].position)
		end
	end
	local registerVal2 = Engine.GetModelForController(arg0.controller)
	local registerVal3 = Engine.GetModel(arg0.consoleModel, "currentIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if arg0.maxElementIndex < (0.000000 + 1.000000) then
		arg0.lines[registerVal4].element:forceHideConsoleEntry()
	end
	local registerVal6 = Engine.IsVisibilityBitSet(arg0.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	if not registerVal6 then
		registerVal6 = CoD.IsShoutcaster(arg0.controller)
		registerVal6 = CoD.ShoutcasterProfileVarBool(arg0.controller, "shoutcaster_killfeed")
		if registerVal6 and not registerVal6 then
		else
			arg0.lines[registerVal4].element:showConsoleEntry(registerVal4)
			arg0.lines[registerVal4].active = true
		end
	end
	Engine.SetModelValue(registerVal3, ((registerVal4 + 1.000000) % (arg0.maxElementIndex + 1.000000)))
	return true
end

function CoD.ConsoleUtility.ConsoleNotificationComplete(arg0, arg1)
	arg0.lines[arg1.id].active = false
	arg0.lines[arg1.id].position = 0.000000
end

function CoD.ConsoleUtility.Init(arg0, arg1, arg2, arg3)
	arg0.controller = arg1
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, ("hudItems." .. arg2))
	local registerVal6 = Engine.CreateModel(registerVal4, "currentIndex")
	Engine.SetModelValue(registerVal6, 0.000000)
	arg0.currentIndex = 0.000000
	arg0.maxElementIndex = 6.000000
	arg0.consoleModel = registerVal4
	arg0.lines = {}
	for index5=0.000000, arg0.maxElementIndex, 1.000000 do
		arg0.lines[index5] = {}
		arg0.lines[index5].active = false
		arg0.lines[index5].name = ("ConsoleEntry" .. index5)
		arg0.lines[index5].element = arg0[arg0.lines[index5].name]
		arg0.lines[index5].position = 0.000000
	end
	arg0:registerEventHandler("console_notification_complete", CoD.ConsoleUtility.ConsoleNotificationComplete)
	local function __FUNC_C91_(arg1)
		CoD.ConsoleUtility.UpdateConsole(arg0)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_C91_, false)
end

function CoD.ConsoleUtility.CompleteAllAnimations(arg0)
	arg0.ConsoleEntry:completeAnimation()
	arg0.ConsoleEntry.Text0:completeAnimation()
	arg0.ConsoleEntry.Icon0:completeAnimation()
	arg0.ConsoleEntry.Text1:completeAnimation()
	arg0.ConsoleEntry.Icon1:completeAnimation()
end

function CoD.ConsoleUtility.ShowConsoleEntry(arg0, arg1)
	arg0.id = arg1
	arg0:completeAllAnimations()
	arg0:setAlpha(1.000000)
	arg0.ConsoleEntry.Text0.Text:setAlpha(0.000000)
	arg0.ConsoleEntry.Icon0.Icon:setAlpha(0.000000)
	arg0.ConsoleEntry.Text1.Text:setAlpha(0.000000)
	arg0.ConsoleEntry.Icon1.Icon:setAlpha(0.000000)
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0:getLocalRect()
	arg0:setTopBottom(false, true, -(registerVal6 - registerVal4), 0.000000)
	local function __FUNC_183A_(arg0)
		if arg0 == nil or arg0 == "" then
		end
		return true
	end

	local registerVal10 = arg0:getModel()
	local registerVal11 = __FUNC_183A_(Engine.GetModelValue(Engine.GetModel(registerVal10, "icon0")))
	arg0.icon0Visible = registerVal11
	registerVal11 = __FUNC_183A_(Engine.GetModelValue(Engine.GetModel(registerVal10, "text0")))
	arg0.text0Visible = registerVal11
	registerVal11 = __FUNC_183A_(Engine.GetModelValue(Engine.GetModel(registerVal10, "icon1")))
	arg0.icon1Visible = registerVal11
	registerVal11 = __FUNC_183A_(Engine.GetModelValue(Engine.GetModel(registerVal10, "text1")))
	arg0.text1Visible = registerVal11
	if arg0.icon0Visible then
		registerVal11, registerVal12, registerVal13, registerVal14 = arg0.ConsoleEntry.Icon0:getLocalRect()
		local registerVal16 = Engine.GetModelValue(Engine.GetModel(registerVal10, "iconWidth"))
		if ((registerVal14 - registerVal12) * registerVal16) < 0.000000 then
			arg0.ConsoleEntry.Icon0:setLeftRight(true, false, (registerVal3 + (4.000000 / 2.000000)), ((registerVal3 + (4.000000 / 2.000000)) - ((registerVal14 - registerVal12) * registerVal16)))
		else
			arg0.ConsoleEntry.Icon0:setLeftRight(true, false, ((registerVal3 + (4.000000 / 2.000000)) + ((registerVal14 - registerVal12) * registerVal16)), (registerVal3 + (4.000000 / 2.000000)))
		end
		local registerVal18 = math.abs(((registerVal14 - registerVal12) * registerVal16))
		arg0.ConsoleEntry.Icon0:playClip("FadeIn")
	end
	if arg0.text0Visible then
		registerVal11 = arg0.ConsoleEntry.Text0.Text:getTextWidth()
		arg0.ConsoleEntry.Text0:setLeftRight(true, false, (((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000), ((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11))
		arg0.ConsoleEntry.Text0:playClip("FadeIn")
	end
	if arg0.icon1Visible then
		registerVal11, registerVal12, registerVal13, registerVal14 = arg0.ConsoleEntry.Icon1:getLocalRect()
		registerVal16 = Engine.GetModelValue(Engine.GetModel(registerVal10, "iconWidth"))
		if ((registerVal14 - registerVal12) * registerVal16) < 0.000000 then
			arg0.ConsoleEntry.Icon1:setLeftRight(true, false, ((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) - ((registerVal14 - registerVal12) * registerVal16)), (((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000))
		else
			arg0.ConsoleEntry.Icon1:setLeftRight(true, false, (((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000), ((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + ((registerVal14 - registerVal12) * registerVal16)))
		end
		registerVal18 = math.abs(((registerVal14 - registerVal12) * registerVal16))
		arg0.ConsoleEntry.Icon1:playClip("FadeIn")
	end
	if arg0.text1Visible then
		registerVal11 = arg0.ConsoleEntry.Text1.Text:getTextWidth()
		arg0.ConsoleEntry.Text1:setLeftRight(true, false, (((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + registerVal18) + 4.000000), ((((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + registerVal18) + 4.000000) + registerVal11))
		arg0.ConsoleEntry.Text1:playClip("FadeIn")
	end
	arg0.ConsoleEntry.Panel:setLeftRight(true, false, arg0.panelStartLeft, (arg0.panelStartRight + ((((((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + registerVal18) + 4.000000) + registerVal11) + 4.000000) - (4.000000 / 2.000000))))
	if arg0.alignment == Enum.LUIAlignment.LUI_ALIGNMENT_CENTER then
		arg0.ConsoleEntry:setLeftRight(false, false, (-((((((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + registerVal18) + 4.000000) + registerVal11) + 4.000000) - (4.000000 / 2.000000)) / 2.000000), (((((((((((registerVal3 + (4.000000 / 2.000000)) + registerVal18) + 4.000000) + registerVal11) + 4.000000) + registerVal18) + 4.000000) + registerVal11) + 4.000000) - (4.000000 / 2.000000)) / 2.000000))
	end
	arg0.ConsoleEntry:playClip("FadeIn")
	registerVal11 = LUI.UITimer.new(5000.000000, "hide_console_entry", true, arg0)
	arg0.timer = registerVal11
	arg0:addElement(arg0.timer)
end

function CoD.ConsoleUtility.MoveConsoleEntry(arg0, arg1)
	arg0:completeAllAnimations()
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.ConsoleEntry:getLocalRect()
	arg0:beginAnimation("move_console_event", 100.000000)
	if 5.000000 <= arg1 then
		if arg1 ~= 5.000000 or not 0.600000 then
		end
		arg0:setAlpha(0.400000)
	end
	arg0:setTopBottom(false, true, (registerVal3 + ((registerVal3 - registerVal5) * arg1)), (registerVal5 + ((registerVal3 - registerVal5) * arg1)))
end

function CoD.ConsoleUtility.HideConsoleEntry(arg0)
	arg0:completeAllAnimations()
	if arg0.forcedToHide then
		arg0.ConsoleEntry.Text0.Text:setAlpha(0.000000)
		arg0.ConsoleEntry.Icon0.Icon:setAlpha(0.000000)
		arg0.ConsoleEntry.Text1.Text:setAlpha(0.000000)
		arg0.ConsoleEntry.Icon1.Icon:setAlpha(0.000000)
		arg0.ConsoleEntry.Panel:setAlpha(0.000000)
	else
		if arg0.text0Visible then
			arg0.ConsoleEntry.Text0:playClip("FadeOut")
		end
		if arg0.icon0Visible then
			arg0.ConsoleEntry.Icon0:playClip("FadeOut")
		end
		if arg0.icon1Visible then
			arg0.ConsoleEntry.Icon1:playClip("FadeOut")
		end
		if arg0.text1Visible then
			arg0.ConsoleEntry.Text1:playClip("FadeOut")
		end
		arg0.ConsoleEntry:playClip("FadeOut")
	end
	arg0.text0Visible = false
	arg0.icon0Visible = false
	arg0.icon1Visible = false
	arg0.text1Visible = false
	local registerVal3 = {}
	registerVal3.name = "console_notification_complete"
	registerVal3.id = arg0.id
	arg0:dispatchEventToParent(registerVal3)
	arg0.forcedToHide = false
end

function CoD.ConsoleUtility.ForceHideConsoleEntry(arg0)
	arg0.forcedToHide = true
	arg0.timer:processNow()
end

function CoD.ConsoleUtility.EntryInit(arg0, arg1, arg2)
	arg0.id = -1.000000
	arg0.forcedToHide = false
	arg0.text0Visible = false
	arg0.icon0Visible = false
	arg0.icon1Visible = false
	arg0.text1Visible = false
	arg0.alignment = arg2
	arg0:registerEventHandler("hide_console_entry", CoD.ConsoleUtility.HideConsoleEntry)
	arg0.completeAllAnimations = CoD.ConsoleUtility.CompleteAllAnimations
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.ConsoleEntry.Panel:getLocalLeftRight()
	arg0.panelStartLeft = registerVal5
	arg0.panelStartRight = registerVal6
	arg0.showConsoleEntry = CoD.ConsoleUtility.ShowConsoleEntry
	arg0.moveConsoleEntry = CoD.ConsoleUtility.MoveConsoleEntry
	arg0.hideConsoleEntry = CoD.ConsoleUtility.HideConsoleEntry
	arg0.forceHideConsoleEntry = CoD.ConsoleUtility.ForceHideConsoleEntry
end

