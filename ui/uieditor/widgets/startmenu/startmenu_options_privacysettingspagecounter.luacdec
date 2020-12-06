-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PrivacySettingsPageCounter = registerVal1
function CoD.StartMenu_Options_PrivacySettingsPageCounter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PrivacySettingsPageCounter)
	registerVal2.id = "StartMenu_Options_PrivacySettingsPageCounter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -40.000000, -11.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PrivacySettingManagementForm", "currentPage", __FUNC_A78_)
	registerVal2:addElement(registerVal3)
	registerVal2.CurrentItem = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -11.000000, 11.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setText(Engine.Localize("MP_SLASH"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Dividor = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, 11.000000, 40.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PrivacySettingManagementForm", "lastPage", __FUNC_B0C_)
	registerVal2:addElement(registerVal5)
	registerVal2.Count = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BC6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CurrentItem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Dividor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Count:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BC6_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D6F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CurrentItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Dividor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Count:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D6F_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_F17_(arg0, arg2, arg3)
		return IsModelValueLessThan(arg1, "PrivacySettingManagementForm.lastPage", 2.000000)
	end

	registerVal9.condition = __FUNC_F17_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "PrivacySettingManagementForm.lastPage")
	local function __FUNC_FAA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PrivacySettingManagementForm.lastPage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_FAA_)
	local function __FUNC_10E3_(arg0)
		arg0.CurrentItem:close()
		arg0.Count:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10E3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

