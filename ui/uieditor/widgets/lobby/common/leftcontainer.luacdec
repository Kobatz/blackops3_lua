-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleContainer")
require("ui.uieditor.widgets.Lobby.Connectivity.LocalWarning")
require("ui.uieditor.widgets.Lobby.Common.FE_SelectionList")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCardsContainer")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsSummary")
require("ui.uieditor.widgets.Lobby.LobbyDoubleXPWidgetContainer")
local function __FUNC_396_(arg0, arg1, arg2)
	local function __FUNC_4AB_()
		arg0.MenuTitleContainer:playClip("Update")
		arg0.selectionList:playClip("Update")
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.MenuTitleContainer.MenuTitle.TextBox1.Label0, "setText", __FUNC_4AB_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LeftContainer = registerVal2
local function __FUNC_561_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeftContainer)
	registerVal2.id = "LeftContainer"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_3dTitleContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -75.000000, 445.000000)
	registerVal3:setTopBottom(true, false, 189.350000, 335.350000)
	registerVal3:setYRot(25.000000)
	registerVal3.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.MenuTitleContainer = registerVal3
	local registerVal4 = CoD.LocalWarning.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 123.530000, 623.530000)
	registerVal4:setTopBottom(true, false, 62.000000, 82.000000)
	registerVal4:setAlpha(0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "PlayingLive"
	local function __FUNC_14C1_(arg0, arg1, arg2)
		return IsLive()
	end

	registerVal8.condition = __FUNC_14C1_
	local registerVal9 = {}
	registerVal9.stateName = "PlayingLocal"
	local function __FUNC_1508_(arg0, arg1, arg2)
		return IsLAN()
	end

	registerVal9.condition = __FUNC_1508_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_154F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_154F_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_167C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_167C_)
	registerVal2:addElement(registerVal4)
	registerVal2.LocalWarning = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 37.900000, 40.900000)
	registerVal5:setTopBottom(true, false, 52.000000, 640.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineSide = registerVal5
	local registerVal6 = CoD.FE_SelectionList.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 37.390000, 647.390000)
	registerVal6:setTopBottom(true, false, 320.000000, 666.000000)
	registerVal6:setYRot(25.000000)
	registerVal6:setZoom(-150.000000)
	local function __FUNC_17A4_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_17A4_)
	local function __FUNC_1937_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1937_)
	local function __FUNC_1A06_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_1A67_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1A06_, __FUNC_1A67_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.selectionList = registerVal6
	registerVal7 = CoD.FE_FeaturedCardsContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 35.900000, 395.900000)
	registerVal7:setTopBottom(true, false, 40.000000, 203.000000)
	registerVal7:setYRot(25.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFeaturedCardsContainer = registerVal7
	registerVal8 = CoD.Competitive_SettingsSummary.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 35.000000, 387.000000)
	registerVal8:setTopBottom(true, false, 436.000000, 659.000000)
	registerVal8:setYRot(25.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CompetitiveSettingsSummary = registerVal8
	registerVal9 = CoD.LobbyDoubleXPWidgetContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.LobbyDoubleXPWidgetContainer = registerVal9
	local function __FUNC_1B62_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal7.CardsList, nil, false, __FUNC_1B62_)
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1BB2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 189.350000, 335.350000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setLeftRight(true, false, 123.530000, 623.530000)
		registerVal2.LocalWarning:setTopBottom(true, false, 62.000000, 82.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 320.000000, 666.000000)
		registerVal2.selectionList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setLeftRight(true, false, 35.900000, 395.900000)
		registerVal2.FEFeaturedCardsContainer:setTopBottom(true, false, 40.000000, 203.000000)
		registerVal2.FEFeaturedCardsContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyDoubleXPWidgetContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1BB2_
	local function __FUNC_1FDF_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_22C1_(arg0, arg1)
			local function __FUNC_2450_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 24.000000, 170.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2450_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 201.350000, 347.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2450_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 189.350000, 335.350000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		__FUNC_22C1_(registerVal3, {})
		local function __FUNC_2675_(arg0, arg1)
			local function __FUNC_2804_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 539.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 37.390000, 647.390000)
				arg0:setTopBottom(true, false, 134.000000, 480.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2804_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 332.000000, 678.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2804_)
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 320.000000, 666.000000)
		__FUNC_2675_(registerVal6, {})
		local function __FUNC_2A06_(arg0, arg1)
			local function __FUNC_2B5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, 35.900000, 395.900000)
				arg0:setTopBottom(true, false, 40.000000, 203.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B5C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setLeftRight(true, false, 35.900000, 395.900000)
		registerVal2.FEFeaturedCardsContainer:setTopBottom(true, false, 40.000000, 203.000000)
		registerVal2.FEFeaturedCardsContainer:setAlpha(1.000000)
		__FUNC_2A06_(registerVal7, {})
	end

	registerVal11.MoveSelectionListUp = __FUNC_1FDF_
	local function __FUNC_2D81_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setLeftRight(true, false, 123.530000, 623.530000)
		registerVal2.LocalWarning:setTopBottom(true, false, 62.000000, 82.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 134.000000, 480.000000)
		registerVal2.selectionList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.SelectionListUp = __FUNC_2D81_
	local function __FUNC_30E6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_34F8_(arg0, arg1)
			local function __FUNC_3650_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 189.350000, 335.350000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3650_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3650_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 189.350000, 335.350000)
		registerVal2.MenuTitleContainer:setAlpha(0.000000)
		__FUNC_34F8_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setLeftRight(true, false, 123.530000, 623.530000)
		registerVal2.LocalWarning:setTopBottom(true, false, 62.000000, 82.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_3875_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 42.000000, 45.000000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LineSide:setLeftRight(true, false, 3.000000, 6.000000)
		registerVal2.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal2.LineSide:setAlpha(0.000000)
		__FUNC_3875_(registerVal5, {})
		local function __FUNC_3A99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 37.390000, 647.390000)
			arg0:setTopBottom(true, false, 320.000000, 666.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 242.000000, 588.000000)
		registerVal2.selectionList:setAlpha(1.000000)
		__FUNC_3A99_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Intro = __FUNC_30E6_
	local function __FUNC_3CBD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4111_(arg0, arg1)
			local function __FUNC_4268_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 24.000000, 170.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4268_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4268_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 189.350000, 335.350000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		__FUNC_4111_(registerVal3, {})
		local function __FUNC_448D_(arg0, arg1)
			local function __FUNC_45E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 539.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 37.390000, 647.390000)
				arg0:setTopBottom(true, false, 134.000000, 480.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_45E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45E4_)
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 320.000000, 666.000000)
		__FUNC_448D_(registerVal6, {})
		local function __FUNC_47E6_(arg0, arg1)
			local function __FUNC_493C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, 35.900000, 395.900000)
				arg0:setTopBottom(true, false, 40.000000, 203.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_493C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_493C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setLeftRight(true, false, 35.900000, 395.900000)
		registerVal2.FEFeaturedCardsContainer:setTopBottom(true, false, 40.000000, 203.000000)
		registerVal2.FEFeaturedCardsContainer:setAlpha(1.000000)
		__FUNC_47E6_(registerVal7, {})
		local function __FUNC_4B61_(arg0, arg1)
			local function __FUNC_4CB8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4CB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CB8_)
		end

		registerVal8:completeAnimation()
		registerVal2.CompetitiveSettingsSummary:setAlpha(0.000000)
		__FUNC_4B61_(registerVal8, {})
		local function __FUNC_4E6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_4E6D_)
	end

	registerVal11.ListUp = __FUNC_3CBD_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_5021_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 134.000000, 480.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.LobbyDoubleXPWidgetContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_5021_
	local function __FUNC_538C_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_574A_(arg0, arg1)
			local function __FUNC_58A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 189.200000, 335.200000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_58A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58A0_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		__FUNC_574A_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setLeftRight(true, false, 123.530000, 623.530000)
		registerVal2.LocalWarning:setTopBottom(true, false, 62.000000, 82.000000)
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_5AC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 37.390000, 647.390000)
			arg0:setTopBottom(true, false, 320.000000, 666.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 134.000000, 480.000000)
		__FUNC_5AC5_(registerVal6, {})
		local function __FUNC_5CC6_(arg0, arg1)
			local function __FUNC_5E1C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, true, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, 35.900000, 395.900000)
				arg0:setTopBottom(true, false, 40.000000, 203.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5E1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E1C_)
		end

		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setLeftRight(true, false, 35.900000, 395.900000)
		registerVal2.FEFeaturedCardsContainer:setTopBottom(true, false, 40.000000, 203.000000)
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		__FUNC_5CC6_(registerVal7, {})
	end

	registerVal11.DefaultState = __FUNC_538C_
	local function __FUNC_6041_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_63EB_(arg0, arg1)
			local function __FUNC_6540_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 24.000000, 170.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6540_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6540_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(0.000000)
		__FUNC_63EB_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_6765_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 38.000000, 41.000000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LineSide:setLeftRight(true, false, 3.000000, 6.000000)
		registerVal2.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal2.LineSide:setAlpha(0.000000)
		__FUNC_6765_(registerVal5, {})
		local function __FUNC_6989_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 37.390000, 647.390000)
			arg0:setTopBottom(true, false, 134.000000, 480.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 54.000000, 400.000000)
		__FUNC_6989_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Intro = __FUNC_6041_
	registerVal10.ListUp = registerVal11
	registerVal11 = {}
	local function __FUNC_6B8A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_6B8A_
	registerVal10.mpLobbyOnline = registerVal11
	registerVal11 = {}
	local function __FUNC_6BEA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_6BEA_
	registerVal10.mpLobbyOnlineGame = registerVal11
	registerVal11 = {}
	local function __FUNC_6C4A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_6C4A_
	registerVal10.mpLobbyOnlineCustom = registerVal11
	registerVal11 = {}
	local function __FUNC_6CAA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 134.000000, 480.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFeaturedCardsContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_6CAA_
	local function __FUNC_6FAA_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_72A0_(arg0, arg1)
			local function __FUNC_73F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 539.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 201.350000, 347.350000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_73F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73F8_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(1.000000)
		__FUNC_72A0_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setLeftRight(true, false, 123.530000, 623.530000)
		registerVal2.LocalWarning:setTopBottom(true, false, 62.000000, 82.000000)
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_761D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 37.390000, 647.390000)
			arg0:setTopBottom(true, false, 332.000000, 678.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 134.000000, 480.000000)
		__FUNC_761D_(registerVal6, {})
	end

	registerVal11.DefaultState = __FUNC_6FAA_
	local function __FUNC_781E_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_7B61_(arg0, arg1)
			local function __FUNC_7CB8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, -75.000000, 445.000000)
				arg0:setTopBottom(true, false, 24.000000, 170.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7CB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CB8_)
		end

		registerVal3:completeAnimation()
		registerVal2.MenuTitleContainer:setLeftRight(true, false, -75.000000, 445.000000)
		registerVal2.MenuTitleContainer:setTopBottom(true, false, 24.000000, 170.000000)
		registerVal2.MenuTitleContainer:setAlpha(0.000000)
		__FUNC_7B61_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LocalWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_7EDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 38.000000, 41.000000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LineSide:setLeftRight(true, false, 3.000000, 6.000000)
		registerVal2.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal2.LineSide:setAlpha(0.000000)
		__FUNC_7EDD_(registerVal5, {})
		local function __FUNC_8101_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 37.390000, 647.390000)
			arg0:setTopBottom(true, false, 134.000000, 480.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.selectionList:setLeftRight(true, false, 37.390000, 647.390000)
		registerVal2.selectionList:setTopBottom(true, false, 54.000000, 400.000000)
		__FUNC_8101_(registerVal6, {})
	end

	registerVal11.Intro = __FUNC_781E_
	registerVal10.ListUpCopy = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal6.id = "selectionList"
	local function __FUNC_8302_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8302_)
	local function __FUNC_8409_(arg0)
		arg0.MenuTitleContainer:close()
		arg0.LocalWarning:close()
		arg0.selectionList:close()
		arg0.FEFeaturedCardsContainer:close()
		arg0.CompetitiveSettingsSummary:close()
		arg0.LobbyDoubleXPWidgetContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8409_)
	if __FUNC_396_ then
		__FUNC_396_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LeftContainer.new = __FUNC_561_
