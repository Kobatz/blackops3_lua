-- Decompiled with CoDLUIDecompiler by JariK

CoD.Popup = {}
CoD.Popup.Type = {}
CoD.Popup.Type.REGULAR = 1.000000
CoD.Popup.Type.WIDE = 2.000000
CoD.Popup.Type.STRETCHED = 3.000000
CoD.Popup.StretchedWidth = CoD.Menu.SmallPopupWidth
CoD.Popup.StretchedHeight = CoD.Menu.SmallPopupHeight
if CoD.isZombie == true then
	CoD.Popup.StretchedWidth = CoD.Menu.SmallPopupWidth
	CoD.Popup.StretchedHeight = 300.000000
end
function LUI.createMenu.popup_contentrestricted(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("popup_contentrestricted", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_NOTICE"))
	registerVal1.msg:setText(Engine.Localize("PLATFORM_FILESHARE_ACCESSERROR_MSG"))
	registerVal1:addBackButton()
	return registerVal1
end

function LUI.createMenu.popup_guest_contentrestricted(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("popup_contentrestricted", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_NOTICE"))
	registerVal1.msg:setText(Engine.Localize("MENU_GUEST_CONTENT_RESTRICTED"))
	registerVal1:addBackButton()
	return registerVal1
end

function LUI.createMenu.popup_chatrestricted(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("popup_chatrestricted", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_NOTICE"))
	registerVal1.msg:setText(Engine.Localize("PLATFORM_CHAT_DISABLED"))
	registerVal1.anyControllerAllowed = true
	local registerVal4 = Engine.Localize("MENU_OK")
	local registerVal2 = CoD.ButtonPrompt.new("primary", registerVal4, registerVal1, "restriction_accepted")
	registerVal1.primaryButton = registerVal2
	registerVal1:addLeftButtonPrompt(registerVal1.primaryButton)
	registerVal1:addBackButton()
	registerVal1:registerEventHandler("restriction_accepted", CoD.Popup.ChatRestrictionAccepted)
	return registerVal1
end

function CoD.Popup.ChatRestrictionAccepted(arg0, arg1)
	arg0:goBack(arg0, arg1.controller)
	if arg0.callingMenu ~= nil then
		CoD.MainMenu.OpenMainLobby(arg0.callingMenu, arg1)
	end
end

function CoD.Popup.SetupPopup(arg0, arg1, arg2)
	local registerVal3 = CoD.Popup.CreatePopup(arg0, arg2)
	registerVal3:setOwner(arg1)
	registerVal3:registerEventHandler("menu_changed", CoD.Popup.MenuChanged)
	registerVal3:registerEventHandler("close_popup", CoD.Popup.Close)
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, (0.000000 + CoD.textSize.Big))
	registerVal5:setFont(CoD.fonts.Big)
	registerVal5:setAlignment(LUI.Alignment.Left)
	registerVal3.title = registerVal5
	registerVal3:addElement(registerVal5)
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	if arg2 == CoD.Popup.Type.WIDE then
		registerVal7:setLeftRight(true, false, 0.000000, (CoD.Menu.MediumPopupWidth / 2.000000))
	end
	registerVal7:setTopBottom(true, false, ((0.000000 + CoD.textSize.Big) + 10.000000), (((0.000000 + CoD.textSize.Big) + 10.000000) + CoD.textSize.Default))
	registerVal7:setFont(CoD.fonts.Default)
	registerVal7:setAlignment(LUI.Alignment.Left)
	registerVal3.msg = registerVal7
	registerVal3:addElement(registerVal7)
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, true, (CoD.Menu.MediumPopupWidth / 2.000000), 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.rightInfoContainer = registerVal8
	registerVal3:addElement(registerVal8)
	return registerVal3
end

function CoD.Popup.SetupPopupBusy(arg0, arg1, arg2)
	local registerVal3 = CoD.Popup.SetupPopup(arg0, arg1, arg2)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8 = {0.000000, 0.000000, 0.000000, 0.000000}
	registerVal7.shaderVector0 = registerVal8
	local registerVal6 = LUI.UIImage.new(registerVal7)
	registerVal3.spinner = registerVal6
	registerVal3.spinner:setLeftRight(true, true, ((CoD.Menu.SmallPopupWidth / 2.000000) - (64.000000 / 2.000000)), -((CoD.Menu.SmallPopupWidth / 2.000000) - (64.000000 / 2.000000)))
	registerVal3.spinner:setTopBottom(true, false, 60.000000, (60.000000 + 64.000000))
	registerVal3.spinner:setImage(RegisterMaterial("lui_loader"))
	registerVal3:addElement(registerVal3.spinner)
	return registerVal3
end

function CoD.Popup.SetupPopupChoice(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.Popup.SetupPopup(arg0, arg1, arg3)
	local registerVal5 = CoD.ButtonList.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, ((-CoD.ButtonPrompt.Height - (CoD.CoD9Button.Height * 3.000000)) + 10.000000), 0.000000)
	registerVal4:addElement(registerVal5)
	registerVal4.choiceList = registerVal5
	if arg2 == nil then
	else
		if 5.000000 < 2.000000 then
		end
	end
	for index6=1.000000, 5.000000, 1.000000 do
		local registerVal10 = registerVal5:addButton("")
		registerVal10:setActionEventName("button_prompt_back")
		registerVal5:addElement(registerVal10)
		if index6 == 1.000000 then
			registerVal4.choiceA = registerVal10
		else
			if index6 == 2.000000 then
				registerVal4.choiceB = registerVal10
			else
				if index6 == 3.000000 then
					registerVal4.choiceC = registerVal10
				else
					if index6 == 4.000000 then
						registerVal4.choiceD = registerVal10
					end
				end
			end
		end
	end
	registerVal4:addSelectButton()
	return registerVal4
end

function CoD.Popup.SetWidthHeight(arg0, arg1, arg2)
	if arg1 then
	end
	local registerVal4 = Engine.IsInGame()
	if registerVal4 then
		arg0.smallPopupBackground:setLeftRight(false, false, -((arg1 / 2.000000) + 25.000000), ((arg1 / 2.000000) + 25.000000))
		arg0.smallPopupBackground:setTopBottom(false, false, (-((arg2 / 2.000000) + 10.000000) - 20.000000), (((arg2 / 2.000000) + 10.000000) - 20.000000))
		arg0:setLeftRight(false, false, (-arg1 / 2.000000), (arg1 / 2.000000))
		arg0:setTopBottom(false, false, (-arg2 / 2.000000), (arg2 / 2.000000))
	else
		if arg0.popupBG then
			arg0.popupBG:close()
			arg0:addSmallPopupBackground(nil, arg1, arg2)
		end
	end
end

function CoD.Popup.CreatePopup(arg0, arg1)
	if arg1 == nil then
	else
		if CoD.Popup.Type.REGULAR < CoD.Popup.Type.REGULAR or CoD.Popup.Type.STRETCHED < CoD.Popup.Type.REGULAR then
		end
	end
	if CoD.Popup.Type.REGULAR == CoD.Popup.Type.WIDE then
		local registerVal3 = CoD.Menu.NewMediumPopup(arg0)
	else
		if CoD.Popup.Type.REGULAR == CoD.Popup.Type.STRETCHED then
			registerVal3 = CoD.Menu.NewSmallPopup(arg0, nil, nil, CoD.Popup.StretchedWidth, CoD.Popup.StretchedHeight)
		else
			registerVal3 = CoD.Menu.NewSmallPopup(arg0)
		end
	end
	registerVal3.setWidthHeight = CoD.Popup.SetWidthHeight
	return registerVal3
end

function CoD.Popup.MenuChanged(arg0, arg1)
	if arg0.occludedMenu == arg1.prevMenu then
		arg0:setOccludedMenu(arg1.nextMenu)
	end
end

function CoD.Popup.Close(arg0, arg1)
	if arg0.menuName == arg1.popupName then
		arg0:goBack()
		return true
	end
end

