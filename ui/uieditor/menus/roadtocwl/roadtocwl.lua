-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.BM_LogoContracts")
require("ui.uieditor.widgets.Promo.Promo_ThermometerTabWidget")
local function __FUNC_29F_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_2F1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("RoadToCWL")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "RoadToCWL.buttonPrompts")
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
	local function __FUNC_E78_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_E78_)
	local function __FUNC_ECA_(arg1)
		registerVal4.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_ECA_)
	registerVal1:addElement(registerVal4)
	registerVal1.SelfIdentityBadge = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal5:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_F68_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_opened", __FUNC_F68_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = CoD.BM_LogoContracts.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 33.040000, 424.040000)
	registerVal6:setTopBottom(true, false, 5.000000, 126.000000)
	registerVal6:setScale(0.950000)
	registerVal6.RecentItems:setText(Engine.Localize("CONTRACT_COMMUNITY_MENU_TITLE"))
	registerVal1:addElement(registerVal6)
	registerVal1.BMLogoContracts = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 538.060000, 1060.680000)
	registerVal7:setTopBottom(true, false, 430.000000, 876.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowmeter"))
	registerVal1:addElement(registerVal7)
	registerVal1.GlowMeter = registerVal7
	local registerVal8 = CoD.Promo_ThermometerTabWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, -6.000000, 1274.000000)
	registerVal8:setTopBottom(true, false, 89.000000, 651.000000)
	registerVal8.txtDescription:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_DESC"))
	registerVal8.title:setRGB(0.820000, 0.830000, 0.600000)
	registerVal1:addElement(registerVal8)
	registerVal1.PromoThermometerTabWidget = registerVal8
	local function __FUNC_FFD_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		HandleGoBackFromPromo(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_1095_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_FFD_, __FUNC_1095_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local function __FUNC_1191_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.BMLogoContracts:close()
		arg1.PromoThermometerTabWidget:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "RoadToCWL.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1191_)
	if __FUNC_29F_ then
		__FUNC_29F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.RoadToCWL = __FUNC_2F1_
