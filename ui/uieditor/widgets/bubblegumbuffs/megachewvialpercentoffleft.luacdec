-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.MegaChewVialPercentOffBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MegaChewVialPercentOffLeft = registerVal1
function CoD.MegaChewVialPercentOffLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MegaChewVialPercentOffLeft)
	registerVal2.id = "MegaChewVialPercentOffLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MegaChewVialPercentOffBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MegaChewVialPercentOffBacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -27.000000, 27.000000)
	registerVal4:setTopBottom(true, true, -114.850000, 114.850000)
	registerVal4:setRGB(0.000000, 0.550000, 1.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowBlueOver = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -27.000000, 27.000000)
	registerVal5:setTopBottom(true, true, -114.850000, 114.850000)
	registerVal5:setRGB(0.000000, 0.550000, 1.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setZRot(90.000000)
	registerVal5:setScale(2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowBlueOver0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 7.000000, -7.000000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setText(Engine.Localize("ZMUI_SPEICAL_PROMOTION_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_D57_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_D57_)
	local function __FUNC_DF9_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_DF9_)
	registerVal2:addElement(registerVal6)
	registerVal2.nameText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_E64_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.MegaChewVialPercentOffBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowBlueOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowBlueOver0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.nameText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E64_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1084_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.MegaChewVialPercentOffBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_12FE_(arg0, arg1)
			local function __FUNC_1477_(arg0, arg1)
				local function __FUNC_15CC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_15CC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CC_)
			end

			if arg1.interrupted then
				__FUNC_1477_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1477_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowBlueOver:setAlpha(0.000000)
		__FUNC_12FE_(registerVal4, {})
		local function __FUNC_1781_(arg0, arg1)
			local function __FUNC_18FB_(arg0, arg1)
				local function __FUNC_1A96_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(2.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1A96_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:setScale(1.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A96_)
			end

			if arg1.interrupted then
				__FUNC_18FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18FB_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowBlueOver0:setAlpha(0.000000)
		registerVal2.GlowBlueOver0:setScale(1.000000)
		__FUNC_1781_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.nameText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_1084_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_1C6C_(arg0, arg2, arg3)
		return ShouldShowLiquidDiviniumPromoBanner(arg1)
	end

	registerVal10.condition = __FUNC_1C6C_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "autoevents.cycled")
	local function __FUNC_1CD5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1CD5_)
	local function __FUNC_1DFB_(arg0)
		arg0.MegaChewVialPercentOffBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DFB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

