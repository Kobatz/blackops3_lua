-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_Bottom")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Cookbook_FlowAnim_Bottom_Bg = registerVal1
function CoD.Cookbook_FlowAnim_Bottom_Bg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_FlowAnim_Bottom_Bg)
	registerVal2.id = "Cookbook_FlowAnim_Bottom_Bg"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal3:setXRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_flow_fill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_98B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_98B_)
	registerVal2:addElement(registerVal3)
	registerVal2.FillBottom = registerVal3
	local registerVal4 = CoD.Cookbook_FlowAnim_Bottom.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -0.350000)
	registerVal4:setTopBottom(true, true, 0.010000, 0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_A51_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_A51_)
	registerVal2:addElement(registerVal4)
	registerVal2.CookbookFlowAnimBottom = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B19_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FillBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CookbookFlowAnimBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B19_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C7E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FillBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimBottom:setAlpha(1.000000)
		registerVal2.CookbookFlowAnimBottom.FlowTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C7E_
	local function __FUNC_E38_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_114D_(arg0, arg1)
			local function __FUNC_12E8_(arg0, arg1)
				local function __FUNC_1484_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
					arg0:setShaderVector(0.000000, 0.500000, 0.500000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1484_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.750000, 0.500000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1484_)
			end

			if arg1.interrupted then
				__FUNC_12E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.500000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E8_)
		end

		registerVal3:completeAnimation()
		registerVal2.FillBottom:setAlpha(1.000000)
		registerVal2.FillBottom:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
		registerVal2.FillBottom:setShaderVector(0.000000, 1.000000, 0.750000, 0.000000, 0.000000)
		registerVal2.FillBottom:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FillBottom:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.FillBottom:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_114D_(registerVal3, {})
		local function __FUNC_176A_(arg0, arg1)
			local function __FUNC_18C0_(arg0, arg1)
				local function __FUNC_1AAD_(arg0, arg1)
					local function __FUNC_1C04_(arg0, arg1)
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
						__FUNC_1C04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C04_)
				end

				if arg1.interrupted then
					__FUNC_1AAD_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.FlowTop:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAD_)
			end

			if arg1.interrupted then
				__FUNC_18C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C0_)
		end

		registerVal4:completeAnimation()
		registerVal4.FlowTop:completeAnimation()
		registerVal2.CookbookFlowAnimBottom:setAlpha(1.000000)
		registerVal2.CookbookFlowAnimBottom.FlowTop:setAlpha(0.000000)
		__FUNC_176A_(registerVal4, {})
	end

	registerVal6.Animate = __FUNC_E38_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_1E3C_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNil(arg2, arg1, "itemIndex")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1E3C_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1EB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1EB4_)
	local function __FUNC_1FD3_(arg0)
		arg0.CookbookFlowAnimBottom:close()
		arg0.FillBottom:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1FD3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

