-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_List1ButtonLarge_PH")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHelp")
require("ui.uieditor.widgets.Lobby.Common.FE_LobbyStatus")
local function __FUNC_2AE_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "BonusModesFlyoutOpen")
	Engine.SetModelValue(registerVal3, false)
	registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "GameSettingsFlyoutOpen")
	Engine.SetModelValue(registerVal3, false)
end

local function __FUNC_3F2_(arg0, arg1, arg2)
	arg0.ContextualHelp.Text:setText(arg0.ContextualHelp.Text:getText())
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FE_SelectionList = registerVal3
local function __FUNC_4A4_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if __FUNC_2AE_ then
		__FUNC_2AE_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_SelectionList)
	registerVal2.id = "FE_SelectionList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 652.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 415.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image3 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, -2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 306.000000)
	registerVal4:setWidgetType(CoD.FE_List1ButtonLarge_PH)
	registerVal4:setVerticalCount(10.000000)
	registerVal4:setSpacing(-2.000000)
	registerVal4:setDataSource("LobbyButtons")
	local function __FUNC_FA7_(arg0, arg2)
		PlayClip(registerVal2, "Intro", arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_FA7_)
	local function __FUNC_1046_(arg0, arg2)
		SetButtonRecentlySelected(registerVal2, arg0, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_1046_)
	local function __FUNC_10AF_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_10AF_)
	local function __FUNC_123F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_123F_)
	local function __FUNC_130E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_136F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_130E_, __FUNC_136F_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.selectionList = registerVal4
	local registerVal5 = CoD.FE_ListHelp.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 652.000000)
	registerVal5:setTopBottom(true, false, 306.000000, 338.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ContextualHelp = registerVal5
	local registerVal6 = CoD.FE_LobbyStatus.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 280.000000)
	registerVal6:setTopBottom(true, false, 338.000000, 410.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FELobbyStatus = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_146A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_146A_
	local function __FUNC_15C1_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_16FB_(arg0, arg1)
			local function __FUNC_1850_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1850_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1850_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_16FB_(registerVal3, {})
		local function __FUNC_1A05_(arg0, arg1)
			local function __FUNC_1B5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5C_)
		end

		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(0.000000)
		__FUNC_1A05_(registerVal4, {})
	end

	registerVal8.Intro = __FUNC_15C1_
	local function __FUNC_1D11_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1DFB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(0.010000)
		__FUNC_1DFB_(registerVal4, {})
	end

	registerVal8.Update = __FUNC_1D11_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1FAD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ContextualHelp:setLeftRight(true, false, 0.000000, 280.000000)
		registerVal2.ContextualHelp:setTopBottom(true, false, 306.000000, 338.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_1FAD_
	local function __FUNC_21D5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_230F_(arg0, arg1)
			local function __FUNC_2464_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2464_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2464_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_230F_(registerVal3, {})
		local function __FUNC_2619_(arg0, arg1)
			local function __FUNC_2770_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2770_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2770_)
		end

		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(0.000000)
		__FUNC_2619_(registerVal4, {})
	end

	registerVal8.Intro = __FUNC_21D5_
	local function __FUNC_2925_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_2A0F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.selectionList:setAlpha(0.010000)
		__FUNC_2A0F_(registerVal4, {})
	end

	registerVal8.Update = __FUNC_2925_
	registerVal7.DefaultStateArabic = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "DefaultStateArabic"
	local function __FUNC_2BC1_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal10.condition = __FUNC_2BC1_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal4.id = "selectionList"
	local function __FUNC_2C19_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2C19_)
	local function __FUNC_2D21_(arg0)
		arg0.selectionList:close()
		arg0.ContextualHelp:close()
		arg0.FELobbyStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D21_)
	if __FUNC_3F2_ then
		__FUNC_3F2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_SelectionList.new = __FUNC_4A4_
