-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.CallingCards.CallingCards_Stickerbook_BlackMarket")
require("ui.uieditor.widgets.CallingCards.CallingCards_Stickerbook_Set_BlackMarket")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
function LUI.createMenu.CallingCards_BlackMarket(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CallingCards_BlackMarket")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CallingCards_BlackMarket.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1376_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_1376_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal4:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal5:setRGB(0.120000, 0.130000, 0.190000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.MenuTitleBackground = registerVal5
	registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("Menu"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleText = registerVal6
	registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_CALLING_CARDS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CALLING_CARDS_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal8:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_13C1_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_13C1_)
	local function __FUNC_1412_(arg1)
		registerVal8.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1412_)
	registerVal1:addElement(registerVal8)
	registerVal1.SelfIdentityBadge = registerVal8
	local registerVal9 = CoD.CallingCards_Stickerbook_BlackMarket.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal9:setTopBottom(false, false, -225.000000, 295.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.CommonStickerbookSet = registerVal9
	local registerVal10 = CoD.CallingCards_Stickerbook_Set_BlackMarket.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal10:setTopBottom(false, false, -225.000000, 295.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.StickerbookSet = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_14B0_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal1.CommonStickerbookSet:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.StickerbookSet:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_14B0_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_161D_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal1.CommonStickerbookSet:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.StickerbookSet:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_161D_
	registerVal12.CallingCardSet = registerVal13
	registerVal1.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "CallingCardSet"
	local function __FUNC_1789_(arg1, arg2, arg3)
		local registerVal3 = IsPerControllerTablePropertyValue(arg0, "BlackMarketUtility_CurrentCallingCardSetName", nil)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1789_
	registerVal14 = {registerVal15}
	registerVal1:mergeStateConditions(registerVal14)
	local function __FUNC_1831_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SetPerControllerTableProperty(arg2, "currentCallingCardBlackMarketElement", nil)
		return true
	end

	local function __FUNC_18ED_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1831_, __FUNC_18ED_, false)
	local function __FUNC_19E9_(arg1, arg2)
		local registerVal2 = IsSelfInState(registerVal1, "DefaultState")
		if registerVal2 then
			SetLoseFocusToElement(registerVal1, "StickerbookSet", arg0)
			MakeElementNotFocusable(registerVal1, "StickerbookSet", arg0)
			MakeElementFocusable(registerVal1, "CommonStickerbookSet", arg0)
			SetFocusToElement(registerVal1, "CommonStickerbookSet", arg0)
		else
			registerVal2 = IsSelfInState(registerVal1, "CallingCardSet")
			if registerVal2 then
				SetLoseFocusToElement(registerVal1, "CommonStickerbookSet", arg0)
				MakeElementNotFocusable(registerVal1, "CommonStickerbookSet", arg0)
				MakeElementFocusable(registerVal1, "StickerbookSet", arg0)
				SetFocusToElement(registerVal1, "StickerbookSet", arg0)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_19E9_)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "CommonStickerbookSet"
	registerVal10.id = "StickerbookSet"
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local function __FUNC_1BDC_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.CommonStickerbookSet:close()
		arg1.StickerbookSet:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CallingCards_BlackMarket.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1BDC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

