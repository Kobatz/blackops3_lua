-- Decompiled with CoDLUIDecompiler by JariK

function LUI.createMenu.raid_upgrades(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("raid_upgrades")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "raid_upgrades.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 409.000000, 899.000000)
	registerVal3:setTopBottom(true, false, 434.500000, 459.500000)
	registerVal3:setText(Engine.Localize("COOP_UPGRADE_SPEND"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal3)
	registerVal1.SpendText = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 379.000000, 869.000000)
	registerVal4:setTopBottom(true, false, 434.500000, 459.500000)
	registerVal4:setText(Engine.Localize("COOP_UPGRADE_CANCEL"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.CancelText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 409.000000, 869.000000)
	registerVal5:setTopBottom(true, false, 404.500000, 434.500000)
	registerVal5:setText(Engine.Localize("COOP_UPGRADE_TOKENS_AVAILABLE"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.TokensAvailableText = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 449.250000, 777.250000)
	registerVal6:setTopBottom(true, false, 274.000000, 304.000000)
	registerVal6:setText(Engine.Localize("COOP_UPGRADE_TOKENS_REQUIRED"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.TokensRequiredLabel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 707.000000, 820.000000)
	registerVal7:setTopBottom(true, false, 274.000000, 393.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.UpgradeImage = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 461.500000, 681.500000)
	registerVal8:setTopBottom(true, false, 308.500000, 327.970000)
	registerVal8:setText(Engine.Localize("MENU_DESCRIPTION"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.UpgradeDescriptionText = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 409.000000, 869.000000)
	registerVal9:setTopBottom(true, false, 216.000000, 264.000000)
	registerVal9:setText(Engine.Localize("COOP_UPGRADE_TITLE"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.UpgradeTitleText = registerVal9
	local function __FUNC_E3D_(arg0, arg1, arg2, arg3)
		SetResponseNo(registerVal1, arg2)
		return true
	end

	local function __FUNC_E97_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "ESC", __FUNC_E3D_, __FUNC_E97_, false)
	local function __FUNC_F88_(arg0, arg1, arg2, arg3)
		SetResponseYes(registerVal1, arg2)
		return true
	end

	local function __FUNC_FE4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "F", __FUNC_F88_, __FUNC_FE4_, false)
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local function __FUNC_10D8_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "raid_upgrades.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_10D8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

