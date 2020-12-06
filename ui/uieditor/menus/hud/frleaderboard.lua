-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Leaderboard.Leaderboard")
function LUI.createMenu.FRLeaderboard(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FRLeaderboard")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FRLeaderboard.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.Leaderboard.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 226.500000, 1006.500000)
	registerVal3:setTopBottom(true, false, 142.500000, 533.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.Leaderboard = registerVal3
	registerVal3.id = "Leaderboard"
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.Leaderboard:processEvent(registerVal6)
	end
	local function __FUNC_694_(arg1)
		arg1.Leaderboard:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FRLeaderboard.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_694_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

