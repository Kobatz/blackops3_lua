-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PrivacySettings_UpdatePopupInternal = registerVal1
function CoD.StartMenu_Options_PrivacySettings_UpdatePopupInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PrivacySettings_UpdatePopupInternal)
	registerVal2.id = "StartMenu_Options_PrivacySettings_UpdatePopupInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
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
	local registerVal11 = CoD.DialogSpinner.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 536.070000, 664.070000)
	registerVal11:setTopBottom(true, false, 327.000000, 455.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.DialogSpinner0 = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 460.070000, 740.070000)
	registerVal12:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal12:setText(Engine.Localize("MENU_NEW"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.WorkingTitle = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal13:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal13:setText(Engine.Localize("MENU_NEW"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal13)
	registerVal2.Title = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal14:setTopBottom(true, false, 268.410000, 288.410000)
	registerVal14:setText(Engine.Localize("MENU_NEW"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.Subtitle = registerVal14
	local registerVal15 = LUI.UITightText.new()
	registerVal15:setLeftRight(true, false, 460.070000, 766.070000)
	registerVal15:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal15:setText(Engine.Localize("MENU_NEW"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal15)
	registerVal2.DoneTitle = registerVal15
	local registerVal16 = LUI.UITightText.new()
	registerVal16:setLeftRight(true, false, 460.070000, 742.570000)
	registerVal16:setTopBottom(true, false, 228.260000, 262.260000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setText(Engine.Localize("MENU_ERROR_CAPS"))
	registerVal16:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal16)
	registerVal2.ErrorTitle = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 460.070000, 1001.570000)
	registerVal17:setTopBottom(true, false, 268.410000, 293.410000)
	registerVal17:setText(Engine.Localize("MENU_NEW"))
	registerVal17:setTTF("fonts/default.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.ErrorSubtitle = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal18:setTopBottom(false, true, -197.000000, -192.850000)
	registerVal18:setAlpha(0.900000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.LineLeft = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1537_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_1537_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_184C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.Subtitle:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_184C_
	registerVal19.WorkingState = registerVal20
	registerVal20 = {}
	local function __FUNC_1BE4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Subtitle:setAlpha(0.000000)
		registerVal2.Subtitle:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_1BE4_
	registerVal19.ErrorState = registerVal20
	registerVal20 = {}
	local function __FUNC_1F69_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Subtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DoneTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_1F69_
	registerVal19.DoneState = registerVal20
	registerVal20 = {}
	local function __FUNC_2280_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal2.DialogSpinner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.WorkingTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Subtitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.DoneTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ErrorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ErrorSubtitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal20.DefaultClip = __FUNC_2280_
	registerVal19.CustomState = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "WorkingState"
	local function __FUNC_2598_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_IN_PROGRESS)
	end

	registerVal22.condition = __FUNC_2598_
	local registerVal23 = {}
	registerVal23.stateName = "ErrorState"
	local function __FUNC_26AA_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_FAILED)
	end

	registerVal23.condition = __FUNC_26AA_
	local registerVal24 = {}
	registerVal24.stateName = "DoneState"
	local function __FUNC_27B5_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "PrivacySettingManagementForm.updateProgressState", CoD.OptionsUtility.REGULATION_SET_PREFERENCE_TASK_STATE_COMPLETE)
	end

	registerVal24.condition = __FUNC_27B5_
	local registerVal25 = {}
	registerVal25.stateName = "CustomState"
	local function __FUNC_28C3_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal25.condition = __FUNC_28C3_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal21)
	registerVal22 = Engine.GetModelForController(arg1)
	registerVal21 = Engine.GetModel(registerVal22, "PrivacySettingManagementForm.updateProgressState")
	local function __FUNC_290D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PrivacySettingManagementForm.updateProgressState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal21, __FUNC_290D_)
	local function __FUNC_2A52_(arg0)
		arg0.scorestreakVignetteContainer:close()
		arg0.DialogSpinner0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A52_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

