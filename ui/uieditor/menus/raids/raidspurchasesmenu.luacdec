-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Raids.RaidsPurchases")
local function __FUNC_1C4_(arg0)
	arg0.disableDarkenElement = true
end

local function __FUNC_214_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("RaidsPurchasesMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "RaidsPurchases"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "RaidsPurchasesMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.RaidsPurchases.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, true, -493.880000, -136.880000)
	registerVal3:setTopBottom(true, false, 130.000000, 630.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.RaidsPurchases0 = registerVal3
	local function __FUNC_7D4_(arg1, arg2)
		LockInput(registerVal1, arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_7D4_)
	local function __FUNC_868_(arg0, arg1, arg2, arg3)
		CancelRaidPurchase(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "cancel_purchase")
		LockInput(registerVal1, arg2, false)
		return true
	end

	local function __FUNC_957_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESC", __FUNC_868_, __FUNC_957_, false)
	registerVal3.id = "RaidsPurchases0"
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
		registerVal1.RaidsPurchases0:processEvent(registerVal6)
	end
	local function __FUNC_A48_(arg1)
		arg1.RaidsPurchases0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "RaidsPurchasesMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A48_)
	if __FUNC_1C4_ then
		__FUNC_1C4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.RaidsPurchasesMenu = __FUNC_214_
