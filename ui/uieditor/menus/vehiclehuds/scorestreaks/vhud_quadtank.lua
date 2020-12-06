-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.quadtank.vhud_quadtank_internal")
function LUI.createMenu.VHUD_QuadTank(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("VHUD_QuadTank")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "VHUD_QuadTank.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.vhud_quadtank_internal.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_6BB_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:subscribeToGlobalModel(arg0, "PerController", "vehicle", __FUNC_6BB_)
	registerVal1:addElement(registerVal3)
	registerVal1.vhudquadtankinternal = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_70A_(arg1)
		arg1.vhudquadtankinternal:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "VHUD_QuadTank.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_70A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

