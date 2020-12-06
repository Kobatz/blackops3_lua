-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.FileShare.FileshareOptionButton")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
require("ui.uieditor.widgets.button")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FullscreenPopupTemplate = registerVal1
function CoD.FullscreenPopupTemplate.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FullscreenPopupTemplate)
	registerVal2.id = "FullscreenPopupTemplate"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 523.000000, 0.000000)
	registerVal3:setRGB(0.170000, 0.160000, 0.160000)
	registerVal3:setAlpha(0.950000)
	registerVal2:addElement(registerVal3)
	registerVal2.darkbg = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 2.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, -20.000000, -507.620000)
	registerVal5:setRGB(0.170000, 0.160000, 0.160000)
	registerVal5:setAlpha(0.950000)
	registerVal2:addElement(registerVal5)
	registerVal2.darkbg0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Background = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 206.880000, 211.880000)
	registerVal7:setRGB(1.000000, 0.600000, 0.000000)
	registerVal7:setAlpha(0.820000)
	registerVal2:addElement(registerVal7)
	registerVal2.RedLine = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, 212.380000, 524.850000)
	registerVal8:setRGB(0.100000, 0.100000, 0.100000)
	registerVal8:setAlpha(0.950000)
	registerVal2:addElement(registerVal8)
	registerVal2.BodyBackground = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 212.380000, 523.000000)
	registerVal9:setAlpha(0.650000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal9)
	registerVal2.Ambers = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal10:setTopBottom(true, false, 523.000000, 574.730000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.PromptBackground = registerVal10
	local registerVal11 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 460.070000, 740.070000)
	registerVal11:setTopBottom(true, false, 350.000000, 484.000000)
	registerVal11:setWidgetType(CoD.FileshareOptionButton)
	registerVal11:setVerticalCount(4.000000)
	local function __FUNC_1959_(arg2, arg3)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_1959_)
	local function __FUNC_1AEB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_1AEB_)
	local function __FUNC_1BBA_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_1C1B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1BBA_, __FUNC_1C1B_, false)
	registerVal2:addElement(registerVal11)
	registerVal2.ButtonList = registerVal11
	local registerVal12 = CoD.DialogSpinner.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 536.070000, 664.070000)
	registerVal12:setTopBottom(true, false, 327.000000, 455.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.DialogSpinner0 = registerVal12
	local registerVal13 = CoD.button.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 460.070000, 766.070000)
	registerVal13:setTopBottom(true, false, 454.000000, 484.000000)
	registerVal13.buttoninternal0.Text0:setText(Engine.Localize("MPUI_DONE"))
	local function __FUNC_1D16_(arg2, arg3)
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

	registerVal13:registerEventHandler("gain_focus", __FUNC_1D16_)
	local function __FUNC_1EA7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_1EA7_)
	local function __FUNC_1F76_(arg0, arg1, arg2, arg3)
		GoBack(registerVal2, arg2)
		ClearSavedState(registerVal2, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_201A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1F76_, __FUNC_201A_, false)
	registerVal2:addElement(registerVal13)
	registerVal2.BtnDone = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 460.070000, 740.070000)
	registerVal14:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal14:setText(Engine.Localize("MENU_NEW"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal14)
	registerVal2.WorkingTitle = registerVal14
	local registerVal15 = LUI.UITightText.new()
	registerVal15:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal15:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal15:setText(Engine.Localize("MENU_NEW"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal15)
	registerVal2.Title = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal16:setTopBottom(true, false, 268.410000, 288.410000)
	registerVal16:setText(Engine.Localize("MENU_NEW"))
	registerVal16:setTTF("fonts/default.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal16)
	registerVal2.Subtitle = registerVal16
	local registerVal17 = LUI.UITightText.new()
	registerVal17:setLeftRight(true, false, 460.070000, 766.070000)
	registerVal17:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal17:setText(Engine.Localize("MENU_NEW"))
	registerVal17:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.DoneTitle = registerVal17
	local registerVal18 = LUI.UITightText.new()
	registerVal18:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal18:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setText(Engine.Localize("MENU_ERROR_CAPS"))
	registerVal18:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal18)
	registerVal2.ErrorTitle = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 460.070000, 1001.570000)
	registerVal19:setTopBottom(true, false, 268.410000, 293.410000)
	registerVal19:setText(Engine.Localize("MENU_NEW"))
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal19)
	registerVal2.ErrorSubtitle = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(false, true, -197.000000, -192.850000)
	registerVal20:setAlpha(0.900000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.LineLeft = registerVal20
	local registerVal21 = {}
	registerVal21.down = registerVal13
	registerVal11.navigation = registerVal21
	registerVal21 = {}
	registerVal21.up = registerVal11
	registerVal13.navigation = registerVal21
	registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_2116_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal11:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BtnDone:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_2116_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_24D9_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal11:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BtnDone:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.Subtitle:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_24D9_
	registerVal21.WorkingState = registerVal22
	registerVal22 = {}
	local function __FUNC_291D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal11:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BtnDone:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Subtitle:setAlpha(0.000000)
		registerVal2.Subtitle:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_291D_
	registerVal21.ErrorState = registerVal22
	registerVal22 = {}
	local function __FUNC_2D4E_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal11:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BtnDone:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal22.DefaultClip = __FUNC_2D4E_
	registerVal21.CustomState = registerVal22
	registerVal2.clipsPerState = registerVal21
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_3111_(arg0, arg1, arg2, arg3)
		GoBack(registerVal2, arg2)
		ClearSavedState(registerVal2, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_31B6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3111_, __FUNC_31B6_, false)
	local function __FUNC_32A8_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "ErrorState")
		if registerVal2 then
			MakeElementNotFocusable(registerVal2, "ButtonList", arg1)
			MakeElementFocusable(registerVal2, "BtnDone", arg1)
			SetLoseFocusToElement(registerVal2, "ButtonList", arg1)
			SetFocusToElement(registerVal2, "BtnDone", arg1)
		else
			registerVal2 = IsSelfInState(registerVal2, "CustomState")
			if registerVal2 then
				MakeElementNotFocusable(registerVal2, "BtnDone", arg1)
				MakeElementNotFocusable(registerVal2, "ButtonList", arg1)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_32A8_)
	registerVal11.id = "ButtonList"
	registerVal13.id = "BtnDone"
	local function __FUNC_345E_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_345E_)
	local function __FUNC_3562_(arg0)
		arg0.scorestreakVignetteContainer:close()
		arg0.ButtonList:close()
		arg0.DialogSpinner0:close()
		arg0.BtnDone:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3562_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

