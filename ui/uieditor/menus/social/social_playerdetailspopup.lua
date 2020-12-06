-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.Social.Social_InfoPane")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.StartMenu.StartMenu_TitlePopup")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_34B_(arg0, arg1)
	if arg0.playerInfo and arg0.playerInfo.presence and arg0.playerInfo.presence.joinable then
		SetProperty(arg0.playerInfo.presence.joinable, "hideJoinButton", true)
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.menu = arg0
		arg0.playerInfo.presence.joinable:processEvent(registerVal4)
	end
end

local function __FUNC_4ED_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Social_PlayerDetailsPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Social_PlayerDetailsPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.120000, 0.120000, 0.120000)
	registerVal3:setAlpha(0.950000)
	registerVal1:addElement(registerVal3)
	registerVal1.darkbg = registerVal3
	local registerVal4 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.750000)
	registerVal1:addElement(registerVal4)
	registerVal1.VignetteBack = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 117.000000, -81.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.900000)
	registerVal1:addElement(registerVal5)
	registerVal1.Black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 180.000000, -125.830000)
	registerVal6:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal6)
	registerVal1.BlackBG = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 684.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_welcome_bg2"))
	registerVal1:addElement(registerVal7)
	registerVal1.TextureBackground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal8:setTopBottom(false, false, -186.000000, -178.000000)
	registerVal8:setRGB(1.000000, 0.900000, 0.800000)
	registerVal8:setAlpha(0.990000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarAdd = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 99.000000, 379.000000)
	registerVal9:setTopBottom(true, false, 209.000000, 547.000000)
	registerVal9:setWidgetType(CoD.List1ButtonLarge_PH)
	registerVal9:setVerticalCount(10.000000)
	registerVal9:setDataSource("SocialPlayerDetailsButtons")
	local function __FUNC_1BAF_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_1BAF_)
	local function __FUNC_1D3F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1D3F_)
	local function __FUNC_1E0E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1E6F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E0E_, __FUNC_1E6F_, false)
	local function __FUNC_1F6A_(arg1)
		UpdateDataSource(registerVal1, registerVal9, arg0)
	end

	registerVal9:subscribeToGlobalModel(arg0, "SocialRoot", "recentPlayers.update", __FUNC_1F6A_)
	registerVal1:addElement(registerVal9)
	registerVal1.Buttons = registerVal9
	local registerVal10 = CoD.Social_InfoPane.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -876.000000, -94.000000)
	registerVal10:setTopBottom(true, false, 210.000000, 684.000000)
	registerVal10.friendship:setAlpha(0.000000)
	local function __FUNC_1FC6_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_1FC6_)
	local function __FUNC_2016_(arg1)
		registerVal10.presence:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "SocialPlayerInfo", nil, __FUNC_2016_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "PlayerDetails"
	local function __FUNC_2084_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_2084_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.playerInfo = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 96.000000, 561.000000)
	registerVal11:setTopBottom(true, false, 125.000000, 173.000000)
	registerVal11:setText(Engine.Localize("MPUI_PLAYER_DETAILS"))
	registerVal11:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal11:setLetterSpacing(-2.200000)
	registerVal1:addElement(registerVal11)
	registerVal1.PlayerDetails = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -147.500000, -111.500000)
	registerVal12:setRGB(0.130000, 0.110000, 0.120000)
	registerVal12:setAlpha(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.buttonBacking = registerVal12
	registerVal13 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 96.000000, 528.000000)
	registerVal13:setTopBottom(false, true, -120.500000, -88.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.buttons = registerVal13
	registerVal14 = CoD.StartMenu_TitlePopup.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, -691.000000, -113.000000)
	registerVal14:setTopBottom(true, false, 90.000000, 236.000000)
	registerVal14.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize(""))
	registerVal1:addElement(registerVal14)
	registerVal1.StartMenuTitlePopup = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 590.830000, 597.500000)
	registerVal15:setRGB(0.900000, 0.900000, 0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal15)
	registerVal1.CategoryListLineTopBottom0 = registerVal15
	local registerVal16 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 0.000000, 52.000000)
	registerVal16:setTopBottom(true, false, 109.000000, 547.000000)
	registerVal16:setScale(0.700000)
	registerVal1:addElement(registerVal16)
	registerVal1.FEMenuLeftGraphics = registerVal16
	local registerVal17 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 1228.000000, 1280.000000)
	registerVal17:setTopBottom(true, false, 109.000000, 547.000000)
	registerVal17:setYRot(180.000000)
	registerVal17:setScale(0.700000)
	registerVal1:addElement(registerVal17)
	registerVal1.FEMenuLeftGraphics0 = registerVal17
	local registerVal18 = {}
	registerVal18.right = registerVal10
	registerVal9.navigation = registerVal18
	registerVal18 = {}
	registerVal18.left = registerVal9
	registerVal10.navigation = registerVal18
	registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_20D0_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal19.DefaultClip = __FUNC_20D0_
	registerVal18.DefaultState = registerVal19
	registerVal1.clipsPerState = registerVal18
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_218B_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_21DC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_218B_, __FUNC_21DC_, false)
	registerVal9.id = "Buttons"
	registerVal10.id = "playerInfo"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.Buttons:processEvent(registerVal20)
	end
	local function __FUNC_22D9_(arg1)
		arg1.VignetteBack:close()
		arg1.Buttons:close()
		arg1.playerInfo:close()
		arg1.buttons:close()
		arg1.StartMenuTitlePopup:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FEMenuLeftGraphics0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Social_PlayerDetailsPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_22D9_)
	if __FUNC_34B_ then
		__FUNC_34B_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Social_PlayerDetailsPopup = __FUNC_4ED_
