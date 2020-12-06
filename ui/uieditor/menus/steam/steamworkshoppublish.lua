-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreeenPupupSteamForm")
require("ui.uieditor.widgets.InputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.checkbox")
function LUI.createMenu.SteamWorkshopPublish(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SteamWorkshopPublish")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SteamWorkshopPublish.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreeenPupupSteamForm.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.Title:setText(Engine.Localize("PLATFORM_STEAM_PUBLISH_CAPS"))
	registerVal3.Subtitle:setText(Engine.Localize("PLATFORM_STEAM_PUBLISH_DESC"))
	registerVal3.WorkingTitle:setText(Engine.Localize("PLATFORM_STEAM_PUBLISH_WORKING_TITLE"))
	registerVal3.DoneTitle:setText(Engine.Localize("PLATFORM_STEAM_DONE_TITLE"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("PLATFORM_STEAM_PUBLISH_ERROR_DESC"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_22B3_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal7.condition = __FUNC_22B3_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_2307_(arg0, arg1, arg2)
		return FileshareIsPublishingInError()
	end

	registerVal8.condition = __FUNC_2307_
	local registerVal9 = {}
	registerVal9.stateName = "DoneState"
	local function __FUNC_2362_(arg0, arg1, arg2)
		return FileshareIsPublishingInSuccess()
	end

	registerVal9.condition = __FUNC_2362_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isPublishing")
	local function __FUNC_23C0_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_23C0_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupForm = registerVal3
	local registerVal4 = CoD.InputButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 461.960000, 677.960000)
	registerVal4:setTopBottom(true, false, 378.000000, 412.000000)
	local function __FUNC_24F0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareRoot", "publishName", __FUNC_24F0_)
	local function __FUNC_259E_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_259E_)
	local function __FUNC_272F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_272F_)
	local function __FUNC_27FE_(arg0, arg1, arg2, arg3)
		FileshareEnterPublishName(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2867_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_27FE_, __FUNC_2867_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.InputName = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 461.960000, 661.960000)
	registerVal5:setTopBottom(true, false, 353.000000, 378.000000)
	registerVal5:setText(Engine.Localize("MENU_FILESHARE_NEWNAME"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.LblName = registerVal5
	registerVal6 = CoD.InputButton.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 461.960000, 1076.960000)
	registerVal6:setTopBottom(true, false, 437.000000, 530.000000)
	local function __FUNC_2962_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "FileshareRoot", "publishDescription", __FUNC_2962_)
	local function __FUNC_2A0E_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2A0E_)
	local function __FUNC_2B9F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2B9F_)
	local function __FUNC_2C6E_(arg0, arg1, arg2, arg3)
		FileshareEnterPublishDescription(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2CDE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2C6E_, __FUNC_2CDE_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.InputDescription = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 461.960000, 529.960000)
	registerVal7:setTopBottom(true, false, 412.000000, 437.000000)
	registerVal7:setText(Engine.Localize("MENU_FILESHARE_DESCRIPTION"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.LblDescription = registerVal7
	registerVal8 = CoD.InputButton.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 707.960000, 1076.960000)
	registerVal8:setTopBottom(true, false, 378.000000, 412.000000)
	local function __FUNC_2DDA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Text:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "FileshareRoot", "publishTags", __FUNC_2DDA_)
	local function __FUNC_2E86_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_2E86_)
	local function __FUNC_3017_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_3017_)
	local function __FUNC_30E6_(arg0, arg1, arg2, arg3)
		FileshareEnterPublishTags(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_314F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30E6_, __FUNC_314F_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.InputTags = registerVal8
	registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 707.960000, 857.960000)
	registerVal9:setTopBottom(true, false, 353.000000, 378.000000)
	registerVal9:setText(Engine.Localize("MENU_FILESHARE_TAGS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.LblTags = registerVal9
	local registerVal10 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 984.960000, 1076.960000)
	registerVal10:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal10.btnDisplayText:setText(Engine.Localize("MENU_FILESHARE_PUBLISH"))
	registerVal10.btnDisplayTextStroke:setText(Engine.Localize("MENU_FILESHARE_PUBLISH"))
	local registerVal14 = Engine.GetGlobalModel()
	local registerVal13 = Engine.GetModel(registerVal14, "fileshareRoot.ready")
	local function __FUNC_324A_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.ready"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_324A_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "fileshareRoot.publishSteamAgreement")
	local function __FUNC_3410_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.publishSteamAgreement"
		CoD.Menu.UpdateButtonShownState(registerVal10, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_3410_)
	local function __FUNC_35E8_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = FileshareIsSteamAgreed()
		if not registerVal3 then
			SetHintText(registerVal1, arg1, arg0)
		else
			CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_35E8_)
	local function __FUNC_37D8_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_37D8_)
	local function __FUNC_38AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareIsReady(arg2)
		registerVal4 = FileshareIsSteamAgreed()
		if registerVal4 and registerVal4 then
			SteamWorkshopPublish(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_396C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = FileshareIsReady(arg2)
		registerVal3 = FileshareIsSteamAgreed()
		if registerVal3 and registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_38AA_, __FUNC_396C_, false)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_3AD0_(arg1, arg2, arg3)
		return FilesharePublishToSteamDisabled(arg0)
	end

	registerVal14.condition = __FUNC_3AD0_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "fileshareRoot.publishSteamAgreement")
	local function __FUNC_3B35_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.publishSteamAgreement"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_3B35_)
	registerVal1:addElement(registerVal10)
	registerVal1.BtnPublish = registerVal10
	local registerVal11 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 679.980000, 771.980000)
	registerVal11:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal11.btnDisplayText:setText(Engine.Localize("PLATFORM_STEAM_AGREEMENT_LABEL"))
	registerVal11.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_STEAM_AGREEMENT_LABEL"))
	local function __FUNC_3C6D_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_3C6D_)
	local function __FUNC_3DFF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_3DFF_)
	local function __FUNC_3ECE_(arg0, arg1, arg2, arg3)
		SteamWorkshopOpenAgreement(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3F38_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3ECE_, __FUNC_3F38_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.BtnAgreement = registerVal11
	local registerVal12 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 461.960000, 553.960000)
	registerVal12:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal12.btnDisplayText:setText(Engine.Localize("PLATFORM_STEAM_FAQ_LABEL"))
	registerVal12.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_STEAM_FAQ_LABEL"))
	local function __FUNC_4036_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_4036_)
	local function __FUNC_41C7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_41C7_)
	local function __FUNC_4296_(arg0, arg1, arg2, arg3)
		SteamWorkshopOpenFAQ(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_42FA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4296_, __FUNC_42FA_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.BtnFAQ = registerVal12
	registerVal13 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 461.960000, 553.960000)
	registerVal13:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal13.btnDisplayText:setText(Engine.Localize("PLATFORM_STEAM_OPEN_WORKSHOP"))
	registerVal13.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_STEAM_OPEN_WORKSHOP"))
	local function __FUNC_43F6_(arg1, arg2)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_43F6_)
	local function __FUNC_4587_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_4587_)
	local function __FUNC_4656_(arg0, arg1, arg2, arg3)
		SteamWorkshopViewWorkshop(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_46BF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4656_, __FUNC_46BF_, false)
	registerVal1:addElement(registerVal13)
	registerVal1.BtnViewSteamWorkshop = registerVal13
	registerVal14 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 679.980000, 771.980000)
	registerVal14:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal14.btnDisplayText:setText(Engine.Localize("PLATFORM_STEAM_OPEN_WORKSHOP_ITEM"))
	registerVal14.btnDisplayTextStroke:setText(Engine.Localize("PLATFORM_STEAM_OPEN_WORKSHOP_ITEM"))
	local function __FUNC_47BA_(arg1, arg2)
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

	registerVal14:registerEventHandler("gain_focus", __FUNC_47BA_)
	local function __FUNC_494B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_494B_)
	local function __FUNC_4A1A_(arg0, arg1, arg2, arg3)
		SteamWorkshopOpenItem(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_4A7F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4A1A_, __FUNC_4A7F_, false)
	registerVal1:addElement(registerVal14)
	registerVal1.BtnViewItemInWorkshop = registerVal14
	local registerVal15 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 984.960000, 1076.960000)
	registerVal15:setTopBottom(true, false, 564.000000, 595.000000)
	registerVal15.btnDisplayText:setText(Engine.Localize("MPUI_DONE_CAPS"))
	registerVal15.btnDisplayTextStroke:setText(Engine.Localize("MPUI_DONE_CAPS"))
	local function __FUNC_4B7A_(arg1, arg2)
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

	registerVal15:registerEventHandler("gain_focus", __FUNC_4B7A_)
	local function __FUNC_4D0B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_4D0B_)
	local function __FUNC_4DDA_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_4E2C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4DDA_, __FUNC_4E2C_, false)
	registerVal1:addElement(registerVal15)
	registerVal1.BtnDone = registerVal15
	local registerVal16 = CoD.checkbox.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, -178.040000, 442.000000)
	registerVal16:setTopBottom(true, false, 530.000000, 564.000000)
	registerVal16.labelText:setText(Engine.Localize("PLATFORM_STEAM_PUBLISH_AGREEMENT_CHECKBOX"))
	local function __FUNC_4F2A_(arg1, arg2)
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

	registerVal16:registerEventHandler("gain_focus", __FUNC_4F2A_)
	local function __FUNC_50BB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_50BB_)
	local function __FUNC_518A_(arg0, arg1, arg2, arg3)
		ToggleGlobalModelValueBoolean("FileshareRoot.publishSteamAgreement")
		return true
	end

	local function __FUNC_521C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_518A_, __FUNC_521C_, false)
	local function __FUNC_531A_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal16, "setText", __FUNC_531A_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Checked"
	local function __FUNC_5379_(arg1, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg0, "FileshareRoot.publishSteamAgreement")
	end

	registerVal20.condition = __FUNC_5379_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "FileshareRoot.publishSteamAgreement")
	local function __FUNC_5409_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.publishSteamAgreement"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_5409_)
	registerVal1:addElement(registerVal16)
	registerVal1.checkboxSteamAgreement = registerVal16
	local registerVal17 = {}
	registerVal17.right = registerVal8
	registerVal17.down = registerVal6
	registerVal4.navigation = registerVal17
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18 = {registerVal4, registerVal8}
	registerVal17.up = registerVal18
	registerVal17.down = registerVal16
	registerVal6.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal4
	registerVal17.down = registerVal6
	registerVal8.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal15
	registerVal17.up = registerVal15
	registerVal10.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal14
	registerVal17.up = registerVal14
	registerVal18 = {}
	registerVal18 = {registerVal10, registerVal15}
	registerVal17.right = registerVal18
	registerVal11.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal13
	registerVal17.up = registerVal13
	registerVal18 = {}
	registerVal18 = {registerVal11, registerVal14}
	registerVal17.right = registerVal18
	registerVal12.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal12
	registerVal17.up = registerVal12
	registerVal18 = {}
	registerVal18 = {registerVal11, registerVal14}
	registerVal17.right = registerVal18
	registerVal13.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal11
	registerVal17.up = registerVal11
	registerVal18 = {}
	registerVal18 = {registerVal10, registerVal15}
	registerVal17.right = registerVal18
	registerVal14.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal10
	registerVal17.up = registerVal10
	registerVal15.navigation = registerVal17
	registerVal17 = {}
	registerVal17.up = registerVal6
	registerVal18 = {}
	registerVal18 = {registerVal12, registerVal13, registerVal11, registerVal14, registerVal10, registerVal15}
	registerVal17.down = registerVal18
	registerVal16.navigation = registerVal17
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_5541_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal13:completeAnimation()
		registerVal1.BtnViewSteamWorkshop:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.BtnViewItemInWorkshop:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BtnDone:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_5541_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_5704_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal1.InputName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.InputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.LblDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.InputTags:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.LblTags:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.BtnAgreement:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal1.BtnDone:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.checkboxSteamAgreement:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_5704_
	registerVal17.Working = registerVal18
	registerVal18 = {}
	local function __FUNC_5B2B_()
		registerVal1:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal1.InputName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.InputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.LblDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.InputTags:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.LblTags:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.BtnAgreement:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.BtnFAQ:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.BtnViewSteamWorkshop:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.BtnViewItemInWorkshop:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.BtnDone:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.checkboxSteamAgreement:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_5B2B_
	registerVal17.Success = registerVal18
	registerVal1.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "Working"
	local function __FUNC_606D_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal20.condition = __FUNC_606D_
	local registerVal21 = {}
	registerVal21.stateName = "Success"
	local function __FUNC_60C3_(arg0, arg1, arg2)
		return FileshareIsPublishingInSuccess()
	end

	registerVal21.condition = __FUNC_60C3_
	registerVal19 = {registerVal20, registerVal21}
	registerVal1:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "fileshareRoot.isPublishing")
	local function __FUNC_6120_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_6120_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_6250_(arg1, arg2)
		FileshareHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_6250_)
	local function __FUNC_62FE_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_success", __FUNC_62FE_)
	local function __FUNC_6369_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_63BC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6369_, __FUNC_63BC_, false)
	registerVal4.id = "InputName"
	registerVal6.id = "InputDescription"
	registerVal8.id = "InputTags"
	registerVal10.id = "BtnPublish"
	registerVal11.id = "BtnAgreement"
	registerVal12.id = "BtnFAQ"
	registerVal13.id = "BtnViewSteamWorkshop"
	registerVal14.id = "BtnViewItemInWorkshop"
	registerVal15.id = "BtnDone"
	registerVal16.id = "checkboxSteamAgreement"
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.InputName:processEvent(registerVal19)
	end
	local function __FUNC_64B0_(arg1)
		arg1.FullscreenPopupForm:close()
		arg1.InputName:close()
		arg1.InputDescription:close()
		arg1.InputTags:close()
		arg1.BtnPublish:close()
		arg1.BtnAgreement:close()
		arg1.BtnFAQ:close()
		arg1.BtnViewSteamWorkshop:close()
		arg1.BtnViewItemInWorkshop:close()
		arg1.BtnDone:close()
		arg1.checkboxSteamAgreement:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SteamWorkshopPublish.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_64B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

