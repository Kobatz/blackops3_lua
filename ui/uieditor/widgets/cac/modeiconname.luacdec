-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ModeIconName = registerVal1
function CoD.ModeIconName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ModeIconName)
	registerVal2.id = "ModeIconName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 31.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 31.000000)
	local function __FUNC_918_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(SessionModeToSessionModeImage(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "unlockSessionMode", true, __FUNC_918_)
	registerVal2:addElement(registerVal3)
	registerVal2.GameModeIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 38.000000, 290.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9FB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(SessionModeToLocalizedSessionMode(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "unlockSessionMode", true, __FUNC_9FB_)
	registerVal2:addElement(registerVal4)
	registerVal2.GameModeText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 3.000000, 290.000000)
	registerVal5:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ABF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(PersonalizationItemUnlockModeDesc("unlockSessionMode", registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "unlockSessionMode", true, __FUNC_ABF_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameModeDescription = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BA2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GameModeText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameModeDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BA2_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D5F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GameModeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameModeDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D5F_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_F1B_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnumOrSelfModelNil(arg2, arg1, "unlockSessionMode", Enum.eModes.MODE_INVALID)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "filterMode", "extras")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_F1B_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_106F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "unlockSessionMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "unlockSessionMode", true, __FUNC_106F_)
	local function __FUNC_1193_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "filterMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "filterMode", true, __FUNC_1193_)
	local function __FUNC_12B0_(arg0)
		arg0.GameModeIcon:close()
		arg0.GameModeText:close()
		arg0.GameModeDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

