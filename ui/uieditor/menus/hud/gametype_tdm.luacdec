-- Decompiled with CoDLUIDecompiler by JariK

require("T6.HUD.gametypes.GametypeBase")
LUI.hudMenuType.gametype_tdm = "hud"
function LUI.createMenu.gametype_tdm(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("gametype_tdm")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "gametype_tdm.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = CoD.GametypeBase.new("gametype_tdm_objective_layer", arg0)
	registerVal1:addElement(registerVal3)
	registerVal1.gametype_tdm_objective_layer = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_60C_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "gametype_tdm.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_60C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

