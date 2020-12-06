-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.BlackMarket.CommunityEvent.Winter_Community_Header")
require("ui.uieditor.widgets.BlackMarket.CommunityEvent.Winter_Community_Panel")
function LUI.createMenu.winter_community_theme(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("winter_community_theme")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "Blackmarket_extra"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "winter_community_theme.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_community_winter_bkgd"))
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_community_winter_snow"))
	registerVal1:addElement(registerVal4)
	registerVal1.Snow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, -720.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_community_winter_snow"))
	registerVal1:addElement(registerVal5)
	registerVal1.Snow00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, -1440.000000, -720.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_community_winter_snow"))
	registerVal1:addElement(registerVal6)
	registerVal1.Snow000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setYRot(180.000000)
	registerVal7:setZoom(-80.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_community_winter_snow"))
	registerVal1:addElement(registerVal7)
	registerVal1.SnowBackBottom = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, -720.000000, 0.000000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setYRot(180.000000)
	registerVal8:setZoom(-80.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_community_winter_snow"))
	registerVal1:addElement(registerVal8)
	registerVal1.SnowBackTop = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_community_winter_panel"))
	registerVal1:addElement(registerVal9)
	registerVal1.Panel = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -453.000000, -110.000000)
	registerVal10:setTopBottom(true, false, 15.000000, 75.000000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_1423_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1423_)
	local function __FUNC_1472_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1472_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal11:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_1510_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("menu_opened", __FUNC_1510_)
	registerVal1:addElement(registerVal11)
	registerVal1.feFooterContainerNOTLobby = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 538.060000, 1060.680000)
	registerVal12:setTopBottom(true, false, 430.000000, 876.000000)
	registerVal12:setAlpha(0.500000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowmeter"))
	registerVal1:addElement(registerVal12)
	registerVal1.GlowMeter = registerVal12
	local registerVal13 = CoD.Winter_Community_Header.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 37.420000, 572.420000)
	registerVal13:setTopBottom(true, false, 7.000000, 128.000000)
	registerVal13.RecentItems:setText(Engine.Localize("CONTRACT_COMMUNITY_MENU_TITLE"))
	registerVal1:addElement(registerVal13)
	registerVal1.WinterCommunityHeader = registerVal13
	local registerVal14 = CoD.Winter_Community_Panel.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, -6.000000, 1274.000000)
	registerVal14:setTopBottom(true, false, 89.000000, 639.000000)
	registerVal14.TitleAndDesc.title:setRGB(0.330000, 0.860000, 1.000000)
	registerVal14.TitleAndDesc.title:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_WINTER_TITLE"))
	registerVal14.TitleAndDesc.txtDescription:setRGB(0.580000, 0.890000, 1.000000)
	registerVal14.TitleAndDesc.txtDescription:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_WINTER_DESC"))
	registerVal1:addElement(registerVal14)
	registerVal1.WinterCommunityPanel = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_15A5_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_1935_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1.000000, 1281.000000)
			arg0:setTopBottom(true, false, 1440.000000, 2160.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Snow:setLeftRight(true, false, 0.000000, 1280.000000)
		registerVal1.Snow:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_1935_(registerVal4, {})
		local function __FUNC_1B36_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 1280.000000)
			arg0:setTopBottom(true, false, 720.000000, 1440.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.Snow00:setLeftRight(true, false, 0.000000, 1280.000000)
		registerVal1.Snow00:setTopBottom(true, false, -720.000000, 0.000000)
		__FUNC_1B36_(registerVal5, {})
		local function __FUNC_1D36_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 1280.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.Snow000:setLeftRight(true, false, 0.000000, 1280.000000)
		registerVal1.Snow000:setTopBottom(true, false, -1440.000000, -720.000000)
		__FUNC_1D36_(registerVal6, {})
		local function __FUNC_1F31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 1280.000000)
			arg0:setTopBottom(true, false, 724.000000, 1444.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.SnowBackBottom:setLeftRight(true, false, 0.000000, 1280.000000)
		registerVal1.SnowBackBottom:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_1F31_(registerVal7, {})
		local function __FUNC_2132_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 30000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 1280.000000)
			arg0:setTopBottom(true, false, 4.000000, 724.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.SnowBackTop:setLeftRight(true, false, 0.000000, 1280.000000)
		registerVal1.SnowBackTop:setTopBottom(true, false, -720.000000, 0.000000)
		__FUNC_2132_(registerVal8, {})
		registerVal1.nextClip = "DefaultClip"
	end

	registerVal16.DefaultClip = __FUNC_15A5_
	registerVal15.DefaultState = registerVal16
	registerVal1.clipsPerState = registerVal15
	local function __FUNC_2332_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2384_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2332_, __FUNC_2384_, false)
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	registerVal14.id = "WinterCommunityPanel"
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.WinterCommunityPanel:processEvent(registerVal17)
	end
	local function __FUNC_2481_(arg1)
		arg1.SelfIdentityBadge:close()
		arg1.feFooterContainerNOTLobby:close()
		arg1.WinterCommunityHeader:close()
		arg1.WinterCommunityPanel:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "winter_community_theme.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2481_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

