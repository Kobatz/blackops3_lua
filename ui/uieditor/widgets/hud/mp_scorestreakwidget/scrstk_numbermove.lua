-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidgetMP_PanelContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_NumberMove = registerVal1
function CoD.ScrStk_NumberMove.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_NumberMove)
	registerVal2.id = "ScrStk_NumberMove"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -24.500000, 10.500000)
	registerVal3:setTopBottom(false, false, -10.750000, 10.750000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	registerVal3:setZoom(-4.000000)
	registerVal3.PanelAmmo0:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelAmmo = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 7.000000, 55.000000)
	registerVal4:setTopBottom(true, false, 2.500000, 18.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_nmbrbox"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.NumberFrame = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal5:setTopBottom(true, false, 2.750000, 18.750000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.500000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D1E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "KillstreakRewards", "targetMomentum", __FUNC_D1E_)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_DD6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -24.500000, 10.500000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -10.750000, 10.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NumberFrame:setLeftRight(true, false, 7.000000, 55.000000)
		registerVal2.NumberFrame:setTopBottom(true, false, 2.500000, 18.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setLeftRight(true, false, 0.000000, 40.000000)
		registerVal2.TextBox:setTopBottom(true, false, 2.750000, 18.750000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DD6_
	local function __FUNC_1070_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_12EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -29.500000, 5.500000)
			arg0:setTopBottom(false, false, -10.750000, 10.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -24.500000, 10.500000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -10.750000, 10.750000)
		__FUNC_12EA_(registerVal3, {})
		local function __FUNC_14EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 2.000000, 50.000000)
			arg0:setTopBottom(true, false, 2.500000, 18.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.NumberFrame:setLeftRight(true, false, 7.000000, 55.000000)
		registerVal2.NumberFrame:setTopBottom(true, false, 2.500000, 18.500000)
		__FUNC_14EA_(registerVal4, {})
		local function __FUNC_16EA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -5.000000, 35.000000)
			arg0:setTopBottom(true, false, 3.750000, 17.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.TextBox:setLeftRight(true, false, 0.000000, 40.000000)
		registerVal2.TextBox:setTopBottom(true, false, 3.750000, 17.750000)
		__FUNC_16EA_(registerVal5, {})
	end

	registerVal7.Combat = __FUNC_1070_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_18EA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -29.500000, 5.500000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -10.750000, 10.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NumberFrame:setLeftRight(true, false, 2.000000, 50.000000)
		registerVal2.NumberFrame:setTopBottom(true, false, 2.500000, 18.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBox:setLeftRight(true, false, -5.000000, 35.000000)
		registerVal2.TextBox:setTopBottom(true, false, 2.750000, 18.750000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_18EA_
	local function __FUNC_1B84_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1DFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -24.500000, 10.500000)
			arg0:setTopBottom(false, false, -10.750000, 10.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -29.500000, 5.500000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -10.750000, 10.750000)
		__FUNC_1DFE_(registerVal3, {})
		local function __FUNC_1FFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 7.000000, 55.000000)
			arg0:setTopBottom(true, false, 2.500000, 18.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.NumberFrame:setLeftRight(true, false, 2.000000, 50.000000)
		registerVal2.NumberFrame:setTopBottom(true, false, 2.500000, 18.500000)
		__FUNC_1FFE_(registerVal4, {})
		local function __FUNC_21FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 40.000000)
			arg0:setTopBottom(true, false, 3.750000, 17.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.TextBox:setLeftRight(true, false, -5.000000, 35.000000)
		registerVal2.TextBox:setTopBottom(true, false, 3.750000, 17.750000)
		__FUNC_21FE_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_1B84_
	registerVal6.Combat = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Combat"
	local function __FUNC_23FE_(arg0, arg2, arg3)
		return HasPerk(arg1, "speciality_combat_efficiency")
	end

	registerVal9.condition = __FUNC_23FE_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_2473_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2473_)
	local function __FUNC_25AB_(arg0)
		arg0.PanelAmmo:close()
		arg0.TextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_25AB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

