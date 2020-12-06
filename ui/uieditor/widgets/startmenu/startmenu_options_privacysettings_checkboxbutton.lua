-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_MusicTracks_Checkbox")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_lines")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PrivacySettings_CheckBoxButton = registerVal1
function CoD.StartMenu_Options_PrivacySettings_CheckBoxButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PrivacySettings_CheckBoxButton)
	registerVal2.id = "StartMenu_Options_PrivacySettings_CheckBoxButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 504.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = CoD.StartMenu_MusicTracks_Checkbox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 14.000000)
	registerVal4:setTopBottom(false, false, -7.000000, 7.000000)
	local function __FUNC_B6F_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_B6F_)
	registerVal2:addElement(registerVal4)
	registerVal2.checkbox = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 19.000000, 219.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_BBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "displayText", true, __FUNC_BBE_)
	registerVal2:addElement(registerVal5)
	registerVal2.PrivacySettingName = registerVal5
	local registerVal6 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 396.000000, -395.000000)
	registerVal6:setTopBottom(false, true, -26.500000, -22.440000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.MissionRecordVaultlines010 = registerVal6
	local registerVal7 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 396.000000, -395.000000)
	registerVal7:setTopBottom(false, true, -2.500000, 1.560000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.MissionRecordVaultlines0100 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C76_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setLeftRight(true, false, 0.000000, 400.000000)
		registerVal2.backing:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PrivacySettingName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C76_
	local function __FUNC_FA5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PrivacySettingName:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines010:setTopBottom(false, true, -30.500000, -19.440000)
		registerVal2.MissionRecordVaultlines010:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines0100:setTopBottom(false, true, -2.500000, 1.560000)
		registerVal2.MissionRecordVaultlines0100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_FA5_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_13C4_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setLeftRight(true, false, 0.000000, 400.000000)
		registerVal2.backing:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PrivacySettingName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13C4_
	local function __FUNC_1711_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PrivacySettingName:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MissionRecordVaultlines010:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines010:setTopBottom(false, true, -30.500000, -19.440000)
		registerVal2.MissionRecordVaultlines010:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MissionRecordVaultlines0100:setLeftRight(true, true, 499.000000, -500.000000)
		registerVal2.MissionRecordVaultlines0100:setTopBottom(false, true, -2.500000, 1.560000)
		registerVal2.MissionRecordVaultlines0100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_1711_
	registerVal8.NoCheckBox = registerVal9
	registerVal9 = {}
	local function __FUNC_1B4C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.checkbox:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PrivacySettingName:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_1B4C_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoCheckBox"
	local function __FUNC_1D8A_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isUpdateButton")
	end

	registerVal11.condition = __FUNC_1D8A_
	local registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_1E02_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1E02_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_1E4D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isUpdateButton"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isUpdateButton", true, __FUNC_1E4D_)
	local function __FUNC_1F70_(arg0)
		arg0.checkbox:close()
		arg0.MissionRecordVaultlines010:close()
		arg0.MissionRecordVaultlines0100:close()
		arg0.PrivacySettingName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F70_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

