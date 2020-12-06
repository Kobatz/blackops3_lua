-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_Middle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_FlowAnim_Middle_Bg = registerVal1
function CoD.Cookbook_FlowAnim_Middle_Bg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_FlowAnim_Middle_Bg)
	registerVal2.id = "Cookbook_FlowAnim_Middle_Bg"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 75.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 102.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 74.560000)
	registerVal3:setTopBottom(true, false, 71.470000, 81.470000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_flow_fill_flat"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_AE1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_AE1_)
	registerVal2:addElement(registerVal3)
	registerVal2.FlatFill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 74.560000)
	registerVal4:setTopBottom(true, false, 71.470000, 81.470000)
	registerVal4:setZRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_flow_fill_flat"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_BA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_BA9_)
	registerVal2:addElement(registerVal4)
	registerVal2.FlatDrain = registerVal4
	local registerVal5 = CoD.Cookbook_FlowAnim_Middle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_C71_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_C71_)
	registerVal2:addElement(registerVal5)
	registerVal2.CookbookFlowAnimMiddle = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D39_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FlatDrain:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CookbookFlowAnimMiddle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D39_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_EF3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FlatDrain:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimMiddle:setAlpha(1.000000)
		registerVal2.CookbookFlowAnimMiddle.FlowTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EF3_
	local function __FUNC_1101_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_157E_(arg0, arg1)
			local function __FUNC_1713_(arg0, arg1)
				local function __FUNC_1868_(arg0, arg1)
					local function __FUNC_19E3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
						arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_19E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E3_)
				end

				if arg1.interrupted then
					__FUNC_1868_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1868_)
			end

			if arg1.interrupted then
				__FUNC_1713_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1713_)
		end

		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(1.000000)
		registerVal2.FlatFill:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.FlatFill:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_157E_(registerVal3, {})
		local function __FUNC_1CC0_(arg0, arg1)
			local function __FUNC_1E18_(arg0, arg1)
				local function __FUNC_1F93_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setZRot(180.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
					arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1F93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F93_)
			end

			if arg1.interrupted then
				__FUNC_1E18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1190.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E18_)
		end

		registerVal4:completeAnimation()
		registerVal2.FlatDrain:setAlpha(0.000000)
		registerVal2.FlatDrain:setZRot(180.000000)
		registerVal2.FlatDrain:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.FlatDrain:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1CC0_(registerVal4, {})
		local function __FUNC_2292_(arg0, arg1)
			local function __FUNC_23E8_(arg0, arg1)
				local function __FUNC_25D5_(arg0, arg1)
					local function __FUNC_272C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
							arg0.FlowTop:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0.FlowTop:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_272C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_272C_)
				end

				if arg1.interrupted then
					__FUNC_25D5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D5_)
			end

			if arg1.interrupted then
				__FUNC_23E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E8_)
		end

		registerVal5:completeAnimation()
		registerVal5.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimMiddle:setAlpha(1.000000)
		registerVal2.CookbookFlowAnimMiddle.FlowTop:setAlpha(0.000000)
		__FUNC_2292_(registerVal5, {})
	end

	registerVal7.Animate = __FUNC_1101_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_2964_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNil(arg2, arg1, "itemIndex")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_2964_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_29DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_29DC_)
	local function __FUNC_2AFB_(arg0)
		arg0.CookbookFlowAnimMiddle:close()
		arg0.FlatFill:close()
		arg0.FlatDrain:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2AFB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

