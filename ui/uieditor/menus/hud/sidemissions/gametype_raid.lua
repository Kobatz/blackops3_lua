-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.SideMissions.baseHealthWidget")
require("T6.HUD.gametypes.GametypeBase")
function LUI.createMenu.gametype_raid(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("gametype_raid")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "gametype_raid.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = CoD.GametypeBase.new("gametype_raid_objective_layer", arg0)
	registerVal1:addElement(registerVal3)
	registerVal1.gametype_raid_objective_layer = registerVal3
	registerVal1.anyChildUsesUpdateState = true
	local registerVal4 = CoD.baseHealthWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 15.000000, 280.000000)
	registerVal4:setTopBottom(true, false, 187.000000, 217.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.baseHealthWidget = registerVal4
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_6EC_(arg1)
		arg1.baseHealthWidget:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "gametype_raid.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6EC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

