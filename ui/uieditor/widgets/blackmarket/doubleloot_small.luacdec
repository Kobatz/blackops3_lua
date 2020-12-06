-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.LoadingAnimation.LoadingScreen_DoubleXPLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DoubleLoot_small = registerVal1
function CoD.DoubleLoot_small.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DoubleLoot_small)
	registerVal2.id = "DoubleLoot_small"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LoadingScreen_DoubleXPLabel.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -242.000000, -38.000000)
	registerVal3:setTopBottom(true, false, 17.000000, 41.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(0.900000)
	registerVal3.FETitleNumBrdr0:setAlpha(0.700000)
	registerVal3.XPLabel:setRGB(1.000000, 0.880000, 0.430000)
	registerVal3.XPLabel:setText(Engine.Localize("MENU_DOUBLELOOT"))
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingScreenDoubleXPLabel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -52.000000, 8.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal4:setScale(0.750000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_blackmarket_doubleloot_small"))
	registerVal2:addElement(registerVal4)
	registerVal2.cryptokeyBack = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8C0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.LoadingScreenDoubleXPLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8C0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A2D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.LoadingScreenDoubleXPLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_CBB_(arg0, arg1)
			local function __FUNC_E10_(arg0, arg1)
				local function __FUNC_FA7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1220.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
					arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 570.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA7_)
			end

			if arg1.interrupted then
				__FUNC_E10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E10_)
		end

		registerVal4:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.cryptokeyBack:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.cryptokeyBack:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_CBB_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_A2D_
	registerVal5.DoubleLoot = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "DoubleLoot"
	local function __FUNC_1230_(arg0, arg2, arg3)
		return IsDoubleLootXP(arg1)
	end

	registerVal8.condition = __FUNC_1230_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1284_(arg0)
		arg0.LoadingScreenDoubleXPLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1284_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

