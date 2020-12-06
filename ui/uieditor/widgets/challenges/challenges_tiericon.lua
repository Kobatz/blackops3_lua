-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_TierIcon = registerVal1
function CoD.Challenges_TierIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_TierIcon)
	registerVal2.id = "Challenges_TierIcon"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -2.000000, 34.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 34.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_slidex"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_1007_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(HideIfNotEmptyString(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_1007_)
	registerVal2:addElement(registerVal3)
	registerVal2.ImageX = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ImageBorder = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -0.500000, 32.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5:setRGB(0.600000, 0.600000, 0.420000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Background = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, -18.000000, 37.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 26.000000)
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal6)
	registerVal2.TierText = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal7:setTopBottom(false, true, -53.000000, -21.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.CurrentTierArrow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal8:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp"))
	registerVal2:addElement(registerVal8)
	registerVal2.XPIcon = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 34.000000, 96.000000)
	registerVal9:setTopBottom(false, true, -26.000000, -6.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.XPText = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -0.500000, 32.000000)
	registerVal10:setTopBottom(true, false, 29.500000, 31.500000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal10:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal2:addElement(registerVal10)
	registerVal2.box = registerVal10
	local function __FUNC_10BF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.TierText:linkToElementModel(registerVal2, "tierText", true, __FUNC_10BF_)
	local function __FUNC_1176_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", registerVal1)))
		end
	end

	registerVal2.XPText:linkToElementModel(registerVal2, "tierXP", true, __FUNC_1176_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_126D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.Background:setRGB(0.600000, 0.600000, 0.420000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TierText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CurrentTierArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.XPIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.XPText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.box:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_126D_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_154A_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.Background:setRGB(0.600000, 0.600000, 0.420000)
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TierText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CurrentTierArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.XPIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.XPText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.box:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_154A_
	registerVal11.Unreached = registerVal12
	registerVal12 = {}
	local function __FUNC_1842_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageX:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setRGB(1.000000, 0.930000, 0.000000)
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TierText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CurrentTierArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.XPIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.XPText:setLeftRight(true, false, 34.000000, 96.000000)
		registerVal2.XPText:setTopBottom(false, true, -26.000000, -6.000000)
		registerVal2.XPText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.box:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1842_
	registerVal11.CurrentTier = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Unreached"
	local function __FUNC_1C2B_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isReached")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1C2B_
	local registerVal15 = {}
	registerVal15.stateName = "CurrentTier"
	local function __FUNC_1CA1_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isCurrentTier")
	end

	registerVal15.condition = __FUNC_1CA1_
	registerVal13 = {registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_1D19_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isReached"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isReached", true, __FUNC_1D19_)
	local function __FUNC_1E37_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isCurrentTier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isCurrentTier", true, __FUNC_1E37_)
	local function __FUNC_1F57_(arg0)
		arg0.ImageBorder:close()
		arg0.ImageX:close()
		arg0.TierText:close()
		arg0.XPText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F57_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

