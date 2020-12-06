-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_HelpItemsLabel = registerVal1
function CoD.FE_HelpItemsLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_HelpItemsLabel)
	registerVal2.id = "FE_HelpItemsLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal3:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_helptag"))
	registerVal2:addElement(registerVal3)
	registerVal2.newImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.000000, 39.000000)
	registerVal4:setTopBottom(true, false, -9.000000, 29.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_breadcrumb_playlist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PlaylistBreadcrumb = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_80E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.newImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_80E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_96C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.newImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlaylistBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_96C_
	local function __FUNC_AD1_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.GainFocus = __FUNC_AD1_
	local function __FUNC_B32_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_B32_
	local function __FUNC_B92_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.LoseFocus = __FUNC_B92_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_BF2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.newImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_E6D_(arg0, arg1)
			local function __FUNC_1003_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 4300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1003_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1003_)
		end

		registerVal4:completeAnimation()
		registerVal2.PlaylistBreadcrumb:setAlpha(1.000000)
		registerVal2.PlaylistBreadcrumb:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.PlaylistBreadcrumb:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_E6D_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_BF2_
	registerVal5.Playlist = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_1287_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal8.condition = __FUNC_1287_
	local registerVal9 = {}
	registerVal9.stateName = "Playlist"
	local function __FUNC_12D8_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_12D8_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1325_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1325_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

