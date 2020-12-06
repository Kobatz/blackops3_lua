-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_MiddleLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Main_Result = registerVal1
function CoD.Cookbook_Main_Result.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_Main_Result)
	registerVal2.id = "Cookbook_Main_Result"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal3:setTopBottom(true, false, 69.500000, 87.500000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_flow_fill_flat"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_AF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_AF5_)
	registerVal2:addElement(registerVal3)
	registerVal2.FlatFill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal4:setTopBottom(true, false, 69.500000, 87.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_flow_fill_flat"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_BBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_BBD_)
	registerVal2:addElement(registerVal4)
	registerVal2.FlatDrain = registerVal4
	local registerVal5 = CoD.Cookbook_FlowAnim_MiddleLarge.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_C85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_C85_)
	registerVal2:addElement(registerVal5)
	registerVal2.CookbookFlowAnimMiddleLarge = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_D4D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal5.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimMiddleLarge.FlowTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D4D_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_EEA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal5.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimMiddleLarge.FlowTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EEA_
	local function __FUNC_1086_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_14B9_(arg0, arg1)
			local function __FUNC_164F_(arg0, arg1)
				local function __FUNC_17A4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
					arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
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
					__FUNC_17A4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A4_)
			end

			if arg1.interrupted then
				__FUNC_164F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164F_)
		end

		registerVal3:completeAnimation()
		registerVal2.FlatFill:setAlpha(1.000000)
		registerVal2.FlatFill:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.FlatFill:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatFill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_14B9_(registerVal3, {})
		local function __FUNC_1A84_(arg0, arg1)
			local function __FUNC_1BDC_(arg0, arg1)
				local function __FUNC_1D57_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
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
					__FUNC_1D57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D57_)
			end

			if arg1.interrupted then
				__FUNC_1BDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDC_)
		end

		registerVal4:completeAnimation()
		registerVal2.FlatDrain:setAlpha(0.000000)
		registerVal2.FlatDrain:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.FlatDrain:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FlatDrain:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1A84_(registerVal4, {})
		local function __FUNC_2034_(arg0, arg1)
			local function __FUNC_218C_(arg0, arg1)
				local function __FUNC_2379_(arg0, arg1)
					local function __FUNC_24D0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
							arg0.FlowTop:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.FlowTop:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_24D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D0_)
				end

				if arg1.interrupted then
					__FUNC_2379_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:beginAnimation("subkeyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2379_)
			end

			if arg1.interrupted then
				__FUNC_218C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218C_)
		end

		registerVal5:completeAnimation()
		registerVal5.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimMiddleLarge.FlowTop:setAlpha(0.000000)
		__FUNC_2034_(registerVal5, {})
	end

	registerVal7.Animate = __FUNC_1086_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_26F7_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNil(arg2, arg1, "itemIndex")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_26F7_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_276C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_276C_)
	local function __FUNC_288B_(arg0)
		arg0.CookbookFlowAnimMiddleLarge:close()
		arg0.FlatFill:close()
		arg0.FlatDrain:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_288B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

