-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C6_(arg0, arg1)
	local function __FUNC_20A_(arg0, arg1)
		arg0.FeatureIcon:setImage(arg1)
	end

	arg0.setImage = __FUNC_20A_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleFeatureIcon = registerVal2
local function __FUNC_273_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1C6_ then
		__FUNC_1C6_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitleFeatureIcon)
	registerVal2.id = "FE_3dTitleFeatureIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 35.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FeatureIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_7E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MapInfo", "gameTypeIcon", __FUNC_7E2_)
	registerVal2:addElement(registerVal4)
	registerVal2.GameModeIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_894_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_894_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9F6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FeatureIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9F6_
	registerVal5.GameModeIcon = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "GameModeIcon"
	local function __FUNC_B56_(arg0, arg1, arg2)
		return PregameActive()
	end

	registerVal8.condition = __FUNC_B56_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.Pregame.state")
	local function __FUNC_BA3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_BA3_)
	local function __FUNC_CCD_(arg0)
		arg0.GameModeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CCD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_3dTitleFeatureIcon.new = __FUNC_273_
