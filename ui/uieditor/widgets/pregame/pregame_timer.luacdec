-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_NumbersInternal")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_Timer = registerVal1
function CoD.Pregame_Timer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_Timer)
	registerVal2.id = "Pregame_Timer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 121.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -69.000000, 205.500000)
	registerVal3:setTopBottom(true, false, -88.750000, 185.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.GlowPanel = registerVal3
	local registerVal4 = CoD.PrematchCountdown_NumbersInternal.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -1.500000, 118.500000)
	registerVal4:setTopBottom(true, false, 1.500000, 71.500000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 7.720000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, -50.000000, -100.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 6.890000, 9.870000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
	local function __FUNC_F7C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PregameGlobal", "timeleft", __FUNC_F7C_)
	registerVal2:addElement(registerVal4)
	registerVal2.Numbers = registerVal4
	local registerVal5 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -9.500000, -5.500000)
	registerVal5:setTopBottom(true, false, 80.500000, 84.500000)
	registerVal5:setZoom(5.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Dot61 = registerVal5
	local registerVal6 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 123.500000, 127.500000)
	registerVal6:setTopBottom(true, false, 80.500000, 84.500000)
	registerVal6:setZoom(5.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Dot600 = registerVal6
	local registerVal7 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -9.500000, -5.500000)
	registerVal7:setTopBottom(true, false, -23.500000, -19.500000)
	registerVal7:setZoom(5.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Dot62 = registerVal7
	local registerVal8 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 123.500000, 127.500000)
	registerVal8:setTopBottom(true, false, -23.500000, -19.500000)
	registerVal8:setZoom(5.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Dot601 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -4.500000, 123.500000)
	registerVal9:setTopBottom(true, false, -24.000000, 104.000000)
	registerVal9:setRGB(0.200000, 0.230000, 0.290000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -4.500000, 123.500000)
	registerVal10:setTopBottom(true, false, -24.000000, 104.000000)
	registerVal10:setRGB(0.200000, 0.230000, 0.290000)
	registerVal10:setAlpha(0.450000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image00 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1053_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_14BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -69.000000, 205.500000)
			arg0:setTopBottom(true, false, -88.750000, 185.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setLeftRight(true, false, -69.000000, 205.500000)
		registerVal2.GlowPanel:setTopBottom(true, false, 0.000000, 84.500000)
		registerVal2.GlowPanel:setAlpha(0.000000)
		__FUNC_14BD_(registerVal3, {})
		local function __FUNC_16E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
				arg0.Numbers:beginAnimation("subkeyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0.Numbers:setRGB(0.590000, 0.640000, 0.740000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.Numbers:completeAnimation()
		registerVal2.Numbers:setAlpha(0.000000)
		registerVal2.Numbers.Numbers:setRGB(0.590000, 0.640000, 0.740000)
		__FUNC_16E1_(registerVal4, {})
		local function __FUNC_193A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Dot61:setAlpha(0.000000)
		__FUNC_193A_(registerVal5, {})
		local function __FUNC_1AED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Dot600:setAlpha(0.000000)
		__FUNC_1AED_(registerVal6, {})
		local function __FUNC_1CA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Dot62:setAlpha(0.000000)
		__FUNC_1CA1_(registerVal7, {})
		local function __FUNC_1E55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Dot601:setAlpha(0.000000)
		__FUNC_1E55_(registerVal8, {})
		local function __FUNC_2009_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_2009_(registerVal9, {})
		local function __FUNC_21BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -4.500000, 123.500000)
			arg0:setTopBottom(true, false, -6.000000, 84.500000)
			arg0:setAlpha(0.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, -4.500000, 123.500000)
		registerVal2.Image00:setTopBottom(true, false, 40.000000, 48.500000)
		registerVal2.Image00:setAlpha(0.000000)
		__FUNC_21BD_(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1053_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_23E1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Numbers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Dot61:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Dot600:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Dot62:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Dot601:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_23E1_
	registerVal11.Hidden = registerVal12
	registerVal12 = {}
	local function __FUNC_272D_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2909_(arg0, arg1)
			local function __FUNC_2A8E_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 460.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A8E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, true, false, CoD.TweenType.Linear)
			arg0:setRGB(0.700000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A8E_)
		end

		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_2909_(registerVal3, {})
		local function __FUNC_2C47_(arg0, arg1)
			local function __FUNC_2DCA_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 460.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2DCA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, true, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.230000, 0.230000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DCA_)
		end

		registerVal4:completeAnimation()
		registerVal2.Numbers:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_2C47_(registerVal4, {})
		local function __FUNC_2F83_(arg0, arg1)
			local function __FUNC_310B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 460.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.200000, 0.230000, 0.290000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_310B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, true, false, CoD.TweenType.Linear)
			arg0:setRGB(0.670000, 0.030000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_310B_)
		end

		registerVal10:completeAnimation()
		registerVal2.Image00:setRGB(0.200000, 0.230000, 0.290000)
		__FUNC_2F83_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_272D_
	registerVal11.red = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Hidden"
	local function __FUNC_32CD_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.Pregame.timeleft")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_32CD_
	local registerVal15 = {}
	registerVal15.stateName = "red"
	local function __FUNC_3362_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "lobbyRoot.Pregame.timeleft", 5.000000)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_3362_
	registerVal13 = {registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.timeleft")
	local function __FUNC_33F8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.timeleft"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_33F8_)
	local function __FUNC_3528_(arg0)
		arg0.GlowPanel:close()
		arg0.Numbers:close()
		arg0.Dot61:close()
		arg0.Dot600:close()
		arg0.Dot62:close()
		arg0.Dot601:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3528_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

