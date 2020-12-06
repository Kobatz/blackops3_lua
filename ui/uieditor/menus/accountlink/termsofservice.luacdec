-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.button")
require("ui.uieditor.menus.AccountLink.UmbrellaRegister")
function LUI.createMenu.TermsOfService(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("TermsOfService")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "FrontendMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TermsOfService.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal3:setTopBottom(true, false, 36.000000, 684.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.DialogBackground0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 446.000000, 834.000000)
	registerVal4:setTopBottom(true, false, 72.020000, 154.020000)
	registerVal4:setText(Engine.Localize("ACCOUNT_LINK_TERMS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.termsTitle = registerVal4
	local registerVal5 = CoD.button.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 757.000000, 834.000000)
	registerVal5:setTopBottom(true, false, 614.110000, 644.110000)
	registerVal5.buttoninternal0.Text0:setText(Engine.Localize("MENU_ACCEPT"))
	local function __FUNC_C98_(arg1, arg2)
		GoBackAndOpenOverlayOnParent(registerVal1, "UmbrellaRegister", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("button_action", __FUNC_C98_)
	registerVal1:addElement(registerVal5)
	registerVal1.confirm = registerVal5
	local registerVal6 = CoD.button.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 446.000000, 524.000000)
	registerVal6:setTopBottom(true, false, 614.110000, 644.110000)
	registerVal6.buttoninternal0.Text0:setText(Engine.Localize("MENU_DECLINE"))
	local function __FUNC_D59_(arg1, arg2)
		GoBack(registerVal1, arg0)
		AccountLink_SetAccountLinkViewed(registerVal1, arg1, arg0)
		LobbyBeginPlay(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "action")
		LoadSaveGameData(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("button_action", __FUNC_D59_)
	registerVal1:addElement(registerVal6)
	registerVal1.button0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 164.000000, 1116.000000)
	registerVal7:setTopBottom(true, false, 154.020000, 179.020000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EB0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "TermsOfService", "message", __FUNC_EB0_)
	registerVal1:addElement(registerVal7)
	registerVal1.TextBox0 = registerVal7
	local registerVal8 = {}
	registerVal8.left = registerVal6
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.right = registerVal5
	registerVal6.navigation = registerVal8
	registerVal5.id = "confirm"
	registerVal6.id = "button0"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.confirm:processEvent(registerVal10)
	end
	local function __FUNC_F6A_(arg1)
		arg1.DialogBackground0:close()
		arg1.confirm:close()
		arg1.button0:close()
		arg1.TextBox0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "TermsOfService.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F6A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

