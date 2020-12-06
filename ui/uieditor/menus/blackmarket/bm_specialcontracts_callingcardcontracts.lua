-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.BM_LogoContracts")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_CallingCardContracts_Stickerbook")
local function __FUNC_2E0_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_335_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BM_SpecialContracts_CallingCardContracts")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BM_SpecialContracts_CallingCardContracts.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_bg_1080"))
	registerVal1:addElement(registerVal3)
	registerVal1.Screen = registerVal3
	local registerVal4 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 75.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_DDF_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_DDF_)
	local function __FUNC_E2E_(arg1)
		registerVal4.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_E2E_)
	registerVal1:addElement(registerVal4)
	registerVal1.SelfIdentityBadge = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_ECC_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_opened", __FUNC_ECC_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = CoD.BM_LogoContracts.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 33.040000, 424.040000)
	registerVal6:setTopBottom(true, false, 5.000000, 126.000000)
	registerVal6:setScale(0.950000)
	registerVal6.RecentItems:setText(Engine.Localize("CONTRACT_SPECIAL_MENU_TITLE"))
	registerVal1:addElement(registerVal6)
	registerVal1.BMLogoContracts = registerVal6
	local registerVal7 = CoD.SpecialContracts_CallingCardContracts_Stickerbook.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -571.000000, 579.000000)
	registerVal7:setTopBottom(false, false, -260.000000, 260.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.CallingCardContractsStickerbook = registerVal7
	local function __FUNC_F61_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_FB4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_F61_, __FUNC_FB4_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal7.id = "CallingCardContractsStickerbook"
	local registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.CallingCardContractsStickerbook:processEvent(registerVal10)
	end
	local function __FUNC_10B1_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.BMLogoContracts:close()
		arg1.CallingCardContractsStickerbook:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BM_SpecialContracts_CallingCardContracts.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_10B1_)
	if __FUNC_2E0_ then
		__FUNC_2E0_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BM_SpecialContracts_CallingCardContracts = __FUNC_335_
