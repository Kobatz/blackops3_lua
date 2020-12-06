-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.MOTD.MOTD_TitleAndBodyText")
require("ui.uieditor.widgets.PC.Utility.GenericClickButton")
local function __FUNC_395_(arg0, arg1)
	arg0.continueButton:setButton(Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	arg0.backButton:setButton(Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	arg0.actionButton:setButton(Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
end

local function __FUNC_51F_(arg0, arg1)
	if CoD.isPC then
		__FUNC_395_(arg0, arg1)
	end
end

local function __FUNC_58B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CRMPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_EditLoadout"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CRMPopup.buttonPrompts")
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
	local function __FUNC_1E53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_1E53_)
	registerVal1:addElement(registerVal8)
	registerVal1.PromptSelect = registerVal8
	local registerVal9 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 330.000000, 544.000000)
	registerVal9:setTopBottom(true, false, 516.000000, 547.000000)
	registerVal9.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_1F2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_1F2B_)
	registerVal1:addElement(registerVal9)
	registerVal1.PromptBack = registerVal9
	local registerVal10 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 452.000000, 666.000000)
	registerVal10:setTopBottom(true, false, 516.000000, 547.000000)
	local function __FUNC_2003_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Controller", "alt1_button_image", __FUNC_2003_)
	local function __FUNC_20DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "CRMPopup", "action_title", __FUNC_20DB_)
	registerVal1:addElement(registerVal10)
	registerVal1.PromptAction = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 652.000000, 1094.000000)
	registerVal11:setTopBottom(true, false, 61.000000, 552.500000)
	local function __FUNC_21AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "CRMPopup", "popup_image", __FUNC_21AD_)
	registerVal1:addElement(registerVal11)
	registerVal1.image = registerVal11
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
	local function __FUNC_2260_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.TitleLbl0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "CRMPopup", "title", __FUNC_2260_)
	local function __FUNC_2339_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.txtDescription:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "CRMPopup", "content_long", __FUNC_2339_)
	registerVal1:addElement(registerVal17)
	registerVal1.TitleAndBodyText = registerVal17
	local registerVal18 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 209.000000, 308.000000)
	registerVal18:setTopBottom(true, false, 515.000000, 549.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18.label:setText(Engine.Localize("MENU_CONTINUE"))
	registerVal1:addElement(registerVal18)
	registerVal1.continueButton = registerVal18
	local registerVal19 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 330.000000, 429.000000)
	registerVal19:setTopBottom(true, false, 515.000000, 549.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19.label:setText(Engine.Localize("MENU_BACK"))
	registerVal1:addElement(registerVal19)
	registerVal1.backButton = registerVal19
	local registerVal20 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 451.000000, 550.000000)
	registerVal20:setTopBottom(true, false, 515.000000, 549.000000)
	registerVal20:setAlpha(0.000000)
	local function __FUNC_2416_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg0, "CRMPopup", "action_title", __FUNC_2416_)
	registerVal1:addElement(registerVal20)
	registerVal1.actionButton = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_24E9_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptAction:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal18:completeAnimation()
		registerVal1.continueButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.backButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.actionButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_24E9_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_27B1_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptAction:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal18:completeAnimation()
		registerVal1.continueButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.backButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.actionButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_27B1_
	registerVal21.KBMouseAction = registerVal22
	registerVal22 = {}
	local function __FUNC_2A79_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptAction:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal18:completeAnimation()
		registerVal1.continueButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.backButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.actionButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2A79_
	registerVal21.KBMouse = registerVal22
	registerVal22 = {}
	local function __FUNC_2D41_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal8:completeAnimation()
		registerVal1.PromptSelect:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.PromptBack:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptAction:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal18:completeAnimation()
		registerVal1.continueButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal1.backButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal1.actionButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2D41_
	registerVal21.Action = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "KBMouseAction"
	local function __FUNC_3009_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "CRMPopup.action", "")
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "CRMPopup.action", "expand")
		else
		end
		return true
	end

	registerVal24.condition = __FUNC_3009_
	local registerVal25 = {}
	registerVal25.stateName = "KBMouse"
	local function __FUNC_30FD_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		return (not registerVal3)
	end

	registerVal25.condition = __FUNC_30FD_
	local registerVal26 = {}
	registerVal26.stateName = "Action"
	local function __FUNC_314F_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "CRMPopup.action", "")
		if not registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "CRMPopup.action", "expand")
		else
		end
		return true
	end

	registerVal26.condition = __FUNC_314F_
	registerVal23 = {registerVal24, registerVal25, registerVal26}
	registerVal1:mergeStateConditions(registerVal23)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_321A_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_321A_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "LastInput")
	local function __FUNC_32A3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_32A3_)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "CRMPopup.action")
	local function __FUNC_33BF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CRMPopup.action"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_33BF_)
	registerVal24 = Engine.GetGlobalModel()
	registerVal23 = Engine.GetModel(registerVal24, "CRMPopup.actionSource")
	local function __FUNC_34E1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CRMPopup.actionSource"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_34E1_)
	local function __FUNC_36AA_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_36FC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_36AA_, __FUNC_36FC_, false)
	local function __FUNC_37F7_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "CRMPopup.actionSource", "Featured")
		if registerVal4 then
			GoBack(registerVal1, arg2)
			return true
		else
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "CRMPopup.actionSource", "MOTDBanner")
			if registerVal4 then
				GoToModeSelectFromCRMPopup(registerVal1, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_3934_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "CRMPopup.actionSource", "Featured")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
			return true
		else
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "CRMPopup.actionSource", "MOTDBanner")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_37F7_, __FUNC_3934_, false)
	local function __FUNC_3B49_(arg0, arg1, arg2, arg3)
		CRMFeaturedPopupActionHandler(registerVal1, arg0, arg2, "", arg1)
		return true
	end

	local function __FUNC_3BC9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_3B49_, __FUNC_3BC9_, false)
	registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	local function __FUNC_3CC7_(arg1)
		arg1.BackgroundDarken:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.PromptAction:close()
		arg1.FEFeaturedFrame0:close()
		arg1.TitleAndBodyText:close()
		arg1.continueButton:close()
		arg1.backButton:close()
		arg1.actionButton:close()
		arg1.image:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CRMPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3CC7_)
	if __FUNC_51F_ then
		__FUNC_51F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CRMPopup = __FUNC_58B_
