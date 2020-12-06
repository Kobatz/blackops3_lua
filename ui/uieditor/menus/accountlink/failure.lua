-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.button")
function LUI.createMenu.Failure(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Failure")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "FrontendMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Failure.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 381.500000, 898.500000)
	registerVal3:setTopBottom(true, false, 234.000000, 486.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.DialogBackground0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 521.000000, 729.000000)
	registerVal4:setTopBottom(true, false, 276.050000, 312.050000)
	registerVal4:setText(Engine.Localize("ACCOUNT_LINK_FAIL"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.TextBox0 = registerVal4
	local registerVal5 = CoD.button.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 625.000000, 655.000000)
	registerVal5:setTopBottom(true, false, 390.520000, 420.520000)
	registerVal5.buttoninternal0.Text0:setText(Engine.Localize("MENU_OK"))
	local function __FUNC_A1C_(arg1, arg2)
		AccountLink_SetAccountLinkViewed(registerVal1, arg1, arg0)
		GoBack(registerVal1, arg0)
		LobbyBeginPlay(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "action")
		LoadSaveGameData(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_A1C_)
	registerVal1:addElement(registerVal5)
	registerVal1.button0 = registerVal5
	registerVal5.id = "button0"
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.button0:processEvent(registerVal8)
	end
	local function __FUNC_B74_(arg1)
		arg1.DialogBackground0:close()
		arg1.button0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Failure.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B74_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

