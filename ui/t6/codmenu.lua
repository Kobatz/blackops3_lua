-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Menu = registerVal1
CoD.Menu.Width = CoD.SDSafeWidth
CoD.Menu.Height = CoD.SDSafeHeight
if CoD.isSinglePlayer then
	CoD.Menu.TitleHeight = CoD.textSize.Condensed
	CoD.Menu.TitleFont = CoD.fonts.Condensed
else
	CoD.Menu.TitleHeight = CoD.textSize.Big
	CoD.Menu.TitleFont = CoD.fonts.Big
end
CoD.Menu.CanHideHud = false
CoD.Menu.MediumPopupWidth = CoD.Menu.Width
CoD.Menu.MediumPopupHeight = 430.000000
CoD.Menu.SmallPopupWidth = 448.000000
CoD.Menu.SmallPopupHeight = 256.000000
CoD.Menu.SplitscreenSideOffset = 28.000000
function CoD.Menu.New(arg0, arg1, arg2, arg3)
	if arg0 == nil then
		error("LUI Error: Attempted to create a menu without a name.")
	end
	if arg1 == nil then
	end
	if arg2 == nil then
	end
	local registerVal4 = {}
	registerVal4.leftAnchor = false
	registerVal4.rightAnchor = false
	registerVal4.left = (-CoD.Menu.Width / 2.000000)
	registerVal4.right = (CoD.Menu.Width / 2.000000)
	registerVal4.topAnchor = false
	registerVal4.bottomAnchor = false
	registerVal4.top = (-CoD.Menu.Height / 2.000000)
	registerVal4.bottom = (CoD.Menu.Height / 2.000000)
	local registerVal5 = CoD.Menu.NewFromState(arg0, registerVal4, arg3)
	registerVal5.width = CoD.Menu.Width
	registerVal5.height = CoD.Menu.Height
	if CoD.isSinglePlayer then
		registerVal5:setBackOutSFX("uin_cmn_backout")
	else
		registerVal5:setBackOutSFX("cac_cmn_backout")
	end
	return registerVal5
end

function CoD.Menu.NewSmallPopup(arg0, arg1, arg2, arg3, arg4)
	if arg3 then
	end
	if arg4 then
	end
	local registerVal7 = CoD.Menu.New(arg0, arg3, arg4)
	registerVal7.leftButtonPromptBar:setLeftRight(true, true, -10.000000, 0.000000)
	if arg1 ~= nil and arg1 then
		registerVal7:addSmallSolidBackground(arg2)
	end
	registerVal7:addSmallPopupBackground(nil, arg3, arg4)
	return registerVal7
end

function CoD.Menu.NewMediumPopup(arg0)
	local registerVal1 = CoD.Menu.New(arg0, CoD.Menu.MediumPopupWidth, CoD.Menu.MediumPopupHeight)
	registerVal1:addMediumPopupBackground()
	return registerVal1
end

function CoD.Menu.NewFromState(arg0, arg1, arg2, arg3)
	if arg0 == nil then
		error("LUI Error: Attempted to create a menu without a name.")
	end
	local registerVal4 = LUI.UIElement.new(arg1)
	local registerVal5 = Dvar.cg_development:get()
	if registerVal5 then
		registerVal5 = Engine.GetModelUsage()
		if not registerVal5 then
		end
		registerVal4.__priorModelCount = 0.000000
	end
	registerVal4:setClass(CoD.Menu)
	if CoD.Menu.ModelToUse ~= nil then
		registerVal4:setModel(CoD.Menu.ModelToUse)
	end
	registerVal4.menuName = (CoD.Menu.OverwriteMenuName or )
	registerVal4.userData = arg2
	registerVal4.id = ("Menu." .. (CoD.Menu.OverwriteMenuName or ))
	if RegisterOpenedMenu then
		RegisterOpenedMenu(registerVal4, (CoD.Menu.OverwriteMenuName or ))
	end
	if registerVal4.menuName == "DOA_INGAME_PAUSE" then
		CoD.isDOAPauseMenuOpen = true
	end
	CoD.Menu.AddToCurrMenuNameList(registerVal4.menuName)
	local registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = true
	registerVal6.left = 0.000000
	registerVal6.right = 0.000000
	registerVal6.topAnchor = false
	registerVal6.bottomAnchor = true
	registerVal6.top = -CoD.ButtonPrompt.Height
	registerVal6.bottom = 0.000000
	registerVal6.spacing = 10.000000
	registerVal6.alignment = LUI.Alignment.Left
	registerVal5 = LUI.UIHorizontalList.new(registerVal6)
	registerVal4.leftButtonPromptBar = registerVal5
	registerVal4.leftButtonPromptBar:setPriority(10000.000000)
	registerVal4:addElement(registerVal4.leftButtonPromptBar)
	registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = true
	registerVal6.left = 0.000000
	registerVal6.right = 0.000000
	registerVal6.topAnchor = false
	registerVal6.bottomAnchor = true
	registerVal6.top = -CoD.ButtonPrompt.Height
	registerVal6.bottom = 0.000000
	registerVal6.spacing = 10.000000
	registerVal6.alignment = LUI.Alignment.Right
	registerVal5 = LUI.UIHorizontalList.new(registerVal6)
	registerVal4.rightButtonPromptBar = registerVal5
	registerVal4.rightButtonPromptBar:setPriority(10000.000000)
	registerVal4:addElement(registerVal4.rightButtonPromptBar)
	if (CoD.Menu.OverwriteMenuName or ) ~= "MessageDialogBox" and (CoD.Menu.OverwriteMenuName or ) ~= "main" and (CoD.Menu.OverwriteMenuName or ) ~= "migration_ingame" then
		if not arg3 then
			registerVal5 = Engine.GetPrimaryController()
		end
		local function __FUNC_329D_(arg0)
			local registerVal1 = ShouldOpenMessageDialog(registerVal4, registerVal5)
			if registerVal1 then
				local registerVal2 = Engine.GetGlobalModel()
				registerVal1 = CoD.SafeGetModelValue(registerVal2, "messageDialog.controller")
				if not registerVal1 then
				end
				if registerVal4.occludedBy and registerVal4.occludedBy.menuName == "MessageDialogBox" then
					Close(registerVal4.occludedBy, registerVal5)
				end
				if not CoD.isFrontend then
					if registerVal4.id == "Menu.HUD" then
						local registerVal4 = IsGameTypeDOA()
						if registerVal4 == false or registerVal5 == 0.000000 then
							local registerVal5 = CoD.OverlayUtility.CreateOverlay(registerVal5, registerVal4, "MessageDialogBox", registerVal5)
							registerVal5:setOwner(registerVal5)
							Engine.LockInput(registerVal5, true)
							Engine.SetUIActive(registerVal5, true)
						else
							if not nil then
								registerVal4 = CoD.OverlayUtility.CreateOverlay(registerVal5, registerVal4, "MessageDialogBox", registerVal5)
								local function __FUNC_3672_(arg0, arg1)
									arg0:close()
								end

								registerVal4:registerEventHandler("unused_durango_gamepad_button", __FUNC_3672_)
							end
						end
					end
				end
			end
		end

		registerVal4:subscribeToGlobalModel(registerVal5, "MessageDialog", "messagePending", __FUNC_329D_, false)
	end
	return registerVal4
end

function CoD.Menu.NewForUIEditor(arg0)
	local registerVal1 = CoD.Menu.NewFromState(arg0)
	registerVal1.leftButtonPromptBar:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal1.leftButtonPromptBar:setTopBottom(false, true, (-28.000000 - CoD.ButtonPrompt.Height), -28.000000)
	registerVal1.rightButtonPromptBar:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal1.rightButtonPromptBar:setTopBottom(false, true, (-28.000000 - CoD.ButtonPrompt.Height), -28.000000)
	if CoD.isPC then
		registerVal1.leftButtonPromptBar:setForceMouseEventDispatch(true)
		registerVal1.rightButtonPromptBar:setForceMouseEventDispatch(true)
	end
	return registerVal1
end

function CoD.Menu.NewSafeAreaFromState(arg0, arg1)
	local registerVal2 = CoD.Menu.NewFromState(arg0)
	registerVal2:sizeToSafeArea(arg1)
	return registerVal2
end

function CoD.Menu.close(arg0)
	if arg0.menuName == "DOA_INGAME_PAUSE" then
		CoD.isDOAPauseMenuOpen = false
	end
	CoD.Menu.RemoveFromCurrMenuNameList(arg0.menuName)
	if CoD.isSinglePlayer == true then
		local registerVal1 = arg0:getOwner()
		if registerVal1 == nil then
		end
		Engine.SendMenuResponse(0.000000, arg0.menuName, "menu_close")
	end
	if UnregisterOpenedMenu then
		UnregisterOpenedMenu(arg0, arg0.menuName)
	end
	if arg0.occludedBy ~= nil and arg0.occludedBy.occludedMenu == arg0 then
		arg0.occludedBy.occludedMenu = arg0.occludedMenu
	end
	if arg0.occludedMenu ~= nil and arg0.occludedMenu.occludedBy == arg0 then
		if arg0.occludedBy ~= nil then
			arg0.occludedMenu.occludedBy = arg0.occludedBy
		else
			registerVal1 = IsGameTypeDOA()
			registerVal1 = Engine.IsSplitscreen()
			if registerVal1 and registerVal1 then
				registerVal1 = arg0:getOwner()
				arg0.occludedMenu:setOwner(registerVal1)
			end
			local registerVal3 = {}
			registerVal3.name = "occlusion_change"
			registerVal3.occluded = false
			registerVal3.occludedBy = arg0
			arg0.occludedMenu:processEvent(registerVal3)
		end
	end
	registerVal1 = arg0:getSoundSet()
	if registerVal1 then
		arg0:playSound("menu_close")
	end
	LUI.CoDMetrics.CloseMenu(arg0)
	CoD.Menu.super.close(arg0)
	registerVal1 = Dvar.cg_development:get()
	if registerVal1 then
		registerVal1 = Engine.GetModelUsage()
		if not registerVal1 then
		end
		DebugPrint(("Menu " .. arg0.menuName .. " model change = " .. (0.000000 - arg0.__priorModelCount)))
	end
end

function CoD.Menu.ButtonPromptBack(arg0, arg1)
	if not arg0.previousMenuName and arg0.occludedMenu then
		arg0:setOwner(arg1.controller)
		arg0:animateOutAndGoBack()
	else
		arg0:goBack(arg1.controller)
	end
end

function CoD.Menu.TransitionCompleteAnimatePopupOut(arg0, arg1)
	arg0:goBack(arg0:getOwner())
end

function CoD.Menu.addBackButton(arg0, arg1)
	if not arg1 then
		local registerVal2 = Engine.Localize("MENU_BACK")
	end
	registerVal2 = CoD.ButtonPrompt.new("secondary", registerVal2, arg0, "button_prompt_back")
	arg0.backButton = registerVal2
	arg0:addLeftButtonPrompt(arg0.backButton)
end

function CoD.Menu.removeBackButton(arg0)
	if arg0.backButton ~= nil then
		arg0.backButton:close()
		arg0.backButton = nil
	end
end

function CoD.Menu.RemoveStartButtonPrompt(arg0)
	if arg0.startButtonPrompt ~= nil then
		arg0.startButtonPrompt:close()
		arg0.startButtonPrompt = nil
	end
end

function CoD.Menu.addFriendsButton(arg0)
	local registerVal3 = Engine.Localize("MENU_FRIENDS")
	local registerVal1 = CoD.ButtonPrompt.new("alt2", registerVal3, arg0, "button_prompt_friends", false, nil, false, nil, "F")
	arg0.friendsButton = registerVal1
	arg0:addRightButtonPrompt(arg0.friendsButton)
end

function CoD.Menu.addFriendsButtonSPMainMenu(arg0)
	local registerVal3 = Engine.Localize("MENU_FRIENDS")
	local registerVal1 = CoD.ButtonPrompt.new("start", registerVal3, arg0, "button_prompt_friends", false, nil, false, nil, "F")
	arg0.friendsButton = registerVal1
	arg0:addRightButtonPrompt(arg0.friendsButton)
end

function CoD.Menu.addJoinButton(arg0)
	local registerVal3 = Engine.Localize("MENU_JOIN_GAME")
	local registerVal1 = CoD.ButtonPrompt.new("alt1", registerVal3, arg0, "button_prompt_join", false, nil, false, nil, "J")
	arg0.joinButton = registerVal1
	arg0:addRightButtonPrompt(arg0.joinButton)
end

function CoD.Menu.addButtonPromptText(arg0, arg1, arg2)
	local registerVal5, registerVal6, registerVal7, registerVal8 = GetTextDimensions(arg2, CoD.fonts[CoD.ButtonPrompt.FontName], CoD.ButtonPrompt.TextHeight)
	arg1:setLeftRight(true, false, 0.000000, registerVal7)
	arg1:setTopBottom(false, false, (-CoD.ButtonPrompt.TextHeight / 2.000000), (CoD.ButtonPrompt.TextHeight / 2.000000))
	arg1:setFont(CoD.fonts[CoD.ButtonPrompt.FontName])
	arg1:setAlignment(LUI.Alignment.Left)
	arg1:setText(arg2)
	arg0:addRightButtonPrompt(arg1)
end

function CoD.Menu.addPartyPrivacyButton(arg0)
	local registerVal1 = Engine.SessionMode_IsOnlineGame()
	if not registerVal1 then
		return 
	end
	registerVal1 = Engine.GameHost()
	local registerVal2 = Engine.PrivatePartyHost()
	if registerVal1 ~= 1.000000 and registerVal2 ~= 1.000000 then
	end
	if true then
		local registerVal6 = Engine.Localize("MPUI_LOBBY_PRIVACY")
		local registerVal4 = CoD.ButtonPrompt.new("alt1", registerVal6, arg0, "button_prompt_partyprivacy", false, nil, false, nil, "P")
		arg0.partyPrivacyButton = registerVal4
		arg0:updatePartyPrivacyButton()
		arg0:addRightButtonPrompt(arg0.partyPrivacyButton)
	else
		registerVal4 = LUI.UIText.new()
		arg0.partyPrivacyButton = registerVal4
		arg0:addButtonPromptText(arg0.partyPrivacyButton, arg0:getPartyPrivacyText())
	end
end

function CoD.Menu.getPartyPrivacyText(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	if registerVal1 == nil then
		return Engine.Localize("MPUI_LOBBY_PRIVACY")
	end
	local registerVal2 = Engine.GetProfileVarInt(registerVal1, "party_privacyStatus")
	if registerVal2 == 1.000000 then
	else
		if registerVal2 == 2.000000 then
		else
			if registerVal2 == 3.000000 then
			end
		end
	end
	local registerVal4 = Engine.Localize("MPUI_LOBBY_PRIVACY")
	local registerVal6 = Engine.Localize("MENU_STATUS_CLOSE_DESC_CAPS")
	return (registerVal4 .. ": " .. registerVal6)
end

function CoD.Menu.updatePartyPrivacyButton(arg0)
	if arg0.partyPrivacyButton == nil then
		return 
	end
	arg0.partyPrivacyButton:setText(arg0:getPartyPrivacyText())
end

function CoD.Menu.addNATType(arg0)
	local registerVal1 = Engine.SessionMode_IsSystemlinkGame()
	registerVal1 = Engine.SessionMode_IsOnlineGame()
	if not registerVal1 and not registerVal1 then
		return 
	end
	if arg0.NATType ~= nil then
		arg0.NATType:close()
		arg0.NATType = nil
	end
	registerVal1 = Engine.GetPrimaryController()
	if registerVal1 == nil then
		return 
	end
	local registerVal2 = Engine.GetSystemInfo(registerVal1, CoD.SYSINFO_NAT_TYPE_LOBBY)
	local registerVal3 = LUI.UIText.new()
	arg0.NATType = registerVal3
	arg0:addButtonPromptText(arg0.NATType, registerVal2)
end

function CoD.Menu.addSelectButton(arg0, arg1, arg2, arg3)
	if CoD.isPC then
		return 
	end
	if not arg1 then
		local registerVal4 = Engine.Localize("MENU_SELECT")
	end
	if arg3 ~= nil then
		registerVal4 = CoD.ButtonPrompt.new("primary", registerVal4, arg0, arg3)
		arg0.selectButton = registerVal4
	else
		registerVal4 = CoD.ButtonPrompt.new("primary", registerVal4)
		arg0.selectButton = registerVal4
	end
	if not arg2 then
	end
	arg0.selectButton:setPriority(-10.000000)
	arg0:addLeftButtonPrompt(arg0.selectButton)
end

function CoD.Menu.removeSelectButton(arg0)
	if arg0.selectButton ~= nil then
		arg0.selectButton:close()
		arg0.selectButton = nil
	end
end

function CoD.Menu.closeSelectButton(arg0)
	if arg0.selectButton then
		arg0.selectButton:close()
	end
	if arg0.customActionButtonPrompt then
		arg0.customActionButtonPrompt:close()
		arg0.customActionButtonPrompt = nil
	end
end

function CoD.Menu.addSelectButtonWithPrestigeUnlock(arg0)
	arg0:removeSelectButton()
	if arg0.backButton then
		arg0:removeBackButton()
	end
	if arg0.prestigeUnlockButton then
		arg0.prestigeUnlockButton:close()
		arg0.prestigeUnlockButton = nil
	end
	arg0:addSelectButton()
	if true == true then
		arg0:addBackButton()
	end
	if true == true then
		arg0:addPrestigeUnlockButton()
	end
end

function CoD.Menu.addSlideButton(arg0)
	local registerVal1 = CoD.ButtonPrompt.new("left_stick_up", Engine.Localize("MENU_SLIDE"))
	arg0.slideButton = registerVal1
	arg0:addLeftButtonPrompt(arg0.slideButton)
end

function CoD.Menu.addGlassesToggleButton(arg0)
	local registerVal3 = Engine.Localize("MENU_TURN_OFF_HUD")
	local registerVal1 = CoD.ButtonPrompt.new("right_trigger", registerVal3, nil, nil, false, nil, false, "space")
	arg0.glassesToggleButton = registerVal1
	arg0:addRightButtonPrompt(arg0.glassesToggleButton)
end

function CoD.Menu.addGlassesToggleOnButton(arg0)
	local registerVal3 = Engine.Localize("MENU_TURN_ON_HUD")
	local registerVal1 = CoD.ButtonPrompt.new("right_trigger", registerVal3, nil, nil, false, nil, false, "space")
	arg0.glassesToggleButton = registerVal1
	arg0:addRightButtonPrompt(arg0.glassesToggleButton)
end

function CoD.Menu.addPrestigeUnlockButton(arg0)
	local registerVal3 = Engine.Localize("MPUI_PERMANENT_UNLOCKS_OPTION")
	local registerVal1 = CoD.ButtonPrompt.new("shoulderr", registerVal3, arg0, "prestige_unlock")
	arg0.prestigeUnlockButton = registerVal1
	arg0:addLeftButtonPrompt(arg0.prestigeUnlockButton)
end

function CoD.Menu.addLeftButtonPrompt(arg0, arg1)
	arg0.leftButtonPromptBar:addElement(arg1)
end

function CoD.Menu.addRightButtonPrompt(arg0, arg1)
	arg0.rightButtonPromptBar:addElement(arg1)
end

function CoD.Menu.addLargePopupBackground(arg0)
	if CoD.isZombie == true then
		local registerVal1 = LUI.UIImage.new()
		arg0.largePopupBackground = registerVal1
		arg0.largePopupBackground:setLeftRight(false, false, -640.000000, 640.000000)
		arg0.largePopupBackground:setTopBottom(false, false, -360.000000, 360.000000)
		arg0.largePopupBackground:setImage(RegisterMaterial("menu_zm_cac_backing"))
		arg0.largePopupBackground:setPriority(-10.000000)
		arg0.largePopupBackground:setAlpha(0.700000)
		arg0:addElement(arg0.largePopupBackground)
	else
		local registerVal5 = LUI.UIImage.new()
		arg0.dotsBG = registerVal5
		arg0.dotsBG:setLeftRight(false, false, (-1280.000000 / 2.000000), (1280.000000 / 2.000000))
		arg0.dotsBG:setTopBottom(false, false, -512.000000, 512.000000)
		arg0.dotsBG:setImage(RegisterImage("uie_t7_mp_menu_cac_version5_backdrop720p"))
		arg0.dotsBG:setPriority(-10.000000)
		arg0.dotsBG:setAlpha(0.700000)
		arg0.dotsBG:setupTiles(8.000000)
		arg0.dotsBG:setTileVertically(false)
		arg0.dotsBG:setShaderVector(0.000000, 1.000000, 1.000000, 1.000000, 1.000000)
		arg0:addElement(arg0.dotsBG)
	end
end

function CoD.Menu.addMediumPopupBackground(arg0)
	if CoD.isZombie == true then
		local registerVal2 = Engine.IsInGame()
		if not registerVal2 then
			local registerVal5 = LUI.UIImage.new()
			arg0.mediumPopupBackground = registerVal5
			arg0.mediumPopupBackground:setLeftRight(false, false, -640.000000, 640.000000)
			arg0.mediumPopupBackground:setTopBottom(false, false, (-((CoD.Menu.MediumPopupHeight / 2.000000) + 125.000000) - 20.000000), (((CoD.Menu.MediumPopupHeight / 2.000000) + 125.000000) - 20.000000))
			arg0.mediumPopupBackground:setImage(RegisterMaterial("menu_zm_toomany_backing"))
			arg0.mediumPopupBackground:setPriority(-10.000000)
			arg0.mediumPopupBackground:setAlpha(0.700000)
			arg0:addElement(arg0.mediumPopupBackground)
		else
			local registerVal6 = Engine.IsInGame()
			if registerVal6 then
			end
			registerVal6 = LUI.UIImage.new()
			arg0.topFrame = registerVal6
			arg0.topFrame:setLeftRight(false, false, (-1280.000000 / 2.000000), (1280.000000 / 2.000000))
			arg0.topFrame:setTopBottom(false, false, (((-(CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000) - 16.000000), ((-(CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000))
			arg0.topFrame:setAlpha(0.900000)
			arg0.topFrame:setImage(RegisterMaterial("menu_mp_backing_frame"))
			arg0:addElement(arg0.topFrame)
			registerVal6 = LUI.UIImage.new()
			arg0.grayBG = registerVal6
			arg0.grayBG:setLeftRight(false, false, (-1280.000000 / 2.000000), (1280.000000 / 2.000000))
			arg0.grayBG:setTopBottom(false, false, ((-(CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000), (((CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000))
			arg0.grayBG:setRGB(0.160000, 0.160000, 0.160000)
			arg0.grayBG:setPriority(-10.000000)
			arg0.grayBG:setAlpha(0.000000)
			arg0:addElement(arg0.grayBG)
			registerVal6 = LUI.UIImage.new()
			arg0.bottomFrame = registerVal6
			arg0.bottomFrame:setLeftRight(false, false, (-1280.000000 / 2.000000), (1280.000000 / 2.000000))
			arg0.bottomFrame:setTopBottom(false, false, ((((CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000) + 16.000000), (((CoD.Menu.MediumPopupHeight - 40.000000) / 2.000000) - 21.000000))
			arg0.bottomFrame:setAlpha(0.900000)
			arg0.bottomFrame:setImage(RegisterMaterial("menu_mp_backing_frame"))
			arg0:addElement(arg0.bottomFrame)
			local registerVal8 = LUI.UIImage.new()
			arg0.dotsBG = registerVal8
			arg0.dotsBG:setLeftRight(false, false, (-1280.000000 / 2.000000), (1280.000000 / 2.000000))
			arg0.dotsBG:setTopBottom(false, false, (-(512.000000 / 2.000000) - 13.000000), ((512.000000 / 2.000000) - 13.000000))
			arg0.dotsBG:setImage(RegisterMaterial("menu_mp_toomany_backing"))
			arg0.dotsBG:setPriority(-10.000000)
			arg0.dotsBG:setAlpha(0.900000)
			arg0.dotsBG:setupTiles(8.000000)
			arg0.dotsBG:setTileVertically(false)
			arg0.dotsBG:setShaderVector(0.000000, 1.000000, 1.000000, 1.000000, 1.000000)
			arg0:addElement(arg0.dotsBG)
		end
	end
end

function CoD.Menu.addSmallPopupBackground_Multiplayer(arg0, arg1, arg2)
	local registerVal12 = math.ceil((((arg2 - 20.000000) - (((32.000000 + 64.000000) + 64.000000) + 16.000000)) / 4.000000))
	arg0:setLeftRight(false, false, (-arg1 / 2.000000), (arg1 / 2.000000))
	arg0:setTopBottom(false, false, (-((20.000000 + (((32.000000 + 64.000000) + 64.000000) + 16.000000)) + (4.000000 * registerVal12)) / 2.000000), (((20.000000 + (((32.000000 + 64.000000) + 64.000000) + 16.000000)) + (4.000000 * registerVal12)) / 2.000000))
	local registerVal17 = LUI.UIElement.new()
	registerVal17:setPriority(-100.000000)
	registerVal17:setLeftRight(false, false, (-(arg1 + 50.000000) / 2.000000), ((arg1 + 50.000000) / 2.000000))
	registerVal17:setTopBottom(false, false, ((-((((32.000000 + 64.000000) + 64.000000) + 16.000000) + (4.000000 * registerVal12)) / 2.000000) - 16.000000), ((((((32.000000 + 64.000000) + 64.000000) + 16.000000) + (4.000000 * registerVal12)) / 2.000000) - 16.000000))
	arg0:addElement(registerVal17)
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, false, 0.000000, (0.000000 + 32.000000))
	registerVal19:setImage(RegisterMaterial("menu_mp_popup_top"))
	registerVal17:addElement(registerVal19)
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, true, 32.000000, -16.000000)
	registerVal20:setImage(RegisterMaterial("menu_mp_popup_stretch"))
	registerVal17:addElement(registerVal20)
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal21:setTopBottom(true, false, (0.000000 + 32.000000), ((0.000000 + 32.000000) + 64.000000))
	registerVal21:setImage(RegisterMaterial("menu_mp_dots_top_bottom_fade"))
	registerVal17:addElement(registerVal21)
	for index23=1.000000, registerVal12, 1.000000 do
		local registerVal27 = LUI.UIImage.new()
		registerVal27:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal27:setTopBottom(true, false, ((0.000000 + 32.000000) + 64.000000), (((0.000000 + 32.000000) + 64.000000) + 4.000000))
		registerVal27:setImage(RegisterMaterial("menu_mp_dots_middle_repeat"))
		registerVal17:addElement(registerVal27)
	end
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(false, true, (-0.000000 - 16.000000), -0.000000)
	registerVal24:setImage(RegisterMaterial("menu_mp_popup_bottom"))
	registerVal17:addElement(registerVal24)
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal25:setTopBottom(false, true, (-(0.000000 + 16.000000) - 64.000000), -(0.000000 + 16.000000))
	registerVal25:setXRot(180.000000)
	registerVal25:setImage(RegisterMaterial("menu_mp_dots_top_bottom_fade"))
	registerVal17:addElement(registerVal25)
	arg0.popupBG = registerVal17
end

function CoD.Menu.addSmallPopupBackground(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsInGame()
	if CoD.isMultiplayer and not registerVal4 then
		CoD.Menu.addSmallPopupBackground_Multiplayer(arg0, arg2, arg3)
		return 
	end
	local registerVal7 = LUI.UIImage.new()
	arg0.smallPopupBackground = registerVal7
	arg0.smallPopupBackground:setLeftRight(false, false, -((arg2 / 2.000000) + 25.000000), ((arg2 / 2.000000) + 25.000000))
	arg0.smallPopupBackground:setTopBottom(false, false, (-((arg3 / 2.000000) + 10.000000) - 40.000000), (((arg3 / 2.000000) + 10.000000) - 40.000000))
	if arg1 == nil then
		if CoD.isZombie then
			registerVal7 = RegisterMaterial("menu_zm_popup")
		else
			registerVal7 = RegisterImage("uie_img_t7_menu_errorpopupbackground")
		end
	end
	arg0.smallPopupBackground:setAlpha(0.900000)
	arg0.smallPopupBackground:setImage(registerVal7)
	arg0.smallPopupBackground:setPriority(-10.000000)
	arg0:addElement(arg0.smallPopupBackground)
end

function CoD.Menu.addSmallSolidBackground(arg0, arg1)
	if arg1 then
	end
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -((CoD.Menu.SmallPopupWidth / 2.000000) + 25.000000), ((CoD.Menu.SmallPopupWidth / 2.000000) + 25.000000))
	registerVal6:setTopBottom(false, false, (-((CoD.Menu.SmallPopupHeight / 2.000000) + 10.000000) - 20.000000), (((CoD.Menu.SmallPopupHeight / 2.000000) + 10.000000) - 20.000000))
	registerVal6:setImage(RegisterMaterial("menu_mp_popup_bg"))
	registerVal6:setAlpha(arg1)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setPriority(-10.000000)
	arg0:addElement(registerVal6)
end

function CoD.Menu.safeCreateMenu(arg0, arg1, arg2)
	Engine.GCStop()
	Engine.PIXBeginEvent(("createMenu('" .. arg0 .. "')"))
	if LUI.createMenu[arg0] == nil then
		if LUI.DEV then
			error(("LUI Error: no createMenu function for menu '" .. arg0 .. "'"))
		end
		Engine.PIXEndEvent()
		return nil
	end
	local registerVal4 = LUI.createMenu[arg0](arg1, arg2)
	LUI.CoDMetrics.OpenMenu(registerVal4)
	Engine.GCRestart()
	Engine.PIXEndEvent()
	return registerVal4
end

local function __FUNC_77B2_(arg0)
	local registerVal1 = arg0:getFirstChild()
	if registerVal1 == nil then
		return 
	end
	local registerVal2 = registerVal1:getNextSibling()
	CoD.Menu(registerVal1)
end

local function __FUNC_7844_(arg0)
	__FUNC_77B2_(arg0)
	arg0:close()
end

CoD.Menu.DebugCloseMenu = __FUNC_7844_
function CoD.Menu.DebugReload(arg0, arg1)
	if arg0.occludedBy then
		return 
	end
	if not arg0.m_ownerController then
		local registerVal3 = Engine.GetPrimaryController()
	end
	registerVal3 = arg0:getNextSibling()
	local registerVal4 = arg0:getParent()
	CoD.Menu.DebugCloseMenu(arg0)
	if arg0.menuName == "MessageDialogBox" then
		return 
	end
	local registerVal9 = CoD.Menu.safeCreateMenu(arg0.menuName, registerVal3)
	registerVal9.m_ownerController = arg0.m_ownerController
	registerVal9.occludedMenu = arg0.occludedMenu
	registerVal9.previousMenuName = arg0.previousMenuName
	if registerVal3 ~= nil then
		registerVal9:addElementBefore(registerVal3)
	else
		registerVal4:addElement(registerVal9)
	end
	registerVal9:updateBlur()
end

function CoD.Menu.goBack(arg0, arg1)
	local registerVal2 = arg0:getSoundSet()
	if registerVal2 then
		arg0:playSound("menu_go_back")
	else
		if arg0.backOutSFX ~= nil then
			Engine.PlaySound(arg0.backOutSFX)
		end
	end
	return arg0:returnToPreviousMenu(arg1)
end

function CoD.Menu.OcclusionChange(arg0, arg1)
	if arg1.occluded then
		if arg0.id == "Menu.Lobby" and arg1.occludedBy.id == "Menu.Spinner" then
			arg0.occludedBy = arg1.occludedBy
			if arg0.occludedBy then
				arg0.occludedBy:setOccludedMenu(arg0.occludedBy)
			else
				arg0.m_inputDisabled = true
			else
				if arg0.occludedBy then
					arg1.occludedBy:setOccludedMenu(arg0.occludedBy)
					arg0.occludedBy.occludedBy = arg1.occludedBy
					arg0.m_inputDisabled = true
				else
					arg0.occludedBy = arg1.occludedBy
					arg0.m_inputDisabled = true
				else
					if arg0.occludedBy == nil or arg1.occludedBy.id == arg0.occludedBy.id then
						arg0.m_inputDisabled = nil
						if arg0.occludedBy then
							if arg0.occludedBy.animateInFromOffset == nil then
							end
						end
						arg0.occludedBy = nil
						if true then
							CoD.Menu.UpdateAllButtonPrompts(arg0, arg0:getOwner())
						end
						if arg0.updateBlur then
							arg0:updateBlur()
						end
					end
				end
			end
		end
	end
end

function CoD.Menu.AddButtonPromptModel(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg0.buttonModel, arg1)
	if not registerVal3 then
		local registerVal4 = Engine.CreateModel(arg0.buttonModel, arg1)
		Engine.SetModelValue(registerVal4, Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
	end
	registerVal4 = Engine.GetModel(registerVal4, "Button")
	if CoD.isPC and registerVal4 and not registerVal4 then
		local registerVal5 = Engine.CreateModel(registerVal4, "Button")
		Engine.SetModelValue(registerVal5, arg1)
	end
	registerVal4 = Engine.GetModel(registerVal4, "Label")
	if not registerVal4 then
		registerVal5 = Engine.CreateModel(registerVal4, "Label")
		Engine.SetModelValue(registerVal5, "")
	end
end

local function __FUNC_8209_(arg0)
	if arg0 or arg0 then
		if not CoD.isPC then
		else
		end
	end
	return true
end

local function __FUNC_829B_(arg0, arg1, arg2, arg3)
	local registerVal4 = __FUNC_8209_(arg2)
	local registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = Engine.GetModel(registerVal5, "KeyPressBits")
	registerVal5 = Engine.GetModel(registerVal4, arg1)
	if registerVal4 and not registerVal5 then
		local registerVal6 = Engine.CreateModel(registerVal4, arg1)
		Engine.SetModelValue(registerVal6, 0.000000)
	end
end

CoD.Menu.AddKeyPressStateModel = __FUNC_829B_
function CoD.Menu.SetButtonPromptState(arg0, arg1, arg2)
	local registerVal4 = Engine.CreateModel(arg0.buttonModel, arg1)
	Engine.SetModelValue(registerVal4, arg2)
end

function CoD.Menu.GetElementAndFunctionTableForButton(arg0, arg1, arg2)
	local function __FUNC_877E_(arg0, arg1)
		local registerVal2 = {}
		registerVal2.element = arg0
		registerVal2.fn = arg1
		return registerVal2
	end

	for index9=2.000000, #arg0.lastFocusedElemEvent.idStack, 1.000000 do
		if not arg0[arg0.lastFocusedElemEvent.idStack[index9]] then
		else
			if arg0[arg0.lastFocusedElemEvent.idStack[index9]][arg2] and arg0[arg0.lastFocusedElemEvent.idStack[index9]][arg2][arg1] then
				if not arg0[arg0.lastFocusedElemEvent.idStack[index9]].activeWidget then
					if arg1 or not arg0[arg0.lastFocusedElemEvent.idStack[index9]][nil.idStack[(index9 + 1.000000)]] then
					end
				end
				table.insert({}, 1.000000, __FUNC_877E_(arg0[arg0.lastFocusedElemEvent.idStack[index9]], arg0[arg0.lastFocusedElemEvent.idStack[index9]][arg2][arg1]))
			end
		end
	end
	if nil then
	end
	if arg0[arg2] and arg0[arg2][arg1] then
		table.insert({}, __FUNC_877E_(arg0[arg0.lastFocusedElemEvent.idStack[index9]], arg0[arg2][arg1]))
	end
	return {}
end

function CoD.Menu.AnyButtonConditionTrue(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:GetElementAndFunctionTableForButton(arg3, "conditionFunctions")
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.fn then
			local registerVal10 = value9.fn(value9.element, arg1, arg2)
		end
		if registerVal10 then
			return true
		end
	end
	return false
end

function CoD.Menu.UpdateButtonShownState(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:GetElementAndFunctionTableForButton(arg3, "conditionFunctions")
	if arg1.showButtonDisabled and arg1.showButtonDisabled[arg3] then
	end
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if value10.fn then
			local registerVal11 = value10.fn(value10.element, arg1, arg2)
		end
		if registerVal11 then
		else
			if Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS ~= Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS and value10.element and value10.element.showButtonDisabled and value10.element.showButtonDisabled[arg3] then
			end
		end
	end
	if Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS == Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS and arg1.occludedBy and arg1.occludedBy.animateInFromOffset then
	end
	arg1:SetButtonPromptState(arg3, Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
	return 
end

function CoD.Menu.SetButtonLabel(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModel(arg0.buttonModel, (arg1 .. ".Label"))
	if registerVal3 then
		local registerVal4 = Engine.GetModel(arg0.buttonModel, (arg1 .. ".Label"))
		Engine.SetModelValue(registerVal4, arg2)
	end
end

function CoD.Menu.handleGamepadButtonModelCallback(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = LUI.UIElement.GetCorrespondingGamepadButtonString(arg3)
	if registerVal5 ~= nil and arg1.m_disableNavigation ~= true then
		if arg1.navigationSounds and arg1.navigationSounds[registerVal5] then
			Engine.PlaySound(arg1.navigationSounds[registerVal5])
		end
		if arg1.navigation then
		end
		if arg1.navigation[registerVal5] ~= nil then
			local registerVal7 = type(arg1.navigation[registerVal5])
			registerVal7 = arg1.navigation[registerVal5](arg1, arg2)
			if registerVal7 == "function" and registerVal7 == true then
				return true
			end
			registerVal7 = type(registerVal7)
			local registerVal9, registerVal10, registerVal11 = ipairs(registerVal7)
			for index12,value13 in registerVal9, registerVal10, registerVal11 do
				if value13.lastFocusedTimestamp then
					if arg1 or nil < value13.lastFocusedTimestamp then
					end
				end
			end
			registerVal7 = arg1:doNavigationForElementFromModelCallback(arg2, registerVal5, value13, arg1)
			if registerVal7 then
				return true
			end
		end
		registerVal7 = arg1:getParent()
		return arg0:handleGamepadButtonModelCallback(registerVal7, arg2, arg3, arg1)
		local registerVal6 = arg1:getParent()
		if registerVal7 and arg1.navigation and arg4 and registerVal6 then
			return arg0:handleGamepadButtonModelCallback(registerVal6, arg2, arg3, arg1)
		end
	end
end

function CoD.Menu.AddNavigationHandler(arg0, arg1, arg2)
	if not arg2 then
		local registerVal3 = arg0:getOwner()
	end
	if not arg1 then
	end
	local function __FUNC_962C_(arg0, arg1, arg2, arg3)
		local registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
		if not arg1.m_disableNavigation and registerVal4 then
			return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_UP)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_UP, "UPARROW", __FUNC_962C_)
	local function __FUNC_975F_(arg0, arg1, arg2, arg3)
		local registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
		if not arg1.m_disableNavigation and registerVal4 then
			return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_DOWN)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_DOWN, "DOWNARROW", __FUNC_975F_)
	local function __FUNC_9891_(arg0, arg1, arg2, arg3)
		local registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
		if not arg1.m_disableNavigation and registerVal4 then
			return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_LEFT)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_LEFT, "LEFTARROW", __FUNC_9891_)
	local function __FUNC_99C5_(arg0, arg1, arg2, arg3)
		local registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
		if not arg1.m_disableNavigation and registerVal4 then
			return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_RIGHT)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_RIGHT, "RIGHTARROW", __FUNC_99C5_)
	if not CoD.isPC and CoD.isMultiplayer then
		local function __FUNC_9AFA_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
			if registerVal4 and not arg1.m_disableNavigation and registerVal4 then
				return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_UP)
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_NONE, "UPARROW", __FUNC_9AFA_, nil, false, true)
		local function __FUNC_9C6F_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
			if registerVal4 and not arg1.m_disableNavigation and registerVal4 then
				return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_DOWN)
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_NONE, "DOWNARROW", __FUNC_9C6F_, nil, false, true)
		local function __FUNC_9DE5_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
			if registerVal4 and not arg1.m_disableNavigation and registerVal4 then
				return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_LEFT)
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_NONE, "LEFTARROW", __FUNC_9DE5_, nil, false, true)
		local function __FUNC_9F5D_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = arg1:AcceptGamePadButtonInputFromModelCallback(arg2)
			if registerVal4 and not arg1.m_disableNavigation and registerVal4 then
				return arg1:handleGamepadButtonModelCallback(arg0, arg2, Enum.LUIButton.LUI_KEY_RIGHT)
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, arg0, registerVal3, Enum.LUIButton.LUI_KEY_NONE, "RIGHTARROW", __FUNC_9F5D_, nil, false, true)
	end
	local function __FUNC_A0D6_()
		return true
	end

	arg0:registerEventHandler("gamepad_button", __FUNC_A0D6_)
end

function CoD.Menu.SendButtonPressToParentFromChild(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg1:getParent()
	local registerVal6 = registerVal5.buttonFunctions[arg3](arg1, arg0, arg2, arg4)
	if registerVal5.buttonFunctions and registerVal5.buttonFunctions[arg3] and registerVal6 then
		return 
	end
	registerVal6 = registerVal5:getParent()
end

function CoD.Menu.SendButtonPressToParent(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = arg1:getParent()
	if registerVal6.buttonFunctions and registerVal6.buttonFunctions[arg4] then
		registerVal6.buttonFunctions[arg4](arg2, arg0, arg3, arg5)
	end
	local registerVal7 = registerVal6:getParent()
end

function CoD.Menu.HandleButtonPress(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsControllerBeingUsed(arg1)
	if not arg1 or arg0.unusedControllerAllowed then
		registerVal4 = arg0:GetElementAndFunctionTableForButton(arg2, "buttonFunctions")
		local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal10 = value9.fn(value9.element, arg0, arg1, arg3)
			if registerVal10 then
				Engine.SetModelValue(arg3, 0.000000)
			else
			end
		end
		if 0.000000 < #registerVal5 then
			Engine.SetModelValue(arg3, 0.000000)
		else
			registerVal4 = IsGameTypeDOA()
			registerVal4 = Engine.IsSplitscreen()
			if registerVal4 and registerVal4 then
				arg0:setOwner(arg1)
			end
			if not CoD.isPC then
				registerVal6 = {}
				registerVal6.name = "unused_gamepad_button"
				registerVal6.controller = arg1
				arg0:processEvent(registerVal6)
			end
		end
	end
end

local function __FUNC_A5C1_(arg0, arg1)
	local registerVal3 = arg1:getParent()
	return true
	return false
end

local function __FUNC_A633_(arg0, arg1)
	if not arg0.controllerSubscriptions then
		return 
	end
	for index2=#arg0.controllerSubscriptions, 1.000000, -1.000000 do
		local registerVal7 = __FUNC_A5C1_(arg1, arg0.controllerSubscriptions[index2].element)
		if arg1 == arg0.controllerSubscriptions[index2].element or registerVal7 then
			arg0:removeSubscription(arg0.controllerSubscriptions[index2].subscription)
			table.remove(arg0.controllerSubscriptions, index2)
		end
	end
	if arg0.buttonSubscriptions then
		if #arg0.controllerSubscriptions == 0.000000 then
			arg0.buttonSubscriptions = nil
		else
			error(("Trying to reset buttonSubscriptions but controllerSubscriptions is not 0 in menu" .. arg0.id))
		end
	end
end

CoD.Menu.UnsubscribeFromControllerSubscriptionsForElement = __FUNC_A633_
local function __FUNC_A89D_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	if not arg1.buttonFunctions then
		arg1.buttonFunctions = {}
	end
	if not arg1.conditionFunctions then
		arg1.conditionFunctions = {}
	end
	if not arg1.showButtonDisabled then
		arg1.showButtonDisabled = {}
	end
	if not arg0.showButtonDisabled then
		arg0.showButtonDisabled = {}
	end
	if not arg0.buttonSubscriptions then
		arg0.buttonSubscriptions = {}
	end
	if not arg0.controllerSubscriptions then
		arg0.controllerSubscriptions = {}
	end
	if arg3 ~= Enum.LUIButton.LUI_KEY_NONE then
		arg1.buttonFunctions[arg3] = arg5
		arg1.conditionFunctions[arg3] = arg6
		arg1.showButtonDisabled[arg3] = arg7
		if not arg0.showButtonDisabled[arg3] then
		end
		arg0.showButtonDisabled[arg3] = arg7
		arg0:AddButtonPromptModel(arg3)
		CoD.Menu.UpdateButtonShownState(arg1, arg0, arg2, arg3)
		if arg0.anyControllerAllowed then
			local registerVal11 = Engine.GetMaxLocalControllers()
		end
		if not arg0.buttonSubscriptions[arg3] then
			for index11=0.000000, (registerVal11 - 1.000000), 1.000000 do
				arg0.buttonSubscriptions[arg3] = true
				local registerVal18 = Engine.GetModelForController(index11)
				local registerVal17 = Engine.GetModel(registerVal18, ("ButtonBits." .. arg3))
				local function __FUNC_B04D_(arg1)
					local registerVal2 = Engine.GetModelValue(arg1)
					local registerVal1 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal2, Enum.LUIButtonFlags.FLAG_DOWN)
					if not arg0.occludedBy and registerVal1 and not arg0.m_disableAllButtonActions then
						CoD.Menu.HandleButtonPress(arg0, index11, arg3, arg1)
					end
				end

				local registerVal15 = arg0:subscribeToModel(registerVal17, __FUNC_B04D_, false)
				registerVal18 = {}
				registerVal18.element = arg1
				registerVal18.subscription = registerVal15
				table.insert(arg0.controllerSubscriptions, registerVal18)
			end
		end
	end
	if CoD.isPC and not arg0.hasButtonActionHandler then
		arg0.hasButtonActionHandler = true
		local function __FUNC_B232_(arg1, arg3)
			local registerVal5 = Engine.GetModelForController(arg2)
			local registerVal4 = Engine.GetModel(registerVal5, ("ButtonBits." .. Enum.LUIButton.LUI_KEY_XBA_PSCROSS))
			if arg1.handleMouseButton ~= false and arg0.buttonModel and registerVal4 then
				Engine.SetModelValue(registerVal4, Enum.LUIButtonFlags.FLAG_DOWN)
				Engine.SetModelValue(registerVal4, 0.000000)
				return true
			end
		end

		arg0:registerEventHandler("mouse_left_click", __FUNC_B232_)
	end
	local registerVal9 = __FUNC_8209_(arg8)
	if registerVal9 and arg4 ~= nil then
		if not arg0.keyPressSubscriptions then
			arg0.keyPressSubscriptions = {}
		end
		arg1.buttonFunctions[arg4] = arg5
		arg1.conditionFunctions[arg4] = arg6
		registerVal9 = Engine.GetModel(arg0.buttonModel, arg3)
		if registerVal9 then
			registerVal11 = Engine.CreateModel(registerVal9, "KeyShortcut")
			Engine.SetModelValue(registerVal11, arg4)
		end
		CoD.Menu.AddKeyPressStateModel(arg2, arg4, arg8)
		if not arg0.keyPressSubscriptions[arg4] then
			arg0.keyPressSubscriptions[arg4] = true
			local registerVal13 = Engine.GetModelForController(arg2)
			local registerVal12 = Engine.GetModel(registerVal13, ("KeyPressBits." .. arg4))
			local function __FUNC_B449_(arg1)
				local registerVal2 = Engine.GetModelValue(arg1)
				local registerVal1 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal2, Enum.LUIButtonFlags.FLAG_DOWN)
				if not arg0.occludedBy and registerVal1 and not arg0.m_disableAllButtonActions then
					CoD.Menu.HandleButtonPress(arg0, arg2, arg3, arg1)
				end
			end

			arg0:subscribeToModel(registerVal12, __FUNC_B449_, false)
		end
		if not arg0.hasButtonActionHandler then
			arg0.hasButtonActionHandler = true
			local function __FUNC_B62E_(arg1, arg3)
				local registerVal5 = Engine.GetModelForController(arg2)
				local registerVal4 = Engine.GetModel(registerVal5, ("ButtonBits." .. Enum.LUIButton.LUI_KEY_XBA_PSCROSS))
				if arg1.handleMouseButton ~= false and arg0.buttonModel and registerVal4 then
					Engine.SetModelValue(registerVal4, Enum.LUIButtonFlags.FLAG_DOWN)
					Engine.SetModelValue(registerVal4, 0.000000)
					return true
				end
			end

			arg0:registerEventHandler("mouse_left_click", __FUNC_B62E_)
		end
	end
end

CoD.Menu.AddButtonCallbackFunction = __FUNC_A89D_
function CoD.Menu.GetButtonPromptState(arg0, arg1)
	Engine.GetModelValue(Engine.GetModel(arg0.buttonModel, arg1))
end

function CoD.Menu.GamepadButton(arg0, arg1)
	if arg0.m_inputDisabled then
		return 
	end
	local registerVal2 = Engine.IsControllerBeingUsed(arg1.controller)
	if not arg0.anyControllerAllowed and not arg1 or arg0.unusedControllerAllowed then
		if arg1 or arg0.m_ownerController == arg1.controller then
			return arg0:dispatchEventToChildren(arg1)
		else
		else
			if not CoD.isPC then
				arg1.name = "unused_gamepad_button"
				local registerVal3 = arg0:processEvent(arg1)
				arg1.name = arg1.name
				return registerVal3
			end
		end
	end
end

function CoD.Menu.swapMenu(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getParent()
	arg0:close()
	local registerVal6 = CoD.Menu.safeCreateMenu(arg1, arg2, arg3)
	if registerVal6.previousMenuName == nil then
		registerVal6:setPreviousMenu(arg0.menuName)
	end
	registerVal4:addElement(registerVal6)
	local registerVal9 = {}
	registerVal9.name = "menu_opened"
	registerVal9.controller = arg2
	registerVal6:processEvent(registerVal9)
	return registerVal6
end

function CoD.Menu.RemoveFromCurrMenuNameList(arg0)
	if arg0 == nil or arg0 == "" then
		return 
	end
	local registerVal1 = Dvar.ui_currMenuNameList:get()
	if not registerVal1 then
		return 
	end
	local registerVal3, registerVal4, registerVal5 = string.gmatch(registerVal1, "[^%s,]+")
	if arg0 ~=  then
		if "" ~= "" then
		end
	end
	Dvar.ui_currMenuNameList:set((("" .. ", ") .. ))
end

function CoD.Menu.AddToCurrMenuNameList(arg0)
	if LUI.DEV ~= nil and arg0 == nil or arg0 == "" then
		return 
	end
	local registerVal1 = Dvar.ui_currMenuNameList:get()
	if arg0 or registerVal1 == "" then
		Dvar.ui_currMenuNameList:set(arg0)
		return 
	end
	local registerVal2, registerVal3, registerVal4 = string.gmatch(registerVal1, "[^%s,]+")
	if  == arg0 then
		return 
	end
	Dvar.ui_currMenuNameList:set((registerVal1 .. ", " .. arg0))
end

function CoD.Menu.openMenu(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.Menu.safeCreateMenu(arg1, arg2, arg3)
	if registerVal4.previousMenuName == nil then
		registerVal4:setPreviousMenu(arg0.menuName, arg0.userData)
	end
	if arg0.occludedMenu then
		registerVal4:setOccludedMenu(arg0.occludedMenu)
	end
	local registerVal5 = arg0:getParent()
	registerVal5:addElement(registerVal4)
	local registerVal7 = {}
	registerVal7.name = "menu_opened"
	registerVal7.controller = arg2
	registerVal4:processEvent(registerVal7)
	return registerVal4
end

function CoD.Menu.replaceMenu(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = CoD.Menu.safeCreateMenu(arg1, arg2, arg3)
	if registerVal8.previousMenuName == nil then
		registerVal8:setPreviousMenu(arg5, arg4)
	end
	if arg6 then
		registerVal8:setOccludedMenu(arg6)
	end
	arg7:addElement(registerVal8)
	local registerVal11 = {}
	registerVal11.name = "menu_opened"
	registerVal11.controller = arg2
	registerVal8:processEvent(registerVal11)
	return registerVal8
end

CoD.Menu.ModalDialogInfo = {}
CoD.Menu.ModalDialogInfo.Options = {}
function CoD.Menu.OpenModalDialog(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "GenericModalDialog", arg3, arg4, nil, arg5, arg6)
end

function CoD.Menu.OpenSideModalDialog(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	CoD.Menu.ModalDialogInfo.Title = arg3
	CoD.Menu.ModalDialogInfo.Description = arg4
	CoD.Menu.ModalDialogInfo.Options = arg5
	CoD.Menu.ModalDialogInfo.Callback = arg6
	local registerVal8 = arg0:openPopup("SidePopup", arg2)
	CoD.Menu.ModalDialogInfo.Dialog = registerVal8
end

function CoD.Menu.openPopup(arg0, arg1, arg2, arg3, arg4)
	if CoD.isPC then
		arg0:clearMouseFocus(arg2)
		Engine.SetMouseCursor("")
		Engine.ShowMouseCursor()
	end
	local registerVal5 = CoD.Menu.safeCreateMenu(arg1, arg2, arg3)
	if not registerVal5 then
		return nil
	end
	registerVal5:setOccludedMenu(arg0)
	if registerVal5.animateInFromOffset then
		CoD.Menu.UpdateAllButtonPrompts(arg0, arg2)
	end
	local registerVal6 = arg0:getParent()
	registerVal6:addElement(registerVal5)
	if not CoD.Menu.disablePopupOpenCloseAnim then
		if registerVal5.disablePopupOpenCloseAnim == nil or registerVal5.disablePopupOpenCloseAnim == false then
			if arg1 or arg1 ~= "ChooseClass_InGame" then
				if arg1 ~= "PlaylistSelection" and arg1 ~= "ChangeMap" and arg1 ~= "Social_Main" and arg1 ~= "ChangeGameMode" then
					registerVal5:animateIn()
				end
			end
		end
	end
	local registerVal9 = {}
	registerVal9.name = "menu_opened"
	registerVal9.controller = arg2
	registerVal5:processEvent(registerVal9)
	return registerVal5
end

function CoD.Menu.openOverlay(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.Menu.openPopup(arg0, arg1, arg2, arg3, arg4)
	if registerVal5.occludedMenu ~= nil then
		registerVal5.occludedMenu:setAlpha(0.000000)
	end
	registerVal5.m_isOverlay = true
	return registerVal5
end

function CoD.Menu.openModelessPopup(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.Menu.safeCreateMenu(arg1, arg2, arg3)
	local registerVal5 = arg0:getParent()
	registerVal5:addElement(registerVal4)
	local registerVal8 = {}
	registerVal8.name = "menu_opened"
	registerVal8.controller = arg2
	registerVal4:processEvent(registerVal8)
	registerVal4:animateIn()
	return registerVal4
end

function CoD.Menu.returnToPreviousMenu(arg0, arg1)
	if arg0.previousMenuName then
		local registerVal3 = arg0:getParent()
		if not arg0.occludedMenu then
			arg0:close()
		end
		local registerVal7 = CoD.Menu.safeCreateMenu(arg0.previousMenuName, arg1, arg0.previousUserData)
		registerVal3:addElement(registerVal7)
		if arg0.occludedMenu then
			registerVal7:setOccludedMenu(arg0.occludedMenu)
		end
		local registerVal10 = {}
		registerVal10.name = "menu_opened"
		registerVal10.controller = arg1
		registerVal7:processEvent(registerVal10)
		if registerVal7 and nil.occludedMenu then
			if not nil.occludedMenu then
				registerVal3 = IsGameTypeDOA()
				registerVal3 = Engine.IsSplitscreen()
				if registerVal3 and registerVal3 then
					nil.occludedMenu:setOwner(arg1)
				end
				local registerVal5 = {}
				registerVal5.name = "occlusion_change"
				registerVal5.occluded = false
				registerVal5.occludedBy = nil
				nil.occludedMenu:processEvent(registerVal5)
			end
		end
	end
	if nil ~= nil then
		nil:close()
	end
	nil.occludedMenu:setAlpha(1.000000)
	if nil.occludedMenu and not nil.occludedMenu.occludedBy and CoD.isPC and nil.occludedMenu.mouseCursorHidden then
		HideMouseCursor(nil.occludedMenu)
	end
	return nil.occludedMenu
end

function CoD.Menu.setBackOutSFX(arg0, arg1)
	arg0.backOutSFX = arg1
end

function CoD.Menu.updateIngamePopupBg(arg0)
	if arg0.occludedMenu then
		if CoD.isSinglePlayer then
		else
		end
		local registerVal3 = {}
		registerVal3.leftAnchor = false
		registerVal3.rightAnchor = false
		registerVal3.left = -2560.000000
		registerVal3.right = 2560.000000
		registerVal3.topAnchor = false
		registerVal3.bottomAnchor = false
		registerVal3.top = -720.000000
		registerVal3.bottom = 720.000000
		registerVal3.red = 0.000000
		registerVal3.green = 0.000000
		registerVal3.blue = 0.000000
		registerVal3.alpha = 0.800000
		local registerVal2 = LUI.UIImage.new(registerVal3)
		arg0.darkenElement = registerVal2
		arg0.darkenElement:setPriority(-100.000000)
		arg0:addElement(arg0.darkenElement)
		if not arg0.darkenElement and not arg0.disableDarkenElement and not CoD.isSafehouse and arg0.darkenElement then
			arg0.darkenElement:close()
			arg0.darkenElement = nil
		end
	end
end

function CoD.Menu.setOccludedMenu(arg0, arg1)
	arg0.occludedMenu = arg1
	if arg1 then
		local registerVal4 = {}
		registerVal4.name = "occlusion_change"
		registerVal4.occluded = true
		registerVal4.occludedBy = arg0
		arg1:processEvent(registerVal4)
	end
	local registerVal2 = Engine.IsInGame()
	if not arg1 or registerVal2 then
		arg0:updateIngamePopupBg()
	end
	arg0:updateBlur()
end

function CoD.Menu.setOwner(arg0, arg1)
	arg0.m_ownerController = arg1
end

function CoD.Menu.getOwner(arg0)
	return arg0.m_ownerController
end

function CoD.Menu.setPreviousMenu(arg0, arg1, arg2)
	arg0.previousMenuName = arg1
	arg0.previousUserData = arg2
end

function CoD.Menu.animateOutAndGoBack(arg0, arg1)
	local registerVal3 = Engine.CanPauseGame()
	if registerVal3 and arg0.menuName == "StartMenu_Main" then
	end
	arg0.m_inputDisabled = true
	arg0:setAlpha(1.000000)
	arg0:setZoom(0.000000)
	arg0:beginAnimation("animate_popup_out", 1.000000)
	arg0:setAlpha(0.000000)
	arg0:setZoom(600.000000)
	arg0:registerEventHandler("transition_complete_animate_popup_out", arg0.TransitionCompleteAnimatePopupOut)
end

function CoD.Menu.animateIn(arg0)
	if arg0.animateInFromOffset then
		arg0:setLeftRight(true, false, arg0.animateInFromOffset, (1280.000000 + arg0.animateInFromOffset))
		arg0:beginAnimation("animate_popup_in", 250.000000, false, true)
		arg0:setLeftRight(true, false, 0.000000, 1280.000000)
	else
		arg0:setAlpha(0.000000)
		if CoD.isDurango then
			arg0:setZoom(300.000000)
		else
			arg0:setZoom(600.000000)
		end
		arg0:beginAnimation("animate_popup_in", 250.000000, false, true)
		arg0:setAlpha(1.000000)
		arg0:setZoom(0.000000)
	end
end

function CoD.Menu.addTitle(arg0, arg1, arg2)
	if arg2 == nil then
		if CoD.isSinglePlayer then
		else
		end
	end
	local registerVal3 = LUI.UIText.new()
	arg0.titleElement = registerVal3
	arg0.titleElement:setLeftRight(true, false, 0.000000, CoD.Menu.Width)
	arg0.titleElement:setTopBottom(true, false, 0.000000, CoD.Menu.TitleHeight)
	if CoD.isSinglePlayer then
		arg0.titleElement:setRGB(CoD.visorBlue2.r, CoD.visorBlue2.g, CoD.visorBlue2.b)
	else
		arg0.titleElement:setRGB(CoD.MenuTitleColor.r, CoD.MenuTitleColor.g, CoD.MenuTitleColor.b)
	end
	arg0.titleElement:setAlignment(LUI.Alignment.Left)
	arg0.titleElement:setTTF("fonts/FoundryGridnik-Bold.ttf")
	arg0:addElement(arg0.titleElement)
	arg0:setTitle(arg1)
end

function CoD.Menu.setTitle(arg0, arg1)
	arg0.titleText = arg1
	arg0.titleElement:setText(arg0.titleText)
end

function CoD.Menu.updateBlur(arg0)
	local registerVal1 = arg0:getOwner()
	if not registerVal1 then
	end
	if arg0.disableBlur == true then
		return 
	end
	if arg0.occludedMenu then
		local registerVal2 = Engine.IsInGame()
		if not registerVal2 then
			if arg0.disableBlur ~= nil and arg0.disableBlur == true then
				return 
			else
				if not CoD.isSafehouse then
					Engine.BlurWorld(0.000000, 2.000000)
				end
				Engine.LockInput(0.000000, true)
				Engine.SetUIActive(0.000000, true)
			else
				registerVal2 = Engine.IsInGame()
				if not registerVal2 then
					if arg0.disableBlur ~= nil and arg0.disableBlur == true then
						return 
					end
					arg0:setBlur(false)
				else
					if 0.000000 or not CoD.perController[0.000000].inSafehouseMenu then
						if arg0.id ~= "Menu.RewardsOverlayCP" then
							registerVal2 = IsCP()
							if registerVal2 and arg0.id == "Menu.ChooseClass_InGame" then
								return 
							end
						end
					end
					Engine.BlurWorld(0.000000, 0.000000)
					Engine.LockInput(0.000000, false)
					Engine.SetUIActive(0.000000, false)
				end
			end
		end
	end
end

function CoD.Menu.MenuChanged(arg0, arg1)
	if arg0.occludedBy then
		if arg0.occludedMenu == arg1.prevMenu then
			arg0:setOccludedMenu(arg1.nextMenu)
		end
		return 
	end
	if arg0.occludedMenu then
		arg0.previousMenuName = nil
		arg0:goBack(arg1.controller)
		arg0.occludedMenu:processEvent(arg1)
	end
end

function CoD.Menu.UserSignedOut(arg0, arg1)
	if not arg0.occludedBy then
		local registerVal2 = IsInGame()
		local registerVal3 = arg0:getOwner()
		if not registerVal2 and arg1.controller ~= registerVal3 then
			return 
		end
	end
	if arg0.occludedMenu then
		arg0.previousMenuName = nil
		arg0:goBack(arg1.controller)
		arg0.occludedMenu:processEvent(arg1)
	end
end

function CoD.Menu.SignedOut(arg0, arg1)
	local registerVal2 = arg0:getOwner()
	if registerVal2 == arg1.controller then
		registerVal2 = arg0:getRoot()
		local registerVal5 = {}
		registerVal5.name = "close_all_popups"
		registerVal5.controller = arg1.controller
		registerVal2:processEvent(registerVal5)
		registerVal5 = {}
		registerVal5.name = "open_popup"
		registerVal5.popupName = "signed_out"
		registerVal5.controller = arg1.controller
		registerVal2:processEvent(registerVal5)
	end
end

function CoD.Menu.ResolutionChanged(arg0, arg1)
	if arg1.resolutionChanged and not arg0.occludedBy and arg0.id ~= "Menu.HUD" then
		local registerVal4 = {}
		registerVal4.name = "occlusion_change"
		registerVal4.occluded = false
		registerVal4.occludedBy = arg0
		arg0:processEvent(registerVal4)
	end
	Engine.SyncHardwareProfileWithDvars()
	Engine.SaveHardwareProfile()
	local registerVal3 = Engine.GetShadowQuality()
	CoD.PCUtil.ShadowOptionIndex = registerVal3
	registerVal3 = Engine.GetVolumetricQuality()
	CoD.PCUtil.VolumetricOptionIndex = registerVal3
	registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function CoD.Menu.OpenRefetchWADConfirmationPopup(arg0, arg1)
	if not arg0.occludedBy then
		arg0:openPopup(arg1.popupName, arg1.controller)
		return true
	end
end

function CoD.Menu.OpenTexturePackConfirmationPopup(arg0, arg1)
	if not arg0.occludedBy then
		arg0:openPopup(arg1.popupName, arg1.controller)
		return true
	end
end

function CoD.Menu.OpenKeyboardTextFieldPopup(arg0, arg1)
	if CoD.isPC then
		if arg0.id == "Menu.HUD" then
			local registerVal2 = arg0:getFirstChild()
			if registerVal2 ~= nil then
				if not registerVal2.occludedBy then
					if registerVal2.id == "Menu.TimelineEditor" or registerVal2.id == "Menu.DemoFileshareUpload" then
						local registerVal3 = registerVal2:openPopup("KeyboardInputOverlay", arg1.controller, nil, registerVal2)
						return true
					end
				end
				registerVal3 = registerVal2:getNextSibling()
			else
				if not arg0.occludedBy then
					registerVal2 = arg0:openPopup("KeyboardInputOverlay", arg1.controller)
					return true
				end
			end
		end
	end
end

function CoD.Menu.OpenPopupEventHandler(arg0, arg1)
	if arg0.occludedBy then
		if arg1.recursive then
			return 
		end
		return 
	end
	if arg0.menuName ~= arg1.popupName then
		arg0:openPopup(arg1.popupName, arg1.controller)
	end
	return true
end

function CoD.Menu.GetOnlinePlayerCountText(arg0)
	local registerVal1 = CoD.isOnlineGame()
	if registerVal1 then
		if not CoD.isZombie then
			if arg0 ~= nil then
				local registerVal3 = Engine.GetPlaylistID()
			else
				local registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_PUBLIC_MATCH)
				if registerVal2 == true then
				else
					registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
					if registerVal2 == true then
					else
						registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
						if registerVal2 == true then
						else
							registerVal2 = Engine.GameModeIsMode(CoD.GAMEMODE_THEATER)
							if registerVal2 == true then
							end
						end
					end
				end
			end
		end
		registerVal2 = Engine.GetPlayerGroupCount("matchtype/theater")
		if registerVal2 ~= "" then
			return Engine.Localize("MENU_PLAYERS_ONLINE", registerVal2)
		end
	end
	return ""
end

function CoD.Menu.OpenPlayercard(arg0, arg1)
	if arg0.occludedBy then
		return 
	end
	local registerVal2 = Engine.IsUserGuest(arg1.controller)
	if registerVal2 then
		arg0:openPopup("popup_guest_contentrestricted", arg1.controller)
		return 
	end
	if arg0.menuName ~= "FriendPopup" and arg0.menuName ~= "MainMenu" then
		CoD.FriendPopup.SelectedPlayerXuid = arg1.selectedPlayerXuid
		CoD.FriendPopup.SelectedPlayerName = arg1.selectedFriendName
		arg0:openPopup("FriendPopup", arg1.controller)
	end
	return true
end

function CoD.Menu.COD9ButtonIsEnabled(arg0, arg1)
	if arg0.customActionButtonPrompt then
		arg0.customActionButtonPrompt:close()
		arg0.customActionButtonPrompt = nil
	end
	if arg0.selectButton then
		arg0:addLeftButtonPrompt(arg0.selectButton)
	end
end

function CoD.Menu.COD9ButtonIsDisabled(arg0, arg1)
	arg0:closeSelectButton()
end

function CoD.Menu.SetActionPromptString(arg0, arg1)
	arg0:closeSelectButton()
	local registerVal2 = CoD.ButtonPrompt.new("primary", arg1.promptString)
	arg0.customActionButtonPrompt = registerVal2
	arg0.customActionButtonPrompt:setPriority(-10.000000)
	arg0:addLeftButtonPrompt(arg0.customActionButtonPrompt)
end

function CoD.Menu.LeftRightSelectorGainFocus(arg0, arg1)
	arg0:closeSelectButton()
end

function CoD.Menu.LeftRightSelectorLoseFocus(arg0, arg1)
	if arg0.selectButton then
		arg0:addLeftButtonPrompt(arg0.selectButton)
	end
end

function CoD.Menu.LeftRightSilderGainFocus(arg0, arg1)
	arg0:closeSelectButton()
end

function CoD.Menu.LeftRightSilderLoseFocus(arg0, arg1)
	if arg0.selectButton then
		arg0:addLeftButtonPrompt(arg0.selectButton)
	end
end

function CoD.Menu.updateTitleForSplitscreen(arg0)
	arg0.titleElement:close()
	local registerVal1 = CoD.SplitscreenScaler.new(nil, 1.500000)
	registerVal1:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, false, 0.000000, 0.000000)
	arg0:addElement(registerVal1)
	arg0.titleElement:setLeftRight(true, false, CoD.Menu.SplitscreenSideOffset, CoD.Menu.Width)
	registerVal1:addElement(arg0.titleElement)
end

function CoD.Menu.updateButtonPromptBarsForSplitscreen(arg0)
	arg0.leftButtonPromptBar:close()
	local registerVal1 = CoD.SplitscreenScaler.new(nil, 1.500000)
	registerVal1:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal1:setTopBottom(false, true, 0.000000, 0.000000)
	arg0:addElement(registerVal1)
	arg0.leftButtonPromptBar:setLeftRight(true, true, (-10.000000 + CoD.Menu.SplitscreenSideOffset), 0.000000)
	registerVal1:addElement(arg0.leftButtonPromptBar)
	arg0.rightButtonPromptBar:close()
	local registerVal2 = CoD.SplitscreenScaler.new(nil, 1.500000)
	registerVal2:setLeftRight(false, true, 0.000000, -CoD.Menu.SplitscreenSideOffset)
	registerVal2:setTopBottom(false, true, 0.000000, 0.000000)
	arg0:addElement(registerVal2)
	arg0.rightButtonPromptBar:setLeftRight(true, true, 0.000000, -CoD.Menu.SplitscreenSideOffset)
	registerVal2:addElement(arg0.rightButtonPromptBar)
end

function CoD.Menu.OpenFrontendSaveGameWarningPopup(arg0, arg1)
	local registerVal2 = Engine.GetPrimaryController()
	arg0:openPopup("FrontendSaveGameWarningPopup", registerVal2, arg1)
end

function CoD.Menu.OpenFrontendSaveGameErrorPopup(arg0, arg1)
	local registerVal2 = Engine.GetPrimaryController()
	arg0:openPopup("FrontendSaveGameErrorPopup", registerVal2, arg1)
end

function CoD.Menu.updateElementState(arg0, arg1, arg2)
	local registerVal4, registerVal5, registerVal6 = ipairs(arg1.stateConditions)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = value8.condition(arg0, arg1, arg2)
		if arg1 or registerVal9 then
		else
		end
	end
	if not value8.stateName then
	end
	if "DefaultState" ~= arg1.currentState or arg1.ignoreCurrentStateCheck then
		registerVal4 = arg1:isInFocus()
		arg1:setState("DefaultState")
		if registerVal4 then
			arg1:playClip("Focus")
		end
		arg1.currentState = "DefaultState"
	end
end

function CoD.Menu.addButtonPrompt(arg0, arg1, arg2, arg3, arg4)
	if not arg0[("buttonPrompt_" .. arg1)] then
		local registerVal6 = CoD.ButtonPrompt.addUIEditorButtonPrompt(arg0, arg1, arg2, arg3)
		arg0[("buttonPrompt_" .. arg1)] = registerVal6
	end
	local registerVal7 = arg0[("buttonPrompt_" .. arg1)]:getParent()
	if not registerVal7 then
		if arg1 ~= "primary" and arg1 == "secondary" or arg1 == "start" then
			arg0[("buttonPrompt_" .. arg1)]:setPriority(100.000000)
			if arg1 == "start" then
				arg0[("buttonPrompt_" .. arg1)]:setPriority(-200.000000)
			else
				arg0[("buttonPrompt_" .. arg1)]:setPriority(-100.000000)
				registerVal7 = Engine.LastInput_Gamepad()
				if arg1 == "primary" and CoD.isPC and not registerVal7 then
					arg0[("buttonPrompt_" .. arg1)]:setAlpha(0.000000)
					arg0[("buttonPrompt_" .. arg1)]:setPriority(1000.000000)
				end
			end
			arg0:addLeftButtonPrompt(arg0[("buttonPrompt_" .. arg1)])
		else
			arg0:addRightButtonPrompt(arg0[("buttonPrompt_" .. arg1)])
		end
	end
	arg0[("buttonPrompt_" .. arg1)]:SetText(arg2)
	arg0[("buttonPrompt_" .. arg1)].elementThatAddedButtonPrompt = arg4
end

function CoD.Menu.removeButtonPrompt(arg0, arg1, arg2)
	if arg0[("buttonPrompt_" .. arg1)] then
		if arg0[("buttonPrompt_" .. arg1)].elementThatAddedButtonPrompt and arg0[("buttonPrompt_" .. arg1)].elementThatAddedButtonPrompt ~= arg2 then
			return 
		end
		arg0[("buttonPrompt_" .. arg1)]:close()
	end
end

function CoD.Menu.OpenMenu(arg0, arg1)
	if arg0.occludedMenu then
		return 
	end
	if arg0.menuName == arg1.menuName then
		return 
	end
	local registerVal5 = arg0:getParent()
	arg0:close()
	local registerVal6 = arg0:replaceMenu(arg1.menuName, arg1.controller, nil, oldUserData, arg0.menuName, arg0.occludedMenu, registerVal5)
	local registerVal7 = registerVal6:getParent()
	local registerVal9 = {}
	registerVal9.name = "menu_changed"
	registerVal9.prevMenu = arg0
	registerVal9.nextMenu = registerVal6
	registerVal9.controller = arg1.controller
	registerVal7:processEvent(registerVal9)
end

function CoD.Menu.GetNavigationForMenu(arg0, arg1)
	if not CoD.MenuNavigation then
		return 
	end
	if not CoD.MenuNavigation[arg0] then
		return 
	end
	for index3=#, 1.000000, -1.000000 do
		for index8=#, 1.000000, -1.000000 do
			if CoD.MenuNavigation[arg0][index3][index8] == arg1 then
				return index3, CoDLUIDecompiler.LuaRegister
			end
		end
	end
end

function CoD.Menu.GetNavigationForMenuToMenu(arg0, arg1, arg2)
	if not CoD.MenuNavigation then
		return 
	end
	if not CoD.MenuNavigation[arg0] then
		return 
	end
	for index4=#, 1.000000, -1.000000 do
		for index9=#, 1.000000, -1.000000 do
			if CoD.MenuNavigation[arg0][index4][index9] == arg1 then
				for index13=(index9 - 1.000000), 1.000000, -1.000000 do
					if CoD.MenuNavigation[arg0][index4][index13] == arg2 then
						return index4, CoDLUIDecompiler.LuaRegister
					end
				end
			end
		end
	end
end

function CoD.Menu.RatGetMenuInfo(arg0, arg1)
	if Rat ~= nil then
		Rat.HandleGetRatMenuInfo(arg0, arg1)
	end
end

function CoD.Menu.UpdateAllButtonPrompts(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0.buttonSubscriptions)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		CoD.Menu.UpdateButtonShownState(nil, arg0, arg1, index5)
	end
end

function CoD.Menu.RecordCurrFocusedElemID(arg0, arg1)
	if arg1.idStack then
		table.insert(arg1.idStack, 1.000000, arg0.id)
	end
	arg0.lastFocusedElemEvent = arg1
	if LUI.DEV ~= nil then
		local registerVal3 = Dvar.ui_currFocusList:exists()
		if registerVal3 then
			if not arg0.currentState then
			end
			for index7=2.000000, #arg0.lastFocusedElemEvent.idStack, 1.000000 do
				if not arg0[arg0.lastFocusedElemEvent.idStack[index7]] then
				else
				end
			end
			if not arg0[arg0.lastFocusedElemEvent.idStack[index7]] then
			else
			end
			Dvar.ui_currFocusList:set(((arg0.id .. ".<not found>") .. "." .. arg0[arg0.lastFocusedElemEvent.idStack[index7]].id))
		end
		registerVal3 = Dvar.ui_currFocusStates:exists()
		if registerVal3 then
			Dvar.ui_currFocusStates:set((((arg0.id .. "(" .. "none" .. ")") .. ".<not found>") .. "." .. arg0[arg0.lastFocusedElemEvent.idStack[index7]].id .. "(" .. "none" .. ")"))
		end
	end
	if arg1.controller ~= nil then
		CoD.Menu.UpdateAllButtonPrompts(arg0, arg1.controller)
	end
	return true
end

function CoD.Menu.subscribeToCurrAnimationModel(arg0)
	local registerVal2 = arg0:getModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "current_animation")
	local function __FUNC_10E48_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			if registerVal1 == "" and arg0.lastAnimPlayed then
			else
				if arg0.lastAnimPlayed ~= "" then
					arg0.lastAnimPlayed = arg0.lastAnimPlayed
				end
			end
			arg0:playClip(arg0.lastAnimPlayed)
		end
	end

	arg0:subscribeToModel(registerVal1, __FUNC_10E48_)
end

function CoD.Menu.subscribeToCloseMenuModel(arg0)
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal1 = arg0:getModel(registerVal3, "close_current_menu")
	if registerVal1 then
		local function __FUNC_1101E_(arg1)
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 and registerVal1 == 1.000000 then
				arg0:close()
			end
		end

		arg0:subscribeToModel(registerVal1, __FUNC_1101E_)
	end
end

CoD.Menu:registerEventHandler("button_prompt_back", CoD.Menu.ButtonPromptBack)
CoD.Menu:registerEventHandler("debug_reload", CoD.Menu.DebugReload)
CoD.Menu:registerEventHandler("occlusion_change", CoD.Menu.OcclusionChange)
CoD.Menu:registerEventHandler("open_menu", CoD.Menu.OpenMenu)
CoD.Menu:registerEventHandler("gamepad_button", CoD.Menu.GamepadButton)
CoD.Menu:registerEventHandler("menu_changed", CoD.Menu.MenuChanged)
CoD.Menu:registerEventHandler("signed_out", CoD.Menu.UserSignedOut)
CoD.Menu:registerEventHandler("close_all_popups", CoD.Menu.MenuChanged)
CoD.Menu:registerEventHandler("open_refetch_wad_confirmation_popup", CoD.Menu.OpenRefetchWADConfirmationPopup)
CoD.Menu:registerEventHandler("open_texture_pack_confirmation_popup", CoD.Menu.OpenTexturePackConfirmationPopup)
CoD.Menu:registerEventHandler("open_keyboard_text_field_popup", CoD.Menu.OpenKeyboardTextFieldPopup)
CoD.Menu:registerEventHandler("open_popup", CoD.Menu.OpenPopupEventHandler)
CoD.Menu:registerEventHandler("open_overlay", CoD.Menu.OpenOverlay)
CoD.Menu:registerEventHandler("open_friend_popup", CoD.Menu.OpenPlayercard)
CoD.Menu:registerEventHandler("COD9ButtonIsEnabled", CoD.Menu.COD9ButtonIsEnabled)
CoD.Menu:registerEventHandler("COD9ButtonIsDisabled", CoD.Menu.COD9ButtonIsDisabled)
CoD.Menu:registerEventHandler("set_action_prompt_string", CoD.Menu.SetActionPromptString)
CoD.Menu:registerEventHandler("left_right_selector_gain_focus", CoD.Menu.LeftRightSelectorGainFocus)
CoD.Menu:registerEventHandler("left_right_selector_lose_focus", CoD.Menu.LeftRightSelectorLoseFocus)
CoD.Menu:registerEventHandler("left_right_slider_gain_focus", CoD.Menu.LeftRightSilderGainFocus)
CoD.Menu:registerEventHandler("left_right_slider_lose_focus", CoD.Menu.LeftRightSilderLoseFocus)
CoD.Menu:registerEventHandler("resolution_changed", CoD.Menu.ResolutionChanged)
CoD.Menu:registerEventHandler("rat_get_menu_info_internal", CoD.Menu.RatGetMenuInfo)
CoD.Menu:registerEventHandler("record_curr_focused_elem_id", CoD.Menu.RecordCurrFocusedElemID)
if CoD.isSinglePlayer then
	CoD.Menu:registerEventHandler("open_FrontendSaveGameWarningPopup", CoD.Menu.OpenFrontendSaveGameWarningPopup)
	CoD.Menu:registerEventHandler("open_FrontendSaveGameErrorPopup", CoD.Menu.OpenFrontendSaveGameErrorPopup)
end
