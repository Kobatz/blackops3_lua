-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_FeaturedCardsContainerControllerIndicator = registerVal1
function CoD.FE_FeaturedCardsContainerControllerIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FE_FeaturedCardsContainerControllerIndicator)
	registerVal2.id = "FE_FeaturedCardsContainerControllerIndicator"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 7.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 5.000000)
	registerVal3:setRGB(0.530000, 0.530000, 0.530000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.dot = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.000000, 6.000000)
	registerVal4:setTopBottom(true, false, -0.980000, 8.980000)
	registerVal4:setRGB(0.250000, 0.250000, 0.250000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8C9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.dot:setRGB(0.530000, 0.530000, 0.530000)
		registerVal2.dot:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 2.000000, 6.000000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -0.980000, 8.980000)
		registerVal2.GlowOrangeOver:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.GlowOrangeOver:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8C9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B11_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.dot:setLeftRight(true, false, 1.000000, 7.000000)
		registerVal2.dot:setTopBottom(true, false, 3.000000, 5.000000)
		registerVal2.dot:setRGB(1.000000, 0.710000, 0.360000)
		registerVal2.dot:setAlpha(0.700000)
		registerVal2.dot:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 2.000000, 6.000000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -0.980000, 8.980000)
		registerVal2.GlowOrangeOver:setRGB(1.000000, 0.310000, 0.000000)
		registerVal2.GlowOrangeOver:setAlpha(1.000000)
		registerVal2.GlowOrangeOver:setZRot(90.000000)
		registerVal2.GlowOrangeOver:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B11_
	registerVal5.Selected = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Selected"
	local function __FUNC_ECC_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToSelfModelValue(arg2, arg1, "FeaturedCardsRoot.CardSequence", "sequence")
	end

	registerVal8.condition = __FUNC_ECC_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "FeaturedCardsRoot.CardSequence")
	local function __FUNC_F7F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FeaturedCardsRoot.CardSequence"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_F7F_)
	local function __FUNC_10B0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "sequence"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "sequence", true, __FUNC_10B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

