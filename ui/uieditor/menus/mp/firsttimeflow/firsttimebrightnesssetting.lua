-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Options_Graphics_SafeArea")
require("ui.uieditor.widgets.MP.FirstTimeFlow.FirstTimeBrightnessListWidget")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.PC.Utility.GenericClickButton")
local function __FUNC_2CC_(arg0, arg1, arg2)
	if CoD.isPC then
		local function __FUNC_4BE_(arg2, arg3)
			UpdateGamerprofile(arg0, arg0, arg1)
			local registerVal2 = IsMainFirstTimeSetup(arg1)
			if registerVal2 then
				SetProfileVar(arg1, "com_first_time", 0.000000)
				ForceNotifyGlobalModel(arg1, "mainFirstTimeFlowComplete")
			else
				GoBack(arg0, arg1)
				ClearMenuSavedState(arg0)
			end
		end

		arg0.continueButton:registerEventHandler("button_action", __FUNC_4BE_)
	end
	if CoD.isDurango then
		arg0.XboxGamerTag:setText(Engine.Localize("XBOXLIVE_SIGNEDINAS", Engine.GetGamertagForController(0.000000)))
	else
		arg0.XboxGamerTag:setText("")
	end
end

local function __FUNC_632_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FirstTimeBrightnessSetting")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FirstTimeBrightnessSetting.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -3.820000, 3.820000)
	registerVal4:setTopBottom(true, true, 107.500000, -107.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_welcome_bg3"))
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.NEWBGIMAGE = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 461.240000, 1210.000000)
	registerVal5:setTopBottom(true, false, 143.450000, 201.450000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_BRIGHTNESS"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.WelcomeTitle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 467.240000, 1210.000000)
	registerVal6:setTopBottom(true, false, 201.450000, 220.450000)
	registerVal6:setText(Engine.Localize("MENU_ADJUST_BRIGHTNESS_FIRSTTIME"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.DescText = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 467.240000, 705.240000)
	registerVal7:setTopBottom(true, false, 259.380000, 279.380000)
	registerVal7:setDataSource("BrightnessSelector")
	registerVal7:setWidgetType(CoD.FirstTimeBrightnessListWidget)
	registerVal7:setHorizontalCount(20.000000)
	local function __FUNC_20FA_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:registerEventHandler("input_source_changed", __FUNC_20FA_)
	local registerVal11 = Engine.GetModelForController(arg0)
	local registerVal10 = Engine.GetModel(registerVal11, "LastInput")
	local function __FUNC_21E5_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "LastInput"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_21E5_)
	local function __FUNC_23A2_(arg1, arg2)
		AdjustBrightness(arg1, arg0)
		UpdateState(registerVal1, arg2)
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_23A2_)
	local function __FUNC_2423_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_2423_)
	local function __FUNC_25B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_25B3_)
	local function __FUNC_2682_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMainFirstTimeSetup(arg2)
		if not registerVal4 then
			UpdateGamerprofile(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			ClearMenuSavedState(arg1)
			return true
		else
			registerVal4 = IsPC()
			registerVal4 = IsMouse(arg2)
			if registerVal4 and not registerVal4 then
				SetProfileVar(arg2, "com_first_time", 0.000000)
				UpdateGamerprofile(registerVal1, arg0, arg2)
				ForceNotifyGlobalModel(arg2, "mainFirstTimeFlowComplete")
				ClearMenuSavedState(arg1)
				return true
			else
				registerVal4 = IsPC()
				if not registerVal4 then
					OpenOverlay(registerVal1, "StartMenu_Options_Graphics_SafeArea", arg2, "", "")
					return true
				end
			end
		end
	end

	local function __FUNC_28ED_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsMainFirstTimeSetup(arg2)
		if not registerVal3 then
			return true
		else
			registerVal3 = IsPC()
			registerVal3 = IsMouse(arg2)
			if registerVal3 and not registerVal3 then
				return true
			else
				registerVal3 = IsPC()
				if not registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2682_, __FUNC_28ED_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.BrightnessSettingsPipsList = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 125.310000, 406.240000)
	registerVal8:setTopBottom(true, false, 153.450000, 454.450000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_welcome_whitelogo"))
	registerVal8:setupUIStreamedImage(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.NEWWHITEIMAGE = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -20.860000, 25.140000)
	registerVal9:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.700000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarSolid = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -23.860000, 25.140000)
	registerVal10:setTopBottom(false, false, -256.500000, -248.500000)
	registerVal10:setRGB(1.000000, 0.900000, 0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEFocusBarAdd = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -118.860000, 96.140000)
	registerVal11:setTopBottom(true, false, 102.290000, 116.710000)
	registerVal11:setRGB(1.000000, 0.990000, 0.000000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Glow2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal12:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal12:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal12:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEFocusBarSolid0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal13:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal13:setRGB(1.000000, 0.900000, 0.800000)
	registerVal13:setAlpha(0.990000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal13:setShaderVector(0.000000, 0.041667, 0.500000, 0.000000, 0.000000)
	registerVal13:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEFocusBarAdd0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -119.000000, 96.000000)
	registerVal14:setTopBottom(true, false, 603.290000, 617.710000)
	registerVal14:setRGB(1.000000, 0.990000, 0.000000)
	registerVal14:setAlpha(0.700000)
	registerVal14:setXRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Glow20 = registerVal14
	local registerVal15 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 467.240000, 899.240000)
	registerVal15:setTopBottom(true, false, 571.290000, 603.290000)
	registerVal1:addElement(registerVal15)
	registerVal1.buttons = registerVal15
	local registerVal16 = CoD.GenericClickButton.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 467.240000, 602.240000)
	registerVal16:setTopBottom(true, false, 360.000000, 400.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16.label:setText(Engine.Localize("MENU_CONTINUE"))
	registerVal1:addElement(registerVal16)
	registerVal1.continueButton = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 467.000000, 688.000000)
	registerVal17:setTopBottom(true, false, 323.000000, 349.000000)
	registerVal17:setText(Engine.Localize("XboxGamerTag"))
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal17)
	registerVal1.XboxGamerTag = registerVal17
	local function __FUNC_2A8F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal7, "color", true, __FUNC_2A8F_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_2B1F_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal15:completeAnimation()
		registerVal1.buttons:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.continueButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_2B1F_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_2C7C_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal15:completeAnimation()
		registerVal1.buttons:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.continueButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
	end

	registerVal19.DefaultClip = __FUNC_2C7C_
	registerVal18.KBMouse = registerVal19
	registerVal1.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "KBMouse"
	local function __FUNC_2DDC_(arg1, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsMouse(arg0)
		end
		return registerVal3
	end

	registerVal21.condition = __FUNC_2DDC_
	registerVal20 = {registerVal21}
	registerVal1:mergeStateConditions(registerVal20)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_2E47_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_2E47_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "LastInput")
	local function __FUNC_2ECF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal20, __FUNC_2ECF_)
	local function __FUNC_2FEB_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_3065_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2FEB_, __FUNC_3065_, false)
	registerVal7.id = "BrightnessSettingsPipsList"
	registerVal15:setModel(registerVal1.buttonModel, arg0)
	registerVal20 = {}
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
		registerVal1.BrightnessSettingsPipsList:processEvent(registerVal20)
	end
	local function __FUNC_3158_(arg1)
		arg1.BrightnessSettingsPipsList:close()
		arg1.buttons:close()
		arg1.continueButton:close()
		arg1.NEWWHITEIMAGE:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FirstTimeBrightnessSetting.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3158_)
	if __FUNC_2CC_ then
		__FUNC_2CC_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FirstTimeBrightnessSetting = __FUNC_632_
