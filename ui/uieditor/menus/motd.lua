-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Lobby.Common.Popups.LiveEventViewer")
require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.AccountLink.MOTD_Footer")
require("ui.uieditor.widgets.MOTD.MOTD_MainImgContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.MOTD.MOTD_TitleAndBodyText")
require("ui.uieditor.widgets.MOTD.MOTD_Legal")
require("ui.uieditor.widgets.PC.Utility.GenericClickButton")
local function __FUNC_49A_(arg0, arg1)
	arg0.continueButton:setButton(Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	arg0.backButton:setButton(Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
end

local function __FUNC_5BF_(arg0, arg1)
	arg0.MOTDTitleAndBodyText.txtDescription:hasHTMLContent(true)
	if CoD.isPC then
		__FUNC_49A_(arg0, arg1)
	end
end

local function __FUNC_69D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MOTD")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MOTD.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.450000)
	registerVal1:addElement(registerVal3)
	registerVal1.BackgroundDarken = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.overlayBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal6:setTopBottom(true, false, 61.000000, 553.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.850000)
	registerVal1:addElement(registerVal6)
	registerVal1.BlackBack = registerVal6
	local registerVal7 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 181.000000, -186.000000)
	registerVal7:setTopBottom(false, false, -298.000000, 193.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.LobbyMemberBackingMask0 = registerVal7
	local registerVal8 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 208.000000, 422.000000)
	registerVal8:setTopBottom(true, false, 516.000000, 547.000000)
	registerVal8.label:setText(Engine.Localize("MENU_CONTINUE"))
	local function __FUNC_1F69_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_1F69_)
	registerVal1:addElement(registerVal8)
	registerVal1.PromptSelect = registerVal8
	local registerVal9 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 330.000000, 544.000000)
	registerVal9:setTopBottom(true, false, 516.000000, 547.000000)
	registerVal9.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_2043_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_2043_)
	registerVal1:addElement(registerVal9)
	registerVal1.PromptBack = registerVal9
	local registerVal10 = CoD.MOTD_Footer.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal10:setTopBottom(true, false, 563.000000, 663.000000)
	local function __FUNC_211B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.MOTDFooterImageContainer.image:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "MtxCommsRegistration", "image", __FUNC_211B_)
	registerVal1:addElement(registerVal10)
	registerVal1.motdFooter = registerVal10
	local registerVal11 = CoD.MOTD_MainImgContainer.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 652.000000, 1094.000000)
	registerVal11:setTopBottom(true, false, 61.000000, 552.500000)
	registerVal11.TwitchStream0:setupTwitchStreamPlayback("")
	local function __FUNC_2215_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.PopupImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "MtxCommsMOTD", "image", __FUNC_2215_)
	registerVal1:addElement(registerVal11)
	registerVal1.MOTDMainImgContainer = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal12:setTopBottom(false, false, -299.000000, -296.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image1 = registerVal12
	local registerVal13 = CoD.FE_FeaturedFrame.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 181.000000, 1094.000000)
	registerVal13:setTopBottom(true, false, 61.000000, 553.000000)
	registerVal13:setAlpha(0.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEFeaturedFrame0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 147.000000, 175.000000)
	registerVal14:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.pixelLL = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal15:setTopBottom(false, false, 191.000000, 194.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.pixelLL0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1098.000000, 1126.000000)
	registerVal16:setTopBottom(false, false, -300.000000, -297.000000)
	registerVal16:setZRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Image10 = registerVal16
	local registerVal17 = CoD.MOTD_TitleAndBodyText.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 209.000000, 640.000000)
	registerVal17:setTopBottom(true, false, 83.000000, 448.000000)
	local function __FUNC_22E8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.TitleLbl0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "MtxCommsMOTD", "title", __FUNC_22E8_)
	local function __FUNC_23C1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.txtDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "MtxCommsMOTD", "content_long", __FUNC_23C1_)
	registerVal1:addElement(registerVal17)
	registerVal1.MOTDTitleAndBodyText = registerVal17
	local registerVal18 = CoD.MOTD_Legal.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 209.000000, 638.000000)
	registerVal18:setTopBottom(true, false, 452.000000, 468.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18.TxtLegal:setText(Engine.Localize("MENU_MOTD_LEGAL"))
	registerVal1:addElement(registerVal18)
	registerVal1.MOTDLegal = registerVal18
	local registerVal19 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 209.000000, 308.000000)
	registerVal19:setTopBottom(true, false, 515.000000, 549.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19.label:setText(Engine.Localize("MENU_CONTINUE"))
	registerVal1:addElement(registerVal19)
	registerVal1.continueButton = registerVal19
	local registerVal20 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 330.000000, 429.000000)
	registerVal20:setTopBottom(true, false, 515.000000, 549.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20.label:setText(Engine.Localize("MENU_BACK"))
	registerVal1:addElement(registerVal20)
	registerVal1.backButton = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_249E_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal19:completeAnimation()
		registerVal1.continueButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.backButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_249E_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_26B1_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal19:completeAnimation()
		registerVal1.continueButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.backButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_26B1_
	registerVal21.KBMouse = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "KBMouse"
	local function __FUNC_28C5_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_28C5_
	registerVal23 = {registerVal24}
	registerVal1:mergeStateConditions(registerVal23)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_2917_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_2917_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "LastInput")
	local function __FUNC_299F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_299F_)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "mtxCommsMOTD.type")
	local function __FUNC_2ABB_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "mtxCommsMOTD.type"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_2ABB_)
	local function __FUNC_2C7F_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ResetThumbnailViewer(arg2)
		return true
	end

	local function __FUNC_2CFA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2C7F_, __FUNC_2CFA_, false)
	local function __FUNC_2DF3_(arg0, arg1, arg2, arg3)
		MOTDPopupAcceptAction(registerVal1, arg0, arg2, "", arg1)
		ResetThumbnailViewer(arg2)
		return true
	end

	local function __FUNC_2E93_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2DF3_, __FUNC_2E93_, false)
	local function __FUNC_2F90_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "mtxCommsMOTD.type", "liveevent")
		if registerVal4 then
			OpenPopup(registerVal1, "LiveEventViewer", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3087_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "mtxCommsMOTD.type", "liveevent")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "W", __FUNC_2F90_, __FUNC_3087_, false)
	local function __FUNC_31F1_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldPresentMOTDBanner(arg2, "")
		if registerVal4 then
			OpenRegistrationFlow(registerVal1, arg0, arg2, arg1)
			ResetThumbnailViewer(arg2)
			return true
		end
	end

	local function __FUNC_32C7_(arg0, arg1, arg2)
		local registerVal3 = ShouldPresentMOTDBanner(arg2, "")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_31F1_, __FUNC_32C7_, false)
	registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	local function __FUNC_340E_(arg1)
		arg1.BackgroundDarken:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.motdFooter:close()
		arg1.MOTDMainImgContainer:close()
		arg1.FEFeaturedFrame0:close()
		arg1.MOTDTitleAndBodyText:close()
		arg1.MOTDLegal:close()
		arg1.continueButton:close()
		arg1.backButton:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MOTD.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_340E_)
	if __FUNC_5BF_ then
		__FUNC_5BF_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MOTD = __FUNC_69D_
