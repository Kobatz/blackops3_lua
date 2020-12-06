-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.Promo.Promo_ZMHD_CommunityWidget")
require("ui.uieditor.widgets.Promo.Promo_ZMDH_HeaderWidget")
function LUI.createMenu.ZMHD_Community_Theme(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ZMHD_Community_Theme")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ZMHD_Community_Theme.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_bg_1080"))
	registerVal1:addElement(registerVal3)
	registerVal1.Screen = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zmhd_community_theme_bg_1080"))
	registerVal1:addElement(registerVal4)
	registerVal1.BG = registerVal4
	local registerVal5 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal5:setTopBottom(true, false, 15.000000, 75.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_1008_(arg1)
		registerVal5:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1008_)
	local function __FUNC_105A_(arg1)
		registerVal5.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_105A_)
	registerVal1:addElement(registerVal5)
	registerVal1.SelfIdentityBadge = registerVal5
	local registerVal6 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal6:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_10F8_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_opened", __FUNC_10F8_)
	registerVal1:addElement(registerVal6)
	registerVal1.feFooterContainerNOTLobby = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 538.060000, 1060.680000)
	registerVal7:setTopBottom(true, false, 430.000000, 876.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowmeter"))
	registerVal1:addElement(registerVal7)
	registerVal1.GlowMeter = registerVal7
	local registerVal8 = CoD.Promo_ZMHD_CommunityWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, -6.000000, 1274.000000)
	registerVal8:setTopBottom(true, false, 89.000000, 639.000000)
	registerVal8.TitleAndDesc.title:setRGB(0.930000, 0.930000, 0.600000)
	registerVal8.TitleAndDesc.title:setText(LocalizeToUpperString("CONTRACT_BGB_CC_TITLE"))
	registerVal8.TitleAndDesc.txtDescription:setRGB(0.930000, 0.930000, 0.600000)
	registerVal8.TitleAndDesc.txtDescription:setText(Engine.Localize("CONTRACT_BGB_CC_DESC"))
	registerVal1:addElement(registerVal8)
	registerVal1.PromoZMHDCommunityWidget = registerVal8
	local registerVal9 = CoD.Promo_ZMDH_HeaderWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 34.350000, 569.350000)
	registerVal9:setTopBottom(true, false, 6.000000, 127.000000)
	registerVal9.RecentItems:setText(Engine.Localize("CONTRACT_COMMUNITY_MENU_TITLE"))
	registerVal1:addElement(registerVal9)
	registerVal1.PromoZMDHHeaderWidget0 = registerVal9
	local function __FUNC_118D_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		HandleGoBackFromPromo(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_1225_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_118D_, __FUNC_1225_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "PromoZMHDCommunityWidget"
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.PromoZMHDCommunityWidget:processEvent(registerVal12)
	end
	local function __FUNC_1321_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.PromoZMHDCommunityWidget:close()
		arg1.PromoZMDHHeaderWidget0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ZMHD_Community_Theme.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1321_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

