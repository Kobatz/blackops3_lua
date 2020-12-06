-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingModeButtonPrompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DeadSpectate_SpectatingMode = registerVal1
function CoD.DeadSpectate_SpectatingMode.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DeadSpectate_SpectatingMode)
	registerVal2.id = "DeadSpectate_SpectatingMode"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -30.500000, 60.500000)
	registerVal3:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal3:setText(Engine.Localize("MPUI_FIRST_PERSON_VIEW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.switchPrompt0 = registerVal3
	local registerVal4 = CoD.DeadSpectate_SpectatingModeButtonPrompt.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -59.500000, -34.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.button = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AAE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.switchPrompt0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.button:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AAE_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C05_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.switchPrompt0:setAlpha(1.000000)
		registerVal2.switchPrompt0:setText(Engine.Localize("MPUI_FIRST_PERSON_VIEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.button:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C05_
	registerVal5.FirstPerson = registerVal6
	registerVal6 = {}
	local function __FUNC_DE0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.switchPrompt0:setAlpha(1.000000)
		registerVal2.switchPrompt0:setText(Engine.Localize("MPUI_THIRD_PERSON_VIEW"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.button:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DE0_
	registerVal5.ThirdPerson = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "FirstPerson"
	local function __FUNC_FBC_(arg0, arg2, arg3)
		local registerVal3 = IsActiveLocalClientsCountEqualTo(1.000000)
		registerVal3 = IsGametypeSettingsValue("disableThirdPersonSpectating", 0.000000)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON)
		if registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = IsSplitscreenAndInGame(arg1)
			registerVal3 = IsArenaMode()
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsPropHuntProp(arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_FBC_
	local registerVal9 = {}
	registerVal9.stateName = "ThirdPerson"
	local function __FUNC_11CC_(arg0, arg2, arg3)
		local registerVal3 = IsActiveLocalClientsCountEqualTo(1.000000)
		registerVal3 = IsGametypeSettingsValue("disableThirdPersonSpectating", 0.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = IsSplitscreenAndInGame(arg1)
			registerVal3 = IsArenaMode()
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsPropHuntProp(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_11CC_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON))
	local function __FUNC_1330_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1330_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_14BE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_14BE_)
	local function __FUNC_15E4_(arg0)
		arg0.button:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15E4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

