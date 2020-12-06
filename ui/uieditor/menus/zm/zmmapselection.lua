-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMInventory.ZMMapSelection.List1ButtonLarge_ZM")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.ZMInventory.ZMMapSelection.ZMMissionTile")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
require("ui.uieditor.widgets.DLC_Free_weekend")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.ZMInventory.ZMMapSelection.ZMLobbyEEWidget")
local function __FUNC_467_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "ZMMapSelectionPreloadImage")
	arg0.preLoadImageModel = registerVal2
end

local function __FUNC_547_(arg0, arg1)
	local function __FUNC_65A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2 = CoD.GetMapValue(registerVal1, "dlc_pack", 0.000000)
		if registerVal1 and registerVal2 == 7.000000 then
			arg0.StreamedImagePreloader:setImage(RegisterImage(MapNameToMapLoadingImage(registerVal1)))
		end
	end

	arg0.StreamedImagePreloader:subscribeToModel(arg0.preLoadImageModel, __FUNC_65A_, false)
	local function __FUNC_7C8_(arg0)
		Engine.UnsubscribeAndFreeModel(arg0.preLoadImageModel)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_7C8_)
end

local function __FUNC_860_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ZMMapSelection")
	if __FUNC_467_ then
		__FUNC_467_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ZMMapSelection.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, -16.500000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.950000)
	registerVal1:addElement(registerVal3)
	registerVal1.Bkg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 95.000000)
	registerVal4:setRGB(0.140000, 0.120000, 0.120000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -57.000000, 0.000000)
	registerVal5:setRGB(0.140000, 0.120000, 0.120000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FooterBackground = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 64.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 38.000000, 85.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MPUI_MAPS_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.Title = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 64.000000, 344.000000)
	registerVal7:setTopBottom(true, false, 134.000000, 540.000000)
	registerVal7:setWidgetType(CoD.List1ButtonLarge_ZM)
	registerVal7:setVerticalCount(12.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	registerVal7:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal7:setDataSource("ZMMapsList")
	local function __FUNC_282F_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_282F_)
	local function __FUNC_29E9_(arg1, arg2)
		SetElementPropertyOnPerControllerTable(arg0, "zmLobbyEEMapRef", arg1, "mapId")
		UpdateElementDataSource(registerVal1, "ZMLobbyEEList")
		SetControllerModelValue(arg0, "ZMMapSelectionPreloadImage", arg1.mapId)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_29E9_)
	local function __FUNC_2B35_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_2B35_)
	local function __FUNC_2D2D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2D2D_)
	local function __FUNC_2DFE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPerControllerTablePropertyValue(arg2, "choosingZMPlaylist", true)
		registerVal4 = IsElementPropertyValue(arg0, "purchasable", true)
		if registerVal4 and registerVal4 then
			OpenPurchaseMapPackConfirmation(arg2, arg0, "ZMMapSelect", arg1)
			return true
		else
			registerVal4 = IsPerControllerTablePropertyValue(arg2, "choosingZMPlaylist", true)
			registerVal4 = IsDisabled(arg0, arg2)
			if registerVal4 and not registerVal4 then
				PlaylistSelected(arg1, arg0, arg2)
				ClearSavedState(registerVal1, arg2)
				return true
			else
				registerVal4 = IsElementPropertyValue(arg0, "purchasable", true)
				if registerVal4 then
					OpenPurchaseMapPackConfirmation(arg2, arg0, "ZMMapSelect", arg1)
					return true
				else
					registerVal4 = IsDisabled(arg0, arg2)
					if not registerVal4 then
						ProcessZMMapSelectListAction(registerVal1, arg0, arg2, arg1)
						return true
					end
				end
			end
		end
	end

	local function __FUNC_3087_(arg0, arg1, arg2)
		local registerVal3 = IsPerControllerTablePropertyValue(arg2, "choosingZMPlaylist", true)
		registerVal3 = IsElementPropertyValue(arg0, "purchasable", true)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsPerControllerTablePropertyValue(arg2, "choosingZMPlaylist", true)
			registerVal3 = IsDisabled(arg0, arg2)
			if registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsElementPropertyValue(arg0, "purchasable", true)
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				else
					registerVal3 = IsDisabled(arg0, arg2)
					if not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2DFE_, __FUNC_3087_, false)
	local function __FUNC_33AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		registerVal4 = ShouldShowDLCWidget(arg2, "mp_rise")
		registerVal4 = IsElementPropertyValue(arg0, "purchasable", true)
		if registerVal4 and registerVal4 and registerVal4 then
			OpenPurchaseMapPackConfirmation(arg2, arg0, "ZMMapSelect", arg1)
			return true
		end
	end

	local function __FUNC_351D_(arg0, arg1, arg2)
		local registerVal3 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		registerVal3 = ShouldShowDLCWidget(arg2, "mp_rise")
		registerVal3 = IsElementPropertyValue(arg0, "purchasable", true)
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_33AA_, __FUNC_351D_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.MapList = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 450.380000, 1216.000000)
	registerVal8:setTopBottom(true, false, 131.000000, 453.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.MapPreview = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 447.870000, 1216.000000)
	registerVal9:setTopBottom(true, false, 463.390000, 500.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cp_vault_sec_titlebig_bg"))
	registerVal1:addElement(registerVal9)
	registerVal1.SecTitleBG0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 469.380000, 802.340000)
	registerVal10:setTopBottom(true, false, 469.840000, 493.840000)
	registerVal10:setText(Engine.Localize("MENU_MISSION_BRIEFING_CAPS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.MissionBriefTitle = registerVal10
	local registerVal11 = CoD.verticalScrollingTextBox.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 469.380000, 1211.000000)
	registerVal11:setTopBottom(true, false, 503.230000, 675.230000)
	registerVal11.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal1:addElement(registerVal11)
	registerVal1.MissionBriefText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 450.380000, 1216.000000)
	registerVal12:setTopBottom(true, false, 395.500000, 453.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal1:addElement(registerVal12)
	registerVal1.Banner = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 450.380000, 1216.000000)
	registerVal13:setTopBottom(true, false, 395.500000, 452.770000)
	registerVal13:setRGB(0.320000, 0.320000, 0.320000)
	registerVal13:setAlpha(0.050000)
	registerVal1:addElement(registerVal13)
	registerVal1.Backing = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 876.040000, 1211.000000)
	registerVal14:setTopBottom(true, false, 375.500000, 394.500000)
	registerVal14:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal14)
	registerVal1.PlayCount = registerVal14
	local registerVal15 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, -2.000000, -2.000000)
	registerVal15.titleLabel:setText(Engine.Localize("MPUI_MAPS_CAPS"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_MAPS_CAPS"))
	registerVal15.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_bubblebuffs"))
	registerVal1:addElement(registerVal15)
	registerVal1.MenuFrame = registerVal15
	local registerVal16 = CoD.ZMMissionTile.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 463.380000, 757.340000)
	registerVal16:setTopBottom(true, false, 405.000000, 444.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.ZMMissionTile = registerVal16
	local registerVal17 = CoD.FE_TitleLine.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, true, 450.380000, -64.000000)
	registerVal17:setTopBottom(false, false, 90.770000, 96.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.FETitleLineL = registerVal17
	local registerVal18 = CoD.DLC_Free_weekend.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 74.000000, 447.870000)
	registerVal18:setTopBottom(true, false, 494.000000, 660.000000)
	registerVal18.DLCFreeTitleAndText.Title:setText(Engine.Localize("MENU_DLC1_TRY_AWAKENING_FREE"))
	registerVal18.DLCFreeTitleAndText.Body:setText(Engine.Localize("MENU_DLC1_ZM_TRY_AWAKENING_FREE_DESC"))
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Visible"
	local function __FUNC_3703_(arg1, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		registerVal3 = ShouldShowDLCWidget(arg0, "mp_rise")
		if registerVal3 and registerVal3 then
			registerVal3 = IsPerControllerTablePropertyValue(arg0, "choosingZMPlaylist", true)
		end
		return registerVal3
	end

	registerVal22.condition = __FUNC_3703_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal1:addElement(registerVal18)
	registerVal1.DLCFreeweekend = registerVal18
	local registerVal19 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal19:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal19)
	registerVal1.FEMenuLeftGraphics = registerVal19
	local registerVal20 = CoD.FE_TitleLine.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, true, 450.380000, -64.000000)
	registerVal20:setTopBottom(false, false, 141.770000, 147.000000)
	registerVal20.Image0:setAlpha(0.000000)
	registerVal20.Image1:setAlpha(0.000000)
	registerVal20.Image2:setAlpha(0.000000)
	registerVal1:addElement(registerVal20)
	registerVal1.FETitleLineL0 = registerVal20
	registerVal21 = CoD.FE_TitleLine.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, true, 450.380000, -64.000000)
	registerVal21:setTopBottom(false, false, 134.770000, 140.000000)
	registerVal21.Image0:setAlpha(0.000000)
	registerVal21.Image1:setAlpha(0.000000)
	registerVal21.Image2:setAlpha(0.000000)
	registerVal1:addElement(registerVal21)
	registerVal1.FETitleLineL00 = registerVal21
	registerVal22 = CoD.FE_TitleLine.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, true, 450.380000, -64.000000)
	registerVal22:setTopBottom(false, false, -231.230000, -226.000000)
	registerVal1:addElement(registerVal22)
	registerVal1.FETitleLineL1 = registerVal22
	local registerVal23 = LUI.UIList.new(registerVal1, arg0, -8.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal23:makeFocusable()
	registerVal23:setLeftRight(false, true, -331.490000, -63.490000)
	registerVal23:setTopBottom(false, true, -324.000000, -264.000000)
	registerVal23:setAlpha(0.900000)
	registerVal23:setWidgetType(CoD.ZMLobbyEEWidget)
	registerVal23:setHorizontalCount(5.000000)
	registerVal23:setSpacing(-8.000000)
	registerVal23:setDataSource("ZMLobbyEEMapSelect")
	registerVal1:addElement(registerVal23)
	registerVal1.ZMLobbyEEList = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 1280.000000, 1408.000000)
	registerVal24:setTopBottom(true, false, 351.750000, 479.750000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal24)
	registerVal1.StreamedImagePreloader = registerVal24
	local function __FUNC_3825_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(MapImageToModPreview(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal7, "Image", true, __FUNC_3825_)
	local function __FUNC_38FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal7, "mapDescription", true, __FUNC_38FE_)
	local function __FUNC_39D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal7, "playingCount", true, __FUNC_39D3_)
	local function __FUNC_3A8A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.MapName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal7, "mapName", true, __FUNC_3A8A_)
	local registerVal25 = {}
	registerVal25.right = registerVal23
	registerVal7.navigation = registerVal25
	registerVal25 = {}
	registerVal25.left = registerVal7
	registerVal23.navigation = registerVal25
	registerVal25 = {}
	local registerVal26 = {}
	local function __FUNC_3B5F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.Banner:setAlpha(0.650000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PlayCount:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal26.DefaultClip = __FUNC_3B5F_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_3CB6_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal12:completeAnimation()
		registerVal1.Banner:setAlpha(0.650000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PlayCount:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal26.DefaultClip = __FUNC_3CB6_
	registerVal25.Playlists = registerVal26
	registerVal1.clipsPerState = registerVal25
	local registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "Playlists"
	local function __FUNC_3E0E_(arg1, arg2, arg3)
		return IsPerControllerTablePropertyValue(arg0, "choosingZMPlaylist", true)
	end

	registerVal28.condition = __FUNC_3E0E_
	registerVal27 = {registerVal28}
	registerVal1:mergeStateConditions(registerVal27)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3E97_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_3EE8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3E97_, __FUNC_3EE8_, false)
	registerVal7.id = "MapList"
	registerVal15:setModel(registerVal1.buttonModel, arg0)
	registerVal23.id = "ZMLobbyEEList"
	registerVal27 = {}
	registerVal27.name = "menu_loaded"
	registerVal27.controller = arg0
	registerVal1:processEvent(registerVal27)
	registerVal27 = {}
	registerVal27.name = "update_state"
	registerVal27.menu = registerVal1
	registerVal1:processEvent(registerVal27)
	registerVal25 = registerVal1:restoreState()
	if not registerVal25 then
		registerVal27 = {}
		registerVal27.name = "gain_focus"
		registerVal27.controller = arg0
		registerVal1.MapList:processEvent(registerVal27)
	end
	local function __FUNC_3FE5_(arg1)
		arg1.MapList:close()
		arg1.MissionBriefText:close()
		arg1.MenuFrame:close()
		arg1.ZMMissionTile:close()
		arg1.FETitleLineL:close()
		arg1.DLCFreeweekend:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.FETitleLineL0:close()
		arg1.FETitleLineL00:close()
		arg1.FETitleLineL1:close()
		arg1.ZMLobbyEEList:close()
		arg1.MapPreview:close()
		arg1.PlayCount:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ZMMapSelection.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3FE5_)
	if __FUNC_547_ then
		__FUNC_547_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ZMMapSelection = __FUNC_860_
