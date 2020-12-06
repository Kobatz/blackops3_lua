-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C5_(arg0, arg1)
	local function __FUNC_23F_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal4 = arg0:getModel()
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "count"))
		local registerVal3 = GetConsumableCountFromIndex(arg1, registerVal1)
		registerVal4 = math.min(registerVal3, registerVal2)
		local registerVal7 = arg0:getModel()
		local registerVal6 = Engine.GetModel(registerVal7, "percentComplete")
		Engine.SetModelValue(registerVal6, (registerVal4 / registerVal2))
	end

	arg0:linkToElementModel(arg0, "itemIndex", true, __FUNC_23F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Recipe_Fill = registerVal2
local function __FUNC_3EE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1C5_ then
		__FUNC_1C5_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookbook_Recipe_Fill)
	registerVal2.id = "Cookbook_Recipe_Fill"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 41.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.910000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_fill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_AB3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_AB3_)
	local function __FUNC_B79_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_B79_)
	registerVal2:addElement(registerVal3)
	registerVal2.fill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.910000)
	registerVal4:setZRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_fill_flip"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_CD0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(GetCookbookPipeColorForItemIndex(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_CD0_)
	registerVal2:addElement(registerVal4)
	registerVal2.fillAnimated = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D99_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.fill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fillAnimated:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D99_
	local function __FUNC_EF3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_11B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
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

		registerVal4:completeAnimation()
		registerVal2.fillAnimated:setAlpha(1.000000)
		registerVal2.fillAnimated:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.fillAnimated:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.fillAnimated:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.fillAnimated:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.fillAnimated:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_11B8_(registerVal4, {})
	end

	registerVal6.Drain = __FUNC_EF3_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1498_(arg0)
		arg0.fill:close()
		arg0.fillAnimated:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1498_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Cookbook_Recipe_Fill.new = __FUNC_3EE_
